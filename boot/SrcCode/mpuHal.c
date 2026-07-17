/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
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
#include "r_cg_uart.h"
#include "stdio.h"
// #include "Dio.h"
// #include "r_cg_csig.h"
// #include "timeSyncSdk.h"
#include "r_port.h"
/****************************** Macro Definitions ******************************/
#define MPU_COMMUNICATION_USE_SPI 0
#define MPU_HAL_HANDLE_INSTANSE_MAX 15
#define MPU_PROTOCAL_HEADER_LEN 8
#define MPU_HAL_TX_BUFFER 1048 // 4096
#define MPU_HAL_TX_SINGLE_BUFFER 1024
#define MPU_HAL_RX_BUFFER 2048
#define MPU_HAL_UART_INT_RX_BUF_LEN 256


/* 根据 IAM_A车_4G_A0 原理图 Sheet16/17 适配 4G NAD 控制 IO
 * MCU: R7F7015813AFP, LTE/NAD: ZM8201V2
 */
#define MPU_LTE_PWR_EN_PORT             Port8
#define MPU_LTE_PWR_EN_PIN              12U     /* LTE_3V8_PWR_EN */

#define MPU_LTE_PWRKEY_PORT             Port8
#define MPU_LTE_PWRKEY_PIN              10U     /* AG591_PWERKEY, MCU 高电平 -> 4G_POWERKEY 低脉冲 */

#define MPU_LTE_RESET_PORT              Port8
#define MPU_LTE_RESET_PIN               11U     /* AG591_RESET_N, MCU 高电平 -> 4G_RESET_N 低脉冲 */

#define MPU_LTE_WAKE_OUT_PORT           Port10
#define MPU_LTE_WAKE_OUT_PIN            7U      /* MCU_WAKEUP_NAD, MCU 高电平 -> WAKEUP_IN_NAD 低脉冲 */

#define MPU_LTE_WAKE_IN_PORT            Port8
#define MPU_LTE_WAKE_IN_PIN             2U      /* LTE_WAKEUP_MCU / WAKEUP_OUT_NAD, input */

#define MPU_LTE_SLEEP_IND_PORT          Port0
#define MPU_LTE_SLEEP_IND_PIN           4U      /* LTE_SLEEP_IND, input */

#define MPU_LEVEL_SHIFT_EN_PORT         Port9
#define MPU_LEVEL_SHIFT_EN_PIN          6U      /* LEVEL_SHIFT_EN */

#define MPU_LTE_POWER_OFF_DELAY_MS       500U
#define MPU_LTE_POWER_DELAY_MS           1000U
#define MPU_LTE_POWERKEY_ON_PULSE_MS     1500U    /* 原理图要求 Power_ON pulse = 1S */

/****************************** Type Definitions ******************************/
typedef struct 
{
    uint8_t data[2048];
    uint16_t dataCount;
    uint16_t dataLength;
} MpuUartProtocalBuffer_t;
typedef struct
{
    QueueHandle_t txQueueHandle;
    uint8_t buffer[MPU_HAL_TX_BUFFER];
    uint8_t activeBuffer[MPU_HAL_TX_SINGLE_BUFFER];
    uint16_t index;
    uint16_t usedSize;
} MpuUartTxBuffer_t;

volatile uint16_t g_mpuUartReciveCount = 0;
volatile uint8_t g_mpuUartErrorType = 0;
volatile uint8_t g_mpuUartErrorFlag = 0;
volatile uint8_t g_mpuSetRecvErrorFlag = 0;

volatile uint8_t g_uartReceiveData0[MPU_HAL_UART_INT_RX_BUF_LEN];
volatile uint8_t g_uartReceiveData1[MPU_HAL_UART_INT_RX_BUF_LEN];
volatile uint8_t g_mpuUartRxBufId;
volatile uint16_t g_mpuUartRxBufCount0;
volatile uint16_t g_mpuUartRxBufCount1;
volatile uint8_t g_mpuUartRxBufDealFlag = 0;

