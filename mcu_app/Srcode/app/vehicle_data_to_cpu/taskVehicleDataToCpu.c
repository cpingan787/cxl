#include "taskVehicleDataToCpu.h"

#include "canHal.h"
#include "mpuHal.h"
#include "logHal.h"
// #include "powerManageSdk.h"
// #include "secocSdk.h"
#include "canMsgDynamicConfigure.h"
// #include "ecuNodeMissingCheck.h" // TODO guanyuan
// #include "secocConfig.h"

// #include "canMsgToCpu.h"
#include "Com.h"



#define VEHICLE_TO_CPU_TASK_CYCLE_TIME       5//ms
#define VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME     100//ms



#if(0)
static CanHalMsg_t g_can1DriverRxBuffer[30];
static CanHalMsg_t g_can2DriverRxBuffer[30];
static CanHalMsg_t g_can3DriverRxBuffer[30];
static CanHalMsg_t g_can4DriverRxBuffer[30];
static CanHalMsg_t g_can5DriverRxBuffer[30];
static CanHalMsg_t g_can6DriverRxBuffer[30];
#endif


static uint8_t g_mpuDriverRxBuffer[300];

static int16_t g_mpuHandle = -1;
static VehicleInfor_t g_vehicleInfor;
#if(0)
static  int16_t g_tboxCan1Handle = -1;
static  int16_t g_tboxCan2Handle = -1;
static  int16_t g_tboxCan3Handle = -1;
static  int16_t g_tboxCan4Handle = -1;
static  int16_t g_tboxCan5Handle = -1;
static  int16_t g_tboxCan6Handle = -1;

//static uint8_t g_disableUartTxFlag = 0; 

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
      return;
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
      return;
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
      return;
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
      return;
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
      return;
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
      return;
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

static uint8_t g_dtcCounter[3];

static void SecocMsgReceiveProcess(CanHalMsg_t *pCanMsg)
{
    int16_t result;
    
    if(0x461==pCanMsg->canId)
    {
        SecocSdkSyncMessageReceiveProcess(pCanMsg->canId,pCanMsg->canData);
    }
    else if(pCanMsg->canId==0x27F)
    {
        if(SecocSdkKeyGetKeyIsValid())
        {
            result = SecocSdkCheckPdu(pCanMsg);
            if(0==result)
            {
                g_dtcCounter[0]=0;
                //ClearDtcFaultState(DTC_ITEM_SECOC_HUT_PDU_FAIL);
            }
            else
            {
                g_dtcCounter[0]++;
                if(g_dtcCounter[0]>=5)
                {
                    g_dtcCounter[0] = 0;
                    //SetDtcFaultState(DTC_ITEM_SECOC_HUT_PDU_FAIL);
                }
                   
            }
        }            
    }
    else if(pCanMsg->canId==0x319)
    {
        if(SecocSdkKeyGetKeyIsValid())
        {
            result = SecocSdkCheckPdu(pCanMsg);
            if(0==result)
            {
                g_dtcCounter[0]=0;
                //ClearDtcFaultState(DTC_ITEM_SECOC_HUT_PDU_FAIL);
            }
            else
            {
                g_dtcCounter[0]++;
                if(g_dtcCounter[0]>=5)
                {
                    g_dtcCounter[0] = 0;
                    //SetDtcFaultState(DTC_ITEM_SECOC_HUT_PDU_FAIL);
                }
                   
            }
        }
    }
    else if(pCanMsg->canId==0x395)
    {
        if(SecocSdkKeyGetKeyIsValid())
        {
            result = SecocSdkCheckPdu(pCanMsg);
            if(0==result)
            {
                g_dtcCounter[0]=0;
                //ClearDtcFaultState(DTC_ITEM_SECOC_HUT_PDU_FAIL);
            }
            else
            {
                g_dtcCounter[0]++;
                if(g_dtcCounter[0]>=5)
                {
                    g_dtcCounter[0] = 0;
                    //SetDtcFaultState(DTC_ITEM_SECOC_HUT_PDU_FAIL);
                }
                   
            }
        }
    }
}
#endif
static void TboxCanRxCycleProcess(void)
{
  //static uint32_t rxCount = 0;
  int16_t ret;
  CanHalMsg_t canMsg;   
  uint8 signalValue = 0;
  Std_ReturnType ret1;

#if(0)
  while(1)
  {    
    // ret = CanHalReceive(g_tboxCan2Handle,&canMsg,0); //Dcan
    if(ret==0)//receive can data success
    {
        //CanBRxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        // EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_2,canMsg.canId);
        SaveCanMsgToBuffer(1,&canMsg);
        // SecocMsgReceiveProcess(&canMsg);        
    }
    else
    {
      break;
    }
  }
  CanMsgTransmitToCpu(1,g_mpuHandle);  
#endif

    ret1 = Com_ReceiveSignalGroup(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx);
    if(ret1 != E_OK)
    {
        g_vehicleInfor.iccLost = 1;
    }
    else
    {
        g_vehicleInfor.iccLost = 0;
    }
    ret1 = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret1 == E_OK)
    {
        g_vehicleInfor.userModeValid = signalValue;
    }
    ret1 = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret1 == E_OK)
    {
        g_vehicleInfor.userMode = signalValue;
    }
    ret1 = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret1 == E_OK)
    {
        g_vehicleInfor.vehicleModeValid = signalValue;
    }
    ret1 = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret1 == E_OK)
    {
        g_vehicleInfor.vehicleMode = signalValue;
    }

 /* if(rxCount<(1000/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
  {
    return;
  }
  if(!g_disableUartTxFlag)
  {
    CanMsgTransmitToCpu(0,g_mpuHandle);
  }*/
}

