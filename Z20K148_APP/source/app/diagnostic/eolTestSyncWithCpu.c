#include "eolTestSyncWithCpu.h"
#include <string.h>
#include <stdint.h>
#include "mpuHal.h"
#include "taskDtcProcess.h"
#include "timerHal.h"
#include "FreeRTOS.h"
#include "task.h"
#include "logHal.h"
/* 协议常量定义 */
#define PASSTHROUGH_AID 0x05
#define PASSTHROUGH_MID 0x10
#define PASSTHROUGH_SUB_MCU_TO_MPU 0x22
#define PASSTHROUGH_SUB_MPU_TO_MCU 0x23

#define SYNC_TIMEOUT_MS 100

/* 静态变量 */
static int16_t g_mpuHandle = -1;
static int16_t g_timerHandle = -1;

static volatile EolSyncState_e g_eolState = EOL_STATE_IDLE;

// 发送缓冲区
static uint8_t g_mpuTxBuffer[512];
static MpuHalDataPack_t g_mpuTxPack;

// 接收缓冲区
static uint8_t g_mpuRxDataBuffer[512];
static MpuHalDataPack_t g_mpuRxPack;
static uint8_t g_recvInternalBuffer[600];

// 回调与同步结果保存
static UdsResponseCallback_t g_currentCallback = NULL;
static uint8_t g_udsRespBuffer[512];
static uint16_t g_syncRespLen = 0;
static int16_t g_syncResult = -1;

/* 初始化函数 */
void EolTestSyncWithCpuInit(void)
{
    MpuHalFilter_t filter;

    g_mpuHandle = MpuHalOpen();
    g_timerHandle = TimerHalOpen();

    // 初始化缓冲区
    memset(g_mpuTxBuffer, 0, sizeof(g_mpuTxBuffer));
    memset(g_recvInternalBuffer, 0, sizeof(g_recvInternalBuffer));

    filter.aid = PASSTHROUGH_AID;
    filter.midMin = PASSTHROUGH_MID;
    filter.midMax = PASSTHROUGH_MID;

    MpuHalSetRxFilter(g_mpuHandle, &filter);
    MpuHalSetRxBuffer(g_mpuHandle, g_recvInternalBuffer, sizeof(g_recvInternalBuffer));

    g_eolState = EOL_STATE_IDLE;
}

int16_t EolSync_StartRequest(const uint8_t *pRequest, uint16_t reqLen, UdsResponseCallback_t callback)
{
    if (g_eolState != EOL_STATE_IDLE)
    {
        return -1; // 忙碌
    }

    memcpy(g_mpuTxBuffer, pRequest, reqLen);

    g_mpuTxPack.aid = PASSTHROUGH_AID;
    g_mpuTxPack.mid = PASSTHROUGH_MID;
    g_mpuTxPack.subcommand = PASSTHROUGH_SUB_MCU_TO_MPU;
    g_mpuTxPack.pDataBuffer = g_mpuTxBuffer;
    g_mpuTxPack.dataLength = reqLen;

    g_currentCallback = callback;

    g_eolState = EOL_STATE_SEND_REQ;

    return 0;
}

