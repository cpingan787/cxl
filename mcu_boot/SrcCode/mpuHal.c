/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: mpuHal.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "mpuHal.h"
#include "logHal.h"
#include "osHal.h"
#include "crc8_16_32.h"
#include "r_cg_macrodriver.h"
#include "Dio.h"
#include <string.h> /* 引入 string.h 用于 memcpy 优化 */

/****************************** Macro Definitions ******************************/
#define MPU_HAL_HANDLE_INSTANSE_MAX     15
#define MPU_PROTOCAL_HEADER_LEN         8
#define MPU_HAL_RX_BUFFER               4096

/* RX 环形缓冲区配置 */
#define MPU_RX_RING_BUF_SIZE            4096
#define MPU_RX_RING_BUF_MASK            (MPU_RX_RING_BUF_SIZE - 1) 

/* TX 环形缓冲区配置 */
#define MPU_TX_RING_BUF_SIZE            4096
#define MPU_TX_RING_BUF_MASK            (MPU_TX_RING_BUF_SIZE - 1)

#define MPU_TX_FRAME_QUEUE_SIZE 16 /* 最多允许排队 16 帧 */

/****************************** Type Definitions ******************************/
typedef enum
{
    E_MPU_HAL_START_STATE_IDLE = 0,
    E_MPU_HAL_START_STATE_POWER_OFF,
    E_MPU_HAL_START_STATE_OFF_DELAY,
    E_MPU_HAL_START_STATE_POWER_ON,
    E_MPU_HAL_START_STATE_POWER_DELAY,
    E_MPU_HAL_START_STATE_KEY_ON,
    E_MPU_HAL_START_STATE_KEY_ON_DELAY,
    E_MPU_HAL_START_STATE_KEY_OFF,
    E_MPU_HAL_START_STATE_FINISH,
} MpuHalStartState_e;

typedef struct 
{
    uint8_t data[MPU_HAL_RX_BUFFER];
    uint16_t dataCount;
    uint16_t dataLength;
} MpuUartProtocalBuffer_t;

typedef struct
{
    uint8_t useFlag;
    uint8_t useRxFilter;
    uint8_t *pDataBufferRx;
    uint16_t dataBufferSize;
    uint16_t rxIndexIn;
    QueueHandle_t rxQueueHandle;
    MpuHalFilter_t rxFilterConfig;
} MpuHalHandle_t;

typedef struct
{
    uint8_t wakeMode;
    uint8_t wakeoutTimeCount;
    MpuHalStartState_e startState;
    MpuHalHandle_t rxHandle[MPU_HAL_HANDLE_INSTANSE_MAX];
} MpuHalManage_t;

/****************************** Global Variables ******************************/
volatile uint16_t g_mpuUartReciveCount = 0;
volatile uint8_t g_mpuUartErrorType = 0;
volatile uint8_t g_mpuUartErrorFlag = 0;
volatile uint8_t g_mpuSetRecvErrorFlag = 0;

/* RX 资源 */
volatile uint8_t g_uartRxRingBuf[MPU_RX_RING_BUF_SIZE];
volatile uint16_t g_uartRxHead = 0;  /* 中断写入位置 */
volatile uint16_t g_uartRxTail = 0;  /* 定时器读取位置 */

/* TX 资源 */
static uint8_t g_uartTxRingBuf[MPU_TX_RING_BUF_SIZE];
static volatile uint16_t g_uartTxHead = 0;    /* 应用层写入位置 */
static volatile uint16_t g_uartTxTail = 0;    /* 底层发送读取位置 */
static volatile uint16_t g_uartTxLastLen = 0; /* 正在发送的数据长度 */

/* 记录每一帧长度的环形队列 */
static volatile uint16_t g_txFrameLens[MPU_TX_FRAME_QUEUE_SIZE];
static volatile uint8_t  g_txLenHead = 0;
static volatile uint8_t  g_txLenTail = 0;

/* 专用的底层发送平铺缓冲。
   它解决了环形数组回环造成的物理内存撕裂问题，完美适配中断发送！*/
