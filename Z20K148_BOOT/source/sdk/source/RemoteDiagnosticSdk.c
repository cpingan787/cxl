// #if 1
// #include "virtualTpSdk.h"
// #include "mpuHal.h"
// #include "logHal.h"
// #include "udsTp.h"
// #include "remoteDiagnosticSdk.h"

// #define COMMAND_UDS_TRANSMIT_AID    0x05
// #define COMMAND_UDS_TRANSMIT_MID    0x01

// #define COMMAND_UDS_TRANSMIT_REQ	0x01	//CPU����UDS����
// #define COMMAND_UDS_TRANSMIT_ACK	0x02	//MCU�ظ��ɹ�����UDS��������
// #define COMMAND_UDS_RESPONSE_REQ	0x03	//MCU����UDS response
// #define COMMAND_UDS_RESPONSE_ACK	0x04	//CPU���ͽ��յ�UDS response��ȷ��

// static int16_t	 g_udsTpHandle[6]	                =   {-1,-1,-1,-1,-1,-1};	//Զ�����canͨ�ž��
// static uint8_t	 g_udsFlag	                        =   0;                      //0:��Զ�����ģʽ 1:Զ�����ģʽ
// static uint32_t g_udsTimeCount	                    =   0;                      //udsģʽ��ʱ
// static uint8_t	 g_remoteDiagnosticShortDisableFlag	=   0;                      //0:ʹ��Զ����� 1:���ݽ�ֹԶ�����
// static uint8_t	 g_remoteDiagnosticDisableFlag	    =   0;                      //0:ʹ��Զ����� 1:��ֹԶ�����
// static uint16_t g_remoteDiagnosticDisableTimeCount	=   0;                      //��ֹԶ�����ʱ�����
// static uint8_t	 g_udsReceiveFlag	                =   0;                      //��Ҫ�ȴ�����udsTp����
// static int16_t  g_mpuHandle                        =   -1;

// static uint8_t g_txData[256] = {0};
// static MpuHalDataPack_t g_txPack;
// static CanChanel_t *g_canChannelList = NULL;

// /****************************************************
// 0��no error
// 1��Ѱַģʽδ����
// 2��CAN BUS OFF

// ****************************************************/
// static int16_t RemoteDiagnosticSdkSendAck(MpuHalDataPack_t *recvPack,uint8_t result)
// {
//     if(recvPack == NULL)
//     {
//         return -1;
//     }

//     g_txPack.aid = recvPack->aid;
//     g_txPack.mid = recvPack->mid;
//     g_txPack.subcommand = COMMAND_UDS_TRANSMIT_ACK;

//     g_txData[0] = 0;
//     g_txData[1] = result;
//     g_txData[2] = recvPack->pDataBuffer[2];

//     g_txPack.pDataBuffer = g_txData;
//     g_txPack.dataBufferSize = sizeof(g_txData);
//     g_txPack.dataLength = 3;

//     MpuHalTransmit(g_mpuHandle,&g_txPack);

//     return 0;
// }

// /****************************************************

// ****************************************************/
// static int16_t RemoteDiagnosticSdkSendResponse(MpuHalDataPack_t *recvPack,uint32_t canId,uint8_t *data,uint16_t lenth)
// {
//     uint16_t i = 0;
//     if(recvPack == NULL)
//     {
//         return -1;
//     }

//     g_txPack.aid = recvPack->aid;
//     g_txPack.mid = recvPack->mid;
//     g_txPack.subcommand = COMMAND_UDS_RESPONSE_REQ;

//     g_txData[0] = 0; //no used
//     g_txData[1] = 0; //0���ɹ� 1��δ���
//     g_txData[2] = recvPack->pDataBuffer[2];

//     g_txData[3] = (canId >> 24) & 0xFF;
//     g_txData[4] = (canId >> 16) & 0xFF;
//     g_txData[5] = (canId >> 8) & 0xFF;
//     g_txData[6] = canId & 0xFF;

//     for(i = 0;i < lenth;i++)
//     {
//         g_txData[7+i] = data[i];
//     }
//     g_txPack.dataLength = 7 + lenth;

//     g_txPack.pDataBuffer = g_txData;
//     g_txPack.dataBufferSize = sizeof(g_txData);

//     MpuHalTransmit(g_mpuHandle,&g_txPack);