void EolTestSyncMainLoop(void)
{
    int16_t ret;

    if (g_eolState == EOL_STATE_IDLE)
    {
        return;
    }

    if (g_eolState == EOL_STATE_SEND_REQ)
    {
        g_mpuRxPack.pDataBuffer = g_mpuRxDataBuffer;
        g_mpuRxPack.dataBufferSize = sizeof(g_mpuRxDataBuffer);
        while (MpuHalReceive(g_mpuHandle, &g_mpuRxPack, 0) == 0)
        {
        }
        MpuHalTransmit(g_mpuHandle, &g_mpuTxPack, MPU_HAL_UART_MODE);

        TimerHalStartTime(g_timerHandle, SYNC_TIMEOUT_MS);

        g_eolState = EOL_STATE_WAIT_RESP;
    }

    if (g_eolState == EOL_STATE_WAIT_RESP)
    {
   
        ret = MpuHalReceive(g_mpuHandle, &g_mpuRxPack, 0);

        if (ret == 0) // 收到数据
        {
            uint8_t subCommand = g_mpuRxPack.subcommand & 0x7F;

            if (g_mpuRxPack.aid == PASSTHROUGH_AID &&
                g_mpuRxPack.mid == PASSTHROUGH_MID &&
                subCommand == PASSTHROUGH_SUB_MPU_TO_MCU && g_mpuTxBuffer[2] == g_mpuRxDataBuffer[2] && g_mpuTxBuffer[1] == g_mpuRxDataBuffer[1]) // 序列号匹配
            {
                TimerHalStopTime(g_timerHandle);

                memcpy(g_udsRespBuffer, g_mpuRxPack.pDataBuffer, g_mpuRxPack.dataLength);

                if (g_currentCallback != NULL)
                {
                    g_currentCallback(g_udsRespBuffer, g_mpuRxPack.dataLength, 0);
                }

                g_eolState = EOL_STATE_IDLE;
                return;
            }
        }

        if (TimerHalIsTimeout(g_timerHandle) == 0)
        {
            TimerHalStopTime(g_timerHandle);
            LogHalUpLoadLog("EOL Sync Timeout");

            // 超时回调
            if (g_currentCallback != NULL)
            {
                g_currentCallback(NULL, 0, 1); // 1 = Error/Timeout
            }
            g_eolState = EOL_STATE_IDLE;
        }
    }
    else
    {
        LogHalUpLoadLog("EOL Sync Invalid State");
        g_eolState = EOL_STATE_IDLE;
    }
}

EolSyncState_e EolSync_GetState(void)
{
    return g_eolState;
}

static int16_t SyncInternalCallback(uint8_t *pData, uint16_t length, uint8_t result)
{
    if (result == 0)
    {
        g_syncRespLen = length;
    }
    g_syncResult = result;
    return 0;
}

int16_t CanPassthrough_RequestAndGetResponse(const uint8_t *pUdsRequest, uint16_t reqLength,
                                             uint8_t *pUdsResponse, uint16_t *pRespLength)
{
    if (g_eolState != EOL_STATE_IDLE)
        return -1;

    g_syncResult = -1;
    g_syncRespLen = 0;

    if (EolSync_StartRequest(pUdsRequest, reqLength, SyncInternalCallback) != 0)
    {
        return -1;
    }

    while (g_eolState != EOL_STATE_IDLE)
    {
        EolTestSyncMainLoop();
        vTaskDelay(1);
    }

    if (g_syncResult == 0)
    {
        memcpy(pUdsResponse, g_udsRespBuffer, g_syncRespLen);
        *pRespLength = g_syncRespLen;
        return 0;
    }
    return -1;
}

int16_t EolTestSyncWithCpuRecv(uint8_t item, uint8_t *pData, uint16_t *pLength)
{
    uint8_t request[3];
    uint8_t response[64];
    uint16_t respLen = 0;
    int16_t ret;

    request[0] = 0x22;
    request[1] = 0x00;
    request[2] = item;

    ret = CanPassthrough_RequestAndGetResponse(request, 3, response, &respLen);

    if (ret == 0 && respLen > 3)
    {
        memcpy(pData, &response[3], respLen - 3);
        *pLength = respLen - 3;
        return 0;
    }
    return -1;
}

int16_t EolTestSyncWithCpuTransmit(uint8_t item, uint8_t *pData, uint16_t length)
{
    uint8_t request[64];
    uint8_t response[64];
    uint16_t respLen = 0;

    if (length > 60)
        return -1;

    request[0] = 0x2E;
    request[1] = 0x00;
    request[2] = item;
    memcpy(&request[3], pData, length);

    int16_t ret = CanPassthrough_RequestAndGetResponse(request, length + 3, response, &respLen);

    if (ret == 0 && respLen >= 3 && response[0] == 0x6E)
    {
        return 0;
    }
    return -1;
}