static uint8_t s_flatTxBuffer[MPU_TX_RING_BUF_SIZE];

static MpuUartProtocalBuffer_t g_mpuUartProtocalBuffer;
static MpuHalManage_t g_mpuManage;

/****************************** Function Declarations *************************/
static void MpuHalGpioInit(void);
static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq);
static inline void UartProtocalProcess_Byte(uint8_t rx_data, uint8_t IsrFlag);
static void ReadFromRingBuffer(uint8_t *dest, const uint8_t *srcBuf, uint16_t srcSize, uint16_t *srcIndex, uint16_t readLen);
static void WriteToTxRingBuffer(const uint8_t *src, uint16_t len);

/****************************** Public Function Implementations ******************************/

/*************************************************
 Function: MpuHalGpioInit
 Description: 初始化 MPU 相关 GPIO 引脚
 Input: void
 Output: None
 Return: void
 Others:
*************************************************/
static void MpuHalGpioInit(void)
{
    /* 拉高 MPU POWER */
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7, STD_HIGH);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3, STD_HIGH);
}

/*************************************************
 Function: MpuDataDispatch
 Description: 分发 MPU 数据到指定的接收队列
 Input: pData - 指向接收数据的指针
        length - 数据长度（字节）
        irq - 是否在中断上下文调用（1 表示是，0 表示否）
 Output: None
 Return: void
 Others:
*************************************************/
static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq)
{
    uint16_t i, instanceMax;
    uint32_t data;
    uint32_t xHigherPriorityTaskWoken = pdFALSE;
    MpuHalHandle_t *pHandleInstance;

    instanceMax = MPU_HAL_HANDLE_INSTANSE_MAX;
    for (i = 0; i < instanceMax; i++)
    {
        pHandleInstance = g_mpuManage.rxHandle + i;
        if ((pHandleInstance->useFlag == 1) && (pHandleInstance->pDataBufferRx != NULL))
        {
            if ((pHandleInstance->useRxFilter == 1) && (pData[2] == pHandleInstance->rxFilterConfig.aid))
            {
                if ((pData[3] >= pHandleInstance->rxFilterConfig.midMin) && (pData[3] <= pHandleInstance->rxFilterConfig.midMax))
                {
                    data = (pHandleInstance->rxIndexIn << 16);
                    uint16_t space_to_end = pHandleInstance->dataBufferSize - pHandleInstance->rxIndexIn;
                    
                    if (length <= space_to_end)
                    {
                        memcpy(&pHandleInstance->pDataBufferRx[pHandleInstance->rxIndexIn], pData, length);
                        pHandleInstance->rxIndexIn += length;
                        if (pHandleInstance->rxIndexIn == pHandleInstance->dataBufferSize)
                        {
                            pHandleInstance->rxIndexIn = 0;
                        }
                    }
                    else
                    {
                        memcpy(&pHandleInstance->pDataBufferRx[pHandleInstance->rxIndexIn], pData, space_to_end);
                        memcpy(pHandleInstance->pDataBufferRx, pData + space_to_end, length - space_to_end);
                        pHandleInstance->rxIndexIn = length - space_to_end;
                    }
                    
                    data += length;
                    if (irq)
                    {
                        xQueueSendFromISR(pHandleInstance->rxQueueHandle, &data, &xHigherPriorityTaskWoken);
                    }
                    else
                    {
                        xQueueSend(pHandleInstance->rxQueueHandle, &data, 0);
                    }
                }
            }
        }
    }
}

/*************************************************
 Function: MpuPackHeader
 Description: 打包 MPU 数据包头
 Input: headerBuffer - 指向包头缓冲区的指针
        pMsg - 指向 MpuHalDataPack_t 结构体的指针，包含待打包的数据
 Output: None
 Return: uint8_t - 包头长度（字节）
 Others:
*************************************************/
static uint8_t MpuPackHeader(uint8_t headerBuffer[], const MpuHalDataPack_t *pMsg)
{
    headerBuffer[0] = 0x55;
    headerBuffer[1] = 0xAA;
    headerBuffer[2] = pMsg->aid;
    headerBuffer[3] = pMsg->mid;
    headerBuffer[4] = pMsg->subcommand;
    headerBuffer[5] = (pMsg->dataLength >> 8) & 0xFF;
    headerBuffer[6] = pMsg->dataLength & 0xFF;
    headerBuffer[7] = 0x00; /*reserved*/
    return MPU_PROTOCAL_HEADER_LEN;
}

