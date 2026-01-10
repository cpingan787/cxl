#include "cy_project.h"
#include "cy_device_headers.h"
#include "FreeRTOS.h"
#include "task.h"

#include "timerHal.h"
#include "autosarNmSDK.h"
#include "powerManageHal.h"
#include "peripheralHal.h"
#include "logHal.h"
#include "powerManageHal.h"

//nmStatus bit definition
#define NM_RMS_F_BSM        0
#define NM_RMS_F_PBSM       1
#define NM_RMS_F_NOP        2
#define NM_RMS_F_RSS        3
#define NM_NOP_F_RMS        4
#define NM_NOP_F_RSS        5
#define NM_RMS_F_BSM_NM     6
#define NM_RMS_F_PBSM_NM    7
static AutosarNmVariable_t netManage[AUTOSAR_NET_MANAGE_MAX_INSTANCE];
static const AutosarNmParameter_t *g_pNmConfigure = NULL;
static uint8_t g_netManageNumber = 0;
static uint8_t g_CanState[2] = 0;
static uint8_t g_CanReciveFLAG = 0;

int16_t AutosarNmSdkConfig(const AutosarNmParameter_t *pNmConfigre,uint8_t NmNumber)
{
    uint8_t i;
    CanHalMsgFilter_t canFilter;

    if(NmNumber>sizeof(netManage)/sizeof(netManage[0]))
    {
        return -1;
    }
	
    g_pNmConfigure = pNmConfigre;
    g_netManageNumber = NmNumber;
	
    for(i=0;i<g_netManageNumber;i++)
    {
        netManage[i].netManageState = E_NETMANAGESTATE_IDLEMODE;  
        netManage[i].canHandle = -1;
        netManage[i].nmMsgReceiveFlag = 0;
        netManage[i].networkRequestFlag = 0;
        netManage[i].passiveStartUpFlag = 0; 
        netManage[i].repeatMessageBitReceivedFlag = 0;      
        netManage[i].repeatMessageRequestFlag = 0;
        netManage[i].NMTimerHandle = -1;
        netManage[i].MsgCycleTimerHandle = -1;
        netManage[i].BusSleepTimerHandle = -1;
        netManage[i].RepeatMessageTimerHandle = -1;
        netManage[i].busOffRecoverTimerHandle = -1;
        netManage[i].immediateCycleState = 0;
        netManage[i].CBVRepeatMessage = 0;
        netManage[i].CBVActiveWakeUp = 0;
        netManage[i].nmStatus = 0;
        netManage[i].passiveMode = 0;
        netManage[i].busOffTimerOnFlag = 0;
        netManage[i].checkTimeCount = 0;
        netManage[i].checkTimeoutFlag = 0;
        netManage[i].appEnableFlag = 0;
		
    }  
	
    for(i=0;i<g_netManageNumber;i++)
    {
        CanHalEnableCanWakeup(g_pNmConfigure[i].canChannel);
        CanHalCanBusOffProcessEnalbe(g_pNmConfigure[i].canChannel);
        netManage[i].canHandle = CanHalOpen(g_pNmConfigure[i].canChannel);
        canFilter.useStdFilter = 0x01;
        canFilter.canIdStdMin = g_pNmConfigure[i].BaseAddress;
        canFilter.canIdStdMax = g_pNmConfigure[i].BaseAddress+g_pNmConfigure[i].NodeIdMax;    
        canFilter.useExdtFilter = 0x00; 
        canFilter.canIdExtdMin = 0x01;
        canFilter.canIdExtdMax = 0x01;
        CanHalSetFilter(netManage[i].canHandle,&canFilter);      
        CanHalSetRxBuffer(netManage[i].canHandle,netManage[i].canRxBuffer,sizeof(netManage[0].canRxBuffer)/sizeof(netManage[0].canRxBuffer[0]));  
        netManage[i].receiveCheckCanHandle = CanHalOpen(g_pNmConfigure[i].canChannel);//receive all message
        canFilter.useStdFilter = 0x01;
        canFilter.canIdStdMin = 0;
        canFilter.canIdStdMax = 0x800;    
        canFilter.useExdtFilter = 0x01; 
        canFilter.canIdExtdMin = 0x00;
        canFilter.canIdExtdMax = 0xFFFFFFFF;
        CanHalSetFilter(netManage[i].receiveCheckCanHandle,&canFilter);   
        
        netManage[i].NMTimerHandle = TimerHalOpen();
        netManage[i].MsgCycleTimerHandle = TimerHalOpen();
        netManage[i].BusSleepTimerHandle = TimerHalOpen();
        netManage[i].RepeatMessageTimerHandle = TimerHalOpen();
        netManage[i].busOffRecoverTimerHandle = TimerHalOpen();
    }
    return 0;
}