static MpuUartProtocalBuffer_t g_mpuUartProtocalBuffer;
static MpuUartTxBuffer_t g_mpuUartTxBuffer;
static int16_t MpuUartTransmit(const uint8_t *pTxData, uint16_t txLength);
static void MpuHalResetUartRuntimeState(void);

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
    uint8_t wakeMode; /*0:MPU power off,1:Mpu sleep,2:Mpu wake*/
    uint8_t wakeoutTimeCount;
    MpuHalStartState_e startState;
    MpuHalHandle_t rxHandle[MPU_HAL_HANDLE_INSTANSE_MAX];
    uint8_t mcuRequest; /*0:no request,1:requested */
    MpuTxBuffer_t txBuffer[2];
    uint8_t txBufferFlag; /*0:tx buffer0 available,1:tx buffer available */
    MpuRxBuffer_t rxBuffer;
} MpuHalManage_t;

typedef enum
{
    E_SPI_IDLE = 0,
    E_SPI_BUSY,
    E_SPI_DENINT,
} SpiState_e;

/****************************** Global Variables ******************************/

static MpuHalManage_t g_mpuManage;
static uint8_t g_mpuSpiTxBuffer[MPU_HAL_TX_BUFFER];
static SpiState_e g_spiSendStatus = E_SPI_DENINT;
volatile uint8_t g_SpiReceiveData[MPU_HAL_UART_INT_RX_BUF_LEN];

/****************************** Function Declarations *************************/
static void MpuHalResetSpiRuntimeState(void);
static void MpuHal_SpiInit(void);
static void MpuHalGpioInit(void);
static void MpuHalSetPower(uint8_t flag);
static void MpuHalSetPowerkey(uint8_t flag);
static void MpuHalSetWakeOut(uint8_t flag);
static void MpuHalSetReset(uint8_t flag);
static void MpuHalWriteGpio(enum port_t port, uint32_t pin, uint8_t level);
/****************************** Public Function Implementations ******************************/

static void MpuHalWriteGpio(enum port_t port, uint32_t pin, uint8_t level)
{
    R_PORT_SetGpioOutput(port, pin, (level != 0U) ? High : Low);
}

static void MpuHalGpioInit(void)
{
    // 待适配 spi
    // Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_TO_MCU_Pin10_13, STD_LOW);
    // Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_MCU_TO_NAD_EN_Pin10_14, STD_HIGH);
    R_PORT_SetGpioInput(MPU_LTE_WAKE_IN_PORT, MPU_LTE_WAKE_IN_PIN);
    R_PORT_SetGpioInput(MPU_LTE_SLEEP_IND_PORT, MPU_LTE_SLEEP_IND_PIN);

    MpuHalSetPowerkey(0U);
    MpuHalSetReset(0U);
    MpuHalSetWakeOut(1U);
    MpuHalSetPower(1U);

}

static void MpuHalSetPower(uint8_t flag)
{
    if (flag == 0U)
    {
        MpuHalSetPowerkey(0U);
        //MpuHalSetReset(0U);
        MpuHalSetWakeOut(1U);
        MpuHalWriteGpio(MPU_LEVEL_SHIFT_EN_PORT, MPU_LEVEL_SHIFT_EN_PIN, 0U);
        MpuHalWriteGpio(MPU_LTE_PWR_EN_PORT, MPU_LTE_PWR_EN_PIN, 0U);
    }
    else
    {
        MpuHalWriteGpio(MPU_LTE_PWR_EN_PORT, MPU_LTE_PWR_EN_PIN, 1U);
        MpuHalWriteGpio(MPU_LEVEL_SHIFT_EN_PORT, MPU_LEVEL_SHIFT_EN_PIN, 1U);
    }
}

static void MpuHalSetPowerkey(uint8_t flag)
{
    TBOX_PRINT("set powerkey %d", flag);

    /*
     * AG591_PWERKEY 经 Q1704 反相后到 4G_POWERKEY。
     * API flag=1 表示按下 PowerKey：MCU 输出高，模块 PWRKEY 被拉低。
     */
    MpuHalWriteGpio(MPU_LTE_PWRKEY_PORT, MPU_LTE_PWRKEY_PIN, (flag != 0U) ? 1U : 0U);
}