/*************************************************
 Function: MpuPackGetCrc
 Description: 计算 MPU 数据包头和数据的 CRC16 值
 Input: header - 指向包头缓冲区的指针
        pMsg - 指向 MpuHalDataPack_t 结构体的指针，包含待计算 CRC 的数据
 Output: None
 Return: uint16_t - 计算得到的 CRC16 值
 Others:
*************************************************/
static uint16_t MpuPackGetCrc(uint8_t header[], const MpuHalDataPack_t *pMsg)
{
    uint16_t crc = 0x0000;
    crc = CcittCrc16(crc, header, MPU_PROTOCAL_HEADER_LEN);
    crc = CcittCrc16(crc, pMsg->pDataBuffer, pMsg->dataLength);
    return crc;
}

/*************************************************
 Function: MpuHalOpen
 Description: 打开 MPU 接收句柄
 Input: void
 Output: None
 Return: int16_t - 成功返回句柄索引，失败返回 -1
 Others:
*************************************************/
int16_t MpuHalOpen(void)
{
    int16_t handle = -1, index = 0;

    __disable_irq();
    for (index = 0; index < MPU_HAL_HANDLE_INSTANSE_MAX; index++)
    {
        if (g_mpuManage.rxHandle[index].useFlag == 0)
        {
            g_mpuManage.rxHandle[index].useFlag = 1;
            handle = index;
            break;
        }
    }
    __enable_irq();
    return handle;
}

/*************************************************
 Function: MpuHalSetRxFilter
 Description: 设置 MPU 接收句柄的接收过滤器
 Input: handle - 接收句柄索引
        pFilter - 指向 MpuHalFilter_t 结构体的指针，包含接收过滤器配置
 Output: None
 Return: int16_t - 成功返回 MPU_HAL_STATUS_OK，失败返回 MPU_HAL_STATUS_ERR
 Others:
*************************************************/
int16_t MpuHalSetRxFilter(int16_t handle, const MpuHalFilter_t *pFilter)
{
    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if (pFilter != NULL)
        {
            g_mpuManage.rxHandle[handle].useRxFilter = 1;
            memcpy(&(g_mpuManage.rxHandle[handle].rxFilterConfig), pFilter, sizeof(MpuHalFilter_t));
        }
        else
        {
            g_mpuManage.rxHandle[handle].useRxFilter = 0;
        }
        return MPU_HAL_STATUS_OK;
    }
    return MPU_HAL_STATUS_ERR;
}

/*************************************************
 Function: MpuHalSetRxBuffer
 Description: 设置 MPU 接收句柄的接收缓冲区
 Input: handle - 接收句柄索引
        pBuffer - 指向接收缓冲区的指针
        bufferSize - 接收缓冲区大小（字节）
 Output: None
 Return: int16_t - 成功返回 MPU_HAL_STATUS_OK，失败返回 MPU_HAL_STATUS_ERR
 Others:
*************************************************/
int16_t MpuHalSetRxBuffer(int16_t handle, uint8_t *pBuffer, uint32_t bufferSize)
{
    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if (pBuffer != NULL)
        {
            g_mpuManage.rxHandle[handle].rxQueueHandle = xQueueCreate(10, sizeof(uint32_t));
            g_mpuManage.rxHandle[handle].rxIndexIn = 0;
            g_mpuManage.rxHandle[handle].pDataBufferRx = pBuffer;
            g_mpuManage.rxHandle[handle].dataBufferSize = bufferSize;
            return MPU_HAL_STATUS_OK;
        }
    }
    return MPU_HAL_STATUS_ERR;
}