int16_t AutosarNm_NetworkRequest(const int16_t nmChannelHandle)
{
    if(nmChannelHandle>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
    {
        return NM_E_NOT_OK;
    }
    if(E_NETMANAGESTATE_BUSSLEEPMODE==netManage[nmChannelHandle].netManageState)
    {
        netManage[nmChannelHandle].CBVActiveWakeUp = 1;
        netManage[nmChannelHandle].networkRequestFlag = 1;//��������
    }
    else if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==netManage[nmChannelHandle].netManageState)
    {
        netManage[nmChannelHandle].CBVActiveWakeUp = 1;
        netManage[nmChannelHandle].networkRequestFlag = 1;
    }
    else if(E_NETMANAGESTATE_READYSLEEPSTATE==netManage[nmChannelHandle].netManageState)
    {
        netManage[nmChannelHandle].networkRequestFlag = 1;
    }
    else if(E_NETMANAGESTATE_REPEATMESSAGESTATE==netManage[nmChannelHandle].netManageState)
    {
        netManage[nmChannelHandle].networkRequestFlag = 1;
    }
    else if(E_NETMANAGESTATE_NORMALOPERATIONSTATE==netManage[nmChannelHandle].netManageState)
    {
        netManage[nmChannelHandle].networkRequestFlag = 1;
    }
  
    return NM_E_OK;
}

