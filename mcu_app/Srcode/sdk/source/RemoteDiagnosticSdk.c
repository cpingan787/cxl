#if 1
#include "virtualTpSdk.h"
#include "mpuHal.h"
#include "logHal.h"
#include "udsTp.h"
#include "remoteDiagnosticSdk.h"

#define COMMAND_UDS_TRANSMIT_AID    0x05
#define COMMAND_UDS_TRANSMIT_MID    0x01

#define COMMAND_UDS_TRANSMIT_REQ	0x01	//CPU发送UDS数据
#define COMMAND_UDS_TRANSMIT_ACK	0x02	//MCU回复成功接收UDS发送数据
#define COMMAND_UDS_RESPONSE_REQ	0x03	//MCU发送UDS response
#define COMMAND_UDS_RESPONSE_ACK	0x04	//CPU发送接收到UDS response的确认

static int16_t	 g_udsTpHandle[6]	                =   {-1,-1,-1,-1,-1,-1};	//远程诊断can通信句柄
static uint8_t	 g_udsFlag	                        =   0;                      //0:非远程诊断模式 1:远程诊断模式
static uint32_t g_udsTimeCount	                    =   0;                      //uds模式计时
static uint8_t	 g_remoteDiagnosticShortDisableFlag	=   0;                      //0:使能远程诊断 1:短暂禁止远程诊断
static uint8_t	 g_remoteDiagnosticDisableFlag	    =   0;                      //0:使能远程诊断 1:禁止远程诊断
static uint16_t g_remoteDiagnosticDisableTimeCount	=   0;                      //禁止远程诊断时间计数
static uint8_t	 g_udsReceiveFlag	                =   0;                      //需要等待接收udsTp数据
static int16_t  g_mpuHandle                        =   -1;

static uint8_t g_txData[256] = {0};
static MpuHalDataPack_t g_txPack;
static CanChanel_t *g_canChannelList = NULL;

/****************************************************
0：no error 
1：寻址模式未启用
2：CAN BUS OFF

****************************************************/
static int16_t RemoteDiagnosticSdkSendAck(MpuHalDataPack_t *recvPack,uint8_t result)
{
    if(recvPack == NULL)
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
    
    MpuHalTransmit(g_mpuHandle,&g_txPack);
    
    return 0;
}

/****************************************************


****************************************************/
static int16_t RemoteDiagnosticSdkSendResponse(MpuHalDataPack_t *recvPack,uint32_t canId,uint8_t *data,uint16_t lenth)
{
    uint16_t i = 0;
    if(recvPack == NULL)
    {
        return -1;
    }
    
    g_txPack.aid = recvPack->aid;
    g_txPack.mid = recvPack->mid;
    g_txPack.subcommand = COMMAND_UDS_RESPONSE_REQ;
    
    g_txData[0] = 0; //no used
    g_txData[1] = 0; //0：成功 1：未完成
    g_txData[2] = recvPack->pDataBuffer[2];
    
    g_txData[3] = (canId >> 24) & 0xFF;
    g_txData[4] = (canId >> 16) & 0xFF;
    g_txData[5] = (canId >> 8) & 0xFF;
    g_txData[6] = canId & 0xFF;
    
    for(i = 0;i < lenth;i++)
    {
        g_txData[7+i] = data[i];
    }
    g_txPack.dataLength = 7 + lenth;
    
    g_txPack.pDataBuffer = g_txData;
    g_txPack.dataBufferSize = sizeof(g_txData);
    
    MpuHalTransmit(g_mpuHandle,&g_txPack);
    
    return 0;
}
/*
static int16_t RemoteDiagnosticSdkTestFunc(MpuHalDataPack_t *rxMsg)
{
    static uint32_t timeCount = 0;
    static uint8_t countIndex = 0;
    timeCount++;
    if(timeCount < (10*1000)/5)
    {
        return -1;
    }
    timeCount = 0;
    rxMsg->aid = COMMAND_UDS_TRANSMIT_AID;
    rxMsg->mid = COMMAND_UDS_TRANSMIT_MID;
    
    rxMsg->subcommand= (0x80 | 0x01);
    
    rxMsg->pDataBuffer[0] = 0x00;
    rxMsg->pDataBuffer[1] = 0x00;
    rxMsg->pDataBuffer[2] = countIndex;
    if(countIndex == 0xFF)
    {
        countIndex = 0;
    }
    else
    {
        countIndex++;
    }
    rxMsg->pDataBuffer[3] = 0x00;
    rxMsg->pDataBuffer[4] = 0x00;
    rxMsg->pDataBuffer[5] = 0x07;
    rxMsg->pDataBuffer[6] = 0x62;
    rxMsg->pDataBuffer[7] = 0x19;
    rxMsg->pDataBuffer[8] = 0x02;
    rxMsg->pDataBuffer[9] = 0xFF;
    rxMsg->dataLength = 10;
    
    return 0;
}
*/

