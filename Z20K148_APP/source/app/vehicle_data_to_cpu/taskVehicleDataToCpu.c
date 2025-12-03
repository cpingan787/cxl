/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: taskVehicleDataToCpu.c
 Author: 
 Created Time: 
 Description: 
 Others: 
 *************************************************/

/****************************** include ***************************************/
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

/****************************** Macro Definitions ******************************/
#define VEHICLE_TO_CPU_TASK_CYCLE_TIME       (5)
#define VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME     (100)
#define CAN2_DRIVER_RX_BUFFER_SIZE           (50)
#define MPU_DRIVER_RX_BUFFER_SIZE            (300)
#define MPU_RX_DATA_BUFFER_SIZE              (100)
#define CAN_MSG_RECEIVE_THRESHOLD            (50)
#define CAN_IDLE_COUNT_THRESHOLD             (5)

/****************************** Type Definitions ******************************/

/****************************** Global Variables ******************************/
static CanHalMsg_t g_can2DriverRxBuffer[CAN2_DRIVER_RX_BUFFER_SIZE];
static uint8_t g_mpuDriverRxBuffer[MPU_DRIVER_RX_BUFFER_SIZE];
static int16_t g_mpuHandle = -1;
static int16_t g_tboxCan2Handle = -1;
static uint8_t g_mpuRxDataBuffer[MPU_RX_DATA_BUFFER_SIZE];
/****************************** Function Declarations *************************/
static void TboxCan2Initialize(void);
static void TboxCanRxCycleProcess(void);

/****************************** Private Function Implementations ***************/
/*=================================================
   Function:        TboxCan2Initialize
   Description:     Initialize TBOX CAN2 channel
   Input:           None
   Output:          None
   Return:          None
   Others:          Opens CAN2 channel, sets filter configuration
                    Enables transmit loopback mode
                    Configures receive buffer
  =================================================*/
static void TboxCan2Initialize(void)
{
    CanHalMsgFilter_t canFilter;  
    g_tboxCan2Handle = CanHalOpen(TBOX_CAN_CHANNEL_2);
    if(g_tboxCan2Handle < 0)//invalid handle
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
    CanHalSetRxBuffer(g_tboxCan2Handle,g_can2DriverRxBuffer,CAN2_DRIVER_RX_BUFFER_SIZE);  
}

/*=================================================
   Function:        TboxCanRxCycleProcess
   Description:     Process TBOX CAN2 channel data reception in cycle
   Input:           None
   Output:          None
   Return:          None
   Others:          Receives CAN messages from CAN2 channel
                    Dispatches received messages to appropriate handlers
                    Performs node missing check
                    Saves messages to buffer
                    Transmits messages to CPU when buffer threshold is reached
  =================================================*/
static void TboxCanRxCycleProcess(void)
{
    int16_t ret = 0U;
    CanHalMsg_t canMsg;   
    static uint8_t canMsgReceiveCnt = 0U;
    static uint8_t canIdleCnt = 0U;
    
    while(1)
    {    
      ret = CanHalReceive(g_tboxCan2Handle,&canMsg,0); 
      if(ret == 0)
      {
          //CanBRxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
          Can0RxCanMsgDispatch(canMsg.canId,canMsg.dlc,canMsg.canData);
          //to do 
          EcuNodeMissingCheckCanId(TBOX_CAN_CHANNEL_2,canMsg.canId);
          SaveCanMsgToBuffer(0,&canMsg);
          canMsgReceiveCnt++;
      }
      else
      {
        break;
      }
    }
    canIdleCnt++;
    if((canMsgReceiveCnt >= CAN_MSG_RECEIVE_THRESHOLD)||(canIdleCnt >= CAN_IDLE_COUNT_THRESHOLD))
    {
        CanMsgTransmitToCpu(1,g_mpuHandle);
        canMsgReceiveCnt = 0U;
        canIdleCnt = 0U;
    }
}

/****************************** Public Function Implementations ***************/
/*=================================================
   Function:        TaskVehicleDataToCpu
   Description:     FreeRTOS task for handling vehicle data transmission to CPU
   Input:           pvParameters - FreeRTOS task parameter (not used)
   Output:          None
   Return:          None
   Others:          Initializes MPU and CAN2 interfaces
                    Processes CAN message reception in cycle
                    Manages power sleep state and acknowledgment
                    Handles vehicle data transmission to CPU
                    Performs node missing check
  =================================================*/
void TaskVehicleDataToCpu( void *pvParameters )
{
    uint16_t timeCount = 0U;
    uint32_t rtosTickCount = 0U;
    int16_t sleepFlag = 0U;
    int16_t lastSleepState = 0x01U;
    int16_t sleepCommandHandle = -1;
    int16_t ret = 0U;
    MpuHalFilter_t mpuFilter = {0U};
    MpuHalDataPack_t rxPack = {0U};
    
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x02;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x02;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,MPU_DRIVER_RX_BUFFER_SIZE);
    TboxCan2Initialize();;
    CanMsgTansmitToCpuInitialize();
    CanMsgDynamicConfigureInitialize(g_mpuHandle);  
    rtosTickCount = xTaskGetTickCount();
    sleepCommandHandle = PowerManageSdkOpenHandle("ToMpu");
    rxPack.pDataBuffer = g_mpuRxDataBuffer;
    rxPack.dataBufferSize = MPU_RX_DATA_BUFFER_SIZE;
    while(1)
    {     
        //can receive
        TboxCanRxCycleProcess();

        sleepFlag = PowerManageSdkGetSleepState(sleepCommandHandle);
        if(sleepFlag != 0)
        {        
            if(lastSleepState != sleepFlag)
            {
              
            }     
        }
        else
        {
            if(lastSleepState != sleepFlag)
            {
                PowerManageSdkSetSleepAck(sleepCommandHandle);
            } 
        }
        lastSleepState = sleepFlag;
        timeCount++;
        if(timeCount >= (VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME / VEHICLE_TO_CPU_TASK_CYCLE_TIME))
        {
            if(0 == sleepFlag)
            {
                //vehicle_pack_realdata_to_cpu(UartHandle3);
                //vehicle_pack_gbdata_to_cpu(UartHandle3); 
            }
            timeCount = 0;
        }
        NodeMissingCheckTimeOut(VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
        if((timeCount & 0x01) == 0x00)
        {      
            //CanRxCanMsgCycleCheck(VEHICLE_TO_CPU_TASK_CYCLE_TIME*2);  
            rxPack.dataLength = 0;
            ret = MpuHalReceive(g_mpuHandle,&rxPack,0); 
            if(MPU_HAL_STATUS_OK == ret)
            {
                CanMsgToCpuConfigureSyncCycleProcess(&rxPack,10);
            }
            else
            {
                CanMsgToCpuConfigureSyncCycleProcess(NULL,10);
            }
        }
        vTaskDelayUntil(&rtosTickCount,VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
    }  	
}
