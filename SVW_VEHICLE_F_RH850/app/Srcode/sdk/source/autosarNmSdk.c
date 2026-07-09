#include "cy_project.h"
#include "cy_device_headers.h"
#include "FreeRTOS.h"
#include "task.h"

#include "timerHal.h"
#include "autosarNmSDK.h"
#include "secocSdk.h"
#include "peripheralHal.h"
#include "logHal.h"

static AutosarNmVariable_t g_netManage[AUTOSAR_NET_MANAGE_MAX_INSTANCE];
static const AutosarNmParameter_t *g_pNmConfigure = NULL;
static uint8_t g_netManageNumber = 0;


int16_t AutosarNmSdkConfig(const AutosarNmParameter_t *pNmConfigre,uint8_t NmNumber)
{
    uint8_t i;
    CanHalMsgFilter_t canFilter;

    if(NmNumber>sizeof(g_netManage)/sizeof(g_netManage[0]))
    {
        return -1;
    }
	
    g_pNmConfigure = pNmConfigre;
    g_netManageNumber = NmNumber;
	
    for(i=0;i<g_netManageNumber;i++)
    {
        g_netManage[i].netManageState = E_NETMANAGESTATE_IDLEMODE;  
        g_netManage[i].canHandle = -1;
        g_netManage[i].nmMsgReceiveFlag = 0;
        g_netManage[i].networkRequestFlag = 0;
        g_netManage[i].passiveStartUpFlag = 0; 
        g_netManage[i].receiveNMpassiveStartUpFlag = 0;
        g_netManage[i].repeatMessageBitReceivedFlag = 0;      
        g_netManage[i].repeatMessageRequestFlag = 0;
        g_netManage[i].NMTimerHandle = -1;
        g_netManage[i].MsgCycleTimerHandle = -1;
        g_netManage[i].BusSleepTimerHandle = -1;
        g_netManage[i].RepeatMessageTimerHandle = -1;
        g_netManage[i].busOffRecoverTimerHandle = -1;
        g_netManage[i].immediateCycleState = 0;
        g_netManage[i].CBVRepeatMessage = 0;
        g_netManage[i].CBVActiveWakeUp = 0;
        g_netManage[i].passiveMode = 0;
        g_netManage[i].busOffTimerOnFlag = 0;
        g_netManage[i].checkTimeCount = 0;
        g_netManage[i].checkTimeoutFlag = 0;
        g_netManage[i].appEnableFlag = 0;
		
    }  
	
    for(i=0;i<g_netManageNumber;i++)
    {
        CanHalEnableCanWakeup(g_pNmConfigure[i].canChannel);
        CanHalCanBusOffProcessEnalbe(g_pNmConfigure[i].canChannel);
        g_netManage[i].canHandle = CanHalOpen(g_pNmConfigure[i].canChannel);
        canFilter.useStdFilter = 0x01;
        canFilter.canIdStdMin = g_pNmConfigure[i].BaseAddress;
        canFilter.canIdStdMax = g_pNmConfigure[i].BaseAddress+g_pNmConfigure[i].NodeIdMax;    
        canFilter.useExdtFilter = 0x00; 
        canFilter.canIdExtdMin = 0x01;
        canFilter.canIdExtdMax = 0x01;
        CanHalSetFilter(g_netManage[i].canHandle,&canFilter);      
        CanHalSetRxBuffer(g_netManage[i].canHandle,g_netManage[i].canRxBuffer,sizeof(g_netManage[0].canRxBuffer)/sizeof(g_netManage[0].canRxBuffer[0]));  
        g_netManage[i].receiveCheckCanHandle = CanHalOpen(g_pNmConfigure[i].canChannel);//receive all message
        canFilter.useStdFilter = 0x01;
        canFilter.canIdStdMin = 0;
        canFilter.canIdStdMax = 0x800;    
        canFilter.useExdtFilter = 0x01; 
        canFilter.canIdExtdMin = 0x00;
        canFilter.canIdExtdMax = 0xFFFFFFFF;
        CanHalSetFilter(g_netManage[i].receiveCheckCanHandle,&canFilter);   
        
        g_netManage[i].NMTimerHandle = TimerHalOpen();
        g_netManage[i].MsgCycleTimerHandle = TimerHalOpen();
        g_netManage[i].BusSleepTimerHandle = TimerHalOpen();
        g_netManage[i].RepeatMessageTimerHandle = TimerHalOpen();
        g_netManage[i].busOffRecoverTimerHandle = TimerHalOpen();
    }
    return 0;
}