int16_t AutosarNm_PassiveStartUp( const int16_t nmChannelHandle )
{
	if(nmChannelHandle>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
	{
		return NM_E_NOT_OK;
	}
	if(nmChannelHandle>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
	{
		return NM_E_NOT_OK;
	}

	if(E_NETMANAGESTATE_BUSSLEEPMODE==netManage[nmChannelHandle].netManageState)
	{
		netManage[nmChannelHandle].passiveStartUpFlag = 1;
	}
	else if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==netManage[nmChannelHandle].netManageState)
	{
		netManage[nmChannelHandle].passiveStartUpFlag = 1;
	}

	return NM_E_OK;
}

int16_t AutosarNmSdkNetworkRequest(uint8_t LocalWakeup)
{
    uint8_t i;
    int16_t ret;
    ret = NM_E_OK;
    for(i=0;i<AUTOSAR_NET_MANAGE_MAX_INSTANCE;i++)
    {
        if(LocalWakeup)
        {
            ret = AutosarNm_NetworkRequest(i);  //���������������   
        }
        else
        {
            ret = AutosarNm_PassiveStartUp(i); //���������������
        }
        if(ret!=NM_E_OK)
        {
            break;
        }
    }
    return ret;
}

int16_t AutosarNm_NetworkRelease( const int16_t nmChannelHandle )
{
    if(nmChannelHandle>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
    {
        return NM_E_NOT_OK;
    }

    if(E_NETMANAGESTATE_REPEATMESSAGESTATE==netManage[nmChannelHandle].netManageState)
    {
        netManage[nmChannelHandle].networkRequestFlag = 0;//�����ڵ㻽�ѱ�־����
    }
    else if(E_NETMANAGESTATE_NORMALOPERATIONSTATE==netManage[nmChannelHandle].netManageState)
    {
        netManage[nmChannelHandle].networkRequestFlag = 0;
    }
    else 
    {
        return NM_E_NOT_EXECUTED;
    }

    return NM_E_OK;
}

int16_t AutosarNmSdkEnableCommunication( uint8_t ch )
{
  if(ch>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
  {
    return NM_E_NOT_OK;
  }
  netManage[ch].passiveMode = 0;
  return 0;
}

int16_t AutosarNmSdkDisableCommunication( uint8_t ch )
{
    if(ch>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
    {
        return NM_E_NOT_OK;
    }
    netManage[ch].passiveMode = 1;
    return 0;
}

int16_t AutosarNmSdkGetSleepStatus(uint8_t *sleepState)
{
    int16_t ret;
    ret = NM_E_OK;
    *sleepState = 1;
   
    if((E_NETMANAGESTATE_BUSSLEEPMODE==netManage[0].netManageState)&&(E_NETMANAGESTATE_BUSSLEEPMODE==netManage[1].netManageState))
    {
        *sleepState = 1;
    }
    else if((netManage[0].networkRequestFlag)||(netManage[1].networkRequestFlag))
    {
        *sleepState = 2;//re wake up the whole system
    }
    else
    {
        *sleepState = 0;//wait to sleep
    }
//    if(E_NETMANAGESTATE_BUSSLEEPMODE!=netManage[i].netManageState)
//    {
//      *sleepState = 0;
//      break;
//    }
      
    return ret;
}


int16_t AutosarNmSdkGetCanStatus(uint8_t *ReceiveState,uint8_t* pRxChannel)
{
    int16_t ret;
    uint8_t i;
    ret = NM_E_OK;
    *ReceiveState = 1;
  
	  for(i=0;i<AUTOSAR_NET_MANAGE_MAX_INSTANCE;i++)
	  {
	    if(0!=netManage[i].checkTimeoutFlag)
	    {
	        *ReceiveState = 0;
			*pRxChannel = i;
	    } 
	  }
    return ret;
}

int16_t AutosarNmSdkGetNetManageReceiveStatus(uint8_t *ReceiveState,uint8_t* pWakeChannel)
{
    int16_t ret;
    uint8_t i;
    ret = NM_E_OK;
    *ReceiveState = 0;
	*pWakeChannel = 0;
    for(i=0;i<AUTOSAR_NET_MANAGE_MAX_INSTANCE;i++)
    {
	    if(netManage[i].nmMsgReceiveFlag)//�յ���CAN��������ı��ģ�ID:0x500-0x57F��
	    {
	        *ReceiveState = 1;
			*pWakeChannel=i;
	    }
    }
    return ret;
}
int16_t AutosarNmSdkCleanBusOff(uint8_t index)
{
	if(index>3)
	{
		return 1;
	}
	if(netManage[index].busOffTimeCount != 0)
	{
		netManage[index].busOffTimeCount = 0;
	}
	return 0;
}

static void StartNMTimer(uint8_t index)
{
  TimerHalStartTime(netManage[index].NMTimerHandle,g_pNmConfigure[index].nmTimeOutTime);
}

// static void StopNMTimer(uint8_t index)
// {
//   TimerHalStopTime(netManage[index].NMTimerHandle);
// }

static void StartWaitBusSleepTimer(uint8_t index)
{
  TimerHalStartTime(netManage[index].BusSleepTimerHandle,g_pNmConfigure[index].waitBusSleepTime);
}

static void StopWaitBusSleepTimer(uint8_t index)
{
  TimerHalStopTime(netManage[index].BusSleepTimerHandle);
}

static void StartMsgCycleTimer(uint8_t index)
{ 
    if(netManage[index].immediateCycleState)//���ٷ���
    {
        TimerHalStartTime(netManage[index].MsgCycleTimerHandle,g_pNmConfigure[index].immediateCycleTime);
    }
    else
    {   
        TimerHalStartTime(netManage[index].MsgCycleTimerHandle,g_pNmConfigure[index].msgCycleTime);
    }
}

static void StopMsgCycleTimer(uint8_t index)
{
    TimerHalStopTime(netManage[index].MsgCycleTimerHandle);
}

static void StartRepeatMessageTimer(uint8_t index)
{
    TimerHalStartTime(netManage[index].RepeatMessageTimerHandle,g_pNmConfigure[index].repeatMessageTime);
}

static void StopRepeatMessageTimer(uint8_t index)
{
  TimerHalStopTime(netManage[index].RepeatMessageTimerHandle);
}

static void CanReceiveMessageProcess(uint8_t index,uint32_t canId,uint8_t *canData)
{
	uint8_t RepeatMessageBit;
	if((canId>=0x500)&&(canId<=0x5FF))
	{
		netManage[index].nmMsgReceiveFlag = 1;//���յ�CAN����������ı�־
		CanHalClearBusoffAppDisableFlag(index);
		if(canId ==0x527)
		{
			g_CanReciveFLAG = 1;
		}
	}
	RepeatMessageBit = (canData[1]>>CBV_BIT_REPEAT_MESSAGE_REQUEST)&(0x01);    //�ظ���������
	if(E_NETMANAGESTATE_BUSSLEEPMODE == netManage[index].netManageState)  //˯��ģʽ
	{
		netManage[index].passiveStartUpFlag = 1;
	}
	else if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==netManage[index].netManageState)  //Ԥ����ģʽ
	{
		netManage[index].passiveStartUpFlag = 1;
	}
	else if(E_NETMANAGESTATE_REPEATMESSAGESTATE==netManage[index].netManageState)  //�ظ�����״̬
	{
		StartNMTimer(index);
	}
	else if(E_NETMANAGESTATE_NORMALOPERATIONSTATE==netManage[index].netManageState)  //�������״̬
	{
		StartNMTimer(index);
		if(RepeatMessageBit)
		{
			netManage[0].repeatMessageBitReceivedFlag = 1;
			netManage[1].repeatMessageBitReceivedFlag = 1;
		}
	}
	else if(E_NETMANAGESTATE_READYSLEEPSTATE==netManage[index].netManageState)   //Ԥ˯��״̬
	{
		StartNMTimer(index);
		if(RepeatMessageBit)
		{
			netManage[0].repeatMessageBitReceivedFlag = 1;
			netManage[1].repeatMessageBitReceivedFlag = 1;
		}
	}  
}

static void NetManageBusOffErrorCallBack(uint8_t index,uint8_t flag)
{
  if(g_pNmConfigure[index].canBusErrorCallBack!=NULL)
  {
    g_pNmConfigure[index].canBusErrorCallBack(flag);
  }
}

static uint8_t NmStatusWakeupSource(void)
{
    uint8_t wakeUpSource = 0;

    wakeUpSource = PowerManageHalGetWakeupSource();
    if(wakeUpSource == PM_HAL_WAKEUP_SOURCE_NONE)
    {
        return 0x00;
    }
    else if(wakeUpSource == PM_HAL_WAKEUP_SOURCE_KL15)
    {
        return 0x01;
    }
    else if(wakeUpSource == PM_HAL_WAKEUP_SOURCE_CAN1)
    {
        return 0x03;
    }
    else if(wakeUpSource == PM_HAL_WAKEUP_SOURCE_RTC)
    {
        return 0x04;
    }
    else
    {
        return 0x06;
    }
}

static uint8_t NmStatusWakeupFunctions(void)
{
    uint8_t wakeUpSource = 0;

    wakeUpSource = PowerManageHalGetWakeupSource();
    if(wakeUpSource == PM_HAL_WAKEUP_SOURCE_NONE)
    {
        return 0x00;
    }
    else if(wakeUpSource == PM_HAL_WAKEUP_SOURCE_KL15)
    {
        return 0x01;
    }
    else if(wakeUpSource == PM_HAL_WAKEUP_SOURCE_RTC)
    {
        return 0x04;
    }
    else
    {
        return 0x11;
    }
}

static void MsgCycleTimeOutProcess(uint8_t index)
{
	int16_t ret;
//	uint8_t netManagests;
	uint8_t kl15State;
	if((E_NETMANAGESTATE_BUSSLEEPMODE==netManage[index].netManageState)||
		(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==netManage[index].netManageState)||
		(E_NETMANAGESTATE_REPEATMESSAGESTATE==netManage[index].netManageState)||
		(E_NETMANAGESTATE_NORMALOPERATIONSTATE==netManage[index].netManageState)||
		(E_NETMANAGESTATE_READYSLEEPSTATE==netManage[index].netManageState))
	{
            uint32_t	canId;
            uint8_t 	canData[8];
            uint8_t 	CBV;
            uint8_t   canDataFour;
			
            if(netManage[index].immediateCycleState)
            {
                    netManage[index].immediateCycleCount++;
                    if(netManage[index].immediateCycleCount>=g_pNmConfigure[index].immediateTimes)    //NM_4
                    {
                            netManage[index].immediateCycleCount = 0;
                            netManage[index].immediateCycleState = 0;
                    }
            }
    
            StartMsgCycleTimer(index);//��ʼ���ڷ��������������
            StartNMTimer(index);

            if(netManage[index].passiveMode)//��ֹ����������ķ���
            {
                    return;
            }

            canData[0] = 0x00;
            canData[1] = 0x00;
            canData[2] = 0x00;
            canData[3] = 0x00;
            canData[4] = 0x00;
            canData[5] = 0x00;
            canData[6] = 0x00;
            canData[7] = 0x00; 

			canId = g_pNmConfigure[index].BaseAddress+g_pNmConfigure[index].NodeId; 
			
			//0:Source Node Identifier
			canData[0] = g_pNmConfigure[index].NodeId;	   //ECU Address
			//1:Control Bit Vector
			CBV = 0x00;
			if(netManage[index].CBVRepeatMessage)
			{
				CBV |= (0x01<<CBV_BIT_REPEAT_MESSAGE_REQUEST);		
			}
			if(netManage[index].CBVActiveWakeUp)
			{
				CBV |= (0x01<<CBV_BIT_ACTIVE_WAKEUP);	   //1:�ڵ���������   0���ڵ㱻������
			}
			
			canData[1] = CBV; 
			ret = CanHalNmTransmit(netManage[index].canHandle,canId,canData,8,0);
            if(ret == 0)
            {
					//TBOX_PRINT("CanHalNmTransmit\r\n");
                    netManage[index].busOffTimeCount = 0;
                    NetManageBusOffErrorCallBack(index,0x00);//���DTC
            }
	} 
}


static void ApplicationMessageDisableTransmit(uint8_t index)
{
    if(netManage[index].appEnableFlag)
    {
        CanHalAppMsgDisable(netManage[index].canHandle);
		//CanHalSetsleep(0);
		CanPeriodSendDisable(netManage[index].canHandle);
        netManage[index].appEnableFlag = 0;
    }    	
}

void ApplicationMessageEnableTransmit(uint8_t index)
{
    if(0==netManage[index].appEnableFlag)
    {
        CanHalAppMsgEnable(netManage[index].canHandle);
		//CanHalSetsleep(1);
		CanPeriodSendEnable(netManage[index].canHandle);
        netManage[index].appEnableFlag = 1;
    } 
}

static void NetManageStateProcess(uint8_t index)
{
	uint32_t wakeCount;
	uint8_t pmState,wakeupSource;
	
    //0
    if(E_NETMANAGESTATE_IDLEMODE == netManage[index].netManageState)
    {
		ApplicationMessageDisableTransmit(index);//��ֹӦ�ñ��ķ���
        netManage[index].netManageState = E_NETMANAGESTATE_BUSSLEEPMODE;//NM_1   
    }

    if(E_NETMANAGESTATE_BUSSLEEPMODE == netManage[index].netManageState)
    {
        if(netManage[index].networkRequestFlag)    //NM_2  ,Network Requested (local condition)
        {
            netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; 
            netManage[index].immediateCycleState = 1;     
            netManage[index].CBVRepeatMessage = 0;        
            netManage[index].CBVActiveWakeUp = 1;        
            netManage[index].nmStatus = 1 << NM_RMS_F_BSM;
            StopWaitBusSleepTimer(index);
            MsgCycleTimeOutProcess(index);
            StartRepeatMessageTimer(index);
            //SecocWakeupResetState();
            TBOX_PRINT("start app message2\n");
            ApplicationMessageEnableTransmit(index);
        }
        //�ڵ㱻�����ѣ������ڵ���Ҫ����ͨ��
        else if(netManage[index].passiveStartUpFlag)   //NM_3 ,Successfully Received NM PDU.
        {
            //TBOX_PRINT("passiveStartUpFlag\r\n");
            netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; 
            netManage[index].passiveStartUpFlag = 0;
            netManage[index].immediateCycleState = 0;     
            netManage[index].CBVRepeatMessage = 0;        
            netManage[index].CBVActiveWakeUp = 0;        
            netManage[index].nmStatus = 1 << NM_RMS_F_BSM_NM;
            StopWaitBusSleepTimer(index);
            MsgCycleTimeOutProcess(index);
            StartRepeatMessageTimer(index);
            //SecocWakeupResetState();
            
            //TBOX_PRINT("start app message3\n");
            ApplicationMessageEnableTransmit(index);//20230209 ����Ӧ�ñ���
        }
    }
	 //3 �ظ�����״̬������ģʽ��
	if(E_NETMANAGESTATE_REPEATMESSAGESTATE == netManage[index].netManageState)  
	{
              if((netManage[index].networkRequestFlag==1)&&(TimerHalIsTimeout(netManage[index].RepeatMessageTimerHandle)==0))   // NM_05
              {   
                      StopRepeatMessageTimer(index);
                      netManage[index].CBVRepeatMessage = 0;
                      netManage[index].netManageState = E_NETMANAGESTATE_NORMALOPERATIONSTATE;   //4  
                      netManage[index].nmStatus = 1 << NM_NOP_F_RMS;
              }
              else if((netManage[index].networkRequestFlag==0)&&(TimerHalIsTimeout(netManage[index].RepeatMessageTimerHandle)==0))   //NM_9
              {
                      StopRepeatMessageTimer(index);
                      netManage[index].CBVRepeatMessage = 0;
                      netManage[index].CBVActiveWakeUp = 0;
                      netManage[index].netManageState = E_NETMANAGESTATE_READYSLEEPSTATE;
					  MsgCycleTimeOutProcess(index);
              }
			  if(netManage[index].repeatMessageBitReceivedFlag)   //NM_4
			  {
				  netManage[index].immediateCycleState = 0; 	
			  }
              if(TimerHalIsTimeout(netManage[index].NMTimerHandle)==0)
              {
                      StartNMTimer(index);
              }
	}
	
	if(E_NETMANAGESTATE_READYSLEEPSTATE == netManage[index].netManageState) 
	{
		StopMsgCycleTimer(index);
		StopRepeatMessageTimer(index);
#if 0	
		if(netManage[index].repeatMessageRequestFlag)            //NM_10
		{
			netManage[index].repeatMessageRequestFlag = 0;  
			netManage[index].immediateCycleState = 0;
			netManage[index].CBVRepeatMessage = 1;
			netManage[index].CBVActiveWakeUp = 0;
            netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;//3 
            netManage[index].nmStatus = 1 << NM_RMS_F_RSS;
			StartRepeatMessageTimer(index);
			MsgCycleTimeOutProcess(index);
            TBOX_PRINT("start app message2\n");
            ApplicationMessageEnableTransmit(index);
		}
		else 
#endif
		if(netManage[index].repeatMessageBitReceivedFlag)   //NM_10
		{
			netManage[index].repeatMessageBitReceivedFlag = 0;  
			netManage[index].immediateCycleState = 0;
            netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;
            netManage[index].nmStatus = 1 << NM_RMS_F_RSS;
			//netManage[index].CBVRepeatMessage = 1;//duola not use
			netManage[index].CBVActiveWakeUp = 0;
			StartRepeatMessageTimer(index);
			MsgCycleTimeOutProcess(index);
			
	        TBOX_PRINT("start app message10\n");
	        ApplicationMessageEnableTransmit(index);
		}
		else if(netManage[index].networkRequestFlag==1)    //NM_8
		{
			netManage[index].CBVActiveWakeUp = 0;
			netManage[index].netManageState = E_NETMANAGESTATE_NORMALOPERATIONSTATE; 
            netManage[index].nmStatus = 1 << NM_NOP_F_RSS;
			MsgCycleTimeOutProcess(index);
            TBOX_PRINT("start app message8\n");
            ApplicationMessageEnableTransmit(index);
		}

		if(TimerHalIsTimeout(netManage[index].NMTimerHandle)==0)   //NM_11
		{
			StartWaitBusSleepTimer(index);
			ApplicationMessageDisableTransmit(index);//��ֹӦ�ñ��ķ���
			netManage[index].netManageState = E_NETMANAGESTATE_PREPAREBUSSLEEPMODE;//2
            TBOX_PRINT("stop app message\n");
		}
	}
	
	if(E_NETMANAGESTATE_NORMALOPERATIONSTATE == netManage[index].netManageState)     
	{
	#if 0
        if(netManage[index].repeatMessageRequestFlag)            //Condition 9 ,NM Repeat Message Request.
        {
            netManage[index].repeatMessageRequestFlag = 0;  
            netManage[index].immediateCycleState = 1;
            netManage[index].CBVRepeatMessage = 1;
            netManage[index].CBVActiveWakeUp = 0;
            netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;            
            netManage[index].nmStatus = 1 << NM_RMS_F_NOP;
            MsgCycleTimeOutProcess(index);
            StartRepeatMessageTimer(index);             
            TBOX_PRINT("start app message5\n");
            ApplicationMessageEnableTransmit(index);              
        }
        else if(netManage[index].repeatMessageBitReceivedFlag)   //���յ����ظ��������� Condition 7 ,Repeat Message Request Bit Received.
        {
            netManage[index].repeatMessageBitReceivedFlag = 0;  
            netManage[index].immediateCycleState = 1;
            netManage[index].CBVRepeatMessage = 0;
            netManage[index].CBVActiveWakeUp = 0;
            netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;            
            netManage[index].nmStatus = 1 << NM_RMS_F_NOP;
            MsgCycleTimeOutProcess(index);
            StartRepeatMessageTimer(index);
            TBOX_PRINT("start app message6\n");
            ApplicationMessageEnableTransmit(index);
        }
        else if(netManage[index].networkRequestFlag==0)     //Condition 5 ,Network Released.
        {
            netManage[index].CBVActiveWakeUp = 0;
            netManage[index].netManageState = E_NETMANAGESTATE_READYSLEEPSTATE;     
        }
			if(netManage[index].repeatMessageRequestFlag)//NM_6		
			{
				netManage[index].repeatMessageRequestFlag = 0;	
				netManage[index].immediateCycleState = 0;
				netManage[index].CBVRepeatMessage = 1;
				netManage[index].CBVActiveWakeUp = 0;
				netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;			  
				netManage[index].nmStatus = 1 << NM_RMS_F_NOP;
				MsgCycleTimeOutProcess(index);
				StartRepeatMessageTimer(index); 			
				TBOX_PRINT("start app message5\n");
				ApplicationMessageEnableTransmit(index);			  
			}
			else 
#endif
		if(netManage[index].repeatMessageBitReceivedFlag)//NM_6		 
		{
			netManage[index].repeatMessageBitReceivedFlag = 0;	
			netManage[index].immediateCycleState = 0;
			//netManage[index].CBVRepeatMessage = 1;//duola not use
			netManage[index].CBVActiveWakeUp = 0;
			netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;			  
			netManage[index].nmStatus = 1 << NM_RMS_F_NOP;
			MsgCycleTimeOutProcess(index);
			StartRepeatMessageTimer(index);
			TBOX_PRINT("start app message6\n");
			ApplicationMessageEnableTransmit(index);
		}
		
		if(netManage[index].networkRequestFlag==0) //NM_7	
		{
			netManage[index].CBVActiveWakeUp = 0;
			netManage[index].netManageState = E_NETMANAGESTATE_READYSLEEPSTATE; 	
		}
        if(TimerHalIsTimeout(netManage[index].NMTimerHandle)==0)   //Condition 6 ,T_NM_TIMEROUT��ʱ
        {
            StartNMTimer(index);
        }
	}
	
	//2 Ԥ����ģʽ
	if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE == netManage[index].netManageState)    
	{
            if(netManage[index].networkRequestFlag)    //Condition 1 ,Network Requested (local condition)
            {
                netManage[index].immediateCycleState = 1;
                netManage[index].CBVRepeatMessage = 0;
                netManage[index].CBVActiveWakeUp = 1;
                netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; // NM_12
                netManage[index].nmStatus = 1 << NM_RMS_F_PBSM;
                StopWaitBusSleepTimer(index);
                StartRepeatMessageTimer(index);
                MsgCycleTimeOutProcess(index);
                
                TBOX_PRINT("start app message7\n");
                ApplicationMessageEnableTransmit(index);//20230210 ����Ӧ�ñ���
            }
            else if(netManage[index].passiveStartUpFlag)   //Condition 2 ,Successfully Received NM PDU.
            {
                netManage[index].passiveStartUpFlag = 0;
                netManage[index].immediateCycleState = 0;
                netManage[index].CBVRepeatMessage = 0;
                netManage[index].CBVActiveWakeUp = 0;
                netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; // NM_13
                netManage[index].nmStatus = 1 << NM_RMS_F_PBSM_NM;
                StopWaitBusSleepTimer(index);
                StartRepeatMessageTimer(index);
                MsgCycleTimeOutProcess(index);
                TBOX_PRINT("start app message8\n");
                ApplicationMessageEnableTransmit(index);//20230210 ����Ӧ�ñ���
            }
            else if(TimerHalIsTimeout(netManage[index].BusSleepTimerHandle)==0)   //NM_14
            {
                StopWaitBusSleepTimer(index);
                netManage[index].netManageState = E_NETMANAGESTATE_BUSSLEEPMODE;
            }
	}
}

static void NetManageInializeHardware(uint8_t index)
{
  CanHalResetHardware(netManage[index].canHandle);
  vTaskDelay( pdMS_TO_TICKS(5));
  CanHalResetHardware(netManage[index].canHandle);
}

static void CanHardwareControllerProcess(uint8_t index)
{
    int16_t ret;
    ret = CanHalGetIsBusOffError(netManage[index].canHandle);
    if(ret==0)//bus off
    {
        //TBOX_PRINT("busoff count %d\r\n",netManage[index].busOffTimeCount);
        if(netManage[index].busOffTimerOnFlag)
        {
            //do nothing
        }
        else
        {
            if(g_pNmConfigure[index].busOffQuickTimes!=0)//10��
            {
                
                if(netManage[index].busOffTimeCount>=(g_pNmConfigure[index].busOffQuickTimes))//
                {
                    
                    if(g_pNmConfigure[index].busOffSlowTime!=0)
                    {
                        TimerHalStartTime(netManage[index].busOffRecoverTimerHandle,g_pNmConfigure[index].busOffSlowTime);
                        netManage[index].busOffTimerOnFlag = 1;
						if(netManage[index].busOffTimeCount<g_pNmConfigure[index].busOffErrorEventLimitCount)
						{
							netManage[index].busOffTimeCount++;
						}

                    }
                    else
                    {
                        NetManageInializeHardware(index);
                    }
                }
                else
                {
                    if(g_pNmConfigure[index].busOffQuickTime!=0)
                    {
                        // start busoff recover quick timer
                        TimerHalStartTime(netManage[index].busOffRecoverTimerHandle,g_pNmConfigure[index].busOffQuickTime);
                        netManage[index].busOffTimerOnFlag = 1;
                        netManage[index].busOffTimeCount++;
                    }
                    else
                    {
                        NetManageInializeHardware(index);
                    }
                }
            }
            else//no quick time state
            {
                if(g_pNmConfigure[index].busOffSlowTime!=0)
                {
                    //start busoff recover slow timer
                    //TBOX_PRINT("123\n");
                    TimerHalStartTime(netManage[index].busOffRecoverTimerHandle,g_pNmConfigure[index].busOffSlowTime);
                    netManage[index].busOffTimerOnFlag = 1;
                    if(netManage[index].busOffTimeCount<g_pNmConfigure[index].busOffErrorEventLimitCount)
                    {
                        netManage[index].busOffTimeCount++;
                    }
                    //NM_MINA_DEBUG_PRINT("busoff count= %d\r\n",netManage[index].busOffTimeCount);
                }
                else
                {
                    NetManageInializeHardware(index);
                }
            }
        }

    }
    else
    {
		//CanHalClearBusoffAppDisableFlag(index);
    }
    if(netManage[index].busOffTimeCount>=g_pNmConfigure[index].busOffErrorEventLimitCount)
    {
        if(0x00==netManage[index].busOffEventOn)
        {
            netManage[index].busOffEventOn = 0x01;
            NetManageBusOffErrorCallBack(index,0x01);//����DTC
            
            g_CanState[index] = 1;
            TBOX_PRINT("set busoff DTC\n");
        }
    }
    else
    {
        if(0x01==netManage[index].busOffEventOn)
        {
            netManage[index].busOffEventOn = 0x00;
            NetManageBusOffErrorCallBack(index,0x00);//���DTC
            
            g_CanState[index] = 0;
            TBOX_PRINT("clear busoff DTC\n");
        }
    }
}
uint8_t GetBusOffCnt(uint8_t index)
{
	uint8_t ret;
	ret = netManage[index].busOffTimeCount;
	return ret;
}

uint8_t GetBusOffState()
{
	uint8_t ret;
	ret = g_CanState[0]+g_CanState[1];
	return ret;
}
uint8_t GetNmState()
{
	return g_CanReciveFLAG;
}
uint8_t GetNetManageState(uint8_t index)
{
	return netManage[index].netManageState;
}

void CleanNmState()
{
	g_CanReciveFLAG = 0;
}
static void BusOffErrorResetCanNMTransmit(uint8_t index)
{
    uint32_t	canId;
    uint8_t 	CBV;
    uint8_t   canDataFour;
    uint8_t 	canData[8] = {0};
    uint8_t kl15State;
	if((E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==netManage[index].netManageState)||
 		(E_NETMANAGESTATE_NORMALOPERATIONSTATE==netManage[index].netManageState))
	{
	    StartMsgCycleTimer(index);//�����Ա������¿�ʼ

	    if(netManage[index].passiveMode)
	    {
	        return;
	    }
	    canId = g_pNmConfigure[index].BaseAddress+g_pNmConfigure[index].NodeId; 
	    //TBOX_PRINT("net Manage MsgCycleTimeOutProcess canID:%x\r\n", canId);

	    //0:Source Node Identifier
	    canData[0] = g_pNmConfigure[index].NodeId;     //ECU Address
	    //1:Control Bit Vector
	    CBV = 0x00;
	    if(netManage[index].CBVRepeatMessage)
	    {
	        CBV |= (0x01<<CBV_BIT_REPEAT_MESSAGE_REQUEST);      
	    }
	    if(netManage[index].CBVActiveWakeUp)
	    {
	        CBV |= (0x01<<CBV_BIT_ACTIVE_WAKEUP);      //1:�ڵ���������   0���ڵ㱻������
	    }

	    canData[1] = CBV; 

	    CanHalNmTransmit(netManage[index].canHandle,canId,canData,8,0);
	}
}


static void NetManageTimerProcess(uint8_t index)
{
	if(TimerHalIsTimeout(netManage[index].MsgCycleTimerHandle)==0)
	{
            MsgCycleTimeOutProcess(index);
	}

	if(TimerHalIsTimeout(netManage[index].busOffRecoverTimerHandle)==0)
	{
            TimerHalStopTime(netManage[index].busOffRecoverTimerHandle);
            CanHalResetHardware(netManage[index].canHandle);
            netManage[index].busOffTimerOnFlag = 0;
            BusOffErrorResetCanNMTransmit(index);
        //TBOX_PRINT("456\n");
	}
}

static void NetManageAllCanReceiveCheck(uint8_t index)
{
  if( CanHalRecieveIsTimeOut(netManage[index].receiveCheckCanHandle)==0)
  {
    if(netManage[index].checkTimeCount>=(100/5))
    {
      netManage[index].checkTimeoutFlag = 1;
    }
    else
    {
      netManage[index].checkTimeCount++;      
    }
  }
  else
  {
    netManage[index].checkTimeoutFlag = 0;
    netManage[index].checkTimeCount = 0;  
  }  
}

static void NetManageStateCyclePrint(uint8_t nmId,uint8_t nmState,uint8_t requestFlag) 
{
    //TBOX_PRINT("net manage %d---state:%d,request:%d,handle:%d,can:%d\r\n",nmId,nmState,requestFlag,netManage[nmId].RepeatMessageTimerHandle,netManage[nmId].appEnableFlag);
}

void NetManageAutosarCycleProcess(void)
{
    static uint32_t printTimeCount = 0;
    static uint8_t cnt[2]={0};
    int16_t ret;
    uint8_t i;

    CanHalMsg_t canMsgRx;
    
    printTimeCount++;
    if(printTimeCount>=100)
    {
        printTimeCount = 0;
        //for(i=0;i<g_netManageNumber;i++)
        {
        //    NetManageStateCyclePrint(i,netManage[i].netManageState,netManage[i].networkRequestFlag);
        }        
    }
    for(i=0;i<g_netManageNumber;i++)//g_netManageNumber = 1
    {             
        for(;;)
        {
            ret = CanHalNmReceive(netManage[i].canHandle,&canMsgRx,0);
            if(ret == 0)   //can receive successful
            {
                CanReceiveMessageProcess(i,canMsgRx.canId,canMsgRx.canData);
            }
            else           //not invalid message
            {
            	cnt[i]++;
				if(cnt[i]>=200)
				{
					cnt[i]=0;
					netManage[i].nmMsgReceiveFlag = 0;
				}
                break;
            }  
        }
        NetManageStateProcess(i);
        CanHardwareControllerProcess(i);
    }

    for(i=0;i<g_netManageNumber;i++)
    {
        NetManageTimerProcess(i);//BUSOFF
    }

    for(i=0;i<g_netManageNumber;i++)
    {
        NetManageAllCanReceiveCheck(i);
    }
}



