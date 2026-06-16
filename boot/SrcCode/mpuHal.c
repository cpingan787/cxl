/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: mpuHal.c
 Author:
 Created Time:
 Description: 
    MPU UART 硬件抽象层。
    优化了接收链路，彻底移除 RTOS Queue 依赖，采用自描述高并发环形缓冲区，
    解决大数据量连续传输时的回环覆盖与丢帧问题。
 Others:
*************************************************/
/****************************** include ***************************************/
#include "mpuHal.h"
#include "logHal.h"
#include "osHal.h"
#include "crc8_16_32.h"
#include "r_cg_macrodriver.h"
#include "Dio.h"
#include <string.h>

#ifdef _FREERTOS_
#include "FreeRTOS.h"
#include "task.h"
#endif

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

#define MPU_TX_FRAME_QUEUE_SIZE         16 /* 最多允许排队 16 帧 */

/****************************** Type Definitions ******************************/


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
    volatile uint16_t rxIndexIn;    /* 接收写入指针 */
    volatile uint16_t rxIndexOut;   /* 接收读取指针 */
    volatile uint16_t rxFrameCount; /* 缓冲区内完整的帧数*/
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

/* RX 中断级资源 */
volatile uint8_t g_uartRxRingBuf[MPU_RX_RING_BUF_SIZE];
volatile uint16_t g_uartRxHead = 0;  /* 中断写入位置 */
volatile uint16_t g_uartRxTail = 0;  /* 定时器读取位置 */

/* TX 资源 */
static uint8_t g_uartTxRingBuf[MPU_TX_RING_BUF_SIZE];
static volatile uint16_t g_uartTxHead = 0;    
static volatile uint16_t g_uartTxTail = 0;    
static volatile uint16_t g_uartTxLastLen = 0; 

/* 记录每一帧长度的环形队列 */
static volatile uint16_t g_txFrameLens[MPU_TX_FRAME_QUEUE_SIZE];
static volatile uint8_t  g_txLenHead = 0;
static volatile uint8_t  g_txLenTail = 0;

/* 底层发送平铺缓冲 */
static uint8_t s_flatTxBuffer[MPU_TX_RING_BUF_SIZE];

static MpuUartProtocalBuffer_t g_mpuUartProtocalBuffer;
static MpuHalManage_t g_mpuManage;
volatile uint8_t g_MpuEndFlag = 0;

/****************************** Function Declarations *************************/
static void MpuHalGpioInit(void);
static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq);
static inline void UartProtocalProcess_Byte(uint8_t rx_data, uint8_t IsrFlag);
static void ReadFromRingBuffer(uint8_t *dest, const uint8_t *srcBuf, uint16_t srcSize, uint16_t *srcIndex, uint16_t readLen);
static void WriteToTxRingBuffer(const uint8_t *src, uint16_t len);
static void WriteToRxInstanceRingBuffer(MpuHalHandle_t *pHandle, const uint8_t *src, uint16_t len);

/****************************** Public Function Implementations ******************************/

/*************************************************
 Function: MpuHalGpioInit
 Description: 初始化 MPU 相关 GPIO 引脚
 Input: void
 Output: None
 Return: void
*************************************************/
static void MpuHalGpioInit(void)
{
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7, STD_HIGH);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3, STD_HIGH);
}

/*************************************************
 Function: WriteToRxInstanceRingBuffer
 Description: 将完整数据帧写入指定句柄的接收环形缓冲区
 Input: 
        pHandle - 接收句柄
        src     - 数据源指针
        len     - 写入长度
 Output: None
 Return: void
*************************************************/
static void WriteToRxInstanceRingBuffer(MpuHalHandle_t *pHandle, const uint8_t *src, uint16_t len)
{
    uint16_t space_to_end = pHandle->dataBufferSize - pHandle->rxIndexIn;
    if (len <= space_to_end)
    {
        memcpy(&pHandle->pDataBufferRx[pHandle->rxIndexIn], src, len);
        pHandle->rxIndexIn = (pHandle->rxIndexIn + len);
        if (pHandle->rxIndexIn == pHandle->dataBufferSize)
        {
            pHandle->rxIndexIn = 0;
        }
    }
    else
    {
        memcpy(&pHandle->pDataBufferRx[pHandle->rxIndexIn], src, space_to_end);
        memcpy(&pHandle->pDataBufferRx[0], src + space_to_end, len - space_to_end);
        pHandle->rxIndexIn = len - space_to_end;
    }
}