static int16_t AutosarNmNetworkRequest(const int16_t nmChannelHandle)
{

    if((nmChannelHandle>=AUTOSAR_NET_MANAGE_MAX_INSTANCE) || (nmChannelHandle < 0))
    {
        return NM_E_NOT_OK;
    }
    if(E_NETMANAGESTATE_BUSSLEEPMODE==g_netManage[nmChannelHandle].netManageState)
    {
        g_netManage[nmChannelHandle].CBVActiveWakeUp = 1;
        g_netManage[nmChannelHandle].networkRequestFlag = 1;//��������
    }
    else if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==g_netManage[nmChannelHandle].netManageState)
    {
        g_netManage[nmChannelHandle].CBVActiveWakeUp = 1;
        g_netManage[nmChannelHandle].networkRequestFlag = 1;
    }
    else if(E_NETMANAGESTATE_READYSLEEPSTATE==g_netManage[nmChannelHandle].netManageState)
    {
        g_netManage[nmChannelHandle].networkRequestFlag = 1;
    }
    else if(E_NETMANAGESTATE_REPEATMESSAGESTATE==g_netManage[nmChannelHandle].netManageState)
    {
        g_netManage[nmChannelHandle].networkRequestFlag = 1;
    }
    else if(E_NETMANAGESTATE_NORMALOPERATIONSTATE==g_netManage[nmChannelHandle].netManageState)
    {
        g_netManage[nmChannelHandle].networkRequestFlag = 1;
    }
  
    return NM_E_OK;
}

static int16_t AutosarNmPassiveStartUp( const int16_t nmChannelHandle )
{
	if(nmChannelHandle>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
	{
		return NM_E_NOT_OK;
	}

	if(E_NETMANAGESTATE_BUSSLEEPMODE==g_netManage[nmChannelHandle].netManageState)
	{
		g_netManage[nmChannelHandle].passiveStartUpFlag = 1;
		g_netManage[nmChannelHandle].receiveNMpassiveStartUpFlag = 1;
	}
	else if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==g_netManage[nmChannelHandle].netManageState)
	{
		g_netManage[nmChannelHandle].passiveStartUpFlag = 1;
		g_netManage[nmChannelHandle].receiveNMpassiveStartUpFlag = 1;
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
            ret = AutosarNmNetworkRequest(i);  //���������������   
        }
        else
        {
            ret = AutosarNmPassiveStartUp(i); //���������������
        }
        if(ret!=NM_E_OK)
        {
            break;
        }
    }
    return ret;
}

