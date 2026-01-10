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
#include "ParameterStoreManageApp.h"
#include "alarmSdk.h"
#include "string.h"
#include "timerHal.h"
#include "remoteControl.h"
#include "peripheralHal.h"
#include "mpuPowerSyncSdk.h"
/****************************** Macro Definitions ******************************/
#define VEHICLE_TO_CPU_TASK_CYCLE_TIME      (5)
#define VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME    (100)
#define CAN2_DRIVER_RX_BUFFER_SIZE          (50)
#define MPU_DRIVER_RX_BUFFER_SIZE           (300)
#define MPU_RX_DATA_BUFFER_SIZE             (100)
#define CAN_MSG_RECEIVE_THRESHOLD           (50)
#define CAN_IDLE_COUNT_THRESHOLD            (5)

#define WORKFLASH_TBOX_RESET_FLAG_LEN       (1U)         // Tbox Reset Flag
#define TEL_10_CAN_MESSAGE_LENGTH           (8U)  
#define ACU_RESET_TBOX_CAN_ID               (0x076U)  
#define ACU_RESET_TBOX_CAN_MSG_TYPE         (1U)
#define ACU_RESET_TBOX_CAN_TIME_CYCLE       (40U)
#define ACU_RESET_TBOX_MAX_SEND_CNT         (2U)
/****************************** Type Definitions ******************************/
typedef enum
{
    ACU_RESET_TBOX_STATE_IDLE           = 0,
    ACU_RESET_TBOX_STATE_AUTU           = 1,
    ACU_RESET_TBOX_STATE_CHECK          = 2,
    ACU_RESET_TBOX_STATE_EXCUTE         = 3,
    ACU_RESET_TBOX_STATE_WAIT           = 4,
    ACU_RESET_TBOX_STATE_PACK_NORMAL    = 5,
    ACU_RESET_TBOX_STATE_SEND_NORMAL    = 6,
    ACU_RESET_TBOX_STATE_NORMAL_WAIT    = 7,
    ACU_RESET_TBOX_STATE_PACK_DEFAULT   = 8,
    ACU_RESET_TBOX_STATE_SEND_DEFAULT   = 9,
    ACU_RESET_TBOX_STATE_DEFAULT_WAIT   = 10,
}AcuResetTboxState_t;

typedef enum
{
    TEL_RESET_FAIL_REASON_NONE              = 0,
    TEL_RESET_FAIL_REASON_OTA_RUNNING       = 1,
    TEL_RESET_FAIL_REASON_XCALL_RUNNING     = 2,
    TEL_RESET_FAIL_REASON_TRANSPORT_MODE    = 3,
    TEL_RESET_FAIL_REASON_AUTU_FAILED       = 4,
}TEL_ResetFailReason_t;

typedef enum
{
    TEL_MODULE_RESET_ST_DEFAULT     = 0,
    TEL_MODULE_RESET_ST_FAILED      = 1,
    TEL_MODULE_RESET_ST_PASS        = 2,
}TEL_ModuleResetState_t;

typedef struct 
{
   uint16_t ACU_AuthRand;
   uint16_t ACU_AuthKey;
   uint8_t  ACU_TelModuleResetReq;
}AcuStatusSignalInfo_t;

typedef enum
{
    TEL_RESET_FAIL_REASON   = 0,
    TEL_MODULE_RESET_ST     = 1,
}AcuReqSignal076SignalId_t;

#pragma pack(push,4)
typedef struct 
{
    AcuReqSignal076SignalId_t reqId;
    CanParseSignal_t signalInfo;
}SignalInfo_t;
#pragma pack(pop)
/****************************** Global Variables ******************************/
static CanHalMsg_t g_can2DriverRxBuffer[CAN2_DRIVER_RX_BUFFER_SIZE];
static uint8_t g_mpuDriverRxBuffer[MPU_DRIVER_RX_BUFFER_SIZE];
static int16_t g_mpuHandle = -1;
static int16_t g_tboxCan2Handle = -1;
static uint8_t g_mpuRxDataBuffer[MPU_RX_DATA_BUFFER_SIZE];