uint8_t GetVehicleInfor(VehicleInfor_t *vehicleInfor)
{
    vehicleInfor->iccLost = g_vehicleInfor.iccLost;
    vehicleInfor->userModeValid = g_vehicleInfor.userModeValid;
    vehicleInfor->userMode = g_vehicleInfor.userMode;
    vehicleInfor->vehicleModeValid = g_vehicleInfor.vehicleModeValid;
    vehicleInfor->vehicleMode = g_vehicleInfor.vehicleMode;
    return 0;
}

uint8_t CheckVehicleModeIsTransport(void)
{
    if((g_vehicleInfor.vehicleModeValid == 1) && (g_vehicleInfor.vehicleMode == VehMd_3_TRANSPORT))
    {
        return 1;
    }
    return 0;
}

//static void PrintTaskInfo(void);
static uint8_t g_mpuRxDataBuffer[100];

void TaskVehicleDataToCpuInit(void)
{
    // uint16_t timeCount;
    // uint32_t rtosTickCount;
    // int16_t sleepFlag;
    int16_t lastSleepState;
    int16_t sleepCommandHandle;
    // int16_t ret;
    MpuHalFilter_t mpuFilter;
    MpuHalDataPack_t rxPack;
    //
    // ProjectSecocConfig();
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x02;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x02;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,sizeof(g_mpuDriverRxBuffer));
    // TboxCan1Initialize();
    // TboxCan2Initialize();
    // TboxCan3Initialize();
    // TboxCan4Initialize();
    // TboxCan5Initialize();
    // TboxCan6Initialize();  

    CanMsgTansmitToCpuInitialize();
    CanMsgDynamicConfigureInitialize(g_mpuHandle); 
    //cycle process 
    // rtosTickCount = xTaskGetTickCount();
    // timeCount = 0;
    // sleepCommandHandle = PowerManageSdkOpenHandle("ToMpu");

    lastSleepState = 0x01;
    rxPack.pDataBuffer = g_mpuRxDataBuffer;
    rxPack.dataBufferSize = sizeof(g_mpuRxDataBuffer);
    rxPack.dataLength = 0;

    g_vehicleInfor.userModeValid = 0;
    g_vehicleInfor.userMode = 0;
    g_vehicleInfor.vehicleModeValid = 0;
    g_vehicleInfor.vehicleMode = 0;
}

void TaskVehicleDataToCpu(void)
{
    uint16_t timeCount;
    uint32_t rtosTickCount;
    int16_t sleepFlag;
    int16_t lastSleepState;
    int16_t sleepCommandHandle;
    int16_t ret;

    // MpuHalFilter_t mpuFilter;
    MpuHalDataPack_t rxPack;
#if(0)
    //
    // ProjectSecocConfig();
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x02;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x02;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,sizeof(g_mpuDriverRxBuffer));
    // TboxCan1Initialize();
    // TboxCan2Initialize();
    // TboxCan3Initialize();
    // TboxCan4Initialize();
    // TboxCan5Initialize();
    // TboxCan6Initialize();  

    CanMsgTansmitToCpuInitialize();
    CanMsgDynamicConfigureInitialize(g_mpuHandle); 
    //cycle process 
    // rtosTickCount = xTaskGetTickCount();
    timeCount = 0;
    // sleepCommandHandle = PowerManageSdkOpenHandle("ToMpu");

    lastSleepState = 0x01;
    rxPack.pDataBuffer = g_mpuRxDataBuffer;
    rxPack.dataBufferSize = sizeof(g_mpuRxDataBuffer);
    rxPack.dataLength = 0;
#endif
    // while(1)
    {     
        //can receive
        TboxCanRxCycleProcess();
#if(0)
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
        if(timeCount>=(VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
        {
            if(0 == sleepFlag)
            {
            //vehicle_pack_realdata_to_cpu(UartHandle3);
            //vehicle_pack_gbdata_to_cpu(UartHandle3); 
            }
            timeCount = 0;
        }
#endif
        // NodeMissingCheckTimeOut(VEHICLE_TO_CPU_TASK_CYCLE_TIME);     // TODO guanyuan
        //delay
        if((timeCount&0x01)==0x00)
        {      
        	// SecocSdkSyncMessageCycleProcess(g_tboxCan2Handle,10);
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
        // vTaskDelayUntil(&rtosTickCount,VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
        //PrintTaskInfo();
    }  	
}


//void VehicleToCpuUartTxDisable(void)
//{
//	g_disableUartTxFlag = 0x01;
//}
//
//void VehicleToCpuUartTxEnable(void)
//{
//	g_disableUartTxFlag = 0x00;
//}



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