static uint8_t RemoteDiagnosticSdkTpTransmit(CanIdConfig_t *pEcuConfigure,MpuHalDataPack_t *rxMsg,int16_t virtualTpHandle)
{
    uint8_t i = 0;
    uint32_t canId = 0;
    uint8_t ecuId = 0xFF;
    CanChanel_t *canChannelList = g_canChannelList;
    canId=(rxMsg->pDataBuffer[3]<<24)+(rxMsg->pDataBuffer[4]<<16)+(rxMsg->pDataBuffer[5]<<8)+rxMsg->pDataBuffer[6];
    if(canId==pEcuConfigure->functionalId)  //功能寻址？
    {
        //向所有can发送诊断报文
        for(i = 0;i<canChannelList->canChanelListSize;i++)
        {
            UdsTpTransmit(g_udsTpHandle[canChannelList->canChanelList[i]],canId,rxMsg->pDataBuffer + 7,rxMsg->dataLength-7);
        }
        //向虚拟TP层发送诊断报文
        VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg->pDataBuffer+7,rxMsg->dataLength-7);
        g_udsFlag = 1;
        g_udsTimeCount = 0;
    }
    else
    {
        //自诊断？
        if(canId == pEcuConfigure->selfDiagnosticReqId)
        {
            //向虚拟TP层发送诊断报文
            VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg->pDataBuffer+7,rxMsg->dataLength-7);
            g_udsFlag = 1;
            g_udsTimeCount = 0;
        }
        else
        {
            ecuId = 0xFF;
            for(i = 0;i<pEcuConfigure->ecuListSize; i++)
            {
                if(pEcuConfigure->pEcuList[i].requestId ==canId)
                {
                    ecuId = i;
                    break;
                }
            }
            if(ecuId!=0xFF)
            {
                UdsTpPhyAddressSetCanId(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],pEcuConfigure->pEcuList[ecuId].requestId,pEcuConfigure->pEcuList[ecuId].responseId);
                UdsTpSetFilter(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],0);
                UdsTpClearRecvBuffer(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel]);
                //向对应can发送诊断报文
                UdsTpTransmit(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],canId,rxMsg->pDataBuffer+7,rxMsg->dataLength-7);
                g_udsFlag = 1;
                g_udsTimeCount = 0;
                g_udsReceiveFlag = 1;
            }
        }
    
    }
    return ecuId;
}