static int16_t g_acuResetCanHandle = -1;
static int16_t g_acuResetTimerHandle = -1;
static AcuStatusSignalInfo_t g_acuSignalVal;
static TEL_ResetFailReason_t g_telResetFailReason = TEL_RESET_FAIL_REASON_NONE;
static TEL_ModuleResetState_t g_telModuleResetSt = TEL_MODULE_RESET_ST_DEFAULT;
static uint8_t g_acuReqSignal076MsgData[TEL_10_CAN_MESSAGE_LENGTH] = {0U};
static SignalInfo_t g_acuReqSignal076 = 
{
    .reqId = TEL_RESET_FAIL_REASON,
    .signalInfo =
    {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)0,
        .bitLength = (uint16_t)8,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
    .reqId = TEL_MODULE_RESET_ST,
    .signalInfo =
    {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)8,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
    },
};
/****************************** Function Declarations *************************/
static void TboxCan2Initialize(void);
static void TboxCanRxCycleProcess(void);
static void AcuResetModuleInit(void);
static void AcuResetTboxStateMachine(void);
static void SetTelResetFailReason(TEL_ResetFailReason_t reason);
static void SetTelModuleResetSt(TEL_ModuleResetState_t st);
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
    if((canIdleCnt >= 100))
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
    TboxCan2Initialize();
    CanMsgTansmitToCpuInitialize();
    CanMsgDynamicConfigureInitialize(g_mpuHandle);  
    AcuResetModuleInit();
    rtosTickCount = xTaskGetTickCount();
    sleepCommandHandle = PowerManageSdkOpenHandle("ToMpu");
    rxPack.pDataBuffer = g_mpuRxDataBuffer;
    rxPack.dataBufferSize = MPU_RX_DATA_BUFFER_SIZE;
    while(1)
    {     
        //can receive
        TboxCanRxCycleProcess();
        AcuResetTboxStateMachine();

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
        //NodeMissingCheckTimeOut(VEHICLE_TO_CPU_TASK_CYCLE_TIME); 
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

/*****************************************************************************
 * Function:        AcuResetModuleInit
 * Description:     Initialize ACU reset module resources (CAN and timer handles)
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Opens CAN channel TBOX_CAN_CHANNEL_2 and allocates a timer handle
 ****************************************************************************/
static void AcuResetModuleInit(void)
{
    g_acuResetCanHandle = CanHalOpen(TBOX_CAN_CHANNEL_2);
    g_acuResetTimerHandle = TimerHalOpen();
}

/*****************************************************************************
 * Function:        GetAcuStatusSignalValue
 * Description:     Read ACU status signals from CAN parsing SDK and fill output structure
 * Input:           stAcuStatusSignalVal - Pointer to ACU status signal value container
 * Output:          stAcuStatusSignalVal - Updated with ACU_AuthRand/ACU_AuthKey/ACU_TelModuleResetReq
 * Return:          None
 * Others:          Internally uses GetCan0SignalConfigure() and CanParseSdkReadSignal()
 ****************************************************************************/
static void GetAcuStatusSignalValue(AcuStatusSignalInfo_t *stAcuStatusSignalVal)
{
    double dataVaule = 0U;    
    const can0_signal_configure_t *pCan0SignalConfigure = NULL;    
    AcuStatusSignalInfo_t *stAcuStatusSignalValTemp = NULL;

    pCan0SignalConfigure = GetCan0SignalConfigure();
    stAcuStatusSignalValTemp = stAcuStatusSignalVal;

    CanParseSdkReadSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB, &pCan0SignalConfigure->ACU_AuthRand, &dataVaule);
    stAcuStatusSignalValTemp->ACU_AuthRand = (uint16_t)dataVaule;

    CanParseSdkReadSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB, &pCan0SignalConfigure->ACU_AuthKey, &dataVaule);
    stAcuStatusSignalValTemp->ACU_AuthKey = (uint16_t)dataVaule;

    CanParseSdkReadSignal(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB, &pCan0SignalConfigure->ACU_TelModuleResetReq, &dataVaule);
    stAcuStatusSignalValTemp->ACU_TelModuleResetReq = (uint8_t)dataVaule;

}