//     return 0;
// }
// /*
// static int16_t RemoteDiagnosticSdkTestFunc(MpuHalDataPack_t *rxMsg)
// {
//     static uint32_t timeCount = 0;
//     static uint8_t countIndex = 0;
//     timeCount++;
//     if(timeCount < (10*1000)/5)
//     {
//         return -1;
//     }
//     timeCount = 0;
//     rxMsg->aid = COMMAND_UDS_TRANSMIT_AID;
//     rxMsg->mid = COMMAND_UDS_TRANSMIT_MID;

//     rxMsg->subcommand= (0x80 | 0x01);

//     rxMsg->pDataBuffer[0] = 0x00;
//     rxMsg->pDataBuffer[1] = 0x00;
//     rxMsg->pDataBuffer[2] = countIndex;
//     if(countIndex == 0xFF)
//     {
//         countIndex = 0;
//     }
//     else
//     {
//         countIndex++;
//     }
//     rxMsg->pDataBuffer[3] = 0x00;
//     rxMsg->pDataBuffer[4] = 0x00;
//     rxMsg->pDataBuffer[5] = 0x07;
//     rxMsg->pDataBuffer[6] = 0x62;
//     rxMsg->pDataBuffer[7] = 0x19;
//     rxMsg->pDataBuffer[8] = 0x02;
//     rxMsg->pDataBuffer[9] = 0xFF;
//     rxMsg->dataLength = 10;

//     return 0;
// }
// */

// static uint8_t RemoteDiagnosticSdkTpTransmit(CanIdConfig_t *pEcuConfigure,MpuHalDataPack_t *rxMsg,int16_t virtualTpHandle)
// {
//     uint8_t i = 0;
//     uint32_t canId = 0;
//     uint8_t ecuId = 0xFF;
//     CanChanel_t *canChannelList = g_canChannelList;
//     canId=(rxMsg->pDataBuffer[3]<<24)+(rxMsg->pDataBuffer[4]<<16)+(rxMsg->pDataBuffer[5]<<8)+rxMsg->pDataBuffer[6];
//     if(canId==pEcuConfigure->functionalId)  //����Ѱַ��
//     {
//         //������can������ϱ���
//         for(i = 0;i<canChannelList->canChanelListSize;i++)
//         {
//             UdsTpTransmit(g_udsTpHandle[canChannelList->canChanelList[i]],canId,rxMsg->pDataBuffer + 7,rxMsg->dataLength-7);
//         }
//         //������TP�㷢����ϱ���
//         VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg->pDataBuffer+7,rxMsg->dataLength-7);
//         g_udsFlag = 1;
//         g_udsTimeCount = 0;
//     }
//     else
//     {
//         //����ϣ�
//         if(canId == pEcuConfigure->selfDiagnosticReqId)
//         {
//             //������TP�㷢����ϱ���
//             VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg->pDataBuffer+7,rxMsg->dataLength-7);
//             g_udsFlag = 1;
//             g_udsTimeCount = 0;
//         }
//         else
//         {
//             ecuId = 0xFF;
//             for(i = 0;i<pEcuConfigure->ecuListSize; i++)
//             {
//                 if(pEcuConfigure->pEcuList[i].requestId ==canId)
//                 {
//                     ecuId = i;
//                     break;
//                 }
//             }
//             if(ecuId!=0xFF)
//             {
//                 UdsTpPhyAddressSetCanId(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],pEcuConfigure->pEcuList[ecuId].requestId,pEcuConfigure->pEcuList[ecuId].responseId);
//                 UdsTpSetFilter(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],0);
//                 UdsTpClearRecvBuffer(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel]);
//                 //���Ӧcan������ϱ���
//                 UdsTpTransmit(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],canId,rxMsg->pDataBuffer+7,rxMsg->dataLength-7);
//                 g_udsFlag = 1;
//                 g_udsTimeCount = 0;
//                 g_udsReceiveFlag = 1;
//             }
//         }

//     }
//     return ecuId;
// }

// /*************************************************
//   Function:       RemoteDiagnosticSdkProcess
//   Description:    Զ����Ͻӿ�
//   Input:          pEcuConfigure��
//                   pMpuBuffer��
//                   pTpParameter��
//                   canChannelList��
//   Output:         ��
//   Return:         ��
//   Others:
// *************************************************/
// void RemoteDiagnosticSdkProcess(CanIdConfig_t *pEcuConfigure,MpuBuffer_t *pMpuBuffer,UdsTpParameter_t *pTpParameter,CanChanel_t *canChannelList)
// {
//     uint8_t i = 0;
//     int16_t ret = -1;
//     //MPUͨ�ű���
//     MpuHalFilter_t mpuFilter;

