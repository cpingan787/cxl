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
    TBOX_PRINT("[MCU] >> Sending ACK to MPU. Result: %d, Index: %d\r\n", result, recvPack->pDataBuffer[2]);
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
    // 用于打印循环的变量
    uint16_t j = 0; 

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

    // 填充 CAN ID (大端)
    g_txData[3] = (canId >> 24) & 0xFF;
    g_txData[4] = (canId >> 16) & 0xFF;
    g_txData[5] = (canId >> 8) & 0xFF;
    g_txData[6] = canId & 0xFF;

    // 填充 UDS 数据
    for (i = 0; i < lenth; i++)
    {
        g_txData[7 + i] = data[i];
    }
    g_txPack.dataLength = 7 + lenth;

    g_txPack.pDataBuffer = g_txData;
    g_txPack.dataBufferSize = sizeof(g_txData);

    // ================= [新增] 打印发送给 MPU 的原始 HEX 数据 =================
    TBOX_PRINT("[MCU] >> TX to MPU (Hex): ");
    // 打印包头信息 (模拟 MPU 协议头)
    TBOX_PRINT("55 AA %02X %02X %02X ", g_txPack.aid, g_txPack.mid, g_txPack.subcommand);
    
    // 打印数据负载
    for (j = 0; j < g_txPack.dataLength; j++)
    {
        TBOX_PRINT("%02X ", g_txData[j]);
    }
    TBOX_PRINT("\r\n");
    // =========================================================================

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
        // TBOX_PRINT("Error: Invalid data length %d for MID 0x%02X", rxMsg->dataLength, rxMsg->mid);
        return 0xFF;
    }
TBOX_PRINT("[MCU] << Parsing Request. TargetID: 0x%X\r\n", canId);

    if (canId == pEcuConfigure->functionalId)
    {
TBOX_PRINT("[MCU] -> Functional Transmit\r\n");
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
                TBOX_PRINT("[MCU] -> Found ECU Index: %d. Sending to CAN TP...\r\n", ecuId);
                UdsTpPhyAddressSetCanId(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], pEcuConfigure->pEcuList[ecuId].requestId, pEcuConfigure->pEcuList[ecuId].responseId);
                UdsTpSetFilter(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], 0);
                UdsTpClearRecvBuffer(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel]);
                //
                UdsTpTransmit(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], canId, pUdsData, udsDataLen);
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
// ==================== 模拟测试代码开始 ====================
void SimulateRemoteDiagFlow(CanIdConfig_t *pEcuConfigure)
{
    TBOX_PRINT("\r\n==================================================\r\n");
    TBOX_PRINT("   START REMOTE DIAGNOSTIC SIMULATION (MOCK)\r\n");
    TBOX_PRINT("==================================================\r\n");

    // 1. 构造模拟的 MPU 请求数据包
    // 模拟：远程诊断(01) 请求(01) 序列号(05) 目标ID(0x720) 读DID(22 F1 90)
    static uint8_t mock_buffer[] = {
        0x00, 0x00,             // Res/Len (Byte 0-1)
        0x05,                   // Index (Byte 2) - 序列号
        0x00, 0x00, 0x07, 0x25, // Target CAN ID = 0x720 (Byte 3-6)
        0x22, 0xF1, 0x90        // UDS Payload: ReadData F190 (VIN)
    };

    MpuHalDataPack_t mock_req;
    mock_req.aid = 0x05;
    mock_req.mid = 0x01;        // Remote Diag
    mock_req.subcommand = 0x01; // Request
    mock_req.pDataBuffer = mock_buffer;
    mock_req.dataLength = sizeof(mock_buffer); // 7 (header) + 3 (uds) = 10

    TBOX_PRINT("[SIM] 1. MPU sends Request: 22 F1 90 to ECU 0x720\r\n");

    // 2. 模拟 MCU 收到请求后的处理：发送 ACK
    // 这里我们手动调用逻辑，绕过 MpuHalReceive
    TBOX_PRINT("[SIM] 2. MCU handles Request & Sends ACK...\r\n");
    RemoteDiagnosticSdkSendAck(&mock_req, 0); // 0=Success

    // 3. 模拟 MCU 转发到 CAN
    TBOX_PRINT("[SIM] 3. MCU forwards to CAN TP...\r\n");
    // 注意：这里传入 -1 作为 virtualTpHandle，因为我们主要测物理寻址
    uint8_t ecuId = RemoteDiagnosticSdkTpTransmit(pEcuConfigure, &mock_req, -1);

    if (ecuId == 0xFF)
    {
        TBOX_PRINT("[SIM] FAILURE: ECU ID 0x720 not found in config list!\r\n");
        return;
    }

    // 4. 模拟 ECU 在 CAN 总线上回复了数据 (VIN码)
    // 这一步通常是异步的 (UdsTpReceive)，我们这里直接构造数据并触发发送响应
    TBOX_PRINT("[SIM] 4. (Async) ECU sends Response on CAN...\r\n");
    
    uint8_t mock_uds_response[] = {
        0x62, 0xF1, 0x90, // Positive Response
        'T', 'E', 'S', 'T', 'V', 'I', 'N', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' // 17字节 VIN
    };
    uint16_t resp_len = sizeof(mock_uds_response);
    uint32_t resp_can_id = pEcuConfigure->pEcuList[ecuId].responseId;

    // 5. 模拟 MCU 收到 CAN 数据后，发给 MPU
    TBOX_PRINT("[SIM] 5. MCU receives CAN data & Sends Response to MPU...\r\n");
    RemoteDiagnosticSdkSendResponse(&mock_req, resp_can_id, mock_uds_response, resp_len);

    TBOX_PRINT("==================================================\r\n");
    TBOX_PRINT("   SIMULATION COMPLETE\r\n");
    TBOX_PRINT("==================================================\r\n");
}
// ==================== 模拟测试代码结束 ====================
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

    for (i = 0; i < canChannelList->canChanelListSize; i++)
    {
        g_udsTpHandle[canChannelList->canChanelList[i]] = UdsTpOpen(canChannelList->canChanelList[i], pMpuBuffer->canRxBuffer, pMpuBuffer->canRxBufferSize, pTpParameter);
        UdsTpSetFunctionId(g_udsTpHandle[canChannelList->canChanelList[i]], pEcuConfigure->functionalId);
    }
vTaskDelay(100); 
    SimulateRemoteDiagFlow(pEcuConfigure);
    while (1)
    {
        ret = MpuHalReceive(g_mpuHandle, &rxMsg, 5);

        uint8_t currentMode = UdsDidGetManufactoryMode();
        uint8_t isNonFactoryMode = (currentMode <= 0x0F) ? 1 : 0;

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
                    ret = UdsTpReceive(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], udsRxbuf, &udsRecvLen, 0);

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