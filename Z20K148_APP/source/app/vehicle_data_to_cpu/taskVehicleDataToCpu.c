#include "taskVehicleDataToCpu.h"
#include "vehicleSignalApp.h"

#include "canHal.h"
#include "mpuHal.h"
#include "logHal.h"
#include "powerManageSdk.h"
#include "secocSdk.h"
#include "canMsgDynamicConfigure.h"
#include "ecuNodeMissingCheck.h"
#include "secocConfig.h"

#include "canMsgToCpu.h"

#include "FreeRTOS.h"
#include "task.h"


#define VEHICLE_TO_CPU_TASK_CYCLE_TIME       5//ms
#define VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME     100//ms

static CanHalMsg_t g_can2DriverRxBuffer[30];
#if(CAN_CHANNEL_NUMBER_MAX == 6)
static CanHalMsg_t g_can1DriverRxBuffer[30];
static CanHalMsg_t g_can3DriverRxBuffer[30];
static CanHalMsg_t g_can4DriverRxBuffer[30];
static CanHalMsg_t g_can5DriverRxBuffer[30];
static CanHalMsg_t g_can6DriverRxBuffer[30];
#endif



static uint8_t g_mpuDriverRxBuffer[300];

static int16_t g_mpuHandle = -1;

static  int16_t g_tboxCan2Handle = -1;
#if(CAN_CHANNEL_NUMBER_MAX == 6)
static  int16_t g_tboxCan1Handle = -1;
static  int16_t g_tboxCan3Handle = -1;
static  int16_t g_tboxCan4Handle = -1;
static  int16_t g_tboxCan5Handle = -1;
static  int16_t g_tboxCan6Handle = -1;
#endif

//static uint8_t g_disableUartTxFlag = 0; 

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

#if(CAN_CHANNEL_NUMBER_MAX == 6)
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
#endif


#if(SECOC_ENABLE == 1)
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
  static uint8_t canMsgReceiveCnt = 0U;
  static uint8_t canIdleCnt = 0U;
  
  while(1)
  {    
    ret = CanHalReceive(g_tboxCan2Handle,&canMsg,0); //Dcan
    if(ret==0)//receive can data success
    {
        //CanBRxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        Can0RxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_2,canMsg.canId);
        SaveCanMsgToBuffer(0,&canMsg);
        canMsgReceiveCnt++;
#if(SECOC_ENABLE == 1)
        SecocMsgReceiveProcess(&canMsg);        
#endif
    }
    else
    {
      break;
    }
  }
  canIdleCnt++;
  if((canMsgReceiveCnt >= 30)||(canIdleCnt>=5))
  {
      CanMsgTransmitToCpu(1,g_mpuHandle);
      canMsgReceiveCnt = 0U;
      canIdleCnt = 0U;
  }
#if(CAN_CHANNEL_NUMBER_MAX == 6)  
    ret = CanHalReceive(g_tboxCan1Handle,&canMsg,0);
    if(ret==0)//receive can data success
    {
        //CanARxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        Can0RxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        //EcuNodeMissingCheckCanIdOnAcan(canMsg.canId);
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_1,canMsg.canId);
        SaveCanMsgToBuffer(0,&canMsg);
        /*if(canMsg.canId==0x140)
        {
          TBOX_PRINT("Acan 140 %d,%02x %02x %02x %02x\r\n",canMsg.dlc,canMsg.canData[0],canMsg.canData[1],canMsg.canData[2],canMsg.canData[3]);
        }*/
    }
    else
    {
      break;
    }
  }

  // while(1)
  // {
  //   ret = CanHalReceive(g_tboxCan3Handle,&canMsg,0);
  //   if(ret==0)//receive can data success
  //   {
  //       //CanCRxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
  //       //to do 
  //       EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_3,canMsg.canId);;//诊断节点监控接口
  //       SaveCanMsgToBuffer(2,&canMsg);
  //   }
  //   else
  //   {
  //     break;
  //   }
  // }
  //   CanMsgTransmitToCpu(2,g_mpuHandle);  

  while(1)
  {
    ret = CanHalReceive(g_tboxCan4Handle,&canMsg,0);
    if(ret==0)//receive can data success
    {
        //CanERxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_4,canMsg.canId);//诊断节点监控接口
        SaveCanMsgToBuffer(3,&canMsg);
    }
    else
    {
      break;
    }
  }  
  CanMsgTransmitToCpu(3,g_mpuHandle);  

  while(1)
  {
    ret = CanHalReceive(g_tboxCan5Handle,&canMsg,0);
    if(ret==0)//receive can data success
    {
        //CanIRxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
        //to do 
        EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_5,canMsg.canId);//诊断节点监控接口
        SaveCanMsgToBuffer(4,&canMsg);
    }
    else
    {
      break;
    }
  }
  CanMsgTransmitToCpu(4,g_mpuHandle); 

  while(1)
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
  CanMsgTransmitToCpu(5,g_mpuHandle);  
#endif
  //
  
 /* if(rxCount<(1000/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
  {
    return;
  }
  if(!g_disableUartTxFlag)
  {
    CanMsgTransmitToCpu(0,g_mpuHandle);
  }*/
}


//static void PrintTaskInfo(void);
static uint8_t g_mpuRxDataBuffer[100];
void TaskVehicleDataToCpu( void *pvParameters )
{
    uint16_t timeCount;
    uint32_t rtosTickCount;
    int16_t sleepFlag;
    int16_t lastSleepState;
    int16_t sleepCommandHandle;
    int16_t ret;
    MpuHalFilter_t mpuFilter;
    MpuHalDataPack_t rxPack;
    //
#if(SECOC_ENABLE == 1)
    ProjectSecocConfig();
#endif
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x02;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x02;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,sizeof(g_mpuDriverRxBuffer));
    TboxCan2Initialize();;
  #if(CAN_CHANNEL_NUMBER_MAX == 6)
    TboxCan1Initialize();
    TboxCan4Initialize();
    TboxCan5Initialize();
    TboxCan6Initialize();  
#endif

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
        if(timeCount>=(VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
        {
            if(0 == sleepFlag)
            {
            //vehicle_pack_realdata_to_cpu(UartHandle3);
            //vehicle_pack_gbdata_to_cpu(UartHandle3); 
            }
            timeCount = 0;
        }
       NodeMissingCheckTimeOut(VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
        //delay
        if((timeCount&0x01)==0x00)
        {      
#if(SECOC_ENABLE == 1)
        	SecocSdkSyncMessageCycleProcess(g_tboxCan2Handle,10);
#endif
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
        vTaskDelayUntil(&rtosTickCount,VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
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