//     uint8_t oldIndex = 0;
//     //uint32_t canId = 0;
//     uint32_t responseId = 0;
//     uint8_t ecuId = 0;

//     MpuHalDataPack_t rxMsg;
//     rxMsg.pDataBuffer = pMpuBuffer->rxData;
//     rxMsg.dataBufferSize = sizeof(pMpuBuffer->rxData);

//     //����TP�ı���
//     int16_t virtualTpHandle = -1;
//     uint8_t virtualRxbuf[100] = {0};
//     uint8_t virtualTxbuf[100] = {0};
//     uint16_t recvLen = 0;

//     //usdTpͨ�ŵı���
//     uint8_t udsRxbuf[120] = {0};
//     uint16_t udsRecvLen = 0;

//     //��ʼ��mpu����ͨ��
//     mpuFilter.aid = COMMAND_UDS_TRANSMIT_AID;
//     mpuFilter.midMin = COMMAND_UDS_TRANSMIT_MID;
//     mpuFilter.midMax = COMMAND_UDS_TRANSMIT_MID;
//     g_mpuHandle = MpuHalOpen();
//     MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
//     MpuHalSetRxBuffer(g_mpuHandle,pMpuBuffer->mpuRecvBuffer,sizeof(pMpuBuffer->mpuRecvBuffer));

//     //��ȡ����TPhandle
//     if(canChannelList == NULL)
//     {
//         return ;
//     }
//     g_canChannelList = canChannelList;
//     virtualTpHandle = VirtualTpSdkClientOpen(virtualRxbuf,sizeof(virtualRxbuf),virtualTxbuf,sizeof(virtualTxbuf));

//     for(i = 0;i<canChannelList->canChanelListSize;i++)
//     {
//         g_udsTpHandle[canChannelList->canChanelList[i]] = UdsTpOpen(canChannelList->canChanelList[i],pMpuBuffer->canRxBuffer,pMpuBuffer->canRxBufferSize,pTpParameter);
//         UdsTpSetFunctionId(g_udsTpHandle[canChannelList->canChanelList[i]],pEcuConfigure->functionalId);
//     }

//     while(1)
//     {
//         ret = MpuHalReceive(g_mpuHandle,&rxMsg,5);
//         //ret = RemoteDiagnosticSdkTestFunc(&rxMsg);
//         if(ret == MPU_HAL_STATUS_OK)
//         {
//             if((rxMsg.aid==COMMAND_UDS_TRANSMIT_AID) && (rxMsg.mid==COMMAND_UDS_TRANSMIT_MID))
//             {
//                 if((rxMsg.subcommand & 0x7F) == COMMAND_UDS_TRANSMIT_REQ)
//                 {
//                     if((rxMsg.pDataBuffer[1]==0x80) && (rxMsg.pDataBuffer[2]==oldIndex))
//                     {
//                         //������ӦACK
//                         RemoteDiagnosticSdkSendAck(&rxMsg,0);
//                     }
//                     else
//                     {
//                         //������ӦACK
//                         RemoteDiagnosticSdkSendAck(&rxMsg,0);
//                         oldIndex = rxMsg.pDataBuffer[2];
//                         ecuId = RemoteDiagnosticSdkTpTransmit(pEcuConfigure,&rxMsg,virtualTpHandle);

