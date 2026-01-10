#include "taskVehicleDataToCpu.h"

#include "canHal.h"
#include "mpuHal.h"
#include "logHal.h"
#include "powerManageSdk.h"
#include "canMsgDynamicConfigure.h"
#include "ecuNodeMissingCheck.h"
#include "vehicleSignalApp.h"

#include "canMsgToCpu.h"
#include "taskDiagnostic.h"
#include "FreeRTOS.h"
#include "task.h"
#include "canPeriodTask.h"


#define VEHICLE_TO_CPU_TASK_CYCLE_TIME       5//ms
#define VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME     1000//ms
#define VEHICLE_TO_CAN_ERR_CYCLE_TIME     150//ms
#define VEHICLE_TO_UDS_HEART_CYCLE_TIME     2000//ms


static CanHalMsg_t g_can1DriverRxBuffer[30];
static CanHalMsg_t g_can2DriverRxBuffer[30];
static CanHalMsg_t g_can3DriverRxBuffer[30];
//static CanHalMsg_t g_can4DriverRxBuffer[30];
//static CanHalMsg_t g_can5DriverRxBuffer[30];
//static CanHalMsg_t g_can6DriverRxBuffer[30];



static uint8_t g_mpuDriverRxBuffer[300];
static uint16_t g_DATADisableTimeCount	=   0;                      //��ֹʱ�����

static int16_t g_mpuHandle = -1;

static  int16_t g_tboxCan1Handle = -1;
static  int16_t g_tboxCan2Handle = -1;
static  int16_t g_tboxCan3Handle = -1;
//static  int16_t g_tboxCan4Handle = -1;
//static  int16_t g_tboxCan5Handle = -1;
//static  int16_t g_tboxCan6Handle = -1;

static uint8_t g_BcmRemoteStatus = 0;
static uint8_t g_BcmMessgeStatus = 0;

static uint8_t g_udsSendHeartFlag = 0;
static uint8_t g_disableUartTxFlag = 0; 

static void TboxCan1Initialize(void)
{
  CanHalMsgFilter_t canFilter;  
  g_tboxCan1Handle = CanHalOpen(TBOX_CAN_CHANNEL_1);
  if(g_tboxCan1Handle<0)//invalid handle
  {
    for(;;)
    {
      TBOX_PRINT("vehile data to cpu : Acan handle open error\r\n");
      vTaskDelay(1000);
    }
  }  
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0xFFF;
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x00;
  canFilter.canIdExtdMax = 0xFFFFFFFF;
  CanHalSetFilter(g_tboxCan1Handle,&canFilter); 
  CanHalEnableTransmitLoopBack(g_tboxCan1Handle);
  CanHalSetRxBuffer(g_tboxCan1Handle,g_can1DriverRxBuffer,sizeof(g_can1DriverRxBuffer)/sizeof(g_can1DriverRxBuffer[0]));  
}

static void TboxCan2Initialize(void)
{
  CanHalMsgFilter_t canFilter;  
  g_tboxCan2Handle = CanHalOpen(TBOX_CAN_CHANNEL_2);
  if(g_tboxCan2Handle<0)//invalid handle
  {
    for(;;)
    {
      TBOX_PRINT("vehile data to cpu : Bcan handle open error\r\n");
      vTaskDelay(1000);
    }
  }  
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0xFFF;
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x00;
  canFilter.canIdExtdMax = 0xFFFFFFFF;
  CanHalSetFilter(g_tboxCan2Handle,&canFilter); 
  CanHalEnableTransmitLoopBack(g_tboxCan2Handle);
  CanHalSetRxBuffer(g_tboxCan2Handle,g_can2DriverRxBuffer,sizeof(g_can2DriverRxBuffer)/sizeof(g_can2DriverRxBuffer[0]));  
}