/*************************************************
 Function: WriteToTxRingBuffer
 Description: 辅助函数 - 安全且极速地将数据写入 TX 环形缓冲区
 Input: src - 指向要写入的数据缓冲区的指针
        len - 要写入的数据长度（字节）
 Output: None
 Return: None
 Others:
*************************************************/
static void WriteToTxRingBuffer(const uint8_t *src, uint16_t len)
{
    uint16_t space_to_end = MPU_TX_RING_BUF_SIZE - g_uartTxHead;
    if (len <= space_to_end)
    {
        memcpy(&g_uartTxRingBuf[g_uartTxHead], src, len);
        g_uartTxHead = (g_uartTxHead + len) & MPU_TX_RING_BUF_MASK;
    }
    else
    {
        memcpy(&g_uartTxRingBuf[g_uartTxHead], src, space_to_end);
        memcpy(&g_uartTxRingBuf[0], src + space_to_end, len - space_to_end);
        g_uartTxHead = len - space_to_end;
    }
}

/*************************************************
 Function: MpuHalTransmit
 Description: 发送 MPU 数据包
 Input: handle - 发送句柄索引
        pTxMsg - 指向 MpuHalDataPack_t 结构体的指针，包含待发送的数据
 Output: None
 Return: int16_t - 成功返回 MPU_HAL_STATUS_OK，失败返回 MPU_HAL_STATUS_ERR
 Others:
*************************************************/
int16_t MpuHalTransmit(int16_t handle, const MpuHalDataPack_t *pTxMsg)
{
    uint16_t crc, totalLen, freeSpace;
    uint8_t packHeader[MPU_PROTOCAL_HEADER_LEN];
    uint8_t crcBuf[2];
    uint8_t nextLenHead;
    int16_t ret = MPU_HAL_STATUS_OK;

    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX) && (pTxMsg != NULL))
    {
        totalLen = MPU_PROTOCAL_HEADER_LEN + pTxMsg->dataLength + 2;
        
        /* 1. 检查环形缓冲是否装得下这帧 */
        if (totalLen < (MPU_TX_RING_BUF_SIZE - 10))
        {
            MpuPackHeader(packHeader, pTxMsg);
            crc = MpuPackGetCrc(packHeader, pTxMsg);
            crcBuf[0] = (crc >> 8) & 0xFF;
            crcBuf[1] = crc & 0xFF;

            __disable_irq();
            
            freeSpace = (g_uartTxTail - g_uartTxHead - 1) & MPU_TX_RING_BUF_MASK;
            nextLenHead = (g_txLenHead + 1) & (MPU_TX_FRAME_QUEUE_SIZE - 1);

            /* 2. 只有当数据空间足够，且“长度记录队列”也没有满时，才允许入队 */
            if ((totalLen <= freeSpace) && (nextLenHead != g_txLenTail))
            {
                /* 写入数据 */
                WriteToTxRingBuffer(packHeader, MPU_PROTOCAL_HEADER_LEN);
                WriteToTxRingBuffer(pTxMsg->pDataBuffer, pTxMsg->dataLength);
                WriteToTxRingBuffer(crcBuf, 2);
                
                /* 记录这帧的确切长度 */
                g_txFrameLens[g_txLenHead] = totalLen;
                g_txLenHead = nextLenHead;
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR; /* 发送过快，上层需重试 */
            }
            __enable_irq();
        }
        else ret = MPU_HAL_STATUS_ERR;
    }
    else ret = MPU_HAL_STATUS_ERR;
    
    return ret;
}