//                         //canId=(rxMsg.pDataBuffer[3]<<24)+(rxMsg.pDataBuffer[4]<<16)+(rxMsg.pDataBuffer[5]<<8)+rxMsg.pDataBuffer[6];
//                         //if(canId==pEcuConfigure->functionalId)  //����Ѱַ��
//                         //{
//                         //    //������can������ϱ���
//                         //    for(i = 0;i<canChannelList->canChanelListSize;i++)
//                         //    {
//                         //        UdsTpTransmit(g_udsTpHandle[canChannelList->canChanelList[i]],canId,rxMsg.pDataBuffer + 7,rxMsg.dataLength-7);
//                         //    }
//                         //    //������TP�㷢����ϱ���
//                         //    VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
//                         //    g_udsFlag = 1;
//                         //    g_udsTimeCount = 0;
//                         //}
//                         //else
//                         //{
//                         //
//                         //    TBOX_PRINT("recv request count Index = %d \r\n",oldIndex);
//                         //    //����ϣ�
//                         //    if(canId == pEcuConfigure->selfDiagnosticReqId)
//                         //    {
//                         //        //������TP�㷢����ϱ���
//                         //        VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
//                         //        g_udsFlag = 1;
//                         //        g_udsTimeCount = 0;
//                         //    }
//                         //    else
//                         //    {
//                         //        ecuId = 0xFF;
//                         //        for(i = 0;i<pEcuConfigure->ecuListSize; i++)
//                         //        {
//                         //            if(pEcuConfigure->pEcuList[i].requestId ==canId)
//                         //            {
//                         //                ecuId = i;
//                         //                break;
//                         //            }
//                         //        }
//                         //        if(ecuId!=0xFF)
//                         //        {
//                         //            UdsTpPhyAddressSetCanId(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],pEcuConfigure->pEcuList[ecuId].requestId,pEcuConfigure->pEcuList[ecuId].responseId);
//                         //            UdsTpSetFilter(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],0);
//                         //            UdsTpClearRecvBuffer(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel]);
//                         //            //���Ӧcan������ϱ���
//                         //            UdsTpTransmit(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],canId,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
//                         //            g_udsFlag = 1;
//                         //            g_udsTimeCount = 0;
//                         //            g_udsReceiveFlag = 1;
//                         //        }
//                         //    }
//                         //
//                         //}
//                     }
//                 }
//                 else if((rxMsg.subcommand & 0x7F) == COMMAND_UDS_RESPONSE_ACK) //cpu������Ӧ�ɹ�
//                 {

//                 }

//             }
//         }
//         VirtualTpSdkClientReceive(virtualTpHandle,virtualRxbuf,sizeof(virtualRxbuf),&recvLen);
//         if(recvLen > 0)
//         {
//             //������Ӧ
//             RemoteDiagnosticSdkSendResponse(&rxMsg,pEcuConfigure->selfDiagnosticRespId,virtualRxbuf,recvLen);
//         }

//         if(g_remoteDiagnosticShortDisableFlag == 1)
//         {
//             g_remoteDiagnosticDisableTimeCount++;
//             if(g_remoteDiagnosticDisableTimeCount>=2000)
//             {
//                 g_remoteDiagnosticDisableTimeCount=0;
//                 g_remoteDiagnosticShortDisableFlag = 0;
//             }
//             else
//             {
//                 g_udsFlag = 0;
//                 g_udsReceiveFlag = 0;
//             }
//         }
//         if(g_remoteDiagnosticDisableFlag == 1)
//         {
//             g_udsFlag = 0;
//             g_udsReceiveFlag = 0;
//         }

//         if(g_udsFlag == 1)
//         {
//             if(g_udsReceiveFlag == 1)
//             {
//                 if(ecuId!=0xFF)
//                 {
//                     udsRecvLen = 0;
//                     ret = UdsTpReceive(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], udsRxbuf,&udsRecvLen,0);
//                     //�Ƿ���յ�����
//                     if(ret == 0)
//                     {
//                         //������Ӧ
//                         responseId = pEcuConfigure->pEcuList[ecuId].responseId;
//                         RemoteDiagnosticSdkSendResponse(&rxMsg,responseId,udsRxbuf,udsRecvLen);
//                     }
//                 }
//             }
//             g_udsTimeCount++;
//             if(g_udsTimeCount>2000)
//             {
//                 g_udsFlag = 1;
//                 g_udsTimeCount = 0;
//             }
//         }
//     }
// }

// /*************************************************
//   Function:       RemoteDiagnosticSdkShortDisable
//   Description:    ���Զ����Ϲ��ܽӿڣ�����10s,10s֮���Զ��ָ�
//   Input:          ��
//   Output:         ��
//   Return:         ��
//   Others:
// *************************************************/
// void RemoteDiagnosticSdkShortDisable(void)
// {
//     g_remoteDiagnosticShortDisableFlag = 1;
//     g_remoteDiagnosticDisableTimeCount = 0;
// }

// /*************************************************
//   Function:       RemoteDiagnosticSdkDisable
//   Description:    ���Զ����Ϲ��ܽӿڣ��������RemoteDiagnosticSdkRecover�ӿڽ��лָ�
//   Input:          ��
//   Output:         ��
//   Return:         ��
//   Others:
// *************************************************/
// void RemoteDiagnosticSdkDisable(void)
// {
//     g_remoteDiagnosticDisableFlag = 1;
// }

