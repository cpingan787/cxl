#if 1
#include "virtualTpSdk.h"
#include "mpuHal.h"
#include "logHal.h"
#include "udsTp.h"
#include "remoteDiagnosticSdk.h"
#include <string.h>
#include "peripheralHal.h"
#include "taskDiagnostic.h"
#include "udsDidFunction.h"
#include "FreeRTOS.h"
#include "task.h"
#include "remoteControl.h"
#define COMMAND_UDS_TRANSMIT_AID 0x05

/* *
 * 修改: 定义三个不同的MID，以支持所有协议
 */
#define COMMAND_UDS_REMOTE_DIAG_MID 0x01 // 远程诊断 (协议 1)
#define COMMAND_UDS_RESET_MID 0x10       // 复位命令 (协议 3)
#define COMMAND_UDS_FLASHER_MID 0x20     // 诊断刷写 (协议 2)

#define COMMAND_UDS_TRANSMIT_REQ 0x01
#define COMMAND_UDS_TRANSMIT_ACK 0x02
#define COMMAND_UDS_RESPONSE_REQ 0x03
#define COMMAND_UDS_RESPONSE_ACK 0x04

/* *
 * 诊断互斥
 * (寻址模式未启用" 作为 "拒绝/繁忙" 状态)
 */
#define DIAG_REJECT_TESTER_PRESENT 1

static int16_t g_udsTpHandle[6] = {-1, -1, -1, -1, -1, -1};
static uint8_t g_udsFlag = 0;
static uint32_t g_udsTimeCount = 0;
static uint8_t g_remoteDiagnosticShortDisableFlag = 0;
static uint8_t g_remoteDiagnosticDisableFlag = 0;
static uint16_t g_remoteDiagnosticDisableTimeCount = 0;
static uint8_t g_udsReceiveFlag = 0;
static int16_t g_mpuHandle = -1;

static MpuHalDataPack_t g_selfDiagRxMsg;
static uint8_t g_selfDiagHeader[3];
static uint8_t g_selfDiagPending = 0; // 0=空闲, 1=等待自诊断响应

static uint8_t g_txData[256] = {0};
static MpuHalDataPack_t g_txPack;
static CanChanel_t *g_canChannelList = NULL;

static int16_t RemoteDiagnosticSdkSendAck(MpuHalDataPack_t *recvPack, uint8_t result)
{
    if (recvPack == NULL)
    {
        return -1;
    }
    g_txPack.aid = recvPack->aid;
    g_txPack.mid = recvPack->mid;
    g_txPack.subcommand = COMMAND_UDS_TRANSMIT_ACK;

    g_txData[0] = 0;
    g_txData[1] = result;
    g_txData[2] = recvPack->pDataBuffer[2];

    g_txPack.pDataBuffer = g_txData;
    g_txPack.dataBufferSize = sizeof(g_txData);
    g_txPack.dataLength = 3;

    MpuHalTransmit(g_mpuHandle, &g_txPack, MPU_HAL_UART_MODE);

    return 0;
}

static int16_t RemoteDiagnosticSdkSendResponse(MpuHalDataPack_t *recvPack, uint32_t canId, uint8_t *data, uint16_t lenth)
{
    uint16_t i = 0;

    if (recvPack == NULL)
    {
        return -1;
    }

    g_txPack.aid = recvPack->aid;
    g_txPack.mid = recvPack->mid;
    g_txPack.subcommand = COMMAND_UDS_RESPONSE_REQ; // 0x03

    g_txData[0] = 0;
    g_txData[1] = 0;
    g_txData[2] = recvPack->pDataBuffer[2]; // 序列号 Index

    g_txData[3] = (canId >> 24) & 0xFF;
    g_txData[4] = (canId >> 16) & 0xFF;
    g_txData[5] = (canId >> 8) & 0xFF;
    g_txData[6] = canId & 0xFF;

    for (i = 0; i < lenth; i++)
    {
        g_txData[7 + i] = data[i];
    }
    g_txPack.dataLength = 7 + lenth;

    g_txPack.pDataBuffer = g_txData;
    g_txPack.dataBufferSize = sizeof(g_txData);
    MpuHalTransmit(g_mpuHandle, &g_txPack, MPU_HAL_UART_MODE);

    return 0;
}

/* *
 * ==================== 双协议 ====================
 * MID 0x01 (远程诊断): 偏移量 7
 * MID 0x20 (诊断刷写): 偏移量 11
 */