/*****************************************************************************
 * Function:        SetTbox10CanSignaToCanFrame
 * Description:     Pack specified TBOX10 request signal into CAN frame payload buffer
 * Input:           pMsgData     - Pointer to CAN payload buffer
 *                  signalId     - Target signal ID to be packed
 *                  signalValue  - Signal physical value
 * Output:          pMsgData     - Updated payload buffer with packed signal bits
 * Return:          None
 * Others:          Currently supports TEL_RESET_FAIL_REASON and TEL_MODULE_RESET_ST
 ****************************************************************************/
static void SetTbox10CanSignaToCanFrame(uint8_t* pMsgData, AcuReqSignal076SignalId_t signalId, double signalValue)
{
    uint8_t i = 0U;
    uint8_t ret = 1U;
    uint8_t signalSize = 0U;
    const SignalInfo_t *pSignalConfig = NULL;

    switch (signalId)
    {
        case TEL_RESET_FAIL_REASON:
        case TEL_MODULE_RESET_ST:
            pSignalConfig =  (SignalInfo_t *)&g_acuReqSignal076;
            signalSize = (uint8_t)(sizeof(g_acuReqSignal076) / sizeof(pSignalConfig));
            ret = 0U;
            break;

        default:
            break;
    }

    if ((ret == 0U) && (pMsgData != NULL) && (pSignalConfig != NULL))
    {
        ret = 1U;

        for (i = 0U; i < signalSize; i++)
        {
            if (signalId == pSignalConfig->reqId)
            {
                (void)PackSignalToFrame(pMsgData,
                                               VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,
                                               (const CanParseSignal_t*)&pSignalConfig->signalInfo,
                                               signalValue);
                ret = 0U;
                break;
            }
            pSignalConfig++;
        }
    }
}

/*****************************************************************************
 * Function:        AcuResetTboxStateMachine
 * Description:     ACU-triggered TBOX reset state machine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          1) Performs simple auth check based on ACU_AuthRand and ACU_AuthKey
 *                  2) Blocks reset in transport mode / OTA running / E-Call or B-Call running
 *                  3) Uses WorkFlash flag E_PARAMETER_INFO_TBOX_RESET_FLAG for reset persistence
 *                  4) Sends response frame ACU_RESET_TBOX_CAN_ID with TEL reset status and fail reason
 ****************************************************************************/