// /*************************************************
//   Function:       RemoteDiagnosticSdkRecover
//   Description:    �ָ�Զ����Ϲ��ܽӿ�,�����ָ�RemoteDiagnosticSdkShortDisable��RemoteDiagnosticSdkDisable�ӿڵĴ��
//   Input:          ��
//   Output:         ��
//   Return:         ��
//   Others:
// *************************************************/
// void RemoteDiagnosticSdkRecover(void)
// {
//     g_remoteDiagnosticDisableFlag = 0;
// }

// #endif
#if 1
#include "virtualTpSdk.h"
#include "mpuHal.h"
#include "logHal.h"
#include "udsTp.h"
#include "remoteDiagnosticSdk.h"
#include "taskDiagnostic.h"

// --- 新增头文件 ---
#include <string.h>   // 用于 memcpy
#include "FreeRTOS.h" // 用于 FreeRTOS API
#include "task.h"     // 用于 vTaskDelay 和 pdMS_TO_TICKS

// --- 协议宏定义 (保持不变) ---
#define COMMAND_UDS_TRANSMIT_AID 0x05
#define COMMAND_UDS_TRANSMIT_MID 0x01
#define COMMAND_UDS_TRANSMIT_REQ 0x01
#define COMMAND_UDS_TRANSMIT_ACK 0x02
#define COMMAND_UDS_RESPONSE_REQ 0x03
#define COMMAND_UDS_RESPONSE_ACK 0x04

// --- 模块内部静态全局变量 ---
static int16_t g_udsTpHandle[6] = {-1, -1, -1, -1, -1, -1};
static int16_t g_mpuHandle = -1;
static uint8_t g_udsFlag = 0;
static uint32_t g_udsTimeCount = 0;
static uint8_t g_remoteDiagnosticShortDisableFlag = 0;
static uint8_t g_remoteDiagnosticDisableFlag = 0;
static uint16_t g_remoteDiagnosticDisableTimeCount = 0;
static uint8_t g_udsReceiveFlag = 0;

static uint8_t g_txData[256] = {0};
static MpuHalDataPack_t g_txPack;

static MpuHalDataPack_t g_lastRxMsg;
static uint8_t g_lastEcuId = 0xFF;

/****************************************************
 * @brief 发送ACK确认帧给MPU
 ****************************************************/
static int16_t RemoteDiagnosticSdkSendAck(const MpuHalDataPack_t *recvPack, uint8_t result)
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

    MpuHalTransmit(g_mpuHandle, &g_txPack);

    return 0;
}

/****************************************************
 * @brief 将从ECU收到的UDS响应转发给MPU
 ****************************************************/
static int16_t RemoteDiagnosticSdkSendResponse(const MpuHalDataPack_t *origReqPack, uint32_t canId, const uint8_t *data, uint16_t length)
{
    if (origReqPack == NULL || data == NULL)
    {
        return -1;
    }

    g_txPack.aid = origReqPack->aid;
    g_txPack.mid = origReqPack->mid;
    g_txPack.subcommand = COMMAND_UDS_RESPONSE_REQ;

    g_txData[0] = 0;
    g_txData[1] = 0;
    g_txData[2] = origReqPack->pDataBuffer[2];

    g_txData[3] = (canId >> 24) & 0xFF;
    g_txData[4] = (canId >> 16) & 0xFF;
    g_txData[5] = (canId >> 8) & 0xFF;
    g_txData[6] = canId & 0xFF;

    memcpy(&g_txData[7], data, length);
    g_txPack.dataLength = 7 + length;

    g_txPack.pDataBuffer = g_txData;
    g_txPack.dataBufferSize = sizeof(g_txData);

    MpuHalTransmit(g_mpuHandle, &g_txPack);

    return 0;
}

/*************************************************
 * @brief (重构) 处理并转发UDS TP报文
 *************************************************/