static void MpuHalSetReset(uint8_t flag)
{
    /*
     * AG591_RESET_N 经 Q1707 反相后到 4G_RESET_N。
     * flag=1 表示输出复位脉冲：MCU 输出高，模块 RESET_N 被拉低。
     */
    MpuHalWriteGpio(MPU_LTE_RESET_PORT, MPU_LTE_RESET_PIN, (flag != 0U) ? 1U : 0U);
}

static void MpuHalSetWakeOut(uint8_t flag)
{
    TBOX_PRINT("set wakeup %d", flag);

    /*
     * 保持原接口语义：flag=0 表示唤醒/拉低 NAD 端 WAKEUP_IN，
     * flag=1 表示释放唤醒脚。
     * 板级三极管反相，所以 MCU_WAKEUP_NAD 输出高才会把 WAKEUP_IN_NAD 拉低。
     */
    MpuHalWriteGpio(MPU_LTE_WAKE_OUT_PORT, MPU_LTE_WAKE_OUT_PIN, (flag == 0U) ? 1U : 0U);
}

static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq)
{
    uint16_t i, j, instanceMax;
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
                    /***** copy data to receive buffer*****************/
                    data = (pHandleInstance->rxIndexIn << 16);
                    for (j = 0; j < length; j++)
                    {
                        pHandleInstance->pDataBufferRx[pHandleInstance->rxIndexIn] = pData[j];
                        pHandleInstance->rxIndexIn++;
                        if (pHandleInstance->rxIndexIn >= pHandleInstance->dataBufferSize)
                        {
                            pHandleInstance->rxIndexIn = 0;
                        }
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

static uint16_t MpuPackGetCrc(uint8_t header[], const MpuHalDataPack_t *pMsg)
{
    uint16_t crc;

    crc = 0x0000;
    crc = CcittCrc16(crc, header, MPU_PROTOCAL_HEADER_LEN);
    crc = CcittCrc16(crc, pMsg->pDataBuffer, pMsg->dataLength);
    return crc;
}

static void MpuUartRingCopyOut(uint8_t *pDst, uint16_t startAddress, uint16_t length)
{
    uint16_t firstCopyLength;

    if ((pDst == NULL) || (length == 0))
    {
        return;
    }

    firstCopyLength = MPU_HAL_TX_BUFFER - startAddress;
    if (length <= firstCopyLength)
    {
        memcpy(pDst, &g_mpuUartTxBuffer.buffer[startAddress], length);
    }
    else
    {
        memcpy(pDst, &g_mpuUartTxBuffer.buffer[startAddress], firstCopyLength);
        memcpy(&pDst[firstCopyLength], &g_mpuUartTxBuffer.buffer[0], length - firstCopyLength);
    }
}

static void MpuHalResetUartRuntimeState(void)
{
    g_mpuUartErrorType = 0;
    g_mpuUartErrorFlag = 0;
    g_mpuSetRecvErrorFlag = 0;
    g_mpuUartReciveCount = 0;

    memset((void *)g_uartReceiveData0, 0, sizeof(g_uartReceiveData0));
    memset((void *)g_uartReceiveData1, 0, sizeof(g_uartReceiveData1));
    g_mpuUartRxBufId = 0;
    g_mpuUartRxBufCount0 = 0;
    g_mpuUartRxBufCount1 = 0;
    g_mpuUartRxBufDealFlag = 0;

    memset(&g_mpuUartProtocalBuffer, 0, sizeof(g_mpuUartProtocalBuffer));

    g_mpuUartTxBuffer.index = 0;
    g_mpuUartTxBuffer.usedSize = 0;
    memset(g_mpuUartTxBuffer.buffer, 0, sizeof(g_mpuUartTxBuffer.buffer));
    memset(g_mpuUartTxBuffer.activeBuffer, 0, sizeof(g_mpuUartTxBuffer.activeBuffer));
    if (g_mpuUartTxBuffer.txQueueHandle != NULL)
    {
        (void)xQueueReset(g_mpuUartTxBuffer.txQueueHandle);
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
        if (timeCount >= MPU_LTE_POWER_OFF_DELAY_MS)
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
        if (timeCount >= (MPU_LTE_POWER_DELAY_MS - cycleTime))
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
        if (timeCount > (MPU_LTE_POWERKEY_ON_PULSE_MS - cycleTime))
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
            // MpuHalSetWakeOut(1);
        }
    }
}

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
            if(g_mpuManage.rxHandle[handle].rxQueueHandle == NULL)
            {
                return MPU_HAL_STATUS_ERR;
            }
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
                // taskENTER_CRITICAL();
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
                if (pTxMsg->aid == 0)
                {
                    // 待适配SPI
                    // Mpuspi_Transmit(sTxBuffer, index);
                }
                if (MpuUartTransmit(sTxBuffer, index) != MPU_HAL_STATUS_OK)
                {
                    ret = MPU_HAL_STATUS_ERR;
                }
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

int16_t MpuHalReceive(int16_t handle, MpuHalDataPack_t *pRxMsg, uint32_t waitTime)
{
    uint16_t len, crc, crcRx, index, i;
    uint32_t data;
    uint8_t packHeader[10];
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
                    /****receive header****************************/
                    for (i = 0; i < MPU_PROTOCAL_HEADER_LEN; i++)
                    {
                        packHeader[i] = g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                        index++;
                        if (index >= g_mpuManage.rxHandle[handle].dataBufferSize)
                        {
                            index = 0;
                        }
                    }
                    /*******receive service data**************************************/
                    for (i = 0; i < (len - MPU_PROTOCAL_HEADER_LEN - 2); i++)
                    {
                        pRxMsg->pDataBuffer[i] = g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                        index++;
                        if (index >= g_mpuManage.rxHandle[handle].dataBufferSize)
                        {
                            index = 0;
                        }
                    }
                    pRxMsg->dataLength = len - MPU_PROTOCAL_HEADER_LEN - 2;
                    crcRx = (g_mpuManage.rxHandle[handle].pDataBufferRx[index] << 8);
                    index++;
                    if (index >= g_mpuManage.rxHandle[handle].dataBufferSize)
                    {
                        index = 0;
                    }
                    crcRx |= g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                    crc = MpuPackGetCrc(packHeader, pRxMsg);
                    if (crcRx == crc)
                    {
                        pRxMsg->aid = packHeader[2];
                        pRxMsg->mid = packHeader[3];
                        pRxMsg->subcommand = packHeader[4];
                        pRxMsg->dataLength = len - (MPU_PROTOCAL_HEADER_LEN + 2);
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

void MpuHalStart(void)
{
    g_mpuManage.wakeoutTimeCount = 10;
    MpuHalSetWakeOut(0);
    MpuHalSetPower(1);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_ON;
}

int16_t MpuHalStartIsFinished(void)
{
    int16_t ret;
    if (E_MPU_HAL_START_STATE_FINISH == g_mpuManage.startState)
    {
        ret = MPU_HAL_STATUS_OK;
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}

void MpuHalReset(void)
{
    MpuHalSetPower(0);
    //TimeSyncSdkCleanRtcTimeSyncCnt();
    g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_OFF;
}

int16_t MpuHalResetIsFinished(void)
{
    int16_t ret;
    if (E_MPU_HAL_START_STATE_FINISH == g_mpuManage.startState)
    {
        ret = MPU_HAL_STATUS_OK;
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}

void MpuHalPowerOff(void)
{
    MpuHalSetPower(0);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_IDLE;
}

void MpuHalSetMode(uint8_t wakeMode)
{
    if (0 == wakeMode)
    {
        MpuHalSetWakeOut(1);
        R_UART2_Stop();
        g_spiSendStatus = E_SPI_DENINT;
        // 待适配spi
        // R_CSIG1_Stop();
        MpuHalResetUartRuntimeState();
        g_mpuManage.wakeMode = wakeMode;
        MpuHalWriteGpio(MPU_LTE_PWR_EN_PORT, MPU_LTE_PWR_EN_PIN, 0U);
        // 待适配spi
        // Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_MCU_TO_NAD_EN_Pin10_14, STD_HIGH); // 拉低片选(P10_14拉高对应MPU端拉低)
    }
    else if (1 == wakeMode)
    {
        R_UART2_Create();
        MpuHalResetUartRuntimeState();
        R_UART2_Start();
        // 待适配spi
        // R_CSIG1_Create();
        // MpuHalResetSpiRuntimeState();
        // R_CSIG1_Start();
        g_spiSendStatus = E_SPI_IDLE;
        /*wake up mpu*/
        g_mpuManage.wakeoutTimeCount = 0;
        MpuHalSetWakeOut(0);
        g_mpuManage.wakeMode = wakeMode;
        MpuHalWriteGpio(MPU_LTE_PWR_EN_PORT, MPU_LTE_PWR_EN_PIN, 1U);
    }
}

void UartProtocalProcess(uint8_t *pData, uint16_t dataLength, uint8_t IsrFlag)
{
    // int pos;
    uint16_t i;
    MpuUartProtocalBuffer_t *pProtocalData;

    pProtocalData = &g_mpuUartProtocalBuffer;
    for (i = 0; i < dataLength; i++)
    {
        if (0 == pProtocalData->dataCount)
        {
            if (0x55 == pData[i])
            {
                pProtocalData->data[pProtocalData->dataCount] = pData[i];
                pProtocalData->dataCount++;
            }
        }
        else if (1 == pProtocalData->dataCount)
        {
            if (0xAA == pData[i])
            {
                pProtocalData->data[pProtocalData->dataCount] = pData[i];
                pProtocalData->dataCount++;
            }
            else if (0x55 == pData[i])
            {
                /* Keep the latest 0x55 as a new candidate frame start. */
                pProtocalData->data[0] = pData[i];
                pProtocalData->dataCount = 1;
                pProtocalData->dataLength = 0;
            }
            else
            {
                pProtocalData->dataCount = 0;
                pProtocalData->dataLength = 0;
            }
        }
        else if (pProtocalData->dataCount < MPU_PROTOCAL_HEADER_LEN)
        {
            pProtocalData->data[pProtocalData->dataCount] = pData[i];
            pProtocalData->dataCount++;
            if (MPU_PROTOCAL_HEADER_LEN == pProtocalData->dataCount)
            {
                pProtocalData->dataLength = ((uint16_t)(pProtocalData->data[5]) << 8) + pProtocalData->data[6];
                if (pProtocalData->dataLength > (sizeof(pProtocalData->data) - (MPU_PROTOCAL_HEADER_LEN + 2)))
                {
                    pProtocalData->dataCount = 0;
                    pProtocalData->dataLength = 0;
                }
            }
        }
        else
        {
            if (pProtocalData->dataCount < sizeof(pProtocalData->data))
            {
                pProtocalData->data[pProtocalData->dataCount] = pData[i];
                pProtocalData->dataCount++;
            }
            if (pProtocalData->dataCount >= (pProtocalData->dataLength + (MPU_PROTOCAL_HEADER_LEN + 2)))
            {
                // check sum and dispatch
                MpuDataDispatch(pProtocalData->data, pProtocalData->dataCount, IsrFlag);
                pProtocalData->dataLength = 0;
                pProtocalData->dataCount = 0;
            }
        }
    }
}

void MpuHalUartInterruptCallback(uint8_t data)
{
    if (g_mpuUartRxBufId)
    {
        if (g_mpuUartRxBufCount1 < MPU_HAL_UART_INT_RX_BUF_LEN)
        {
            g_uartReceiveData1[g_mpuUartRxBufCount1] = data;
            g_mpuUartRxBufCount1++;
        }
        if (!g_mpuUartRxBufDealFlag)
        {
            g_mpuUartRxBufId = 0;
            g_mpuUartRxBufCount0 = 0;
            g_mpuUartRxBufDealFlag = 1;
        }
    }
    else
    {
        if (g_mpuUartRxBufCount0 < MPU_HAL_UART_INT_RX_BUF_LEN)
        {
            g_uartReceiveData0[g_mpuUartRxBufCount0] = data;
            g_mpuUartRxBufCount0++;
        }
        if (!g_mpuUartRxBufDealFlag)
        {
            g_mpuUartRxBufId = 1;
            g_mpuUartRxBufCount1 = 0;
            g_mpuUartRxBufDealFlag = 1;
        }
    }
}

void MpuHalUartTimerCallback(void)
{
    // if ((g_mpuUartRxBufId == 1) && (g_mpuUartRxBufCount0))
    // {
    //     UartProtocalProcess(g_uartReceiveData0, g_mpuUartRxBufCount0, 1);
    //     memset(g_uartReceiveData0, 0, sizeof(g_uartReceiveData0));
    //     g_mpuUartRxBufCount0 = 0;
    // }
    // else if ((g_mpuUartRxBufId == 0) && (g_mpuUartRxBufCount1))
    // {
    //     UartProtocalProcess(g_uartReceiveData1, g_mpuUartRxBufCount1, 1);
    //     memset(g_uartReceiveData1, 0, sizeof(g_uartReceiveData1));
    //     g_mpuUartRxBufCount1 = 0;
    // }
    // g_mpuUartRxBufDealFlag = 0;
    uint8_t  snapBuf[MPU_HAL_UART_INT_RX_BUF_LEN];
    uint16_t snapLen = 0;

    __disable_irq();
    if ((g_mpuUartRxBufId == 1) && (g_mpuUartRxBufCount0 > 0))
    {
        snapLen = g_mpuUartRxBufCount0;
        (void)memcpy(snapBuf, (const void *)g_uartReceiveData0, snapLen);
        (void)memset((void *)g_uartReceiveData0, 0, sizeof(g_uartReceiveData0));
        g_mpuUartRxBufCount0 = 0;
    }
    else if ((g_mpuUartRxBufId == 0) && (g_mpuUartRxBufCount1 > 0))
    {
        snapLen = g_mpuUartRxBufCount1;
        (void)memcpy(snapBuf, (const void *)g_uartReceiveData1, snapLen);
        (void)memset((void *)g_uartReceiveData1, 0, sizeof(g_uartReceiveData1));
        g_mpuUartRxBufCount1 = 0;
    }
    g_mpuUartRxBufDealFlag = 0;
    __enable_irq();

    if (snapLen > 0)
    {
        UartProtocalProcess(snapBuf, snapLen, 1);
    }
}

void MpuHalMainUartInit(void)
{
    R_UART2_Create();
    MpuHalResetUartRuntimeState();
    R_UART2_Start();
}

void MpuHalInit(void)
{
    memset(&g_mpuManage, 0, sizeof(g_mpuManage));
    g_mpuManage.wakeoutTimeCount = 10;
    g_mpuManage.wakeMode = 1;
    MpuHalGpioInit();
    MpuHal_SpiInit();
    MpuHalMainUartInit();
    MpuHalTxTaskInit();
}

void MpuHalTxTaskInit(void)
{
    g_mpuUartTxBuffer.index = 0;
    g_mpuUartTxBuffer.usedSize = 0;
    g_mpuUartTxBuffer.txQueueHandle = xQueueCreate(20, // The number of items the queue can hold.
                                                   sizeof(uint32_t));
}

void MpuHalTxTask(void)
{
    uint32_t queueData;
    uint16_t startAddress;
    uint16_t length;

    // while(1)
    {
        if (R_UART2_SendStatus() != 0)
        {
            // TODO:
            return;
        }

        if (xQueueReceive(g_mpuUartTxBuffer.txQueueHandle, &queueData, 0) != pdPASS)
        {
            return;
        }
        // 发送FIFO中的数据;
        startAddress = (queueData >> 16) & 0xFFFF;
        length = queueData & 0xFFFF;
        if ((length == 0) || (length > MPU_HAL_TX_BUFFER) || (length > g_mpuUartTxBuffer.usedSize))
        {
            return;
        }

        /* R_UART2_Send keeps using the provided buffer until the interrupt-driven
         * transmission completes, so wrapped ring data must be linearized first.
         */
        MpuUartRingCopyOut(g_mpuUartTxBuffer.activeBuffer, startAddress, length);
        if (R_UART2_Send(g_mpuUartTxBuffer.activeBuffer, length) == MD_OK)
        {
            g_mpuUartTxBuffer.usedSize -= length;
        }
        else
        {
            /* Keep the frame queued so a transient busy state cannot drop it silently. */
            // (void)xQueueSendToFront(g_mpuUartTxBuffer.txQueueHandle, &queueData, 0);
        }
    }
}

static int16_t MpuUartTransmit(const uint8_t *pTxData, uint16_t txLength)
{
    uint16_t startAddress;
    uint16_t firstCopyLength;
    uint32_t data;

    if ((pTxData == NULL) || (txLength == 0) || (txLength > MPU_HAL_TX_BUFFER))
    {
        return MPU_HAL_STATUS_ERR;
    }

    if (txLength > (MPU_HAL_TX_BUFFER - g_mpuUartTxBuffer.usedSize))
    {
        return MPU_HAL_STATUS_ERR;
    }

    startAddress = g_mpuUartTxBuffer.index;
    data = ((uint32_t)startAddress) << 16;
    firstCopyLength = MPU_HAL_TX_BUFFER - startAddress;
    if (txLength <= firstCopyLength)
    {
        memcpy(&g_mpuUartTxBuffer.buffer[startAddress], pTxData, txLength);
    }
    else
    {
        memcpy(&g_mpuUartTxBuffer.buffer[startAddress], pTxData, firstCopyLength);
        memcpy(&g_mpuUartTxBuffer.buffer[0], &pTxData[firstCopyLength], txLength - firstCopyLength);
    }
    g_mpuUartTxBuffer.index = (startAddress + txLength) % MPU_HAL_TX_BUFFER;
    g_mpuUartTxBuffer.usedSize += txLength;
    data |= txLength;
    if (xQueueSend(g_mpuUartTxBuffer.txQueueHandle, &data, 0) != pdPASS)
    {
        g_mpuUartTxBuffer.index = startAddress;
        g_mpuUartTxBuffer.usedSize -= txLength;
        return MPU_HAL_STATUS_ERR;
    }
    return MPU_HAL_STATUS_OK;
}

void MpuHalUartPrintErrState(uint16_t cycleTime)
{
    static uint8_t errCount = 0;
    static uint32_t timeCount = 0;

    timeCount++;
    if (timeCount < (1000 / cycleTime))
    {
        return;
    }
    timeCount = 0;

    if(g_mpuUartErrorFlag == 1)
    {
        TBOX_PRINT("mpu uart: 0x%02X\r\n", g_mpuUartErrorType);
        g_mpuUartErrorFlag = 0;
        g_mpuUartErrorType = 0;
    }
}

static void MpuHalResetSpiRuntimeState(void)
{
    memset(g_mpuSpiTxBuffer, 0, sizeof(g_mpuSpiTxBuffer));
}

static void MpuHal_SpiInit(void)
{
    uint8_t dummyData = 0xFF;
    // 待适配SPI
    // R_CSIG1_Create();
    MpuHalResetSpiRuntimeState();
    // R_CSIG1_Start();
    // R_CSIG1_Send(&dummyData, 1);
    g_spiSendStatus = E_SPI_IDLE;
}

/*************************************************
  Function:       MpuHal_SpiDmaTxCallback
  Description:    SPI DMA transmit callback function
  Input:          None
  Output:         None
  Return:         None
  Others:         Called when SPI DMA transmit operation is complete
*************************************************/
void MpuHal_SpiTxCallback(void)
{
    // 待适配spi
    // Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_MCU_TO_NAD_EN_Pin10_14, STD_HIGH); // 拉低片选，MCU结束发送数据
    g_spiSendStatus = E_SPI_IDLE;
}
static uint16_t len = 0;
void MpuHal_SpiRevice(uint16_t data)
{
    if (len > 100)
    {
        len = 0;
        // return;
    }
    g_SpiReceiveData[len++] = data;
    // UartSpiProtocalProcess(data, 1);
}

int16_t Mpuspi_Transmit(const uint8_t *pTxData, uint16_t txLength)
{
    uint16_t startAddress;
    uint16_t firstCopyLength;
    uint16_t alltxLength = 6 + txLength;
    uint16_t crc = 0;
    uint32_t data;
    if (g_spiSendStatus != E_SPI_IDLE)
    {
        return MPU_HAL_STATUS_ERR;
    }

#if 0
    if (Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_NAD_TO_MCU_Pin10_13) == STD_LOW)
    {
        return MPU_HAL_STATUS_ERR;
    }
#endif

    // if (MpuPowerSyncSdkGetNadModuleStatus() == 1)
    // {
    //     return MPU_HAL_STATUS_ERR;
    // }

    if ((pTxData == NULL) || (txLength == 0) || (alltxLength > MPU_HAL_TX_BUFFER))
    {
        return MPU_HAL_STATUS_ERR;
    }

    g_mpuSpiTxBuffer[0] = 0x55u;
    g_mpuSpiTxBuffer[1] = 0xBBu;
    g_mpuSpiTxBuffer[2] = (uint8_t)(txLength >> 8);
    g_mpuSpiTxBuffer[3] = (uint8_t)(txLength & 0xFF);
    crc = CcittCrc16(crc, pTxData, txLength);
    g_mpuSpiTxBuffer[4] = (uint8_t)(crc >> 8);
    g_mpuSpiTxBuffer[5] = (uint8_t)(crc & 0xFF);
    memcpy(&g_mpuSpiTxBuffer[6], pTxData, txLength);
    // 待适配spi
    // R_CSIG1_Send(g_mpuSpiTxBuffer, alltxLength);
    g_spiSendStatus = E_SPI_BUSY;
    // 待适配spi
    // Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_MCU_TO_NAD_EN_Pin10_14, STD_LOW); // 拉高片选，请求发送数据
    return MPU_HAL_STATUS_OK;
}


static int16_t g_mpuHandleTest = -1;  
static uint8_t g_recvDataBuffer[200] = {0};
static MpuHalDataPack_t  g_dataPackTest;


void MpuUartInitTest(void)
{
    int16_t ret = 0;
    MpuHalFilter_t filter;
    g_mpuHandleTest = MpuHalOpen();

    filter.aid = 0x01;
    filter.midMin = 0x03;
    filter.midMax = 0x01;
    
    ret = MpuHalSetRxFilter(g_mpuHandleTest,&filter);
    if(ret != 0)
    {
        TBOX_PRINT("Set Rx Filter failed, ret:%d\r\n",ret);
        return;
    }
    ret = MpuHalSetRxBuffer(g_mpuHandleTest,g_recvDataBuffer,sizeof(g_recvDataBuffer));
    if(ret != 0)
    {
        TBOX_PRINT("Set Rx Buffer failed, ret:%d\r\n",ret);
        return;
    }
    return;
}

void MpuUartReceiveTest(void)
{   
    uint8_t ret = 0;

    g_dataPackTest.pDataBuffer = g_recvDataBuffer;
    g_dataPackTest.dataBufferSize = sizeof(g_recvDataBuffer);
    g_dataPackTest.dataLength = 0;

    if(MpuHalReceive(g_mpuHandleTest, &g_dataPackTest, 0) == 0)
    {
        TBOX_PRINT("Receive data, dataLength:%d\r\n", g_dataPackTest.dataLength);
    }
}

static uint8_t pUdsRequest[10] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x00};
void MpuUartSendTest(void)
{
    
    uint16_t reqLength = sizeof(pUdsRequest);

    // 清空接收缓冲区
    while (MpuHalReceive(g_mpuHandleTest, &g_dataPackTest, 0) == 0) 
    {
    }

    // 组包发送
    g_dataPackTest.aid = 0x01;
    g_dataPackTest.mid = 0x03;
    g_dataPackTest.subcommand = 0x01;
    memcpy(g_recvDataBuffer, &pUdsRequest, reqLength);
    g_dataPackTest.pDataBuffer = g_recvDataBuffer;
    g_dataPackTest.dataBufferSize = sizeof(g_recvDataBuffer);
    g_dataPackTest.dataLength = reqLength;

    int16_t ret = MpuHalTransmit(g_mpuHandleTest, &g_dataPackTest);
    if(ret == 0)
    {
        TBOX_PRINT("Send success\r\n");
    }
    else
    {
        TBOX_PRINT("Send failed, ret:%d\r\n",ret);
    }
    
    return;
}