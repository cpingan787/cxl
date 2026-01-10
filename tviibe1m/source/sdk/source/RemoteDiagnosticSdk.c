
#include "mpuHal.h"
#include "logHal.h"
#include "timerHal.h"
#include "RemoteDiagnosticSdk.h"
#include "RemoteDiagnosticUartSdk.h"
#include "udsTp.h"
#include "FreeRTOS.h"
#include "task.h"
#include "udsDidFunction.h"
#include "taskDiagnostic.h"
#include "firmwareUpdateSdk.h"
#include "ParameterStoreManageApp.h"

#define COMMAND_UDS_TRANSMIT_REQ	0x01	//CPU����UDS����
#define COMMAND_UDS_TRANSMIT_ACK	0x02	//MCU�ظ��ɹ�����UDS��������
#define COMMAND_UDS_RESPONSE_REQ	0x03	//MCU����UDS response
#define COMMAND_UDS_RESPONSE_ACK	0x04	//CPU���ͽ��յ�UDS response��ȷ��

#define COMMAND_UDS_MESSAGE_REQ	    0x05	//MCU����OTA DATA VER
#define COMMAND_UDS_MESSAGE_ACK	    0x06	//MCU�ظ��ɹ�����UDS��������

#define MAX_OTA_VER_LENGTH 15

static int16_t	 g_udsTpHandle[3]	                =   {-1,-1,-1};	//Զ�����canͨ�ž��
static uint8_t	 g_udsFlag	                        =   0;                      //0:��Զ�����ģʽ 1:Զ�����ģʽ
static uint32_t g_udsTimeCount	                    =   0;                      //udsģʽ��ʱ
//static uint8_t	 g_remoteDiagnosticDisableFlag	    =   0;                      //0:ʹ��Զ����� 1:��ֹԶ�����
static uint16_t g_cpuUdsComTimeOutTimeCount	=   0;                      //CPU��Ϣ��ʱ
static uint8_t	 g_udsReceiveFlag	                =   0;                      //��Ҫ�ȴ�����udsTp����
static int16_t  g_mpuHandle                        =   -1;

typedef struct
{
  remote_auth_state_t authState;
  uint32_t controlTimerCount;
  uint8_t  authData[8+1];

}remote_gw_auth;

typedef struct
{
  uint32_t size;
  uint32_t elementCount;
}cangw_rx_configure_t;

typedef struct
{
  uint32_t canId;
  uint8_t canData[8];
  //uint8_t msgRepeatNumber;
  //uint8_t msgRepeatCount;
}cangw_msg_rx_configure_buffer_t;

//static cangw_msg_rx_configure_buffer_t m_canGwRxToCpuConfigureBuffer[RX_CANGW_CONFIGURE_CHANNEL_NUMBER][RX_CANGW_CONFIGURE_BUFFER_SIZE];
//static cangw_rx_configure_t m_canGwRxToCpuConfigure[RX_CANGW_CONFIGURE_BUFFER_SIZE];

//static remote_gw_auth m_remote_gw_auth;
//static struct_UartGwBuffer m_can1GwUartBuffer;
//static int16_t g_uartGwHandle;

//static uint8_t m_txGwBuffer[TX_BUFFER_CAN_MSG_GW_NUM_MAX*12+4+8+1];
//static uint8_t m_txGwBufferCount = 0;
UdsUpdata_t TboxUpDataStatus;

//static uint8_t g_txData[256] = {0};
//static MpuHalDataPack_t g_txPack;

//static enum_SecurityTimerDelayType m_securityTimerDelayType;
//static typeTimerHandle m_ecuSecurityTimerHandle = -1;
//static typeTimerHandle m_ecuOnlineTimerHandle = -1;

/****************************************************
0��no error 
1��Ѱַģʽδ����
2��CAN BUS OFF

****************************************************/
static int16_t RemoteDiagnosticSdkSendAck(MpuHalDataPack_t *recvPack,uint8_t result)
{
    MpuHalDataPack_t l_txPack;
	uint8_t luctxData[32] = {0};
	
    if(recvPack == NULL)
    {
        return -1;
    }
    
    l_txPack.aid = recvPack->aid;
    l_txPack.mid = recvPack->mid;
    l_txPack.subcommand = COMMAND_UDS_TRANSMIT_ACK;
    
    luctxData[0] = 0;
    luctxData[1] = result;
    luctxData[2] = recvPack->pDataBuffer[2];
    
    l_txPack.pDataBuffer = luctxData;
    l_txPack.dataBufferSize = sizeof(luctxData);
    l_txPack.dataLength = 3;
    
    MpuHalTransmit(g_mpuHandle,&l_txPack);
    
    return 0;
}