/*************************************************
  Function:       RemoteDiagnosticSdkProcess
  Description:    远程诊断接口
  Input:          pEcuConfigure：
                  pMpuBuffer：
                  pTpParameter：
                  canChannelList：
  Output:         无
  Return:         无
  Others:         
*************************************************/
void RemoteDiagnosticSdkProcess(CanIdConfig_t *pEcuConfigure,MpuBuffer_t *pMpuBuffer,UdsTpParameter_t *pTpParameter,CanChanel_t *canChannelList)
{
    uint8_t i = 0;
    int16_t ret = -1;
    //MPU通信变量
    MpuHalFilter_t mpuFilter;
    
    uint8_t oldIndex = 0;
    //uint32_t canId = 0;
    uint32_t responseId = 0;
    uint8_t ecuId = 0;
    
    MpuHalDataPack_t rxMsg;
    rxMsg.pDataBuffer = pMpuBuffer->rxData;
    rxMsg.dataBufferSize = sizeof(pMpuBuffer->rxData);
    
    //虚拟TP的变量
    int16_t virtualTpHandle = -1;
    uint8_t virtualRxbuf[100] = {0};
    uint8_t virtualTxbuf[100] = {0};
    uint16_t recvLen = 0;
    
    //usdTp通信的变量
    uint8_t udsRxbuf[120] = {0};
    uint16_t udsRecvLen = 0;
    
    //初始化mpu串口通信
    mpuFilter.aid = COMMAND_UDS_TRANSMIT_AID;
    mpuFilter.midMin = COMMAND_UDS_TRANSMIT_MID;
    mpuFilter.midMax = COMMAND_UDS_TRANSMIT_MID;
    g_mpuHandle = MpuHalOpen();
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,pMpuBuffer->mpuRecvBuffer,sizeof(pMpuBuffer->mpuRecvBuffer));
    
    //获取虚拟TPhandle
    if(canChannelList == NULL)
    {
        return ;
    }
    g_canChannelList = canChannelList;
    virtualTpHandle = VirtualTpSdkClientOpen(virtualRxbuf,sizeof(virtualRxbuf),virtualTxbuf,sizeof(virtualTxbuf));
    
    for(i = 0;i<canChannelList->canChanelListSize;i++)
    {
        g_udsTpHandle[canChannelList->canChanelList[i]] = UdsTpOpen(canChannelList->canChanelList[i],pMpuBuffer->canRxBuffer,pMpuBuffer->canRxBufferSize,pTpParameter);
        UdsTpSetFunctionId(g_udsTpHandle[canChannelList->canChanelList[i]],pEcuConfigure->functionalId);
    }
    
    while(1)
    {
        ret = MpuHalReceive(g_mpuHandle,&rxMsg,5);
        //ret = RemoteDiagnosticSdkTestFunc(&rxMsg);
        if(ret == MPU_HAL_STATUS_OK)
        {
            if((rxMsg.aid==COMMAND_UDS_TRANSMIT_AID) && (rxMsg.mid==COMMAND_UDS_TRANSMIT_MID))
            {
                if((rxMsg.subcommand & 0x7F) == COMMAND_UDS_TRANSMIT_REQ)
                {
                    if((rxMsg.pDataBuffer[1]==0x80) && (rxMsg.pDataBuffer[2]==oldIndex))
                    {
                        //返回响应ACK
                        RemoteDiagnosticSdkSendAck(&rxMsg,0);
                    }
                    else
                    {
                        //返回响应ACK
                        RemoteDiagnosticSdkSendAck(&rxMsg,0);
                        oldIndex = rxMsg.pDataBuffer[2];
                        ecuId = RemoteDiagnosticSdkTpTransmit(pEcuConfigure,&rxMsg,virtualTpHandle);
                        
                        //canId=(rxMsg.pDataBuffer[3]<<24)+(rxMsg.pDataBuffer[4]<<16)+(rxMsg.pDataBuffer[5]<<8)+rxMsg.pDataBuffer[6];
                        //if(canId==pEcuConfigure->functionalId)  //功能寻址？
                        //{
                        //    //向所有can发送诊断报文
                        //    for(i = 0;i<canChannelList->canChanelListSize;i++)
                        //    {
                        //        UdsTpTransmit(g_udsTpHandle[canChannelList->canChanelList[i]],canId,rxMsg.pDataBuffer + 7,rxMsg.dataLength-7);
                        //    }
                        //    //向虚拟TP层发送诊断报文
                        //    VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
                        //    g_udsFlag = 1;
                        //    g_udsTimeCount = 0;
                        //}
                        //else
                        //{
                        //    
                        //    TBOX_PRINT("recv request count Index = %d \r\n",oldIndex);
                        //    //自诊断？
                        //    if(canId == pEcuConfigure->selfDiagnosticReqId)
                        //    {
                        //        //向虚拟TP层发送诊断报文
                        //        VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
                        //        g_udsFlag = 1;
                        //        g_udsTimeCount = 0;
                        //    }
                        //    else
                        //    {
                        //        ecuId = 0xFF;
                        //        for(i = 0;i<pEcuConfigure->ecuListSize; i++)
                        //        {
                        //            if(pEcuConfigure->pEcuList[i].requestId ==canId)
                        //            {
                        //                ecuId = i;
                        //                break;
                        //            }
                        //        }
                        //        if(ecuId!=0xFF)
                        //        {
                        //            UdsTpPhyAddressSetCanId(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],pEcuConfigure->pEcuList[ecuId].requestId,pEcuConfigure->pEcuList[ecuId].responseId);
                        //            UdsTpSetFilter(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],0);
                        //            UdsTpClearRecvBuffer(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel]);
                        //            //向对应can发送诊断报文
                        //            UdsTpTransmit(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel],canId,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
                        //            g_udsFlag = 1;
                        //            g_udsTimeCount = 0;
                        //            g_udsReceiveFlag = 1;
                        //        }
                        //    }
                        //
                        //}
                    }
                }
                else if((rxMsg.subcommand & 0x7F) == COMMAND_UDS_RESPONSE_ACK) //cpu接收响应成功
                {
                    
                }
            
            }
        }
        VirtualTpSdkClientReceive(virtualTpHandle,virtualRxbuf,sizeof(virtualRxbuf),&recvLen);
        if(recvLen > 0)
        {
            //发送响应
            RemoteDiagnosticSdkSendResponse(&rxMsg,pEcuConfigure->selfDiagnosticRespId,virtualRxbuf,recvLen);
        }
        
        if(g_remoteDiagnosticShortDisableFlag == 1)
        {
            g_remoteDiagnosticDisableTimeCount++;
            if(g_remoteDiagnosticDisableTimeCount>=2000)
            {
                g_remoteDiagnosticDisableTimeCount=0;
                g_remoteDiagnosticShortDisableFlag = 0;
            }
            else
            {
                g_udsFlag = 0;
                g_udsReceiveFlag = 0;
            }
        }
        if(g_remoteDiagnosticDisableFlag == 1)
        {
            g_udsFlag = 0;
            g_udsReceiveFlag = 0;
        }
        
        if(g_udsFlag == 1)
        {
            if(g_udsReceiveFlag == 1)
            {
                if(ecuId!=0xFF)
                {
                    udsRecvLen = 0;
                    ret = UdsTpReceive(g_udsTpHandle[pEcuConfigure->pEcuList[ecuId].channel], udsRxbuf,&udsRecvLen,0);
                    //是否接收到数据
                    if(ret == 0)
                    {
                        //发送响应
                        responseId = pEcuConfigure->pEcuList[ecuId].responseId;
                        RemoteDiagnosticSdkSendResponse(&rxMsg,responseId,udsRxbuf,udsRecvLen);
                    }
                }
            }
            g_udsTimeCount++;
            if(g_udsTimeCount>2000)
            {
                g_udsFlag = 1;
                g_udsTimeCount = 0;
            }
        }
    }                               
}

/*************************************************
  Function:       RemoteDiagnosticSdkShortDisable
  Description:    打断远程诊断功能接口，持续10s,10s之后自动恢复
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void RemoteDiagnosticSdkShortDisable(void)
{
    g_remoteDiagnosticShortDisableFlag = 1;
    g_remoteDiagnosticDisableTimeCount = 0;
}

/*************************************************
  Function:       RemoteDiagnosticSdkDisable
  Description:    打断远程诊断功能接口，必须调用RemoteDiagnosticSdkRecover接口进行恢复
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void RemoteDiagnosticSdkDisable(void)
{
    g_remoteDiagnosticDisableFlag = 1;
}

/*************************************************
  Function:       RemoteDiagnosticSdkRecover
  Description:    恢复远程诊断功能接口,立即恢复RemoteDiagnosticSdkShortDisable和RemoteDiagnosticSdkDisable接口的打断
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void RemoteDiagnosticSdkRecover(void)
{
    g_remoteDiagnosticDisableFlag = 0;
}



#endif