static uint8_t RemoteDiagnosticSdkTpTransmit(const CanIdConfig_t *pEcuConfigure, const MpuHalDataPack_t *rxMsg, int16_t virtualTpHandle)
{
    uint32_t canId = (rxMsg->pDataBuffer[3] << 24) | (rxMsg->pDataBuffer[4] << 16) | (rxMsg->pDataBuffer[5] << 8) | rxMsg->pDataBuffer[6];
    uint8_t *udsPayload = &rxMsg->pDataBuffer[7];
    uint16_t udsPayloadLength = rxMsg->dataLength - 7;
    uint8_t ecuId = 0xFF;

    g_udsFlag = 1;
    g_udsTimeCount = 0;

    if (canId == pEcuConfigure->selfDiagnosticReqId)
    {
        TBOX_PRINT("RemoteDiag: Request to self (0x%X)\r\n", canId);
        VirtualTpSdkClientTransmit(virtualTpHandle, udsPayload, udsPayloadLength);
        g_udsReceiveFlag = 1;
        return 0xFF;
    }

    if (canId == pEcuConfigure->functionalId)
    {
        TBOX_PRINT("RemoteDiag: Functional request to 0x%X\r\n", canId);
        for (uint8_t i = 0; i < pEcuConfigure->ecuListSize; i++)
        {
            uint8_t channel = pEcuConfigure->pEcuList[i].channel;
            UdsTpTransmit(g_udsTpHandle[channel], canId, udsPayload, udsPayloadLength);
        }
        VirtualTpSdkClientTransmit(virtualTpHandle, udsPayload, udsPayloadLength);
        g_udsReceiveFlag = 1;
        return 0xFF;
    }

    for (uint8_t i = 0; i < pEcuConfigure->ecuListSize; i++)
    {
        if (pEcuConfigure->pEcuList[i].requestId == canId)
        {
            ecuId = i;
            uint8_t channel = pEcuConfigure->pEcuList[i].channel;
            TBOX_PRINT("RemoteDiag: Physical request to ECU %d (0x%X) on channel %d\r\n", i, canId, channel);

            UdsTpPhyAddressSetCanId(g_udsTpHandle[channel], canId, pEcuConfigure->pEcuList[i].responseId);
            UdsTpSetFilter(g_udsTpHandle[channel], 0);
            UdsTpClearRecvBuffer(g_udsTpHandle[channel]);
            UdsTpTransmit(g_udsTpHandle[channel], canId, udsPayload, udsPayloadLength);

            g_udsReceiveFlag = 1;
            break;
        }
    }

    if (ecuId == 0xFF)
    {
        TBOX_PRINT("RemoteDiag: Error - Unknown physical CAN ID 0x%X\r\n", canId);
    }

    return ecuId;
}