static void AcuResetTboxStateMachine(void)
{
    static AcuResetTboxState_t acuResetTboxState = ACU_RESET_TBOX_STATE_IDLE;
    static uint8_t acuResetTboxSendCnt = 0U;
    uint16_t calKey = 0U;
    uint8_t transportMode = 0U;
    uint8_t tboxResetFlag = 0U;
    uint32_t length = 0U;
    int16_t ret = 0U;

    GetAcuStatusSignalValue(&g_acuSignalVal);
    WorkFlashVehicleInforRead(E_PARAMETER_INFO_TBOX_RESET_FLAG, &tboxResetFlag, &length);

    switch(acuResetTboxState)
    {
        case ACU_RESET_TBOX_STATE_IDLE:
            if(g_acuSignalVal.ACU_TelModuleResetReq == 0x01)
            {
                acuResetTboxState = ACU_RESET_TBOX_STATE_AUTU;
            }
            else if(tboxResetFlag == 0x01)
            {
                acuResetTboxState = ACU_RESET_TBOX_STATE_WAIT;
            }
            break;

        case ACU_RESET_TBOX_STATE_AUTU:
            if(g_acuSignalVal.ACU_AuthRand != 0)                //rand key != 0
            {
                calKey = ((((g_acuSignalVal.ACU_AuthRand << 5) ^ g_acuSignalVal.ACU_AuthRand) >> 2) ^ g_acuSignalVal.ACU_AuthRand);
                if(calKey == g_acuSignalVal.ACU_AuthKey)
                {
                    acuResetTboxState = ACU_RESET_TBOX_STATE_CHECK;
                }
                else
                {
                    SetTelModuleResetSt(TEL_MODULE_RESET_ST_FAILED);
                    SetTelResetFailReason(TEL_RESET_FAIL_REASON_AUTU_FAILED);
                    acuResetTboxState = ACU_RESET_TBOX_STATE_PACK_NORMAL;
                }
            }
            else
            {
                SetTelModuleResetSt(TEL_MODULE_RESET_ST_FAILED);
                SetTelResetFailReason(TEL_RESET_FAIL_REASON_AUTU_FAILED);
                acuResetTboxState = ACU_RESET_TBOX_STATE_PACK_NORMAL;
            }
            break;

        case ACU_RESET_TBOX_STATE_CHECK:
            WorkFlashVehicleInforRead(E_PARAMETER_INFO_TRANSPORT_MODE, &transportMode, &length);
            if(transportMode == 1) 
            {
                SetTelModuleResetSt(TEL_MODULE_RESET_ST_FAILED);
                SetTelResetFailReason(TEL_RESET_FAIL_REASON_TRANSPORT_MODE);
                acuResetTboxState = ACU_RESET_TBOX_STATE_PACK_NORMAL;
            }
            else if(RemoteControlGetOtaFlag() == 1)
            {
                SetTelModuleResetSt(TEL_MODULE_RESET_ST_FAILED);
                SetTelResetFailReason(TEL_RESET_FAIL_REASON_OTA_RUNNING);
                acuResetTboxState = ACU_RESET_TBOX_STATE_PACK_NORMAL;
            }
            else if((AlarmSdkGetEcallCallState() == 1) || (AlarmSdkGetBcallCallState() == 1))
            {
                SetTelModuleResetSt(TEL_MODULE_RESET_ST_FAILED);
                SetTelResetFailReason(TEL_RESET_FAIL_REASON_XCALL_RUNNING);
                acuResetTboxState = ACU_RESET_TBOX_STATE_PACK_NORMAL;
            }
            else
            {
                TBOX_PRINT("ACU_RESET_TBOX_STATE_EXCUTE\n");
                acuResetTboxState = ACU_RESET_TBOX_STATE_EXCUTE;
            }
            break;
        
        case ACU_RESET_TBOX_STATE_EXCUTE:
            if(tboxResetFlag != 0x01)
            {
                tboxResetFlag = 0x01;
                length = WORKFLASH_TBOX_RESET_FLAG_LEN;
                WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_RESET_FLAG, &tboxResetFlag, length);
                LogHalUpLoadLog("Mcu Excute Reset");
                vTaskDelay(100);
                PeripheralHalMcuHardReset();
                acuResetTboxState = ACU_RESET_TBOX_STATE_WAIT;
            }
            else
            {
                tboxResetFlag = 0x00;
                length = WORKFLASH_TBOX_RESET_FLAG_LEN;
                WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_RESET_FLAG, &tboxResetFlag, length);
                acuResetTboxState = ACU_RESET_TBOX_STATE_IDLE;
            }
            break;

        case ACU_RESET_TBOX_STATE_WAIT:
            if(MpuPowerSyncSdkGetNadModuleStatus() == 0)
            {
                TBOX_PRINT("Tbox Reset Sucess\n");
                LogHalUpLoadLog("Tbox Reset Sucess");
                tboxResetFlag = 0x00;
                length = WORKFLASH_TBOX_RESET_FLAG_LEN;
                WorkFlashVehicleInforStore(E_PARAMETER_INFO_TBOX_RESET_FLAG, &tboxResetFlag, length);
                SetTelResetFailReason(TEL_RESET_FAIL_REASON_NONE);
                SetTelModuleResetSt(TEL_MODULE_RESET_ST_PASS);
                acuResetTboxState = ACU_RESET_TBOX_STATE_PACK_NORMAL;
            }
            break;

        case ACU_RESET_TBOX_STATE_PACK_NORMAL:
            memset(g_acuReqSignal076MsgData, 0x00, sizeof(g_acuReqSignal076MsgData));
            SetTbox10CanSignaToCanFrame(g_acuReqSignal076MsgData, TEL_RESET_FAIL_REASON, g_telResetFailReason);
            SetTbox10CanSignaToCanFrame(g_acuReqSignal076MsgData, TEL_MODULE_RESET_ST, g_telModuleResetSt);
            acuResetTboxState = ACU_RESET_TBOX_STATE_SEND_NORMAL;
            break;

        case ACU_RESET_TBOX_STATE_SEND_NORMAL:
            ret = CanHalTransmitQueued(g_acuResetCanHandle, ACU_RESET_TBOX_CAN_ID, g_acuReqSignal076MsgData, 
                        sizeof(g_acuReqSignal076MsgData), ACU_RESET_TBOX_CAN_MSG_TYPE, CAN_TX_PRIO_NORMAL);
            if(ret != 0U)
            {
                LogHalUpLoadLog("Tbox Reset nm trans error,ret=%d", ret);
            }
            TimerHalStartTime(g_acuResetTimerHandle, ACU_RESET_TBOX_CAN_TIME_CYCLE);
            acuResetTboxState = ACU_RESET_TBOX_STATE_NORMAL_WAIT;
            break;

        case ACU_RESET_TBOX_STATE_NORMAL_WAIT:
            if(TimerHalIsTimeout(g_acuResetTimerHandle) == 0)
            {
                acuResetTboxSendCnt++;
                acuResetTboxState = ACU_RESET_TBOX_STATE_SEND_NORMAL;
            }
            else if(acuResetTboxSendCnt >= ACU_RESET_TBOX_MAX_SEND_CNT)
            {
                acuResetTboxSendCnt = 0U;
                acuResetTboxState = ACU_RESET_TBOX_STATE_PACK_DEFAULT;
            }
            break;

        case ACU_RESET_TBOX_STATE_PACK_DEFAULT:
            memset(g_acuReqSignal076MsgData, 0x00, sizeof(g_acuReqSignal076MsgData));
            acuResetTboxState = ACU_RESET_TBOX_STATE_SEND_DEFAULT;
            break;

        case ACU_RESET_TBOX_STATE_SEND_DEFAULT:
            ret = CanHalTransmitQueued(g_acuResetCanHandle, ACU_RESET_TBOX_CAN_ID, g_acuReqSignal076MsgData, 
                        sizeof(g_acuReqSignal076MsgData), ACU_RESET_TBOX_CAN_MSG_TYPE, CAN_TX_PRIO_NORMAL);
            if(ret != 0U)
            {
                LogHalUpLoadLog("Tbox Reset default trans error,ret=%d", ret);
            }
            TimerHalStartTime(g_acuResetTimerHandle, ACU_RESET_TBOX_CAN_TIME_CYCLE);
            acuResetTboxState = ACU_RESET_TBOX_STATE_DEFAULT_WAIT;

        case ACU_RESET_TBOX_STATE_DEFAULT_WAIT:
            if(TimerHalIsTimeout(g_acuResetTimerHandle) == 0)
            {
                acuResetTboxSendCnt++;
                acuResetTboxState = ACU_RESET_TBOX_STATE_SEND_DEFAULT;
            }
            else if(acuResetTboxSendCnt >= ACU_RESET_TBOX_MAX_SEND_CNT)
            {
                acuResetTboxSendCnt = 0U;
                acuResetTboxState = ACU_RESET_TBOX_STATE_IDLE;
                TBOX_PRINT("Tbox Reset Done\n");
            }
            break;

        default:
            break;
    }
}

/*****************************************************************************
 * Function:        SetTelResetFailReason
 * Description:     Set global TEL reset failure reason
 * Input:           reason - TEL reset failure reason enum
 * Output:          None
 * Return:          None
 * Others:          Updates g_telResetFailReason
 ****************************************************************************/
static void SetTelResetFailReason(TEL_ResetFailReason_t reason)
{
    g_telResetFailReason = reason;
}

/*****************************************************************************
 * Function:        SetTelModuleResetSt
 * Description:     Set global TEL module reset state
 * Input:           st - TEL module reset state enum
 * Output:          None
 * Return:          None
 * Others:          Updates g_telModuleResetSt
 ****************************************************************************/
static void SetTelModuleResetSt(TEL_ModuleResetState_t st)
{
    g_telModuleResetSt = st;
}