static void TboxCan3Initialize(void)
{
  CanHalMsgFilter_t canFilter;  
  g_tboxCan3Handle = CanHalOpen(TBOX_CAN_CHANNEL_3);
  if(g_tboxCan3Handle<0)//invalid handle
  {
    for(;;)
    {
      TBOX_PRINT("vehile data to cpu : Bcan handle open error\r\n");
      vTaskDelay(1000);
    }
  }  
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0xFFF;
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x00;
  canFilter.canIdExtdMax = 0xFFFFFFFF;
  CanHalSetFilter(g_tboxCan3Handle,&canFilter); 
  CanHalEnableTransmitLoopBack(g_tboxCan3Handle);
  CanHalSetRxBuffer(g_tboxCan3Handle,g_can3DriverRxBuffer,sizeof(g_can3DriverRxBuffer)/sizeof(g_can3DriverRxBuffer[0]));  
}
static int16_t DtcSdkMesageSend(uint8_t* pu8Data,uint8_t DtcNum,uint16_t u16Len)
{
    MpuHalDataPack_t l_txPack;
    uint8_t lucSendBuf[64];
	
    l_txPack.aid = 0x01;
    l_txPack.mid = 0x19;
    l_txPack.subcommand = 0x00;
    
    memset(lucSendBuf,0,sizeof(lucSendBuf));
	lucSendBuf[0] = DtcNum;
	
	memcpy(&lucSendBuf[1],pu8Data,u16Len);
    
	l_txPack.dataBufferSize = u16Len+1;
	l_txPack.dataLength = u16Len+1;
	l_txPack.pDataBuffer = lucSendBuf;
    
    MpuHalTransmit(g_mpuHandle,&l_txPack);
    
    return 0;
}

#if 0
static void TboxCan4Initialize(void)
{
  CanHalMsgFilter_t canFilter;  
  g_tboxCan4Handle = CanHalOpen(TBOX_CAN_CHANNEL_4);
  if(g_tboxCan4Handle<0)//invalid handle
  {
    for(;;)
    {
      TBOX_PRINT("vehile data to cpu : Bcan handle open error\r\n");
      vTaskDelay(1000);
    }
  }  
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0xFFF;
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x00;
  canFilter.canIdExtdMax = 0xFFFFFFFF;
  CanHalSetFilter(g_tboxCan4Handle,&canFilter); 
  CanHalEnableTransmitLoopBack(g_tboxCan4Handle);
  CanHalSetRxBuffer(g_tboxCan4Handle,g_can4DriverRxBuffer,sizeof(g_can4DriverRxBuffer)/sizeof(g_can4DriverRxBuffer[0]));  
}

static void TboxCan5Initialize(void)
{
  CanHalMsgFilter_t canFilter;  
  g_tboxCan5Handle = CanHalOpen(TBOX_CAN_CHANNEL_5);
  if(g_tboxCan5Handle<0)//invalid handle
  {
    for(;;)
    {
      TBOX_PRINT("vehile data to cpu : Ican handle open error\r\n");
      vTaskDelay(1000);
    }
  }  
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0xFFF;
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x00;
  canFilter.canIdExtdMax = 0xFFFFFFFF;
  CanHalSetFilter(g_tboxCan5Handle,&canFilter); 
  CanHalEnableTransmitLoopBack(g_tboxCan5Handle);
  CanHalSetRxBuffer(g_tboxCan5Handle,g_can5DriverRxBuffer,sizeof(g_can5DriverRxBuffer)/sizeof(g_can5DriverRxBuffer[0]));  
}

static void TboxCan6Initialize(void)
{
  CanHalMsgFilter_t canFilter;  
  g_tboxCan6Handle = CanHalOpen(TBOX_CAN_CHANNEL_6);
  if(g_tboxCan6Handle<0)//invalid handle
  {
    for(;;)
    {
      TBOX_PRINT("vehile data to cpu : Dcan handle open error\r\n");
      vTaskDelay(1000);
    }
  }  
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x000;
  canFilter.canIdStdMax = 0xFFF;
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x00;
  canFilter.canIdExtdMax = 0xFFFFFFFF;
  CanHalSetFilter(g_tboxCan6Handle,&canFilter); 
  CanHalEnableTransmitLoopBack(g_tboxCan6Handle);
  CanHalSetRxBuffer(g_tboxCan6Handle,g_can6DriverRxBuffer,sizeof(g_can6DriverRxBuffer)/sizeof(g_can6DriverRxBuffer[0]));  
}