/*************************************************
 Function: ReadFromRingBuffer
 Description: 辅助函数 - 从环形缓冲区中提取指定长度的数据
 Input: dest - 目标数据缓冲区指针
        srcBuf - 源环形缓冲区指针
        srcSize - 源环形缓冲区总大小
        srcIndex - 指向当前读取位置的指针，读取后会自动更新
        readLen - 需要读取的数据长度
 Output: None
 Return: None
 Others:
*************************************************/
static void ReadFromRingBuffer(uint8_t *dest, const uint8_t *srcBuf, uint16_t srcSize, uint16_t *srcIndex, uint16_t readLen)
{
    uint16_t space = srcSize - *srcIndex;
    uint16_t newIndex;

    if (readLen <= space)
    {
        memcpy(dest, &srcBuf[*srcIndex], readLen);
        newIndex = *srcIndex + readLen;
        if (newIndex == srcSize) newIndex = 0;
        *srcIndex = newIndex; // 一次性原子赋值
    }
    else
    {
        memcpy(dest, &srcBuf[*srcIndex], space);
        memcpy(dest + space, srcBuf, readLen - space);
        *srcIndex = readLen - space; // 这里本来就是一次性赋值，安全
    }
}

/*************************************************
 Function: MpuHalReceive
 Description: 接收 MPU 数据包
 Input: handle - 接收句柄索引
        pRxMsg - 指向 MpuHalDataPack_t 结构体的指针，用于存储接收的数据
        waitTime - 等待接收超时时间（毫秒）
 Output: None
 Return: int16_t - 成功返回 MPU_HAL_STATUS_OK，失败返回 MPU_HAL_STATUS_ERR
 Others:
*************************************************/
int16_t MpuHalReceive(int16_t handle, MpuHalDataPack_t *pRxMsg, uint32_t waitTime)
{
    uint16_t len, crc, crcRx, index;
    uint32_t data;
    uint8_t packHeader[10];
    uint8_t crcBuf[2];
    QueueHandle_t queHandle;
    int16_t ret = MPU_HAL_STATUS_OK;

    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX) && (pRxMsg != NULL))
    {
        queHandle = g_mpuManage.rxHandle[handle].rxQueueHandle;
        if (xQueueReceive(queHandle, &data, waitTime) == pdPASS)
        {
            index = (data >> 16) & 0xFFFF;
            len = data & 0xFFFF;
            if ((pRxMsg->dataBufferSize + MPU_PROTOCAL_HEADER_LEN + 2) >= len)
            {
                ReadFromRingBuffer(packHeader, g_mpuManage.rxHandle[handle].pDataBufferRx, g_mpuManage.rxHandle[handle].dataBufferSize, &index, MPU_PROTOCAL_HEADER_LEN);
                ReadFromRingBuffer(pRxMsg->pDataBuffer, g_mpuManage.rxHandle[handle].pDataBufferRx, g_mpuManage.rxHandle[handle].dataBufferSize, &index, len - MPU_PROTOCAL_HEADER_LEN - 2);
                pRxMsg->dataLength = len - MPU_PROTOCAL_HEADER_LEN - 2;
                
                ReadFromRingBuffer(crcBuf, g_mpuManage.rxHandle[handle].pDataBufferRx, g_mpuManage.rxHandle[handle].dataBufferSize, &index, 2);
                crcRx = (crcBuf[0] << 8) | crcBuf[1];

                crc = MpuPackGetCrc(packHeader, pRxMsg);
                if (crcRx == crc)
                {
                    pRxMsg->aid = packHeader[2];
                    pRxMsg->mid = packHeader[3];
                    pRxMsg->subcommand = packHeader[4];
                }
                else ret = MPU_HAL_STATUS_ERR;
            }
            else ret = MPU_HAL_STATUS_ERR;
        }
        else ret = MPU_HAL_STATUS_ERR;
    }
    else ret = MPU_HAL_STATUS_ERR;

    return ret;
}