/*************************************************
 Function: MpuDataDispatch
 Description: 分发 MPU 完整数据帧到指定的句柄缓冲区
 Input: pData - 指向接收数据的指针
        length - 数据总长度
        irq - 是否在中断上下文调用
 Output: None
 Return: void
*************************************************/
static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq)
{
    uint16_t i;
    uint16_t freeSpace;
    MpuHalHandle_t *pHandle;

    for (i = 0; i < MPU_HAL_HANDLE_INSTANSE_MAX; i++)
    {
        pHandle = &g_mpuManage.rxHandle[i];
        if ((pHandle->useFlag == 1) && (pHandle->pDataBufferRx != NULL))
        {
            if ((pHandle->useRxFilter == 1) && (pData[2] == pHandle->rxFilterConfig.aid))
            {
                if ((pData[3] >= pHandle->rxFilterConfig.midMin) && (pData[3] <= pHandle->rxFilterConfig.midMax))
                {
                    if (pHandle->rxIndexIn >= pHandle->rxIndexOut)
                    {
                        freeSpace = pHandle->dataBufferSize - (pHandle->rxIndexIn - pHandle->rxIndexOut) - 1;
                    }
                    else
                    {
                        freeSpace = pHandle->rxIndexOut - pHandle->rxIndexIn - 1;
                    }

                    if (length <= freeSpace)
                    {
                        WriteToRxInstanceRingBuffer(pHandle, pData, length);
                        
                        __disable_irq();
                        pHandle->rxFrameCount++;
                        __enable_irq();
                    }
                }
            }
        }
    }
}

/*************************************************
 Function: MpuPackHeader
 Description: 组装 MPU 协议包头
 Input:
        headerBuffer - 输出包头缓存
        pMsg         - 数据包结构体
 Output: headerBuffer 填充完成
 Return: 包头长度（固定 8 字节）
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
 Description: 计算 MPU 数据包 CRC16（Header + Payload）
 Input:
        header - 包头数据
        pMsg   - 数据包结构体
 Output: None
 Return: CRC16 校验值
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
 Description: 申请一个接收句柄实例
 Input: None
 Output: None
 Return: 成功返回句柄索引，失败返回 -1
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
 Description: 设置接收过滤条件
 Input:
        handle  - 句柄索引
        pFilter - 过滤器配置
 Output: None
 Return: 状态码
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
 Description: 配置接收环形缓冲区
 Input:
        handle     - 句柄索引
        pBuffer    - 缓冲区指针
        bufferSize - 缓冲区大小
 Output: None
 Return: 状态码
*************************************************/
int16_t MpuHalSetRxBuffer(int16_t handle, uint8_t *pBuffer, uint32_t bufferSize)
{
    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if (pBuffer != NULL)
        {
            g_mpuManage.rxHandle[handle].rxIndexIn = 0;
            g_mpuManage.rxHandle[handle].rxIndexOut = 0;
            g_mpuManage.rxHandle[handle].rxFrameCount = 0;
            
            g_mpuManage.rxHandle[handle].pDataBufferRx = pBuffer;
            g_mpuManage.rxHandle[handle].dataBufferSize = bufferSize;
            return MPU_HAL_STATUS_OK;
        }
    }
    return MPU_HAL_STATUS_ERR;
}