#endif


static void TboxCanRxCycleProcess(void)
{
  static uint16_t rxCount = 0;
  static uint32_t rxbufferCount = 0;
  int16_t ret;
  
  static uint32_t diagCount = 0;
  const uint8_t CanBuffer[5]={0x04,0xBB,0x04,0x14,0x03};
  uint8_t  canData[8]={0x05,0xFB,0x04,0x14,0x03,0x01,0xCC,0xCC};
  const uint8_t ExitCanBuffer[5]={0x04,0xBB,0x05,0xF1,0x93};
  static uint8_t  EolFlag = 0;

  CanHalMsg_t canMsg;  

  while(1)
  {
    ret = CanHalReceive(g_tboxCan1Handle,&canMsg,0);//pt
    if(ret==0)//receive can data success
    {
        //CanARxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        Can0RxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
		Can0RxCanMsgCycleCheck(VEHICLE_TO_CPU_TASK_CYCLE_TIME);
		if(!g_disableUartTxFlag)
		{
			//EcuNodeMissingCheckCanIdOnAcan(canMsg.canId);
			EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_1,canMsg.canId);//msg dtc
			Can_E2E_DTC_Check(canMsg.canId,canMsg.canData,0);//e2e dtc
			SaveCanMsgToBuffer(0,&canMsg);
			rxbufferCount ++;
		}
    }
    else
    {
      break;
    }
  }  
  
  while(1)
  {    
    ret = CanHalReceive(g_tboxCan2Handle,&canMsg,0); //bd
    if(ret==0)//receive can data success
    {
        Can1RxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
		Can1RxCanMsgCycleCheck(VEHICLE_TO_CPU_TASK_CYCLE_TIME);
        //to do 
        
		if(!g_disableUartTxFlag)
		{
	        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_2,canMsg.canId);
	        Can_E2E_DTC_Check(canMsg.canId,canMsg.canData,1);//e2e dtc
	        SaveCanMsgToBuffer(0,&canMsg);
			rxbufferCount ++;
		}
		if(canMsg.canId == 0xEC)
		{
			g_BcmRemoteStatus = 1;
		}
		if(canMsg.canId == 0x2A1)
		{
			g_BcmMessgeStatus = 1;
		}
		
    }
    else
    {
      break;
    }
  }
  
  if(!g_disableUartTxFlag)
  {
	  rxCount ++;
  }
  if((rxbufferCount >=30)||((rxCount >= 4)&&(rxbufferCount != 0)))
  {
	CanMsgTransmitToCpu(0,g_mpuHandle);  
	rxCount = 0;
	rxbufferCount = 0;
  }
#if 0
  while(0)
  {
    ret = CanHalReceive(g_tboxCan3Handle,&canMsg,0);
    if(ret==0)//receive can data success
    {
        //CanCRxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_3,canMsg.canId);;//��Ͻڵ��ؽӿ�
        SaveCanMsgToBuffer(2,&canMsg);
    }
    else
    {
      break;
    }
  }
    //CanMsgTransmitToCpu(2,g_mpuHandle);  
  while(0)
  {
    ret = CanHalReceive(g_tboxCan4Handle,&canMsg,0);
    if(ret==0)//receive can data success
    {
        //CanERxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_4,canMsg.canId);//��Ͻڵ��ؽӿ�
        SaveCanMsgToBuffer(3,&canMsg);
    }
    else
    {
      break;
    }
  }  
  //CanMsgTransmitToCpu(3,g_mpuHandle);  

  while(0)
  {
    ret = CanHalReceive(g_tboxCan5Handle,&canMsg,0);
    if(ret==0)//receive can data success
    {
        //CanIRxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_5,canMsg.canId);//��Ͻڵ��ؽӿ�
        SaveCanMsgToBuffer(4,&canMsg);
    }
    else
    {
      break;
    }
  }
  //CanMsgTransmitToCpu(4,g_mpuHandle); 

  while(0)
  {
    ret = CanHalReceive(g_tboxCan6Handle,&canMsg,0);
    if(ret==0)//receive can data success
    {
        //to do   
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_6,canMsg.canId);
        SaveCanMsgToBuffer(5,&canMsg);
    }
    else
    {
      break;
    }
  }
  //CanMsgTransmitToCpu(5,g_mpuHandle);  
  //