int16_t AutosarNmSdkNetworkRelease( const int16_t nmChannelHandle )
{
    if(nmChannelHandle>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
    {
        return NM_E_NOT_OK;
    }

    if(E_NETMANAGESTATE_REPEATMESSAGESTATE==g_netManage[nmChannelHandle].netManageState)
    {
        g_netManage[nmChannelHandle].networkRequestFlag = 0;//�����ڵ㻽�ѱ�־����
    }
    else if(E_NETMANAGESTATE_NORMALOPERATIONSTATE==g_netManage[nmChannelHandle].netManageState)
    {
        g_netManage[nmChannelHandle].networkRequestFlag = 0;
    }
    else 
    {
        return NM_E_NOT_EXECUTED;
    }

    return NM_E_OK;
}

int16_t AutosarNmSdkEnableCommunication( uint8_t nmID )
{
  if(nmID>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
  {
    return NM_E_NOT_OK;
  }
  g_netManage[nmID].passiveMode = 0;
  return 0;
}

int16_t AutosarNmSdkDisableCommunication( uint8_t nmID )
{
    if(nmID>=AUTOSAR_NET_MANAGE_MAX_INSTANCE)
    {
        return NM_E_NOT_OK;
    }
    g_netManage[nmID].passiveMode = 1;
    return 0;
}

int16_t AutosarNmSdkGetSleepStatus(uint8_t nmID,uint8_t *sleepState)
{
    int16_t ret;
    ret = NM_E_OK;
    *sleepState = 1;
   
    if(E_NETMANAGESTATE_BUSSLEEPMODE==g_netManage[nmID].netManageState)
    {
        *sleepState = 1;
    }
    else if(g_netManage[nmID].networkRequestFlag)
    {
        *sleepState = 2;//re wake up the whole system
    }
    else
    {
        *sleepState = 0;//wait to sleep
    }
//    if(E_NETMANAGESTATE_BUSSLEEPMODE!=g_netManage[i].netManageState)
//    {
//      *sleepState = 0;
//      break;
//    }
      
    return ret;
}


int16_t AutosarNmSdkGetCanStatus(uint8_t nmID,uint8_t *ReceiveState)
{
    int16_t ret;
    ret = NM_E_OK;
    *ReceiveState = 1;
  
    if(0!=g_netManage[nmID].checkTimeoutFlag)
    {
        *ReceiveState = 0;
    } 
    return ret;
}

int16_t AutosarNmSdkGetNetManageReceiveStatus(uint8_t nmID,uint8_t *ReceiveState)
{
    int16_t ret;
    ret = NM_E_OK;
    *ReceiveState = 0;
    if(g_netManage[nmID].nmMsgReceiveFlag)//�յ���CAN��������ı��ģ�ID:0x500-0x57F��
    {
        *ReceiveState = 1;
    }
    return ret;
}

void AutosarNmSdkGetNetManageReceiveStatusClear(uint8_t nmID)
{ 
    g_netManage[nmID].nmMsgReceiveFlag = 0;
}

void AutosarNmSdkGetNetManageCanChannel(uint8_t nmID,uint8_t *channelFlag)
{
    if(g_pNmConfigure[nmID].canChannel<8)
    {
        *channelFlag |= 0x01<<(g_pNmConfigure[nmID].canChannel);
    }
}

static void StartNMTimer(uint8_t index)
{
  TimerHalStartTime(g_netManage[index].NMTimerHandle,g_pNmConfigure[index].nmTimeOutTime);
}

// static void StopNMTimer(uint8_t index)
// {
//   TimerHalStopTime(g_netManage[index].NMTimerHandle);
// }

static void StartWaitBusSleepTimer(uint8_t index)
{
  TimerHalStartTime(g_netManage[index].BusSleepTimerHandle,g_pNmConfigure[index].waitBusSleepTime);
}

static void StopWaitBusSleepTimer(uint8_t index)
{
  TimerHalStopTime(g_netManage[index].BusSleepTimerHandle);
}

static void StartMsgCycleTimer(uint8_t index)
{ 
    if(g_netManage[index].immediateCycleState)//���ٷ���
    {
        TimerHalStartTime(g_netManage[index].MsgCycleTimerHandle,g_pNmConfigure[index].immediateCycleTime);
    }
    else
    {   
        TimerHalStartTime(g_netManage[index].MsgCycleTimerHandle,g_pNmConfigure[index].msgCycleTime);
    }
}

static void StopMsgCycleTimer(uint8_t index)
{
    TimerHalStopTime(g_netManage[index].MsgCycleTimerHandle);
}

static void StartRepeatMessageTimer(uint8_t index)
{
    TimerHalStartTime(g_netManage[index].RepeatMessageTimerHandle,g_pNmConfigure[index].repeatMessageTime);
}

static void StopRepeatMessageTimer(uint8_t index)
{
  TimerHalStopTime(g_netManage[index].RepeatMessageTimerHandle);
}

static void CanReceiveMessageProcess(uint8_t index,uint32_t canId,uint8_t *canData)
{
	uint8_t RepeatMessageBit;
	g_netManage[index].nmMsgReceiveFlag = 1;//���յ�CAN����������ı�־
	RepeatMessageBit = (canData[1]>>CBV_BIT_REPEAT_MESSAGE_REQUEST)&(0x01);    //�ظ���������
	if(E_NETMANAGESTATE_BUSSLEEPMODE == g_netManage[index].netManageState)  //˯��ģʽ
	{
		g_netManage[index].passiveStartUpFlag = 1;
		g_netManage[index].receiveNMpassiveStartUpFlag = 1;
	}
	else if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==g_netManage[index].netManageState)  //Ԥ����ģʽ
	{
		g_netManage[index].passiveStartUpFlag = 1;
		g_netManage[index].receiveNMpassiveStartUpFlag = 1;
	}
	else if(E_NETMANAGESTATE_REPEATMESSAGESTATE==g_netManage[index].netManageState)  //�ظ�����״̬
	{
		StartNMTimer(index);
	}
	else if(E_NETMANAGESTATE_NORMALOPERATIONSTATE==g_netManage[index].netManageState)  //�������״̬
	{
		StartNMTimer(index);
		if(RepeatMessageBit)
		{
			g_netManage[index].repeatMessageBitReceivedFlag = 1;
		}
	}
	else if(E_NETMANAGESTATE_READYSLEEPSTATE==g_netManage[index].netManageState)   //Ԥ˯��״̬
	{
		StartNMTimer(index);
		if(RepeatMessageBit)
		{
			g_netManage[index].repeatMessageBitReceivedFlag = 1;
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

static void MsgCycleTimeOutProcess(uint8_t index)
{
	int16_t ret;
//	uint8_t netManagests;
	uint8_t kl15State;
	if((E_NETMANAGESTATE_BUSSLEEPMODE==g_netManage[index].netManageState)||
		(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE==g_netManage[index].netManageState)||
		(E_NETMANAGESTATE_REPEATMESSAGESTATE==g_netManage[index].netManageState)||
		(E_NETMANAGESTATE_NORMALOPERATIONSTATE==g_netManage[index].netManageState)||
		(E_NETMANAGESTATE_READYSLEEPSTATE==g_netManage[index].netManageState))
	{
            uint32_t	canId;
            uint8_t 	canData[8];
            uint8_t 	CBV;
            uint8_t   canDataFour;
//		uint8_t diagnosisserviceinprogress;
//        uint8_t Remotediagnosticinprogress;
//		uint8_t i;
            
            //TBOX_PRINT("net Manage MsgCycleTimeOutProcess 1111111\r\n");
            TBOX_PRINT("state:%d,\r\n",g_netManage[index].netManageState);
            if(g_netManage[index].immediateCycleState)
            {
                    g_netManage[index].immediateCycleCount++;
                    //TBOX_PRINT("immediateCycleCount:%d\r\n",g_netManage[index].immediateCycleCount);
                    if(g_netManage[index].immediateCycleCount>=g_pNmConfigure[index].immediateTimes)    //������״̬�±��ķ�������
                    {
                            g_netManage[index].immediateCycleCount = 0;
                            g_netManage[index].immediateCycleState = 0;
                    }
            }
    
            StartMsgCycleTimer(index);//��ʼ���ڷ��������������
            StartNMTimer(index);

            if(g_netManage[index].passiveMode)//��ֹ����������ķ���
            {
                    return;
            }

            //canId = 0x400;
            canData[0] = 0x00;
            canData[1] = 0x00;
            canData[2] = 0x00;
            canData[3] = 0x00;
            canData[4] = 0x00;
            canData[5] = 0x00;
            canData[6] = 0x00;
            canData[7] = 0x00; 

            canId = g_pNmConfigure[index].BaseAddress+g_pNmConfigure[index].NodeId; 
            //TBOX_PRINT("net Manage MsgCycleTimeOutProcess canID:%x\r\n", canId);
    
    //0:Source Node Identifier
            canData[0] = g_pNmConfigure[index].NodeId;     //ECU Address
    //1:Control Bit Vector
            CBV = 0x00;
            if(g_netManage[index].CBVRepeatMessage)
            {
                    CBV |= (0x01<<CBV_BIT_REPEAT_MESSAGE_REQUEST);      
            }
            if(g_netManage[index].CBVActiveWakeUp)
            {
                    CBV |= (0x01<<CBV_BIT_ACTIVE_WAKEUP);      //1:�ڵ���������   0���ڵ㱻������
            }
            
            canData[1] = CBV; 
            //2:RMS Flag
            if(E_NETMANAGESTATE_REPEATMESSAGESTATE ==g_netManage[index].netManageState)
            {
                    canData[2] = 0;
            }
            else
            {
                    canData[2] = 1;
            }
    //3:Wake-up reason
            //Remotediagnosticinprogress = GetRemotediagnosticisgoingflag();   //Զ�����ڽ���
            if(E_NETMANAGESTATE_REPEATMESSAGESTATE ==g_netManage[index].netManageState)
            {
                if(g_netManage[index].receiveNMpassiveStartUpFlag)
                {
                        canData[3] = 0x02;      //NM PDU Received
                }
                else if(g_netManage[index].networkRequestFlag)
                {
                        canData[3] = 0x01;       //KL15 On
                }
                else
                {
                        canData[3] = 0x04;     //Default
                }
            }
            else
            {
                    canData[3] = 0x00;     //Default
            }
            //4:Stay awake reason
            canDataFour = 0;
            kl15State = PeripheralHalGetKl15Status();
            if(kl15State)
            {
                    canDataFour |= (0x01<<CAN_DATA_FOUR_KL15ON);      
            }
            else
            {
                            canDataFour |= (0x01<<0); 
            }            
            canData[4] = canDataFour;
    
            canData[5] = 00;
            canData[6] = 00;
            canData[7] = 00;

		
		//ret = CanDriverHalTransmit(g_netManage[index].canHandle,canId,canData,8);//0x401
            ret = CanHalNmTransmit(g_netManage[index].canHandle,canId,canData,8,0);
        //TBOX_PRINT("123\n");
            if(ret == 0)
            {
                    //TBOX_PRINT("net Manage CanDriverHalTransmit\r\n");
                    g_netManage[index].busOffTimeCount = 0;
                    NetManageBusOffErrorCallBack(index,0x00);//���DTC
            }
	} 
}


static void ApplicationMessageDisableTransmit(uint8_t index)
{
    if(g_netManage[index].appEnableFlag)
    {
        CanHalAppMsgDisable(g_netManage[index].canHandle);
        g_netManage[index].appEnableFlag = 0;
    }    
}

static void ApplicationMessageEnableTransmit(uint8_t index)
{
    if(0==g_netManage[index].appEnableFlag)
    {
        CanHalAppMsgEnable(g_netManage[index].canHandle);
        g_netManage[index].appEnableFlag = 1;
    }    
}

static void NetManageStateBussLeepMode(uint8_t index)
{
    if(g_netManage[index].networkRequestFlag)    //Condition 1  ,Network Requested (local condition)
    {
        TBOX_PRINT("networkRequestFlag\r\n");
        g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; 
        g_netManage[index].immediateCycleState = 1;     
        g_netManage[index].CBVRepeatMessage = 0;        
        g_netManage[index].CBVActiveWakeUp = 1;        
        StopWaitBusSleepTimer(index);
        MsgCycleTimeOutProcess(index);
        StartRepeatMessageTimer(index);
        //SecocWakeupResetState();
		
        TBOX_PRINT("start app message\n");
        ApplicationMessageEnableTransmit(index);
        SecocSdkWakeupResetState();
    }
    //�ڵ㱻�����ѣ������ڵ���Ҫ����ͨ��
    else if(g_netManage[index].passiveStartUpFlag)   //����ģʽCondition 2 ,Successfully Received NM PDU.
    {
        TBOX_PRINT("passiveStartUpFlag\r\n");
        g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; 
        g_netManage[index].passiveStartUpFlag = 0;
        g_netManage[index].immediateCycleState = 0;     
        g_netManage[index].CBVRepeatMessage = 0;        
        g_netManage[index].CBVActiveWakeUp = 0;        
        StopWaitBusSleepTimer(index);
        MsgCycleTimeOutProcess(index);
        StartRepeatMessageTimer(index);
        SecocSdkWakeupResetState();
        
        TBOX_PRINT("start app message\n");
        ApplicationMessageEnableTransmit(index);//20230209 ����Ӧ�ñ���
    }
}

static void NetManageStateRepeatMessge(uint8_t index)
{
    if((g_netManage[index].networkRequestFlag==1)&&(TimerHalIsTimeout(g_netManage[index].RepeatMessageTimerHandle)==0))   // NM_06
    {   
        StopRepeatMessageTimer(index);
        g_netManage[index].CBVRepeatMessage = 0;
        g_netManage[index].netManageState = E_NETMANAGESTATE_NORMALOPERATIONSTATE;   //4  
    }
    else if((g_netManage[index].networkRequestFlag==0)&&(TimerHalIsTimeout(g_netManage[index].RepeatMessageTimerHandle)==0))   //Condition 5 & Condition 4
    {
        StopRepeatMessageTimer(index);
        g_netManage[index].CBVRepeatMessage = 0;
        g_netManage[index].CBVActiveWakeUp = 0;
        g_netManage[index].receiveNMpassiveStartUpFlag = 0;
        g_netManage[index].netManageState = E_NETMANAGESTATE_READYSLEEPSTATE; //5
    }
    if(TimerHalIsTimeout(g_netManage[index].NMTimerHandle)==0)
    {
        StartNMTimer(index);
    }
}

static void NetManageStateReadySleep(uint8_t index)
{
    StopMsgCycleTimer(index);
	StopRepeatMessageTimer(index);
	
	if(g_netManage[index].repeatMessageRequestFlag)            //Condition 9 ,NM Repeat Message Request
	{
		g_netManage[index].repeatMessageRequestFlag = 0;  
		g_netManage[index].immediateCycleState = 1;
		g_netManage[index].CBVRepeatMessage = 1;
		g_netManage[index].CBVActiveWakeUp = 0;
                    g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;//3 
		StartRepeatMessageTimer(index);
		MsgCycleTimeOutProcess(index);
                    TBOX_PRINT("start app message\n");
                    ApplicationMessageEnableTransmit(index);
	}
	else if(g_netManage[index].repeatMessageBitReceivedFlag)   
	{
		g_netManage[index].repeatMessageBitReceivedFlag = 0;  
		g_netManage[index].immediateCycleState = 1;
                    g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;
		g_netManage[index].CBVRepeatMessage = 0;
		g_netManage[index].CBVActiveWakeUp = 0;
		StartRepeatMessageTimer(index);
		MsgCycleTimeOutProcess(index);
		
                    TBOX_PRINT("start app message\n");
                    ApplicationMessageEnableTransmit(index);
	}
	else if(g_netManage[index].networkRequestFlag==1)    
	{
		StartNMTimer(index);
		StartMsgCycleTimer(index); 
		g_netManage[index].CBVActiveWakeUp = 0;
		g_netManage[index].netManageState = E_NETMANAGESTATE_NORMALOPERATIONSTATE; 
                    TBOX_PRINT("start app message\n");
                    ApplicationMessageEnableTransmit(index);
	}

	if(TimerHalIsTimeout(g_netManage[index].NMTimerHandle)==0)   //Condition 6 ,T_NM_TIMEROUT�ѳ�ʱ
	{
		StartWaitBusSleepTimer(index);
		ApplicationMessageDisableTransmit(index);//��ֹӦ�ñ��ķ���
		g_netManage[index].netManageState = E_NETMANAGESTATE_PREPAREBUSSLEEPMODE;//2
                    TBOX_PRINT("stop app message\n");
	}
}

static void NetManageStateNomalOperation(uint8_t index)
{
    if(g_netManage[index].repeatMessageRequestFlag)            //Condition 9 ,NM Repeat Message Request.
    {
        g_netManage[index].repeatMessageRequestFlag = 0;  
        g_netManage[index].immediateCycleState = 1;
        g_netManage[index].CBVRepeatMessage = 1;
        g_netManage[index].CBVActiveWakeUp = 0;
        g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;            
        MsgCycleTimeOutProcess(index);
        StartRepeatMessageTimer(index);             
        TBOX_PRINT("start app message\n");
        ApplicationMessageEnableTransmit(index);              
    }
    else if(g_netManage[index].repeatMessageBitReceivedFlag)   //���յ����ظ��������� Condition 7 ,Repeat Message Request Bit Received.
    {
        g_netManage[index].repeatMessageBitReceivedFlag = 0;  
        g_netManage[index].immediateCycleState = 1;
        g_netManage[index].CBVRepeatMessage = 0;
        g_netManage[index].CBVActiveWakeUp = 0;
        g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE;            
        MsgCycleTimeOutProcess(index);
        StartRepeatMessageTimer(index);
        TBOX_PRINT("start app message\n");
        ApplicationMessageEnableTransmit(index);
    }
    else if(g_netManage[index].networkRequestFlag==0)     //Condition 5 ,Network Released.
    {
        g_netManage[index].CBVActiveWakeUp = 0;
        g_netManage[index].netManageState = E_NETMANAGESTATE_READYSLEEPSTATE;     
    }

    if(TimerHalIsTimeout(g_netManage[index].NMTimerHandle)==0)   //Condition 6 ,T_NM_TIMEROUT��ʱ
    {
        StartNMTimer(index);
    }
}

static void NetManageStatePrepareBusSleep(uint8_t index)
{
    if(g_netManage[index].networkRequestFlag)    //Condition 1 ,Network Requested (local condition)
    {
        g_netManage[index].immediateCycleState = 1;
        g_netManage[index].CBVRepeatMessage = 0;
        g_netManage[index].CBVActiveWakeUp = 1;
        g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; // 3
        StopWaitBusSleepTimer(index);
        StartRepeatMessageTimer(index);
        MsgCycleTimeOutProcess(index);
        
        TBOX_PRINT("start app message\n");
        ApplicationMessageEnableTransmit(index);//20230210 ����Ӧ�ñ���
    }
    else if(g_netManage[index].passiveStartUpFlag)   //Condition 2 ,Successfully Received NM PDU.
    {
        g_netManage[index].passiveStartUpFlag = 0;
        g_netManage[index].immediateCycleState = 0;
        g_netManage[index].CBVRepeatMessage = 0;
        g_netManage[index].CBVActiveWakeUp = 0;
        g_netManage[index].netManageState = E_NETMANAGESTATE_REPEATMESSAGESTATE; // 3
        StopWaitBusSleepTimer(index);
        StartRepeatMessageTimer(index);
        MsgCycleTimeOutProcess(index);
        TBOX_PRINT("start app message\n");
        ApplicationMessageEnableTransmit(index);//20230210 ����Ӧ�ñ���
    }
    else if(TimerHalIsTimeout(g_netManage[index].BusSleepTimerHandle)==0)   //Condition 8 ,T_WAIT_BUS_SLEEP ʱ�䳬ʱ
    {
        StopWaitBusSleepTimer(index);
        g_netManage[index].netManageState = E_NETMANAGESTATE_BUSSLEEPMODE;
    }
}

static void NetManageStateProcess(uint8_t index)
{
    //0
    if(E_NETMANAGESTATE_IDLEMODE == g_netManage[index].netManageState)
    {
        g_netManage[index].netManageState = E_NETMANAGESTATE_BUSSLEEPMODE;   
    }

    if(E_NETMANAGESTATE_BUSSLEEPMODE == g_netManage[index].netManageState)
    {
        NetManageStateBussLeepMode(index);
    }
	 //3 �ظ�����״̬������ģʽ��
	if(E_NETMANAGESTATE_REPEATMESSAGESTATE == g_netManage[index].netManageState)  
	{
        NetManageStateRepeatMessge(index);
	}
	
	if(E_NETMANAGESTATE_READYSLEEPSTATE == g_netManage[index].netManageState) 
	{
		NetManageStateReadySleep(index);
	}
	
	if(E_NETMANAGESTATE_NORMALOPERATIONSTATE == g_netManage[index].netManageState)     
	{
        NetManageStateNomalOperation(index);
	}
	
	//2 Ԥ����ģʽ
	if(E_NETMANAGESTATE_PREPAREBUSSLEEPMODE == g_netManage[index].netManageState)    
	{
        NetManageStatePrepareBusSleep(index);
	}
}

static void NetManageInializeHardware(uint8_t index)
{
  CanHalResetHardware(g_netManage[index].canHandle);
  vTaskDelay( pdMS_TO_TICKS(5));
  CanHalResetHardware(g_netManage[index].canHandle);
}

static void CanHardwareControllerProcess(uint8_t index)
{
    int16_t ret;
    ret = CanHalGetIsBusOffError(g_netManage[index].canHandle);
    if(ret==0)//bus off
    {
        TBOX_PRINT("busoff count %d\r\n",g_netManage[index].busOffTimeCount);
        if(g_netManage[index].busOffTimerOnFlag)
        {
            //do nothing
        }
        else
        {
            if(g_pNmConfigure[index].busOffQuickTimes!=0)//10��
            {
                
                if(g_netManage[index].busOffTimeCount>=(g_pNmConfigure[index].busOffQuickTimes-1))//
                {
                    
                    if(g_pNmConfigure[index].busOffSlowTime!=0)
                    {
                        TimerHalStartTime(g_netManage[index].busOffRecoverTimerHandle,g_pNmConfigure[index].busOffSlowTime);
                        g_netManage[index].busOffTimerOnFlag = 1;

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
                        TimerHalStartTime(g_netManage[index].busOffRecoverTimerHandle,g_pNmConfigure[index].busOffQuickTime);
                        g_netManage[index].busOffTimerOnFlag = 1;
                        g_netManage[index].busOffTimeCount++;
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
                    TimerHalStartTime(g_netManage[index].busOffRecoverTimerHandle,g_pNmConfigure[index].busOffSlowTime);
                    g_netManage[index].busOffTimerOnFlag = 1;
                    if(g_netManage[index].busOffTimeCount<g_pNmConfigure[index].busOffErrorEventLimitCount)
                    {
                        g_netManage[index].busOffTimeCount++;
                    }
                    //NM_MINA_DEBUG_PRINT("busoff count= %d\r\n",g_netManage[index].busOffTimeCount);
                }
                else
                {
                    NetManageInializeHardware(index);
                    //RTOS_HalApiWait(5);
                }
            }
        }

    }
    else
    {
    }
    if(g_netManage[index].busOffTimeCount>=g_pNmConfigure[index].busOffErrorEventLimitCount)
    {
        if(0x00==g_netManage[index].busOffEventOn)
        {
            g_netManage[index].busOffEventOn = 0x01;
            NetManageBusOffErrorCallBack(index,0x01);//����DTC
            
            //SetCanState(1);
            TBOX_PRINT("set busoff DTC\n");
        }
    }
    else
    {
        if(0x01==g_netManage[index].busOffEventOn)
        {
            g_netManage[index].busOffEventOn = 0x00;
            NetManageBusOffErrorCallBack(index,0x00);//���DTC
            
            //SetCanState(0);
            TBOX_PRINT("clear busoff DTC\n");
        }
    }
}

static void BusOffErrorResetCanNMTransmit(uint8_t index)
{
    uint32_t	canId;
    uint8_t 	CBV;
    uint8_t   canDataFour;
    uint8_t 	canData[8] = {0};
    uint8_t kl15State;

    StartMsgCycleTimer(index);//�����Ա������¿�ʼ

    if(g_netManage[index].passiveMode)
    {
        return;
    }
    canId = g_pNmConfigure[index].BaseAddress+g_pNmConfigure[index].NodeId; 
    //TBOX_PRINT("net Manage MsgCycleTimeOutProcess canID:%x\r\n", canId);

    //0:Source Node Identifier
    canData[0] = g_pNmConfigure[index].NodeId;     //ECU Address
    //1:Control Bit Vector
    CBV = 0x00;
    if(g_netManage[index].CBVRepeatMessage)
    {
        CBV |= (0x01<<CBV_BIT_REPEAT_MESSAGE_REQUEST);      
    }
    if(g_netManage[index].CBVActiveWakeUp)
    {
        CBV |= (0x01<<CBV_BIT_ACTIVE_WAKEUP);      //1:�ڵ���������   0���ڵ㱻������
    }

    canData[1] = CBV; 
    //2:RMS Flag
    if(E_NETMANAGESTATE_REPEATMESSAGESTATE ==g_netManage[index].netManageState)
    {
        canData[2] = 0;
    }
    else
    {
        canData[2] = 1;
    }
    //3:Wake-up reason
    //Remotediagnosticinprogress = GetRemotediagnosticisgoingflag(); 
    if(E_NETMANAGESTATE_REPEATMESSAGESTATE ==g_netManage[index].netManageState)
    {
        if(g_netManage[index].receiveNMpassiveStartUpFlag)
        {
            canData[3] = 0x02;      //NM PDU Received
        }
        else if(g_netManage[index].networkRequestFlag)
        {
            canData[3] = 0x01;       //KL15 On��KL15 ON
        }
        else
        {
            canData[3] = 0x04;     //Default
        }
    }
    else
    {
        canData[3] = 0x00;     //Default
    }
    //4:Stay awake reason
    canDataFour = 0;
    kl15State = PeripheralHalGetKl15Status();
    if(kl15State)
    {
        canDataFour |= (0x01<<CAN_DATA_FOUR_KL15ON);      
    }
    else
    {
        canDataFour |= (0x01<<0); 
    }            
    canData[4] = canDataFour;

    canData[5] = 00;
    canData[6] = 00;
    canData[7] = 00;

    CanHalNmTransmit(g_netManage[index].canHandle,canId,canData,8,0);
}


static void NetManageTimerProcess(uint8_t index)
{
	if(TimerHalIsTimeout(g_netManage[index].MsgCycleTimerHandle)==0)
	{
            MsgCycleTimeOutProcess(index);
	}

	if(TimerHalIsTimeout(g_netManage[index].busOffRecoverTimerHandle)==0)
	{
            TimerHalStopTime(g_netManage[index].busOffRecoverTimerHandle);
            CanHalResetHardware(g_netManage[index].canHandle);
            g_netManage[index].busOffTimerOnFlag = 0;
            BusOffErrorResetCanNMTransmit(index);
        //TBOX_PRINT("456\n");
	}
}

static void NetManageAllCanReceiveCheck(uint8_t index)
{
  if( CanHalRecieveIsTimeOut(g_netManage[index].receiveCheckCanHandle)==0)
  {
    if(g_netManage[index].checkTimeCount>=(100/5))
    {
      g_netManage[index].checkTimeoutFlag = 1;
    }
    else
    {
      g_netManage[index].checkTimeCount++;      
    }
  }
  else
  {
    g_netManage[index].checkTimeoutFlag = 0;
    g_netManage[index].checkTimeCount = 0;  
  }  
}

static void NetManageStateCyclePrint(uint8_t nmId,uint8_t nmState,uint8_t requestFlag) 
{
    TBOX_PRINT("net manage %d---state:%d,request:%d,handle:%d\r\n",nmId,nmState,requestFlag,g_netManage[nmId].RepeatMessageTimerHandle);
}

void NetManageAutosarCycleProcess(void)
{
    static uint32_t printTimeCount = 0;
    int16_t ret;
    uint8_t i;
    CanHalMsg_t canMsgRx;
    
    printTimeCount++;
    if(printTimeCount>=100)
    {
        printTimeCount = 0;
        for(i=0;i<g_netManageNumber;i++)
        {
            NetManageStateCyclePrint(i,g_netManage[i].netManageState,g_netManage[i].networkRequestFlag);
        }        
    }
    for(i=0;i<g_netManageNumber;i++)//g_netManageNumber = 1
    {             
        for(;;)
        {
            ret = CanHalNmReceive(g_netManage[i].canHandle,&canMsgRx,0);
            if(ret == 0)   //can receive successful
            {
                CanReceiveMessageProcess(i,canMsgRx.canId,canMsgRx.canData);
            }
            else           //not invalid message
            {
                break;
            }  
        }
        NetManageStateProcess(i);
        CanHardwareControllerProcess(i);
    }

    //RTOS_HalApiWait(2);//wait for 2ms
    for(i=0;i<g_netManageNumber;i++)
    {
        NetManageTimerProcess(i);//BUSOFF
    }

    for(i=0;i<g_netManageNumber;i++)
    {
        NetManageAllCanReceiveCheck(i);
    }
}