/*************************************************
 Function: WriteToTxRingBuffer
 Description: 向 TX 环形缓冲区写入数据
 Input:
        src - 数据源
        len - 数据长度
 Output: None
 Return: void
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
 Description: 发送 MPU 数据包（写入 TX 环形缓冲区）
 Input:
        handle - 句柄
        pTxMsg - 待发送数据包
 Output: None
 Return: 状态码
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
        
        if (totalLen < (MPU_TX_RING_BUF_SIZE - 10))
        {
            MpuPackHeader(packHeader, pTxMsg);
            crc = MpuPackGetCrc(packHeader, pTxMsg);
            crcBuf[0] = (crc >> 8) & 0xFF;
            crcBuf[1] = crc & 0xFF;

            __disable_irq();
            
            freeSpace = (g_uartTxTail - g_uartTxHead - 1) & MPU_TX_RING_BUF_MASK;
            nextLenHead = (g_txLenHead + 1) & (MPU_TX_FRAME_QUEUE_SIZE - 1);

            if ((totalLen <= freeSpace) && (nextLenHead != g_txLenTail))
            {
                WriteToTxRingBuffer(packHeader, MPU_PROTOCAL_HEADER_LEN);
                WriteToTxRingBuffer(pTxMsg->pDataBuffer, pTxMsg->dataLength);
                WriteToTxRingBuffer(crcBuf, 2);
                
                g_txFrameLens[g_txLenHead] = totalLen;
                g_txLenHead = nextLenHead;
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR; 
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
 Description: 从环形缓冲区读取指定长度数据
 Input:
        dest     - 目标缓存
        srcBuf   - 源环形缓冲区
        srcSize  - 缓冲区大小
        srcIndex - 当前读指针
        readLen  - 读取长度
 Output: dest 填充数据
 Return: void
*************************************************/
static void ReadFromRingBuffer(uint8_t *dest, const uint8_t *srcBuf, uint16_t srcSize, uint16_t *srcIndex, uint16_t readLen)
{
    uint16_t space = srcSize - *srcIndex;

    if (readLen <= space)
    {
        memcpy(dest, &srcBuf[*srcIndex], readLen);
        *srcIndex = (*srcIndex + readLen);
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
 Description: 从接收环形缓冲区读取一帧完整数据
 Input:
        handle   - 接收句柄
        pRxMsg   - 接收数据结构
        waitTime - 超时时间（轮询次数）
 Output: pRxMsg 填充数据
 Return: 状态码
*************************************************/
int16_t MpuHalReceive(int16_t handle, MpuHalDataPack_t *pRxMsg, uint32_t waitTime)
{
    uint16_t payloadLen, totalLen, crc, crcRx;
    uint8_t packHeader[MPU_PROTOCAL_HEADER_LEN];
    uint8_t crcBuf[2];
    uint32_t waitCount = waitTime;
    MpuHalHandle_t *pHandle;

    if ((handle < 0) || (handle >= MPU_HAL_HANDLE_INSTANSE_MAX) || (pRxMsg == NULL))
    {
        return MPU_HAL_STATUS_ERR;
    }

    pHandle = &g_mpuManage.rxHandle[handle];

    while ((pHandle->rxFrameCount == 0) && (waitCount > 0))
    {
        waitCount--;
    }

    if (pHandle->rxFrameCount > 0)
    {
        uint16_t readIndex = pHandle->rxIndexOut;

        ReadFromRingBuffer(packHeader, pHandle->pDataBufferRx, pHandle->dataBufferSize, &readIndex, MPU_PROTOCAL_HEADER_LEN);
        
        payloadLen = ((uint16_t)packHeader[5] << 8) | packHeader[6];
        totalLen = MPU_PROTOCAL_HEADER_LEN + payloadLen + 2;

        if (pRxMsg->dataBufferSize >= payloadLen)
        {
            ReadFromRingBuffer(pRxMsg->pDataBuffer, pHandle->pDataBufferRx, pHandle->dataBufferSize, &readIndex, payloadLen);
            pRxMsg->dataLength = payloadLen;
            
            ReadFromRingBuffer(crcBuf, pHandle->pDataBufferRx, pHandle->dataBufferSize, &readIndex, 2);
            crcRx = ((uint16_t)crcBuf[0] << 8) | crcBuf[1];

            __disable_irq();
            pHandle->rxIndexOut = readIndex;
            pHandle->rxFrameCount--;
            __enable_irq();

            /* 校验 CRC */
            crc = MpuPackGetCrc(packHeader, pRxMsg);
            if (crcRx == crc)
            {
                pRxMsg->aid = packHeader[2];
                pRxMsg->mid = packHeader[3];
                pRxMsg->subcommand = packHeader[4];
                return MPU_HAL_STATUS_OK;
            } else {
                TBOX_PRINT("MPU HAL: CRC error, expect %04x, get %04x\r\n", crc, crcRx);
            }
        }
        else
        {
            __disable_irq();
            pHandle->rxIndexOut = (pHandle->rxIndexOut + totalLen) % pHandle->dataBufferSize;
            pHandle->rxFrameCount--;
            __enable_irq();
        }
    }

    return MPU_HAL_STATUS_ERR;
}

/*************************************************
 Function: MpuHalUartInterruptCallback
 Description: UART 接收中断回调
 Input:
        data - 接收到的字节
 Output: None
 Return: void
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
static uint8_t s_rxIdleTimer = 0;
/*************************************************
 Function: MpuHalUartTimerCallback
 Description: UART 定时处理函数
 Input: None
 Output: None
 Return: void
*************************************************/
void MpuHalUartTimerCallback(void)
{
    uint16_t processCount = 0;
    while (g_uartRxTail != g_uartRxHead)
    {
        uint8_t rx_data = g_uartRxRingBuf[g_uartRxTail];
        g_uartRxTail = (g_uartRxTail + 1) & MPU_RX_RING_BUF_MASK;
        UartProtocalProcess_Byte(rx_data, 1);
        processCount++;
    }

    if (processCount == 0 && g_mpuUartProtocalBuffer.dataCount > 0)
    {
        s_rxIdleTimer++;
        if (s_rxIdleTimer >= 2) 
        {
            g_mpuUartProtocalBuffer.dataCount = 0;
            g_mpuUartProtocalBuffer.dataLength = 0;
            s_rxIdleTimer = 0;
        }
    }
    else if (processCount > 0)
    {
        s_rxIdleTimer = 0;
    }
}

/*************************************************
 Function: UartProtocalProcess_Byte
 Description: UART 协议字节流解析状态机
 Input:
        rx_data - 接收字节
        IsrFlag - 是否在中断上下文
 Output: None
 Return: void
*************************************************/
static inline void UartProtocalProcess_Byte(uint8_t rx_data, uint8_t IsrFlag)
{
    MpuUartProtocalBuffer_t *pBuf = &g_mpuUartProtocalBuffer;

    pBuf->data[pBuf->dataCount++] = rx_data;

    if (1 == pBuf->dataCount)
    {
        if (0x55 != rx_data) pBuf->dataCount = 0;
    }
    else if (2 == pBuf->dataCount)
    {
        if (0xAA != rx_data)
        {
            if (0x55 == rx_data)
            {
                pBuf->data[0] = 0x55;
                pBuf->dataCount = 1;
            }
            else
            {
                pBuf->dataCount = 0;
            }
        }
    }
    else if (MPU_PROTOCAL_HEADER_LEN == pBuf->dataCount)
    {
        pBuf->dataLength = ((uint16_t)(pBuf->data[5]) << 8) | pBuf->data[6];
        
        if (pBuf->dataLength > (sizeof(pBuf->data) - MPU_PROTOCAL_HEADER_LEN - 2))
        {
            TBOX_PRINT("MPU HAL: Invalid dataLength %d, drop frame\r\n", pBuf->dataLength);
            pBuf->dataCount = 0; 
            pBuf->dataLength = 0;
        }
    }
    else if (pBuf->dataCount >= (pBuf->dataLength + MPU_PROTOCAL_HEADER_LEN + 2))
    {
        MpuDataDispatch(pBuf->data, pBuf->dataCount, IsrFlag);
        pBuf->dataLength = 0;
        pBuf->dataCount = 0;
    }
}

/*************************************************
 Function: MpuHalMainUartInit
 Description: 初始化主 UART 外设
 Input: None
 Output: None
 Return: void
*************************************************/
static void MpuHalMainUartInit(void)
{
    R_UART5_Create();
    R_UART5_Start();
}

/*************************************************
 Function: MpuHalInit
 Description: 初始化 MPU HAL
 Input: None
 Output: None
 Return: void
*************************************************/
void MpuHalInit(void)
{
    memset(&g_mpuManage, 0, sizeof(g_mpuManage));
    g_mpuManage.wakeoutTimeCount = 10;
    g_mpuManage.wakeMode = 1;
    //MpuHalGpioInit();
    MpuHalMainUartInit(); // 115200 * 4
}

/*************************************************
 Function: MpuHalTxTask
 Description: UART 发送任务
 Input: None
 Output: None
 Return: void
*************************************************/
void MpuHalTxTask(void)
{
    uint16_t frameLen;

    if (R_UART5_SendStatus() != 0)
    {
        return;
    }

    if (g_MpuEndFlag == 1)
    {
        return;
    }

    if (g_txLenHead != g_txLenTail)
    {
        frameLen = g_txFrameLens[g_txLenTail];
        g_txLenTail = (g_txLenTail + 1) & (MPU_TX_FRAME_QUEUE_SIZE - 1);
        ReadFromRingBuffer(s_flatTxBuffer, g_uartTxRingBuf, MPU_TX_RING_BUF_SIZE, (uint16_t*)&g_uartTxTail, frameLen);
        MD_STATUS status = R_UART5_Send(s_flatTxBuffer, frameLen);
        if(status != MD_OK)
        {
            TBOX_PRINT("MPU Send failed\r\n");
            return;
        }
        g_MpuEndFlag = 1;
    }
}

static void MpuHalSetPowerkey(uint8_t flag)
{
    if(0==flag)
    {
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_AG591_POWERKEY_EN_Pin18_1, STD_LOW);
    }
    else
    {
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_AG591_POWERKEY_EN_Pin18_1, STD_HIGH);
    }
}