/*************************************************
 Function: MpuHalUartInterruptCallback
 Description: UART 中断回调函数，用于接收数据
 Input: data - 从 UART 接收的数据字节
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalUartInterruptCallback(uint8_t data)
{
    uint16_t next_head = (g_uartRxHead + 1) & MPU_RX_RING_BUF_MASK;
    if (next_head != g_uartRxTail) 
    {
        g_uartRxRingBuf[g_uartRxHead] = data;
        g_uartRxHead = next_head;
    }
}

/*************************************************
 Function: MpuHalUartTimerCallback
 Description: UART 定时器回调函数，用于处理接收数据
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalUartTimerCallback(void)
{
    while (g_uartRxTail != g_uartRxHead)
    {
        uint8_t rx_data = g_uartRxRingBuf[g_uartRxTail];
        g_uartRxTail = (g_uartRxTail + 1) & MPU_RX_RING_BUF_MASK;
        UartProtocalProcess_Byte(rx_data, 1);
    }
}

/*************************************************
 Function: UartProtocalProcess_Byte
 Description: UART 协议解析状态机，处理单字节输入
 Input: rx_data - 从 UART 接收的数据字节
        IsrFlag - 是否在中断服务 routines 中调用
 Output: None
 Return: None
 Others:
*************************************************/
static inline void UartProtocalProcess_Byte(uint8_t rx_data, uint8_t IsrFlag)
{
    MpuUartProtocalBuffer_t *pProtocalData = &g_mpuUartProtocalBuffer;

    if (0 == pProtocalData->dataCount)
    {
        if (0x55 == rx_data)
        {
            pProtocalData->data[pProtocalData->dataCount++] = rx_data;
        }
    }
    else if (1 == pProtocalData->dataCount)
    {
        if (0xAA == rx_data)
        {
            pProtocalData->data[pProtocalData->dataCount++] = rx_data;
        }
        else
        {
            pProtocalData->dataCount = (0x55 == rx_data) ? 1 : 0;
        }
    }
    else if (pProtocalData->dataCount < MPU_PROTOCAL_HEADER_LEN)
    {
        pProtocalData->data[pProtocalData->dataCount++] = rx_data;
        if (MPU_PROTOCAL_HEADER_LEN == pProtocalData->dataCount)
        {
            pProtocalData->dataLength = ((uint16_t)(pProtocalData->data[5]) << 8) | pProtocalData->data[6];
            if (pProtocalData->dataLength > (sizeof(pProtocalData->data) - (MPU_PROTOCAL_HEADER_LEN + 2)))
            {
                pProtocalData->dataCount = 0; 
                pProtocalData->dataLength = 0;
            }
        }
    }
    else
    {
        pProtocalData->data[pProtocalData->dataCount++] = rx_data;
        if (pProtocalData->dataCount >= (pProtocalData->dataLength + MPU_PROTOCAL_HEADER_LEN + 2))
        {
            MpuDataDispatch(pProtocalData->data, pProtocalData->dataCount, IsrFlag);
            pProtocalData->dataLength = 0;
            pProtocalData->dataCount = 0;
        }
    }
}

/*************************************************
 Function: MpuHalMainUartInit
 Description: 初始化主 UART 接口
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
static void MpuHalMainUartInit(void)
{
    R_UART5_Create();
    R_UART5_Start();
}

/*************************************************
 Function: MpuHalInit
 Description: 初始化 MPU 模块
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalInit(void)
{
    memset(&g_mpuManage, 0, sizeof(g_mpuManage));
    g_mpuManage.wakeoutTimeCount = 10;
    g_mpuManage.wakeMode = 1;
    MpuHalGpioInit();
    MpuHalMainUartInit(); // 115200 * 4
}

/*************************************************
 Function: MpuHalTxTask
 Description: MPU 模块的 UART 发送任务 (无队列防撕裂机制)
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalTxTask(void)
{
    uint16_t frameLen;

    if (R_UART5_SendStatus() != 0)
    {
        return;
    }

    if (g_txLenHead != g_txLenTail)
    {
        frameLen = g_txFrameLens[g_txLenTail];
        g_txLenTail = (g_txLenTail + 1) & (MPU_TX_FRAME_QUEUE_SIZE - 1);
        ReadFromRingBuffer(s_flatTxBuffer, g_uartTxRingBuf, MPU_TX_RING_BUF_SIZE, (uint16_t*)&g_uartTxTail, frameLen);
        R_UART5_Send(s_flatTxBuffer, frameLen);
    }
}