static int16_t RemoteDiagnosticOtaVerSdkSendAck(uint8_t result)
{
    uint16_t i = 0;
	static uint8_t SendCnt;
	MpuHalDataPack_t l_txPack;
	uint8_t luctxData[32] = {0};
	    
    l_txPack.aid = 0x05;
    l_txPack.mid = 0x01;
    l_txPack.subcommand = COMMAND_UDS_MESSAGE_ACK;
	
	luctxData[0] = 0; 
	luctxData[1] = result;
	
    l_txPack.pDataBuffer = luctxData;
    l_txPack.dataBufferSize = 2;
    l_txPack.dataLength = 2;
    
    MpuHalTransmit(g_mpuHandle,&l_txPack);
    
    return 0;
}

/****************************************************


****************************************************/
static int16_t RemoteDiagnosticSdkSendResponse(MpuHalDataPack_t *recvPack,uint32_t canId,uint8_t *data,uint16_t lenth)
{
    uint16_t i = 0;
	MpuHalDataPack_t l_txPack;
	uint8_t luctxData[32] = {0};
	
    if(recvPack == NULL)
    {
        return -1;
    }
    
    l_txPack.aid = recvPack->aid;
    l_txPack.mid = recvPack->mid;
    l_txPack.subcommand = COMMAND_UDS_RESPONSE_REQ;
    
    luctxData[0] = 0; //no used
    luctxData[1] = 0; //0���ɹ� 1��δ���
    luctxData[2] = recvPack->pDataBuffer[2];
    
    luctxData[3] = (canId >> 24) & 0xFF;
    luctxData[4] = (canId >> 16) & 0xFF;
    luctxData[5] = (canId >> 8) & 0xFF;
    luctxData[6] = canId & 0xFF;
    
    for(i = 0;i < lenth;i++)
    {
        luctxData[7+i] = data[i];
    }
    l_txPack.dataLength = 7 + lenth;
    
    l_txPack.pDataBuffer = luctxData;
    l_txPack.dataBufferSize = sizeof(luctxData);
    
    MpuHalTransmit(g_mpuHandle,&l_txPack);
    
    return 0;
}
static int16_t RemoteDiagnosticSdkSendResponseExtend(MpuHalDataPack_t *recvPack,uint32_t canId,uint8_t *data,uint16_t lenth)
{
    uint16_t i = 0;
	MpuHalDataPack_t l_txPack;
	uint8_t luctxData[32] = {0};
	
    if(recvPack == NULL)
    {
        return -1;
    }
    
    l_txPack.aid = recvPack->aid;
    l_txPack.mid = recvPack->mid;
    l_txPack.subcommand = COMMAND_UDS_RESPONSE_REQ;
    
    luctxData[0] = 0; //no used
    luctxData[1] = 0; //0���ɹ� 1��δ���
    luctxData[2] = recvPack->pDataBuffer[2];
    
    //luctxData[3] = (canId >> 24) & 0xFF;
    luctxData[3] = (canId >> 16) & 0xFF;
    luctxData[4] = (canId >> 8) & 0xFF;
    luctxData[5] = canId & 0xFF;
    
    for(i = 0;i < lenth;i++)
    {
        luctxData[6+i] = data[i];
    }
    l_txPack.dataLength = 6 + lenth;
    
    l_txPack.pDataBuffer = luctxData;
    l_txPack.dataBufferSize = sizeof(luctxData);
    
    MpuHalTransmit(g_mpuHandle,&l_txPack);
    
    return 0;
}