static void MpuHalSetPower(uint8_t flag)
{
    if(0==flag)
    {
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7, STD_LOW);
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3, STD_LOW);
    }
    else
    {
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7, STD_HIGH);
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3, STD_HIGH);
    }
}

static void MpuHalSetWakeOut(uint8_t flag)
{
    if(0==flag)
    {
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_MCU_WAKEUP_NAD_Pin12_0, STD_LOW);
    }
    else
    {
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_MCU_WAKEUP_NAD_Pin12_0, STD_HIGH);
    }
}

void MpuHalCycleProcess(uint32_t cycleTime)
{
    static uint32_t timeCount = 0;

    if (E_MPU_HAL_START_STATE_IDLE == g_mpuManage.startState)
    {
    }
    else if (E_MPU_HAL_START_STATE_POWER_OFF == g_mpuManage.startState)
    {
        timeCount = 0;
        g_mpuManage.startState = E_MPU_HAL_START_STATE_OFF_DELAY;
    }
    else if (E_MPU_HAL_START_STATE_OFF_DELAY == g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if (timeCount >= 500)
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_ON;
            MpuHalSetPower(1);
        }
    }
    else if (E_MPU_HAL_START_STATE_POWER_ON == g_mpuManage.startState)
    {
        timeCount = 0;
        g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_DELAY;
    }
    else if (E_MPU_HAL_START_STATE_POWER_DELAY == g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if (timeCount >= (400 - cycleTime))
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_ON;
        }
    }
    else if (E_MPU_HAL_START_STATE_KEY_ON == g_mpuManage.startState)
    {
        g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_ON_DELAY;
        MpuHalSetPowerkey(1);
        timeCount = 0;
    }
    else if (E_MPU_HAL_START_STATE_KEY_ON_DELAY == g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if (timeCount > (500 - cycleTime))
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_OFF;
            MpuHalSetPowerkey(0);
        }
    }
    else if (E_MPU_HAL_START_STATE_KEY_OFF == g_mpuManage.startState)
    {
        g_mpuManage.startState = E_MPU_HAL_START_STATE_FINISH;
    }
    if (g_mpuManage.wakeoutTimeCount < 2)
    {
        g_mpuManage.wakeoutTimeCount++;
        if (2 == g_mpuManage.wakeoutTimeCount)
        {
            MpuHalSetWakeOut(0);
        }
    }
}

void MpuHal_TriggerPowerOnSequence(void)
{
    g_mpuManage.startState = E_MPU_HAL_START_STATE_OFF_DELAY;
}