/*************************************************
  Function:       RemoteDiagnosticSdkProcess (重构版本)
*************************************************/
void RemoteDiagnosticSdkProcess(CanIdConfig_t *pEcuConfigure, MpuBuffer_t *pMpuBuffer, UdsTpParameter_t *pTpParameter, CanChanel_t *canChannelList)
{
    uint8_t oldIndex = 0xFF;

    MpuHalFilter_t mpuFilter;
    mpuFilter.aid = COMMAND_UDS_TRANSMIT_AID;
    mpuFilter.midMin = COMMAND_UDS_TRANSMIT_MID;
    mpuFilter.midMax = 0x20;
    g_mpuHandle = MpuHalOpen();
    if (g_mpuHandle < 0)
    {
        TBOX_PRINT("RemoteDiag: Failed to open MPU handle!\r\n");
        return;
    }
    MpuHalSetRxFilter(g_mpuHandle, &mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle, pMpuBuffer->mpuRecvBuffer, pMpuBuffer->mpuRecvBufferSize);

    int16_t virtualTpHandle = VirtualTpSdkClientOpen(pMpuBuffer->virtualTpRxBuffer, sizeof(pMpuBuffer->virtualTpRxBuffer), pMpuBuffer->virtualTpTxBuffer, sizeof(pMpuBuffer->virtualTpTxBuffer));
    if (virtualTpHandle < 0)
    {
        TBOX_PRINT("RemoteDiag: Failed to open Virtual TP client!\r\n");
        return;
    }

    for (uint8_t i = 0; i < canChannelList->canChanelListSize; i++)
    {
        uint8_t channel = canChannelList->canChanelList[i];
        g_udsTpHandle[channel] = UdsTpOpen(channel, pMpuBuffer->canRxBuffer, pMpuBuffer->canRxBufferSize, pTpParameter);
        UdsTpSetFunctionId(g_udsTpHandle[channel], pEcuConfigure->functionalId);
    }

    MpuHalDataPack_t rxMsg;
    rxMsg.pDataBuffer = pMpuBuffer->rxData;
    rxMsg.dataBufferSize = sizeof(pMpuBuffer->rxData);

    while (1)
    {
        if (MpuHalReceive(g_mpuHandle, &rxMsg, 5) == MPU_HAL_STATUS_OK)
        {
            if (rxMsg.aid == COMMAND_UDS_TRANSMIT_AID && (rxMsg.subcommand & 0x7F) == COMMAND_UDS_TRANSMIT_REQ)
            {
                uint8_t newIndex = rxMsg.pDataBuffer[2];
                if (newIndex != oldIndex)
                {
                    oldIndex = newIndex;
                    RemoteDiagnosticSdkSendAck(&rxMsg, 0);
                    memcpy(g_lastRxMsg.pDataBuffer, rxMsg.pDataBuffer, rxMsg.dataLength);
                    g_lastRxMsg.dataLength = rxMsg.dataLength;
                    g_lastRxMsg.aid = rxMsg.aid;
                    g_lastRxMsg.mid = rxMsg.mid;
                    g_lastRxMsg.subcommand = rxMsg.subcommand;
                    g_lastEcuId = RemoteDiagnosticSdkTpTransmit(pEcuConfigure, &rxMsg, virtualTpHandle);
                }
                else
                {
                    RemoteDiagnosticSdkSendAck(&rxMsg, 0);
                }
            }
        }

        if (g_udsReceiveFlag)
        {
            uint16_t respLen = 0;

            if (g_lastEcuId != 0xFF)
            {
                uint8_t channel = pEcuConfigure->pEcuList[g_lastEcuId].channel;
                if (UdsTpReceive(g_udsTpHandle[channel], pMpuBuffer->canTxBuffer, &respLen, 0) == 0 && respLen > 0)
                {
                    uint32_t respId = pEcuConfigure->pEcuList[g_lastEcuId].responseId;
                    TBOX_PRINT("RemoteDiag: Received response from ECU %d (0x%X)\r\n", g_lastEcuId, respId);
                    RemoteDiagnosticSdkSendResponse(&g_lastRxMsg, respId, pMpuBuffer->canTxBuffer, respLen);
                    g_udsReceiveFlag = 0;
                }
            }

            if (VirtualTpSdkClientReceive(virtualTpHandle, pMpuBuffer->virtualTpRxBuffer, sizeof(pMpuBuffer->virtualTpRxBuffer), &respLen) == 0 && respLen > 0)
            {
                TBOX_PRINT("RemoteDiag: Received response from self (0x%X)\r\n", pEcuConfigure->selfDiagnosticRespId);
                RemoteDiagnosticSdkSendResponse(&g_lastRxMsg, pEcuConfigure->selfDiagnosticRespId, pMpuBuffer->virtualTpRxBuffer, respLen);
                g_udsReceiveFlag = 0;
            }
        }

        if (g_udsFlag)
        {
            g_udsTimeCount++;
            if (g_udsTimeCount > (5000 / 5))
            {
                g_udsFlag = 0;
                g_udsReceiveFlag = 0;
                TBOX_PRINT("RemoteDiag: Session timeout.\r\n");
            }
        }

        if (g_remoteDiagnosticShortDisableFlag)
        {
            g_remoteDiagnosticDisableTimeCount++;
            if (g_remoteDiagnosticDisableTimeCount >= (10000 / 5))
            {
                g_remoteDiagnosticShortDisableFlag = 0;
            }
        }

        if (g_remoteDiagnosticDisableFlag || g_remoteDiagnosticShortDisableFlag)
        {
            g_udsFlag = 0;
            g_udsReceiveFlag = 0;
        }

        vTaskDelay(pdMS_TO_TICKS(5));
    }
}

void RemoteDiagnosticSdkShortDisable(void)
{
    g_remoteDiagnosticShortDisableFlag = 1;
    g_remoteDiagnosticDisableTimeCount = 0;
    TBOX_PRINT("RemoteDiag: Temporarily disabled.\r\n");
}

void RemoteDiagnosticSdkDisable(void)
{
    g_remoteDiagnosticDisableFlag = 1;
    TBOX_PRINT("RemoteDiag: Permanently disabled.\r\n");
}

void RemoteDiagnosticSdkRecover(void)
{
    g_remoteDiagnosticDisableFlag = 0;
    g_remoteDiagnosticShortDisableFlag = 0;
    TBOX_PRINT("RemoteDiag: Recovered.\r\n");
}

#endif