/*************************************************
  Function:       RemoteDiagnosticSdkProcess
  Description:    Զ����Ͻӿ�
  Input:          pEcuConfigure��
                  pMpuBuffer��
                  pTpParameter��
                  canChannelList��
  Output:         ��
  Return:         ��
  Others:         
*************************************************/
static uint8_t m_RdmFdFramFlag=0; 
void RemoteDiagnosticSdkProcess(CanIdConfig_t *pEcuConfigure,MpuBuffer_t *pMpuBuffer,UdsTpParameter_t *pTpParameter,CanChanel_t *canChannelList)
{
    uint8_t i = 0;
    int16_t ret = -1;
    //MPUͨ�ű���
    MpuHalFilter_t mpuFilter;
    uint8_t counterIndex;
    uint8_t oldIndex = 0;
    uint32_t requestcanId = 0;
    uint32_t responseId = 0;
    uint8_t channel = 0;
    uint8_t status = 0;
    uint8_t canIdType=0;
    MpuHalDataPack_t rxMsg;
	//usdTpͨ�ŵı���
    uint8_t udsRxbuf[120] = {0};
    uint16_t udsRecvLen = 0;
	
    uint8_t CanSendFlag = 0;
    uint8_t Sendstatus = 0;
    uint8_t reTryCnt=0;
	uint8_t otaVerLen = 0;
	uint8_t otaVerData[MAX_OTA_VER_LENGTH] = {0};
    rxMsg.pDataBuffer = pMpuBuffer->rxData;
    rxMsg.dataBufferSize = sizeof(pMpuBuffer->rxData);
    //��ʼ��mpu����ͨ��
    mpuFilter.aid = 0x05;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x03;
    g_mpuHandle = MpuHalOpen();
	if(g_mpuHandle<0)//invalid handle
	{
		for(;;)
		{
			TBOX_PRINT("RemoteDiagnosticSdk : MpuHalOpen open error\r\n");
			vTaskDelay(1000);
		}
	} 
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
	pMpuBuffer->mpuRecvBufferSize = sizeof(pMpuBuffer->mpuRecvBuffer);
	
    MpuHalSetRxBuffer(g_mpuHandle,pMpuBuffer->mpuRecvBuffer,pMpuBuffer->mpuRecvBufferSize);
	
	pMpuBuffer->canRxBufferSize = sizeof(pMpuBuffer->canRxBuffer)/sizeof(pMpuBuffer->canRxBuffer[0]);
	for(i = 0;i<canChannelList->canChanelListSize;i++)
	{
		// 3·�� ������ͬʱʹ��
		g_udsTpHandle[i] = UdsTpOpen(i,pMpuBuffer->canRxBuffer,pMpuBuffer->canRxBufferSize,&pTpParameter[i]);
		if(g_udsTpHandle[i]<0)//invalid handle
		{
			for(;;)
			{
				TBOX_PRINT("UdsTpOpen : open error\r\n");
				vTaskDelay(1000);
			}
		}
		UdsTpSetFunctionId(g_udsTpHandle[i],pEcuConfigure->functionalId);
	}
	//sleepCommandHandle = PowerManageSdkOpenHandle("RemoteDiag");
    while(1)
    {
        ret = MpuHalReceive(g_mpuHandle,&rxMsg,5);
        if(ret == MPU_HAL_STATUS_OK)
        {
            if(rxMsg.aid==0x05 && rxMsg.mid==0x01)
            {
                if((rxMsg.subcommand & 0x7F) == COMMAND_UDS_TRANSMIT_REQ)
                {
				    counterIndex = rxMsg.pDataBuffer[2];
					g_cpuUdsComTimeOutTimeCount = 0;//restart cpu uds timeout
                    if(rxMsg.pDataBuffer[1]==0x80 && rxMsg.pDataBuffer[2]==oldIndex)
                    {
						RemoteDiagnosticSdkSendAck(&rxMsg,0);
                    }
					else
					{
						requestcanId=((rxMsg.pDataBuffer[5]<<8)+(rxMsg.pDataBuffer[6]));
						responseId = ((rxMsg.pDataBuffer[9]<<8)+(rxMsg.pDataBuffer[10]));
						channel = rxMsg.pDataBuffer[11];
						if(channel == 2)
						{
							m_RdmFdFramFlag = 1;
						}
						else
						{
							m_RdmFdFramFlag = 0;
						}
						
						if(requestcanId==pEcuConfigure->functionalId)  //����Ѱַ
	                    {
	                    	
							if((rxMsg.pDataBuffer[12]==0x10)&&(rxMsg.pDataBuffer[13]==0x03))
							{
								UdsTpPhyAddressSetCanId(g_udsTpHandle[channel],requestcanId,responseId);
								UdsTpSetFilter(g_udsTpHandle[channel],0);
								UdsTpClearRecvBuffer(g_udsTpHandle[channel]);
								g_udsReceiveFlag = 1;
								VehicleToCpuUartTxDisable();
								VehicleUdsHeartTxEnable();
							}
							else if((rxMsg.pDataBuffer[12]==0x10)&&(rxMsg.pDataBuffer[13]==0x81))
							{
								VehicleUdsHeartTxDisable();
								VehicleToCpuUartTxEnable();
							}							
	                        //������can������ϱ���
	                        
	                        for(i = 0;i<(canChannelList->canChanelListSize-1);i++)//CAN
	                        {
								UdsTpTransmit(g_udsTpHandle[canChannelList->canChanelList[i]],1,rxMsg.pDataBuffer + 12,rxMsg.dataLength-12,CanSendFlag);
							}
							//CANFD
							UdsTpTransmitFd(g_udsTpHandle[2],1,rxMsg.pDataBuffer + 12,rxMsg.dataLength-12,CanSendFlag);
							
							RemoteDiagnosticSdkSendAck(&rxMsg,0);
							oldIndex = counterIndex;
	                        //������TP�㷢����ϱ���
							canIdType = 0x02; //���ܵ�ַ
							RemoteUartDiagnosticCycleProcess(g_mpuHandle,canIdType,counterIndex,rxMsg.pDataBuffer + 12,rxMsg.dataLength-12,1);
	//                          VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
	                        g_udsFlag = 1;
	                        g_udsTimeCount = 0;
	                    }
	                    else
	                    {
	                        oldIndex = rxMsg.pDataBuffer[2];
	                        
	                        //����ϣ�
	                        if(requestcanId == pEcuConfigure->selfDiagnosticReqId)
	                        {
	                        	
								RemoteDiagnosticSdkSendAck(&rxMsg,0);
	                            //������TP�㷢����ϱ���
	//                                VirtualTpSdkClientTransmit(virtualTpHandle,rxMsg.pDataBuffer+7,rxMsg.dataLength-7);
							    canIdType=1;//����Ѱַ
							    RemoteUartDiagnosticCycleProcess(g_mpuHandle,canIdType,counterIndex,rxMsg.pDataBuffer + 12,rxMsg.dataLength-12,0);

	                            g_udsFlag = 1;
	                            g_udsTimeCount = 0;
								g_udsReceiveFlag = 0;
	                        }
	                        else
	                        {
	                            if(responseId!=0x00)
	                            {
	                                UdsTpPhyAddressSetCanId(g_udsTpHandle[channel],requestcanId,responseId);
	                                UdsTpSetFilter(g_udsTpHandle[channel],0);
	                                UdsTpClearRecvBuffer(g_udsTpHandle[channel]);
	                                //���Ӧcan������ϱ���
									do {
										if (m_RdmFdFramFlag == 1) {
											ret = UdsTpTransmitFd(g_udsTpHandle[channel], 0, rxMsg.pDataBuffer + 12, rxMsg.dataLength - 12,CanSendFlag);

										} else {
											ret = UdsTpTransmit(g_udsTpHandle[channel], 0, rxMsg.pDataBuffer + 12, rxMsg.dataLength - 12,CanSendFlag);
										}
									
										if (ret != 0) { 
											if (reTryCnt < 3) {
												reTryCnt++;
												Sendstatus = 0;
												CanSendFlag = 1;
												vTaskDelay( pdMS_TO_TICKS(10)); 
											} else {
												reTryCnt = 0;
												CanSendFlag = 0;
												Sendstatus = 1;
											}
										} else {
											reTryCnt = 0;
											CanSendFlag = 0;
											Sendstatus = 1;
										}
									} while (Sendstatus != 1);

	                                Sendstatus = 0;
									RemoteDiagnosticSdkSendAck(&rxMsg,0);
	                                g_udsFlag = 1;
	                                g_udsTimeCount = 0;
	                                g_udsReceiveFlag = 1;
	                            }
	                        }
	                    }
					}
                }
                else if((rxMsg.subcommand & 0x7F) == COMMAND_UDS_RESPONSE_ACK) //cpu������Ӧ�ɹ�
                {
                    
                }
            	else if((rxMsg.subcommand & 0x7F) == COMMAND_UDS_MESSAGE_REQ) // OTA VER
                {
                    otaVerLen = rxMsg.pDataBuffer[1];
					if(otaVerLen >= 16)
					{
						RemoteDiagnosticOtaVerSdkSendAck(2);
					}
					else
					{
						uint8_t copyLen;
						// �ȸ��ƿ�������
						copyLen = (otaVerLen > MAX_OTA_VER_LENGTH) ? MAX_OTA_VER_LENGTH : otaVerLen;
						memcpy(otaVerData, &rxMsg.pDataBuffer[2], copyLen);
						
						// ���ʣ��ռ�Ϊ�ո�(0x20)
						if (copyLen < MAX_OTA_VER_LENGTH) 
						{
							memset(&otaVerData[copyLen], 0x20, MAX_OTA_VER_LENGTH - copyLen);
						}
						
						ret = WorkFlashVehicleInforStore(E_PARAMETER_INFO_OTA_VER_DATE,otaVerData,sizeof(otaVerData));
						
						if(ret != 0)
						{
							RemoteDiagnosticOtaVerSdkSendAck(2);
						}
						else
						{
							RemoteDiagnosticOtaVerSdkSendAck(1);
						}
					}
                }
            }
			else if(rxMsg.aid==0x05 && rxMsg.mid==0x02)
			{
				switch(rxMsg.subcommand & 0x7F)
				{
					case COMMAND_UPDATA_SIZE_ACK:
							break;
					case COMMAND_UPDATA_DATA_ACK:
							TboxUpDataStatus.UpDataBagCnt = rxMsg.pDataBuffer[1];
							break;
					case COMMAND_UPDATA_PROGRESS_ACK:
							TboxUpDataStatus.UpDataBagProgress = rxMsg.pDataBuffer[1];
							break;
					case COMMAND_UPDATA_CRC_ACK:                              
							TboxUpDataStatus.CRCResult = rxMsg.pDataBuffer[1];
							break;
					case COMMAND_START_UPDATA_REQ:
							UdsUpDtaMcuDiagnosticSdkSendReq(COMMAND_START_UPDATA_ACK,status,0,0);
							break;
					case COMMAND_UPDATA_LEVEL_REQ:
							TboxUpDataStatus.UpDataProgress = rxMsg.pDataBuffer[1];
							break;
					case COMMAND_UPDATA_RESULT_REQ:
							TboxUpDataStatus.UpDataResult = rxMsg.pDataBuffer[1];
							break;
                    case COMMAND_UPDATA_END_REQ:
							break;
					default:
							break;
				}
			}
        }
		if(g_cpuUdsComTimeOutTimeCount<0xFFFF)
		{
	        g_cpuUdsComTimeOutTimeCount++;
	        if(g_cpuUdsComTimeOutTimeCount>=2000)//20s
	        {
	            g_cpuUdsComTimeOutTimeCount=0;
				VehicleUdsHeartTxDisable();
				VehicleToCpuUartTxEnable();
	        }
		}   
		if(g_udsFlag == 1)
        {
            if(g_udsReceiveFlag == 1)
            {
                if(responseId!=0x00)
                {
                    udsRecvLen = 0;
					if(m_RdmFdFramFlag==1)
					{
						ret = UdsTpReceiveFd(g_udsTpHandle[channel], udsRxbuf,&udsRecvLen,0);
					}
					else
					{
						ret = UdsTpReceive(g_udsTpHandle[channel], udsRxbuf,&udsRecvLen,0);
					}
                    
                    //�Ƿ���յ�����
                    if(ret == 0)
                    {
					    if(udsRxbuf[0]==0x7F && udsRxbuf[2]==0x78)
						{

						}
						else
						{
							g_udsReceiveFlag = 0;
						}
                        //������Ӧ
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
uint8_t GetCpuCRCResult(void)
{
	return TboxUpDataStatus.CRCResult;
}

uint8_t GetUpDataBagcnt(void)
{
	return TboxUpDataStatus.UpDataBagCnt;
}

uint8_t GetUpDataProgress(void)
{
	return TboxUpDataStatus.UpDataProgress;
}

uint8_t GetUpDataResult(void)
{
	return TboxUpDataStatus.UpDataResult;
}

#if 0
