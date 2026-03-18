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
#define MPU_HAL_TX_BUFFER               1072
#define MPU_HAL_RX_BUFFER               4096
#define MPU_RX_RING_BUF_SIZE            4096
#define MPU_RX_RING_BUF_MASK            (MPU_RX_RING_BUF_SIZE - 1) /* 用于替代取模运算的高效掩码 */

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
    QueueHandle_t txQueueHandle;
    uint8_t buffer[MPU_HAL_TX_BUFFER];
    uint16_t index;
} MpuUartTxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_TX_BUFFER];
    uint16_t txLength;
} MpuTxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_RX_BUFFER];
    uint16_t txLength;
} MpuRxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_RX_BUFFER];
    uint16_t dataCount;
} MpuProtocolBuffer_t;

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
volatile uint8_t g_uartRxRingBuf[MPU_RX_RING_BUF_SIZE];
volatile uint16_t g_uartRxHead = 0;  /* 中断写入位置 */
volatile uint16_t g_uartRxTail = 0;  /* 定时器读取位置 */

static MpuUartProtocalBuffer_t g_mpuUartProtocalBuffer;
static MpuUartTxBuffer_t g_mpuUartTxBuffer;
static MpuHalManage_t g_mpuManage;

/****************************** Function Declarations *************************/
static void MpuHalGpioInit(void);
static int16_t MpuUartTransmit(const uint8_t *pTxData, uint16_t txLength);
static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq);
static inline void UartProtocalProcess_Byte(uint8_t rx_data, uint8_t IsrFlag); /* 优化为 inline */
static void MpuHalTxTaskInit(void);
static void ReadFromRingBuffer(uint8_t *dest, const uint8_t *srcBuf, uint16_t srcSize, uint16_t *srcIndex, uint16_t readLen);

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
    // Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_AG591_RST_EN_Pin18_0, STD_LOW);
    // Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_LEVEL_SHIFT_EN_Pin11_15, STD_HIGH);
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
                    /***** copy data to receive buffer (Optimized with memcpy) *****/
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
                    
                    /******** dispatch data*******************************************/
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
    headerBuffer[8] = 0x00; /*reserved*/
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
    uint16_t crc;

    crc = 0x0000;
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
    int16_t handle, index;

    handle = -1;
    index = 0;

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
    else
    {
        return MPU_HAL_STATUS_ERR;
    }
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
        else
        {
            return MPU_HAL_STATUS_ERR;
        }
    }
    else
    {
        return MPU_HAL_STATUS_ERR;
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
    static uint8_t sTxBuffer[MPU_HAL_TX_BUFFER];
    uint16_t crc, index;
    uint8_t packHeader[20];
    int16_t ret = MPU_HAL_STATUS_OK;

    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if (pTxMsg != NULL)
        {
            if (pTxMsg->dataLength < 4000)
            {
                __disable_irq();
                MpuPackHeader(packHeader, pTxMsg);
                crc = MpuPackGetCrc(packHeader, pTxMsg);

                index = 0;
                memcpy(sTxBuffer + index, packHeader, MPU_PROTOCAL_HEADER_LEN);
                index += MPU_PROTOCAL_HEADER_LEN;
                memcpy(sTxBuffer + index, pTxMsg->pDataBuffer, pTxMsg->dataLength);
                index += pTxMsg->dataLength;
                sTxBuffer[index] = (crc >> 8) & 0xFF;
                index++;
                sTxBuffer[index] = crc & 0xFF;
                index++;
                MpuUartTransmit(sTxBuffer, index);
                __enable_irq();
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR;
            }
        }
        else
        {
            ret = MPU_HAL_STATUS_ERR;
        }
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
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
    if (readLen <= space)
    {
        memcpy(dest, &srcBuf[*srcIndex], readLen);
        *srcIndex += readLen;
        if (*srcIndex == srcSize) *srcIndex = 0;
    }
    else
    {
        memcpy(dest, &srcBuf[*srcIndex], space);
        memcpy(dest + space, srcBuf, readLen - space);
        *srcIndex = readLen - space;
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

    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        index = handle & 0xFF;
        if (pRxMsg != NULL)
        {
            queHandle = g_mpuManage.rxHandle[index].rxQueueHandle;
            if (xQueueReceive(queHandle, &data, waitTime) == pdPASS)
            {
                index = (data >> 16) & 0xFFFF;
                len = data & 0xFFFF;
                if ((pRxMsg->dataBufferSize + MPU_PROTOCAL_HEADER_LEN + 2) >= len)
                {
                    /****receive header (Optimized) ****************************/
                    ReadFromRingBuffer(packHeader, g_mpuManage.rxHandle[handle].pDataBufferRx, g_mpuManage.rxHandle[handle].dataBufferSize, &index, MPU_PROTOCAL_HEADER_LEN);
                    
                    /*******receive service data (Optimized) **************************************/
                    ReadFromRingBuffer(pRxMsg->pDataBuffer, g_mpuManage.rxHandle[handle].pDataBufferRx, g_mpuManage.rxHandle[handle].dataBufferSize, &index, len - MPU_PROTOCAL_HEADER_LEN - 2);
                    pRxMsg->dataLength = len - MPU_PROTOCAL_HEADER_LEN - 2;
                    
                    /* receive crc */
                    ReadFromRingBuffer(crcBuf, g_mpuManage.rxHandle[handle].pDataBufferRx, g_mpuManage.rxHandle[handle].dataBufferSize, &index, 2);
                    crcRx = (crcBuf[0] << 8) | crcBuf[1];

                    crc = MpuPackGetCrc(packHeader, pRxMsg);
                    if (crcRx == crc)
                    {
                        pRxMsg->aid = packHeader[2];
                        pRxMsg->mid = packHeader[3];
                        pRxMsg->subcommand = packHeader[4];
                    }
                    else
                    {
                        ret = MPU_HAL_STATUS_ERR;
                    }
                }
                else
                {
                    ret = MPU_HAL_STATUS_ERR;
                }
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR;
            }
        }
        else
        {
            ret = MPU_HAL_STATUS_ERR;
        }
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }

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
    /* 计算下一个写入位置 (已使用掩码替代 % 优化性能) */
    uint16_t next_head = (g_uartRxHead + 1) & MPU_RX_RING_BUF_MASK;
    
    /* 如果环形缓冲区没满，就写入数据 */
    if (next_head != g_uartRxTail) 
    {
        g_uartRxRingBuf[g_uartRxHead] = data;
        g_uartRxHead = next_head;
    }
    /* 如果满了，只能丢弃当前字节, 4K 缓冲区下，1K 的包绝不会满 */
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
    /* 只要头和尾不相遇，说明缓冲区里有新数据 */
    while (g_uartRxTail != g_uartRxHead)
    {
        /* 取出一个字节 (已使用掩码替代 % 优化性能) */
        uint8_t rx_data = g_uartRxRingBuf[g_uartRxTail];
        g_uartRxTail = (g_uartRxTail + 1) & MPU_RX_RING_BUF_MASK;

        /* 直接将单字节喂给协议解析状态机 */
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
            /* 状态机容错处理：如果收到了 55 55 AA，不至于把第二个 55 丢掉 */
            pProtocalData->dataCount = (0x55 == rx_data) ? 1 : 0;
        }
    }
    else if (pProtocalData->dataCount < MPU_PROTOCAL_HEADER_LEN)
    {
        pProtocalData->data[pProtocalData->dataCount++] = rx_data;
        
        if (MPU_PROTOCAL_HEADER_LEN == pProtocalData->dataCount)
        {
            /* 解析长度位 (假设 第5、6字节是长度) */
            pProtocalData->dataLength = ((uint16_t)(pProtocalData->data[5]) << 8) | pProtocalData->data[6];
            
            /* 安全校验：防止长度字段异常导致数组越界写入崩溃 */
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
        
        /* 检查是否接收到了完整的包 (头 + 数据长度 + 校验/尾部) */
        if (pProtocalData->dataCount >= (pProtocalData->dataLength + MPU_PROTOCAL_HEADER_LEN + 2))
        {
            // check sum and dispatch (处理完整的一帧)
            MpuDataDispatch(pProtocalData->data, pProtocalData->dataCount, IsrFlag);
            
            /* 处理完毕，复位状态机，等待下一个包 */
            pProtocalData->dataLength = 0;
            pProtocalData->dataCount = 0;
            /* 绝对不要在这里用 memset，毫无必要且浪费时间！ */
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
    MpuHalTxTaskInit();
    MpuHalMainUartInit(); // 115200 * 4
}

/*************************************************
 Function: MpuHalTxTaskInit
 Description: 初始化 MPU 模块的 UART 发送任务
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
static void MpuHalTxTaskInit(void)
{
    g_mpuUartTxBuffer.txQueueHandle = xQueueCreate(20, sizeof(uint32_t));
}

/*************************************************
 Function: MpuHalTxTask
 Description: MPU 模块的 UART 发送任务
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalTxTask(void)
{
    uint32_t queueData, remain, i;
    uint16_t startAddress;
    uint16_t length;

    uint8_t temp[50], j;
    uint8_t ret;

    if (R_UART5_SendStatus() != 0)
    {
        return;
    }

    if (xQueueReceive(g_mpuUartTxBuffer.txQueueHandle, &queueData, 0) != pdPASS)
    {
        return;
    }
    // 发送FIFO中的数据;
    i = 0;
    startAddress = (queueData >> 16) & 0xFFFF;
    remain = length = queueData & 0xFFFF;
    R_UART5_Send(&g_mpuUartTxBuffer.buffer[startAddress], length);
}

/*************************************************
 Function: MpuUartTransmit
 Description: 发送数据到 MPU 模块的 UART 接口
 Input: pTxData - 指向要发送数据的指针
        txLength - 要发送的数据长度
 Output: None
 Return: 0 - 成功
         -1 - 失败
 Others:
*************************************************/
static int16_t MpuUartTransmit(const uint8_t *pTxData, uint16_t txLength)
{
    uint16_t i;
    uint32_t data;
    data = g_mpuUartTxBuffer.index << 16;
    for (i = 0; i < txLength; i++)
    {
        g_mpuUartTxBuffer.buffer[g_mpuUartTxBuffer.index++] = pTxData[i];
        if (g_mpuUartTxBuffer.index >= MPU_HAL_TX_BUFFER)
        {
            g_mpuUartTxBuffer.index = 0;
        }
    }
    data |= txLength;
    xQueueSend(g_mpuUartTxBuffer.txQueueHandle, &data, 0);
    return 0;
}