#endif 
 /* if(rxCount<(1000/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
  {
    return;
  }
  if(!g_disableUartTxFlag)
  {
    CanMsgTransmitToCpu(0,g_mpuHandle);
  }*/
}
uint8_t GetBcmRemoteState()
{
	return g_BcmRemoteStatus;
}
void CleanBcmRemoteState()
{
	g_BcmRemoteStatus = 0;
}

uint8_t GetBcmMessageState()
{
	return g_BcmMessgeStatus;
}
void CleanBcmMessageState()
{
	g_BcmMessgeStatus = 0;
}
static void GetBTNumberlist()
{
	uint8_t Motornum = 0;
	uint8_t Batterynum = 0;
	uint8_t i = 0;
	uint8_t cnt[19] = {0};
	
    TBOX_MESSAGE message = {0};
	uint8_t CANSignalFormat = VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB;
    double dataVaule = 0;    
    const can_signal_configure_t *pCanSignalConfigure = NULL;
	
	GetCanMessageData(message.data);
	
    pCanSignalConfigure = GetCan0SignalConfigure();
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoDeltaTemp,&dataVaule); 
	cnt[0] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoOverTemp,&dataVaule); 
	cnt[1] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoPackOverVolt,&dataVaule); 
	cnt[2] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoPackUdVolt,&dataVaule); 
	cnt[3] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoPackLowSOC,&dataVaule); 
	cnt[4] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoCellOverVolt,&dataVaule); 
	cnt[5] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoCellUdVolt,&dataVaule); 
	cnt[6] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoLowInsRes,&dataVaule); 
	cnt[7] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoUCellIncon,&dataVaule); 
	cnt[8] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoPackOverChrg,&dataVaule); 
	cnt[9] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoPackHighSOC,&dataVaule); 
	cnt[10] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoPkFastChgSOC,&dataVaule); 
	cnt[11] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_FaultInfoBatSysNotMtc,&dataVaule); 
	cnt[12] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_HVInterLock_Sts,&dataVaule); 
	cnt[13] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_ThermalRunaway_Fault,&dataVaule); 
	cnt[14] = (uint8_t)dataVaule;
	for(i=0;i<15;i++)
	{
		if(cnt[i] == 1)
		{
			Batterynum++;
		}
	}
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->MCU_McuHeat_Sts,&dataVaule); 
	cnt[15] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->MCU_MotorHeat_Sts,&dataVaule); 
	cnt[16] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->MCU_bnDeltaLim,&dataVaule); 
	cnt[17] = (uint8_t)dataVaule;
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->MCU_MCUErrLevel,&dataVaule); 
	cnt[18] = (uint8_t)dataVaule;

	
	for(i=15;i<18;i++)
	{
		if(cnt[i] == 1)
		{
			Motornum++;
		}
	}
	if((cnt[18]>0)&&(cnt[18]<6))
	{
		Motornum++;
	}
	
    message.TBOX.TBOX_FaultNumberMotor = Motornum;
    message.TBOX.TBOX_FaultNumberBattery = Batterynum;
    
    SetCanMessageData(message.data);
}
//static void PrintTaskInfo(void);
static uint8_t g_mpuRxDataBuffer[100];
void TaskVehicleDataToCpu( void *pvParameters )
{
    uint16_t timeCount;
    uint16_t CantimeCount;
    uint16_t udsHeartCount;
    uint32_t rtosTickCount;
    int16_t sleepFlag;
    int16_t lastSleepState;
    int16_t sleepCommandHandle;
    int16_t ret;
	uint8_t DtcNum = 0;
	uint8_t Dtclist[90] = 0;
	
    MpuHalFilter_t mpuFilter;
    MpuHalDataPack_t rxPack;
    //
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x02;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x02;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,sizeof(g_mpuDriverRxBuffer));
    TboxCan1Initialize();
    TboxCan2Initialize();
    TboxCan3Initialize();