static uint8_t RemoteDiagnosticSdkTpTransmit(CanIdConfig_t *pEcuConfigure, MpuHalDataPack_t *rxMsg, int16_t virtualTpHandle)
{
    uint8_t i = 0;
    uint32_t canId = 0;
    uint8_t ecuId = 0xFF;
    CanChanel_t *canChannelList = g_canChannelList;

    canId = (rxMsg->pDataBuffer[3] << 24) + (rxMsg->pDataBuffer[4] << 16) + (rxMsg->pDataBuffer[5] << 8) + rxMsg->pDataBuffer[6];

    uint8_t *pUdsData = NULL;
    uint16_t udsDataLen = 0;

    if (rxMsg->mid == COMMAND_UDS_FLASHER_MID)
    {
        pUdsData = rxMsg->pDataBuffer + 11;
        if (rxMsg->dataLength >= 11)
        {
            udsDataLen = rxMsg->dataLength - 11;
        }
        else
        {
            udsDataLen = 0;
        }
    }
    else
    {
        pUdsData = rxMsg->pDataBuffer + 7;
        if (rxMsg->dataLength >= 7)
        {
            udsDataLen = rxMsg->dataLength - 7;
        }
        else
        {
            udsDataLen = 0;
        }
    }

    if (udsDataLen == 0)
    {
        return 0xFF;
    }

    if (canId == pEcuConfigure->functionalId)
    {
        for (i = 0; i < canChannelList->canChanelListSize; i++)
        {
            UdsTpTransmit(g_udsTpHandle[canChannelList->canChanelList[i]], canId, pUdsData, udsDataLen);
        }
        VirtualTpSdkClientTransmit(virtualTpHandle, pUdsData, udsDataLen);
        g_udsFlag = 1;
        g_udsTimeCount = 0;
    }
    else
    {
        if (canId == pEcuConfigure->selfDiagnosticReqId)
        {
            VirtualTpSdkClientTransmit(virtualTpHandle, pUdsData, udsDataLen);
            g_udsFlag = 1;
            g_udsTimeCount = 0;
            memcpy(&g_selfDiagRxMsg, rxMsg, sizeof(MpuHalDataPack_t));
            g_selfDiagHeader[0] = rxMsg->pDataBuffer[0];
            g_selfDiagHeader[1] = rxMsg->pDataBuffer[1];
            g_selfDiagHeader[2] = rxMsg->pDataBuffer[2];
            g_selfDiagRxMsg.pDataBuffer = g_selfDiagHeader;
            g_selfDiagPending = 1;
        }
        else
        {
            ecuId = 0xFF;
            for (i = 0; i < pEcuConfigure->ecuListSize; i++)
            {
                if (pEcuConfigure->pEcuList[i].requestId == canId)
                {
                    ecuId = i;
                    break;
                }
            }
            if (ecuId != 0xFF)
            {
                UdsTpPhyAddressSetCanId(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], pEcuConfigure->pEcuList[ecuId].requestId, pEcuConfigure->pEcuList[ecuId].responseId);
                UdsTpSetFilter(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], 0);
                UdsTpClearRecvBuffer(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel]);
                //
                if (canId == 0x067 || canId == 0x069)
                {
                    UdsTpTransmitRaw(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],
                                     canId,
                                     pUdsData,
                                     udsDataLen);
                }
                else
                {
                    UdsTpTransmit(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], canId, pUdsData, udsDataLen);
                }

                g_udsFlag = 1;
                g_udsTimeCount = 0;
                g_udsReceiveFlag = 1;
            }
            else
            {
                TBOX_PRINT("[MCU] Error: ECU ID Not Configured!\r\n");
            }
        }
    }
    return ecuId;
}
void RemoteDiagnosticSdkProcess(CanIdConfig_t *pEcuConfigure, MpuBuffer_t *pMpuBuffer, UdsTpParameter_t *pTpParameter, CanChanel_t *canChannelList)
{
    uint8_t i = 0;
    int16_t ret = -1;
    MpuHalFilter_t mpuFilter;

    uint8_t oldIndex = 0;
    // uint32_t canId = 0;
    uint32_t responseId = 0;
    uint8_t ecuId = 0;

    MpuHalDataPack_t rxMsg;
    rxMsg.pDataBuffer = pMpuBuffer->rxData;
    rxMsg.dataBufferSize = sizeof(pMpuBuffer->rxData);

    int16_t virtualTpHandle = -1;
    uint8_t virtualRxbuf[100] = {0};
    uint8_t virtualTxbuf[100] = {0};
    uint16_t recvLen = 0;

    uint8_t udsRxbuf[120] = {0};
    uint16_t udsRecvLen = 0;

    mpuFilter.aid = COMMAND_UDS_TRANSMIT_AID;

    mpuFilter.midMin = COMMAND_UDS_REMOTE_DIAG_MID; // 0x01
    mpuFilter.midMax = COMMAND_UDS_FLASHER_MID;     // 0x20

    g_mpuHandle = MpuHalOpen();
    MpuHalSetRxFilter(g_mpuHandle, &mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle, pMpuBuffer->mpuRecvBuffer, sizeof(pMpuBuffer->mpuRecvBuffer));

    if (canChannelList == NULL)
    {
        return;
    }
    
    g_canChannelList = canChannelList;
    virtualTpHandle = VirtualTpSdkClientOpen(virtualRxbuf, sizeof(virtualRxbuf), virtualTxbuf, sizeof(virtualTxbuf));
    pMpuBuffer->canRxBufferSize = sizeof(pMpuBuffer->canRxBuffer) / sizeof(pMpuBuffer->canRxBuffer[0]);

    for (i = 0; i < canChannelList->canChanelListSize; i++)
    {
        g_udsTpHandle[canChannelList->canChanelList[i]] = UdsTpOpen(canChannelList->canChanelList[i], pMpuBuffer->canRxBuffer, pMpuBuffer->canRxBufferSize, pTpParameter);
        UdsTpSetFunctionId(g_udsTpHandle[canChannelList->canChanelList[i]], pEcuConfigure->functionalId);
    }

    while (1)
    {
        ret = MpuHalReceive(g_mpuHandle, &rxMsg, 5);

        uint8_t currentMode = UdsDidGetManufactoryMode();
        uint8_t isNonFactoryMode = (currentMode <= 0x0F) ? 1 : 0;
        // rxMsg.aid = COMMAND_UDS_TRANSMIT_AID;
        // rxMsg.mid = COMMAND_UDS_FLASHER_MID;
        // rxMsg.subcommand = COMMAND_UDS_TRANSMIT_REQ;

        // rxMsg.pDataBuffer[0] = 0U;
        // rxMsg.pDataBuffer[1] = 0U;

        // rxMsg.pDataBuffer[2] = 0U;
        // rxMsg.pDataBuffer[3] = 0U;
        // rxMsg.pDataBuffer[4] = 0U;
        // rxMsg.pDataBuffer[5] = 0U;
        // rxMsg.pDataBuffer[6] = 0x67;
        // rxMsg.pDataBuffer[7] = 0U;
        // rxMsg.pDataBuffer[8] = 0U;
        // rxMsg.pDataBuffer[9] = 0U;
        // rxMsg.pDataBuffer[10] = 0x68;
        // rxMsg.pDataBuffer[11] = 0U;
        // rxMsg.pDataBuffer[12] = 0U;
        // rxMsg.pDataBuffer[13] = 0U;
        // rxMsg.pDataBuffer[14] = 0U;
        // rxMsg.pDataBuffer[15] = 0U;
        // rxMsg.pDataBuffer[16] = 0U;
        // rxMsg.pDataBuffer[17] = 0U;
        // rxMsg.pDataBuffer[18] = 0U;
        // rxMsg.dataLength = 19;
        // ret = MPU_HAL_STATUS_OK;
        if (ret == MPU_HAL_STATUS_OK)
        {
            if ((rxMsg.aid == COMMAND_UDS_TRANSMIT_AID) &&
                ((rxMsg.mid == COMMAND_UDS_REMOTE_DIAG_MID) || // 0x01
                 (rxMsg.mid == COMMAND_UDS_FLASHER_MID) ||     // 0x20
                 (rxMsg.mid == COMMAND_UDS_RESET_MID)))        // 0x10
            {
                if ((rxMsg.subcommand & 0x7F) == COMMAND_UDS_TRANSMIT_REQ) // 0x01
                {
                    if ((rxMsg.mid == COMMAND_UDS_REMOTE_DIAG_MID || rxMsg.mid == COMMAND_UDS_FLASHER_MID) &&
                        (GetTesterPresenceStatus() == 1) && (isNonFactoryMode == 1))
                    {
                        // 插入诊断仪 禁用远程诊断和刷写
                        RemoteDiagnosticSdkSendAck(&rxMsg, DIAG_REJECT_TESTER_PRESENT);

                        g_udsFlag = 0;
                        g_udsReceiveFlag = 0;
                    }
                    else
                    {
                        if ((rxMsg.pDataBuffer[1] == 0x80) && (rxMsg.pDataBuffer[2] == oldIndex))
                        {
                            RemoteDiagnosticSdkSendAck(&rxMsg, 0);
                        }
                        else
                        {
                            RemoteDiagnosticSdkSendAck(&rxMsg, 0);
                            oldIndex = rxMsg.pDataBuffer[2];
                            ecuId = RemoteDiagnosticSdkTpTransmit(pEcuConfigure, &rxMsg, virtualTpHandle);
                        }
                    }
                }
                else if ((rxMsg.subcommand & 0x7F) == COMMAND_UDS_RESPONSE_ACK)
                {
                }
                else if ((rxMsg.mid == COMMAND_UDS_RESET_MID) && ((rxMsg.subcommand & 0x7F) == 0x24)) // *MID 0x10, Subcmd 0x24*
                {
                    uint8_t ota_flag = RemoteControlGetOtaFlag();
                    if (ota_flag == 1)
                    {
                        TBOX_PRINT("[RemoteDiag] OTA Active! Ignore Reset Command.\r\n");
                    }
                    else
                    {
                        if (rxMsg.dataLength >= 1)
                        {
                            if (rxMsg.pDataBuffer[0] == 0x01)
                            {
                                PeripheralHalMcuHardReset();
                            }
                            else if (rxMsg.pDataBuffer[0] == 0x00)
                            {
                                MpuHalReset();
                            }
                        }
                    }
                }
            }
        }

        VirtualTpSdkClientReceive(virtualTpHandle, virtualRxbuf, sizeof(virtualRxbuf), &recvLen);
        if (recvLen > 0)
        {
            if (g_selfDiagPending == 1)
            {
                RemoteDiagnosticSdkSendResponse(&g_selfDiagRxMsg, pEcuConfigure->selfDiagnosticRespId, virtualRxbuf, recvLen);
                g_selfDiagPending = 0;
            }
        }

        if (g_remoteDiagnosticShortDisableFlag == 1)
        {
            g_remoteDiagnosticDisableTimeCount++;
            if (g_remoteDiagnosticDisableTimeCount >= 2000)
            {
                g_remoteDiagnosticDisableTimeCount = 0;
                g_remoteDiagnosticShortDisableFlag = 0;
            }
            else
            {
                g_udsFlag = 0;
                g_udsReceiveFlag = 0;
            }
        }
        if (g_remoteDiagnosticDisableFlag == 1 && (isNonFactoryMode == 1))
        {
            g_udsFlag = 0;
            g_udsReceiveFlag = 0;
        }

        if (g_udsFlag == 1)
        {
            if (g_udsReceiveFlag == 1)
            {
                if (ecuId != 0xFF)
                {
                    udsRecvLen = 0;
                    uint32_t currentReqId = pEcuConfigure->pEcuList[ecuId].requestId;

                    if (currentReqId == 0x067 || currentReqId == 0x069)
                    {

//                        udsRxbuf[0] = 0x01;
//                        udsRxbuf[1] = 0x02;
//                        udsRxbuf[2] = 0x03;
//                        udsRxbuf[3] = 0x04;
//                        udsRxbuf[4] = 0x05;
//                        udsRxbuf[5] = 0x06;
//                        udsRxbuf[6] = 0x07;
//                        udsRxbuf[7] = 0x08;
//
//                        udsRecvLen = 8;
//
//                        ret = 0;

                        ret = UdsTpReceiveRaw(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], udsRxbuf, &udsRecvLen);
                    }
                    else
                    {
                        ret = UdsTpReceive(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], udsRxbuf, &udsRecvLen, 0);
                    }

                    if (ret == 0)
                    {
                        responseId = pEcuConfigure->pEcuList[ecuId].responseId;
                        RemoteDiagnosticSdkSendResponse(&rxMsg, responseId, udsRxbuf, udsRecvLen);

                        g_udsReceiveFlag = 0;
                    }
                    // else
                    // {
                    //     static uint8_t simulated_response[] = {
                    //         0x62, 0xF1, 0x89,
                    //         0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                    //         0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                    //         0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
                    //     uint16_t simulated_len = sizeof(simulated_response);

                    //     if (simulated_len <= sizeof(udsRxbuf))
                    //     {
                    //         memcpy(udsRxbuf, simulated_response, simulated_len);
                    //         udsRecvLen = simulated_len;

                    //         responseId = pEcuConfigure->pEcuList[ecuId].responseId;

                    //         RemoteDiagnosticSdkSendResponse(&rxMsg, responseId, udsRxbuf, udsRecvLen);
                    //     }

                    //     g_udsReceiveFlag = 0;
                    // }
                }
            }

            g_udsTimeCount++;

            if (g_udsTimeCount > 2000)
            {
                g_udsFlag = 1;
                g_udsTimeCount = 0;
            }
        }
    }
}

void RemoteDiagnosticSdkShortDisable(void)
{
    g_remoteDiagnosticShortDisableFlag = 1;
    g_remoteDiagnosticDisableTimeCount = 0;
}

void RemoteDiagnosticSdkDisable(void)
{
    g_remoteDiagnosticDisableFlag = 1;
}

void RemoteDiagnosticSdkRecover(void)
{
    g_remoteDiagnosticDisableFlag = 0;
}

#endif