//    TboxCan4Initialize();
//    TboxCan5Initialize();
//    TboxCan6Initialize();  

    CanMsgTansmitToCpuInitialize();
    CanMsgDynamicConfigureInitialize(g_mpuHandle); 
    //cycle process 
    rtosTickCount = xTaskGetTickCount();
    timeCount = 0;
    sleepCommandHandle = PowerManageSdkOpenHandle("ToMpu");

    lastSleepState = 0x01;
    rxPack.pDataBuffer = g_mpuRxDataBuffer;
    rxPack.dataBufferSize = sizeof(g_mpuRxDataBuffer);
    rxPack.dataLength = 0;
    while(1)
    {
		if(GetTboxOtaStatus() == 1)
		{
			g_DATADisableTimeCount++;
			if(g_DATADisableTimeCount>=6*1000)//30s
			{
				g_DATADisableTimeCount=0;
				SetTboxOtaStatus(0);
			}
		}
		else
		{		
			g_DATADisableTimeCount=0;
			
			 //can receive
			 TboxCanRxCycleProcess();
			
			 sleepFlag = PowerManageSdkGetSleepState(sleepCommandHandle);
			 if(sleepFlag!=0)
			 {		  
				 if(lastSleepState!=sleepFlag)
				 {
				   
				 }	   
			 }
			 else
			 {
				 if(lastSleepState!=sleepFlag)
				 {
					 PowerManageSdkSetSleepAck(sleepCommandHandle);
				 } 
				 
			 }
			 lastSleepState = sleepFlag;
			 //
			 timeCount++;
			 CantimeCount++;
			 
			 if(g_udsSendHeartFlag==1)
			 {
				udsHeartCount++;
				if(udsHeartCount>=(VEHICLE_TO_UDS_HEART_CYCLE_TIME/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
				{
					SendCanMessage(0x7DF);
					udsHeartCount = 0;
				}				
			 }
			 else
			 {
				 udsHeartCount = 0;
			 }
			 if(CantimeCount>=(VEHICLE_TO_CAN_ERR_CYCLE_TIME/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
			 {
				GetBTNumberlist();
				CantimeCount = 0;
			 }
			 if(timeCount>=(VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
			 {
			 	
				DtcProcessTestGetListByMask(0x08,&Dtclist,&DtcNum);//Current fault
				DtcSdkMesageSend(Dtclist,DtcNum,DtcNum*2);
			
				DtcSdkMesageCanSend(Dtclist,DtcNum);
				timeCount = 0;
			 }
			NodeMissingCheckTimeOut(VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
			 //delay
			 if((timeCount&0x01)==0x00)
			 {		
				 //CanRxCanMsgCycleCheck(VEHICLE_TO_CPU_TASK_CYCLE_TIME*2);  
				 rxPack.dataLength = 0;
				 ret = MpuHalReceive(g_mpuHandle,&rxPack,0); 
				 if(MPU_HAL_STATUS_OK==ret)
				 {
					 CanMsgToCpuConfigureSyncCycleProcess(&rxPack,10);
				 }
				 else
				 {
					 CanMsgToCpuConfigureSyncCycleProcess(NULL,10);
				 }
			 }
		}
        vTaskDelayUntil(&rtosTickCount,VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
        //PrintTaskInfo();
    }
}


void VehicleToCpuUartTxDisable(void)
{
	g_disableUartTxFlag = 0x01;
}

void VehicleToCpuUartTxEnable(void)
{
	g_disableUartTxFlag = 0x00;
}
void VehicleUdsHeartTxDisable(void)
{
	g_udsSendHeartFlag = 0x00;
}

void VehicleUdsHeartTxEnable(void)
{
	g_udsSendHeartFlag = 0x01;
}


#if 0
static void PrintTaskInfo(void)
{
    static uint32_t cycleCount = 0;
    cycleCount++;
    if(cycleCount<100)
    {
      return;
    }
    cycleCount = 0;
    unsigned long uxHighWaterMark_DataToCPU;
    uxHighWaterMark_DataToCPU = uxTaskGetStackHighWaterMark(NULL);        
    TBOX_PRINT("DataToCPU thread remain stack space:%d.\r\n",uxHighWaterMark_DataToCPU);
}
#endif
