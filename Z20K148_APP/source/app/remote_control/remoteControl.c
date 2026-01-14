/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: remoteControl.c
 Author: Simon
 Created Time: 2025-09-24
 Description: Vehicle Remote Control Module
              This module handles remote control functionality for vehicle systems,
              including command processing, state machine management,
              certification process, and communication with various ECUs.
              It supports multiple remote control operations such as door locking,
              engine starting, HVAC control, and other vehicle functions.
 Others: 
 *************************************************/
 /****************************** include ***************************************/
#include "stdlib.h"
#include "canHal.h"
#include "mpuHal.h"
#include "remoteControlCanSignal.h"
#include "remoteControl.h"
#include "peripheralHal.h"
#include "canParseSdk.h"
#include "vehicleSignalApp.h" 
#include "mpuHal.h"
#include "timerHal.h"
#include "FreeRTOS.h"
#include "task.h"
#include "string.h"
#include "logHal.h"
#include "udsDidFunction.h"
#include "autosarNmSdk.h"
#include "canPeriodTask.h"
/****************************** Macro Definitions ******************************/
#define REMOTE_CONTROL_ECU_MAX_NUM                  (7U)
#define REMOTE_CONTROL_ECU_CMD_MAX_NUM              (20U)
#define REMOTE_CONTROL_HVAC_CMD_NUM                 (10U)
#define REMOTE_CONTROL_PEPS_CMD_NUM                 (4U)
#define REMOTE_CONTROL_BCM_CMD_NUM                  (12U)
#define REMOTE_CONTROL_HVSM_CMD_NUM                 (8U)
#define REMOTE_CONTROL_PLGM_CMD_NUM                 (1U)
#define REMOTE_CONTROL_HOD_CMD_NUM                  (1U)
#define REMOTE_CONTROL_SEND_CAN_SIZE                (8U)
#define REMOTE_CONTROL_DATA_UART_RECEIVE_BUF_SIZE   (200U)
#define REMOTE_CONTROL_UART_SEND_BUF_SIZE           (64U)
#define REMOTE_CONTROL_PRE_CHECK_CNT                (20U)

#define REMOTE_CONTROL_AID                          (0x02U)
#define REMOTE_CONTROL_MID                          (0x03U)
#define REMOTE_CONTROL_SUBCMD                       (0x01U)
#define REMOTE_CONTROL_SUBCOMMAND_ACK               (0x6EU)
#define REMOTE_CONTROL_SUBCOMMAND_RESULT            (0x6FU)
#define REMOTE_CONTROL_ACK_CTRL_CMD                 (0x01U)
//cmd type
#define REMOTE_CONTROL_CMD_CONTROL_TYPE             (0x0U)
#define REMOTE_CONTROL_CMD_WAKE_TYPE                (0x1U)
#define REMOTE_CONTROL_CMD_OTA_TYPE                 (0x2U)

#define REMOTE_CONTROL_BCM_REQ_MAX_CNT              (2U)
#define REMOTE_CONTROL_PEPS_REQ_MAX_CNT             (2U)
#define REMOTE_CONTROL_TRANS_MAX_COUNT              (3U)

#define ESK_LENGTH                                  (16U)
#define RANDOM_LENGTH                               (8U)
//error code
#define REMOTE_CONTROL_ERR_CODE_SUCCESS             (0x0U)
#define REMOTE_CONTROL_ERR_CODE_TIME_OUT            (0x1U)
#define REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION   (0x2U)
#define REMOTE_CONTROL_ERR_CODE_INVALID_CMD         (0x4U)
#define REMOTE_CONTROL_ERR_CODE_EXCUTE_ERROR        (0x6U)
#define REMOTE_CONTROL_ERR_CODE_NO_NAME             (0xAU)
#define REMOTE_CONTROL_ERR_CODE_FUC_FORBID          (0xFU)
#define REMOTE_CONTROL_ERR_HAZARD_LAMP_ON           (0x15U)
#define REMOTE_CONTROL_ERR_HAZARD_LAMP_OFF          (0x16U)

#define REMOTE_CONTROL_OTA_AND_WAKE_RESULT          (0U)
/****************************** Type Definitions ******************************/
typedef enum
{   
    ECU_NULL_E  = 0u,
    ECU_HVAC_E  = 1U,
    ECU_PEPS_E  = 2U,
    ECU_BCM_E   = 3U,
    ECU_HVSM_E  = 4U,
    ECU_PLGM_E  = 7U,
    ECU_HOD_E   = 13U,
}RemoteControlEcuId_t;

typedef enum
{
    RemoteControlResult_Success_e       = 0U,    
    RemoteControlResult_Fail_e          = 1U,      
    RemoteControlResult_Processing_e    = 2U,  
}RemoteControlProcessResult_t;

typedef enum
{
    RemoteControlWakeUpFlag_NotKeep_e   = 0U,
    RemoteControlWakeUpFlag_Keep_e      = 1U,
}RemoteControlWakeUpFlag_t;
typedef enum
{
    REMOTE_CONTROL_CAN_FD_USE = 1U,
    REMOTE_CONTROL_CAN_FD_NOT_USE = 0U,
}RemoteControlCanFdUse_t;

typedef enum
{
    REMOTE_CONTROL_BCM_REQ_AHTU_TIME    = 199U,
    REMOTE_CONTROL_BCM_CHECK_AHTU_TIME  = 299U,
    REMOTE_CONTROL_PEPS_REQ_AHTU_TIME   = 199U,
    REMOTE_CONTROL_PEPS_CHECK_AHTU_TIME = 299U,
    REMOTE_CONTROL_TRANS_CYCLE_TIME     = 39U, //40ms
    REMOTE_CONTROL_TRANS_SEPE_TIME      = 119U,
    REMOTE_CONTROL_PLGM_SEPE_TIME       = 99U,
    REMOTE_CONTROL_PLGM_CLOSE_WAIT_TIME = 199U,
    REMOTE_CONTROL_CHECK_EXCUTE_TIME    = 15999U,
    REMOTE_CONTROL_SLEEP_FORBID_TIME    = 30000U,
    REMOTE_CONTROL_PRE_CHECK_TIME       = 999U,
}RemoteControlTimeout_t;
typedef enum
{
    REMOTE_CONTROL_GW_BCM_E                 = 0x046,
    REMOTE_CONTROL_GW_PEPS_E                = 0x04D,
}RemoteControlReceiveCanId_t;

typedef RemoteControlProcessResult_t (*RemoteControlPreCheckFunc)(void);
typedef RemoteControlProcessResult_t (*RemoteControlCertificationFunc)(void);

typedef struct
{
    RemoteControlCmdId_t cmdId;
    RemoteControlPreCheckFunc checkFunc; 
    RemoteControlCertificationFunc certificationFunc;
} RemoteControlEntry_t;

typedef struct 
{
    RemoteControlEcuId_t ecuId;
    RemoteControlEntry_t cmdTable[REMOTE_CONTROL_ECU_CMD_MAX_NUM];
    uint8_t cmdCount;
}RemoteControlTotalTable_t;

typedef enum
{
    PROCESS_SIGNAL_STATE_IDLE,
    PROCESS_SIGNAL_STATE_NORMAL_PACK,      
    PROCESS_SIGNAL_STATE_NORMAL_TRANS,     
    PROCESS_SIGNAL_STATE_NORMAL_WAIT,      
    PROCESS_SIGNAL_STATE_SPECIAL_PACK,     
    PROCESS_SIGNAL_STATE_SPECIAL_TRANS,   
    PROCESS_SIGNAL_STATE_SPECIAL_WAIT,     
    PROCESS_SIGNAL_STATE_CHECK_SIGNAL,     
    PROCESS_SIGNAL_STATE_PLGM_STEP,
    PROCESS_SIGNAL_STATE_CLOSE_PLGM_STEP,       
} ProcessSignalState_t;

typedef enum
{
    REMOTE_CONTROL_REQ_WAKE_STATUS_IDLE,
    REMOTE_CONTROL_REQ_WAKE_STATUS_NORMAL,          
} RemoteControlReqWakeStatus;

typedef enum
{
    REMOTE_CONTROL_OTA_FLAG_IDLE,
    REMOTE_CONTROL_OTA_FLAG_ING,
} RemoteControlOtaFlag_t;
/****************************** Function Declarations *************************/
static void RemoteControlStateMachine(void);
static void RemoteControlCmdProcess(void);
static RemoteControlEntry_t* RemoteControlFindCmdEntry(RemoteControlEcuId_t ecuId, RemoteControlCmdId_t cmdId);
static RemoteControlProcessResult_t RemoteControlCheckAcSpeedSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcFrontDefSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcRearDefSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcTempSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcAirClcleSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcWindExitModeFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcReqSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcAutostSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckAcIonSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckEngineSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckEngineMode2OnFun(void);
static RemoteControlProcessResult_t RemoteControlCheckPowerSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckEngineEnableFun(void);
static RemoteControlProcessResult_t RemoteControlCheckMidCtrlLockFun(void);
static RemoteControlProcessResult_t RemoteControlCheckLowBeamSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckHornSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckWinSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckHazardLampSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckTrunkAjarFun(void);
static RemoteControlProcessResult_t RemoteControlCheckSunRoofSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckLeftTurnLampFun(void);
static RemoteControlProcessResult_t RemoteControlCheckParkLampSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckWinVentilateSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckMidCtrlFbdLockFun(void);
static RemoteControlProcessResult_t RemoteControlCheckSeatHeatSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckSeatVentilateOnFun(void);
static RemoteControlProcessResult_t RemoteControlCheckDoorsSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckDefaultFun(void);
static RemoteControlProcessResult_t RemoteControlPepsCertification(void);
static RemoteControlProcessResult_t RemoteControlBcmCertification(void);
static RemoteControlProcessResult_t CheckPepsCommandResult(void);
static RemoteControlProcessResult_t CheckHvsmCommandResult(void);
static RemoteControlProcessResult_t CheckHvacCommandResult(void);
static RemoteControlProcessResult_t CheckBcmCommandResult(void);
static RemoteControlProcessResult_t CheckPlgmCommandResult(void);
static RemoteControlProcessResult_t RemoteControlCheckResCanSignal(void);
static RemoteControlProcessResult_t RemoteControlCheckAcTempAutoSetFun(void);
static RemoteControlProcessResult_t RemoteControlCheckHazardLampOffFun(void);
static void RemoteControlCertificationProcess(void);
static void RemoteControlHandleSignalProcess(void);
static void RemoteControlSendResultProcess(void);
static void RemoteControlPreCheckProcess(void);
static void RemoteControlSendAck(void);
static void RemoteControlNormalPackReqCanSignal(void);
static void RemoteControlSendResult(uint8_t msgtype, uint16_t errorcode, uint16_t ecuid, uint8_t cmdid, uint8_t paravalue);
static void RemoteControlSpecialPackReqCanSignal(void);
static void RemoteControlStartStateMachine(void);
static void RemoteControlSetKeepWakeFlag(uint8_t keepWakeFlag);
static void RemoteControlForbidSleepCheck(void);
static uint8_t RemoteControlMapEcuIdToIndex(RemoteControlEcuId_t ecuId);
static void BcmAuthCalcKey(const uint8_t canRandom[8], const uint8_t esk[16], uint8_t outKey[8]);
static void PepsAuthCalcKey8(const uint8_t rnd[8], const uint8_t esk[16], uint8_t out[8]);
static void RemoteCtrlSignalValSet(uint8_t *buf, RemoteControlReqSignalId_t sig, double value);
static void RemoteConreolReqWakeStateMachine(void);
static void RemoteControlSendReqWakeUpResult(void);
static void RemoteControlSendIntoOtaModeResult(void);
static void RemoteControlSetTotalState(RemoteControlState_t state);
//static uint64_t BytesToU64Le(const uint8_t in[8]);
/****************************** Global Variables ******************************/
static uint8_t g_remoteControlCanBuf[REMOTE_CONTROL_SEND_CAN_SIZE] = {0};
static volatile RemoteControlEcuId_t g_remoteControlEcuId = ECU_NULL_E;
static volatile RemoteControlCmdId_t g_remoteControlCmdId = CMD_DEFAULT_E;
static uint8_t g_remoteControlParamValue = 0U;
static RemoteControlState_t g_remoteControlTotalState = RemoteControlStateIdle;
static RemoteControlStatusSignalInfo_t g_remoteControlSignalInfo;
static int16_t g_remoteControlAuthTimerHandle = -1;
static int16_t g_remoteControlTransTimerHandle = -1;
static int16_t g_remoteControlSleepForrbidHandle = -1;
static int16_t g_remoteControlPreCheckTimerHandle = -1;
static int16_t g_remoteControlUartHandle = -1;
static uint8_t g_remoteControlDataRcevBuf[REMOTE_CONTROL_DATA_UART_RECEIVE_BUF_SIZE] = {0};
static uint8_t g_remoteControlDataBuffer[REMOTE_CONTROL_DATA_UART_RECEIVE_BUF_SIZE] = {0};
static uint8_t g_remoteControlSendBuffer[REMOTE_CONTROL_UART_SEND_BUF_SIZE] = {0};
static MpuHalDataPack_t g_remoteControlReceivePack;
static MpuHalDataPack_t g_remoteControlSendPack;
static uint8_t g_remoteControlESK[ESK_LENGTH] = {0};
static uint8_t g_remoteControlPlgmFrameTime = 0U;
static uint8_t g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_SUCCESS;
static uint8_t g_remoteControlKeepWakeFlag = 0U;
static int16_t g_remoteControlCan1Handle = -1;
static uint8_t g_randomPepsArray[RANDOM_LENGTH] = {0};
static uint8_t g_randomBcmArray[RANDOM_LENGTH] = {0};
static uint8_t g_remoteControlHvacPepsCheck = 0U;
static uint8_t g_remoteControlHvsmPepsCheck = 0U;
static uint8_t g_hvacSignalSet[20] = {0U};
static uint8_t g_remoteControlReqWakeByte = 0U;
static uint32_t g_remoteControReqWakeTime = 0U;
static RemoteControlReqWakeStatus g_remoteControlReqWakeStatus = REMOTE_CONTROL_REQ_WAKE_STATUS_IDLE;
static uint8_t g_remoteControlOTAFlag = 0U;
static uint32_t g_remoteControlOTATime = 0U;

static RemoteControlTotalTable_t g_remoteControlLocalMap[REMOTE_CONTROL_ECU_MAX_NUM] = 
{
    {ECU_HVAC_E,
        {
            {CMD_AC_SPEED_SET_E,        RemoteControlCheckAcSpeedSetFun         ,RemoteControlPepsCertification},
            {CMD_AC_FRONT_DEF_SET_E,    RemoteControlCheckAcFrontDefSetFun      ,RemoteControlPepsCertification},
            {CMD_AC_REAR_DEF_SET_E,     RemoteControlCheckAcRearDefSetFun       ,RemoteControlPepsCertification},
            {CMD_AC_TEMP_SET_E,         RemoteControlCheckAcTempSetFun          ,RemoteControlPepsCertification},
            {CMD_AC_AIR_CAL_REQ_E,      RemoteControlCheckAcAirClcleSetFun      ,RemoteControlPepsCertification},
            {CMD_AC_WIND_EXIT_MODE_E,   RemoteControlCheckAcWindExitModeFun     ,RemoteControlPepsCertification},
            {CMD_AC_REQ_E,              RemoteControlCheckAcReqSetFun           ,RemoteControlPepsCertification},
            {CMD_AC_AUTOST_E,           RemoteControlCheckAcAutostSetFun        ,RemoteControlPepsCertification},
            {CMD_AC_ION_REQ_E,          RemoteControlCheckAcIonSetFun           ,RemoteControlPepsCertification},
            {CMD_AC_TEMP_AUTO_SET_E,    RemoteControlCheckAcTempAutoSetFun      ,RemoteControlPepsCertification},
        },
        REMOTE_CONTROL_HVAC_CMD_NUM,
    },
    {ECU_PEPS_E,
        {
            {CMD_ENGINE_SET_E,          RemoteControlCheckEngineSetFun          ,RemoteControlPepsCertification},
            {CMD_ENGINE_MODE_2_ON_E,    RemoteControlCheckEngineMode2OnFun      ,RemoteControlPepsCertification},
            {CMD_POWER_SET_E,           RemoteControlCheckPowerSetFun           ,RemoteControlPepsCertification},
            {CMD_ENGINE_ENABLE_E,       RemoteControlCheckEngineEnableFun       ,RemoteControlPepsCertification},
        },
        REMOTE_CONTROL_PEPS_CMD_NUM,
    },
    {ECU_BCM_E,
        {
            {CMD_MID_CTRL_LOCK_E,       RemoteControlCheckMidCtrlLockFun        ,RemoteControlBcmCertification},
            {CMD_LOW_BEAM_SET_E,        RemoteControlCheckLowBeamSetFun         ,RemoteControlBcmCertification},
            {CMD_HORN_SET_E,            RemoteControlCheckHornSetFun            ,RemoteControlBcmCertification},
            {CMD_WIN_SET_E,             RemoteControlCheckWinSetFun             ,RemoteControlBcmCertification},
            {CMD_SUN_ROOF_SET_E,        RemoteControlCheckSunRoofSetFun         ,RemoteControlBcmCertification},
            {CMD_PARK_LAMP_SET_E,       RemoteControlCheckParkLampSetFun        ,RemoteControlBcmCertification},
            {CMD_HAZARD_LAMP_SET_E,     RemoteControlCheckHazardLampSetFun      ,RemoteControlBcmCertification},
            {CMD_LEFT_TURN_LAMP_E,      RemoteControlCheckLeftTurnLampFun       ,RemoteControlBcmCertification},
            {CMD_TRUNK_AJAR_E,          RemoteControlCheckTrunkAjarFun          ,RemoteControlBcmCertification},
            {CMD_WIN_VENTILATE_SET_E,   RemoteControlCheckWinVentilateSetFun    ,RemoteControlBcmCertification},
            {CMD_MID_CTRL_FBD_LOCK_E,   RemoteControlCheckMidCtrlFbdLockFun     ,RemoteControlBcmCertification},
            {CMD_HAZARD_LAMP_OFF_E,     RemoteControlCheckHazardLampOffFun      ,RemoteControlBcmCertification},
        },
        REMOTE_CONTROL_BCM_CMD_NUM,
    },
    {ECU_HVSM_E,
        {
            {CMD_M_SEAT_HEAT_SET_E,     RemoteControlCheckSeatHeatSetFun        ,RemoteControlPepsCertification},
            {CMD_M_SEAT_VENTILATE_E,    RemoteControlCheckSeatVentilateOnFun    ,RemoteControlPepsCertification},
            {CMD_S_SEAT_HEAT_SET_E,     RemoteControlCheckSeatHeatSetFun        ,RemoteControlPepsCertification},
            {CMD_S_SEAT_VENTILATE_E,    RemoteControlCheckSeatVentilateOnFun    ,RemoteControlPepsCertification},
            {CMD_RL_SEAT_HEAT_SET_E,    RemoteControlCheckSeatHeatSetFun        ,RemoteControlPepsCertification},
            {CMD_RL_SEAT_VENTILATE_E,   RemoteControlCheckSeatVentilateOnFun    ,RemoteControlPepsCertification},
            {CMD_RR_SEAT_HEAT_SET_E,    RemoteControlCheckSeatHeatSetFun        ,RemoteControlPepsCertification},
            {CMD_RR_SEAT_VENTILATE_E,   RemoteControlCheckSeatVentilateOnFun    ,RemoteControlPepsCertification},
        },
        REMOTE_CONTROL_HVSM_CMD_NUM,
    }, 
    {ECU_PLGM_E,
        {
            {CMD_DOORS_SET_E,            RemoteControlCheckDoorsSetFun           ,RemoteControlBcmCertification},
        },
        REMOTE_CONTROL_PLGM_CMD_NUM,
    },
    {ECU_HOD_E,
        {
            {CMD_DEFAULT_E,             RemoteControlCheckDefaultFun            ,NULL},
        },
        REMOTE_CONTROL_HOD_CMD_NUM,
    },
};

/****************************** Public Function Implementations ***************/
/*************************************************
 Function:        TaskAppVehicleRemoteControl
 Description:     Task for handling vehicle remote control functionality
 Input:           pvParameters - Task parameters (not used)
 Output:          None
 Return:          None
 Others:          Manages MPU communication for remote control
                 Handles receive buffer and filters configuration
                 Implements main control loop for remote commands
*************************************************/
void TaskAppVehicleRemoteControl( void *pvParameters )  
{
    int16_t ret = -1;
    MpuHalFilter_t filter;
    g_remoteControlUartHandle = MpuHalOpen();
    g_remoteControlCan1Handle = CanHalOpen(TBOX_CAN_CHANNEL_2);
    g_remoteControlAuthTimerHandle = TimerHalOpen();
    g_remoteControlTransTimerHandle = TimerHalOpen();
    g_remoteControlSleepForrbidHandle = TimerHalOpen();
    g_remoteControlPreCheckTimerHandle = TimerHalOpen();
    filter.aid = 0x02;
    filter.midMin = 0x03;
    filter.midMax = 0x03;
    MpuHalSetRxFilter(g_remoteControlUartHandle,&filter);
    MpuHalSetRxBuffer(g_remoteControlUartHandle,g_remoteControlDataRcevBuf,sizeof(g_remoteControlDataRcevBuf));
    g_remoteControlReceivePack.pDataBuffer = g_remoteControlDataBuffer;
    g_remoteControlReceivePack.dataBufferSize = sizeof(g_remoteControlDataBuffer);
    while(1)
    {
        ret = MpuHalReceive(g_remoteControlUartHandle,&g_remoteControlReceivePack,0);
        if(ret == MPU_HAL_STATUS_OK)
        {
            RemoteControlCmdProcess();
        }
        RemoteControlStateMachine();
        RemoteConreolReqWakeStateMachine();
        //tbd for remote ota
        vTaskDelay(pdMS_TO_TICKS(5));
    }
}

/*************************************************
 Function:        RemoteControlStateMachine
 Description:     Implements the remote control state machine logic
 Input:           None
 Output:          None
 Return:          None
 Others:          Handles different states of remote control process
                 Transitions between idle, pre-check, certification, signal processing and result sending
                 Calls corresponding handler functions based on current state
*************************************************/
static void RemoteControlStateMachine(void)
{
    RemoteControlGetSignalValue(&g_remoteControlSignalInfo);
    RemoteControlForbidSleepCheck();
    switch(g_remoteControlTotalState)
    {
        case RemoteControlStateIdle:
            break;

        case RemoteControlStatePreCheck:
            RemoteControlPreCheckProcess();
            break;

        case RemoteControlStateCertification:
            RemoteControlCertificationProcess();
            break;

        case RemoteControlStateProcessSignal:
            RemoteControlHandleSignalProcess();
            break;

        case RemoteControlStateSendResult:
            RemoteControlSendResultProcess();
            break;

        default:
            break;
    }
}

/*************************************************
 Function:        RemoteControlCmdProcess
 Description:     Processes incoming remote control commands
 Input:           None
 Output:          None
 Return:          None
 Others:          Validates received command packets
                 Handles different command types (control, wake, OTA)
                 Initiates state machine for valid control commands
                 Sends acknowledgment and error responses
*************************************************/
static void RemoteControlCmdProcess(void)
{
    uint8_t messageType = 0xFFU;
    uint16_t ecuId = 0U;   
    uint8_t cmdId = 0U;

    if((g_remoteControlReceivePack.aid == REMOTE_CONTROL_AID) && 
    (g_remoteControlReceivePack.mid == REMOTE_CONTROL_MID)&&
    ((g_remoteControlReceivePack.subcommand & 0x7f)== REMOTE_CONTROL_SUBCMD))
    {
        messageType = g_remoteControlReceivePack.pDataBuffer[0];
        LogHalUpLoadLog("RC rcv =%d", messageType);
        RemoteControlSendAck();
        
        if(messageType == REMOTE_CONTROL_CMD_CONTROL_TYPE)
        {    
            ecuId = ((uint16_t)g_remoteControlReceivePack.pDataBuffer[2] << 8) | g_remoteControlReceivePack.pDataBuffer[1];
            cmdId = g_remoteControlReceivePack.pDataBuffer[3];
            if((ecuId >= (ECU_HVAC_E) && (ecuId <= (ECU_PLGM_E))) &&
               ((cmdId > CMD_DEFAULT_E) && (cmdId < CMD_REMOTE_CTRL_MAX_NUM_E)))
            {
                RemoteControlStartStateMachine();
            }
            else
            {
                RemoteControlSendResult((uint8_t)REMOTE_CONTROL_CMD_CONTROL_TYPE, (uint16_t)REMOTE_CONTROL_ERR_CODE_INVALID_CMD, ecuId, cmdId, g_remoteControlReceivePack.pDataBuffer[4]);
            } 
        }
        else if(messageType == REMOTE_CONTROL_CMD_WAKE_TYPE)
        {
            g_remoteControlReqWakeByte = g_remoteControlReceivePack.pDataBuffer[1];
            // 按大端方式组合Byte2到5到g_remoteControReqWakeTime
            g_remoteControReqWakeTime = ((uint32_t)g_remoteControlReceivePack.pDataBuffer[2] << 24) | \
                                      ((uint32_t)g_remoteControlReceivePack.pDataBuffer[3] << 16) | \
                                      ((uint32_t)g_remoteControlReceivePack.pDataBuffer[4] << 8)  | \
                                       (uint32_t)g_remoteControlReceivePack.pDataBuffer[5];
            if((g_remoteControlReqWakeStatus == REMOTE_CONTROL_REQ_WAKE_STATUS_IDLE)&&(g_remoteControReqWakeTime != 0U))
            {
                g_remoteControlReqWakeStatus = REMOTE_CONTROL_REQ_WAKE_STATUS_NORMAL;
            }
            RemoteControlSendReqWakeUpResult();
        }
        else if(messageType == REMOTE_CONTROL_CMD_OTA_TYPE)
        {
            g_remoteControlOTAFlag = g_remoteControlReceivePack.pDataBuffer[1];
            g_remoteControlOTATime = ((uint32_t)g_remoteControlReceivePack.pDataBuffer[2] << 24) | \
                                      ((uint32_t)g_remoteControlReceivePack.pDataBuffer[3] << 16) | \
                                      ((uint32_t)g_remoteControlReceivePack.pDataBuffer[4] << 8)  | \
                                       (uint32_t)g_remoteControlReceivePack.pDataBuffer[5];

            if((g_remoteControlOTATime != 0U)&&(g_remoteControlReceivePack.pDataBuffer[1] == 0x1))
            {
                g_remoteControlOTAFlag = REMOTE_CONTROL_OTA_FLAG_ING;
            }
            else if((g_remoteControlOTATime == 0U)||(g_remoteControlOTAFlag == 0))
            {
                g_remoteControlOTAFlag = REMOTE_CONTROL_OTA_FLAG_IDLE;
            }
            RemoteControlSendIntoOtaModeResult();
        }
    }
    return;
}

/*************************************************
 Function:        RemoteControlForbidSleepCheck
 Description:     Checks if remote control should forbid sleep mode
 Input:           None
 Output:          None
 Return:          None
 Others:          Stops the sleep forbid timer when timeout occurs
                 Updates the wake up flag accordingly
*************************************************/
static void RemoteControlForbidSleepCheck(void)
{
    if((g_remoteControlSleepForrbidHandle > 0) && (TimerHalIsTimeout(g_remoteControlSleepForrbidHandle) == 0))
    {
        if(g_remoteControlTotalState != RemoteControlStateIdle)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_TIME_OUT;
            RemoteControlSendResult((uint8_t)REMOTE_CONTROL_CMD_CONTROL_TYPE, (uint16_t)g_remoteControlErrorCode, g_remoteControlEcuId, g_remoteControlCmdId, g_remoteControlParamValue);
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_SUCCESS;
            g_remoteControlEcuId = ECU_NULL_E;
            g_remoteControlCmdId = CMD_DEFAULT_E;
            g_remoteControlParamValue = 0U;
            AutosarNmSdkClearSubNetWakeupRequest();
            RemoteControlSetTotalState(RemoteControlStateIdle);
        }
        LogHalUpLoadLog("RC fbd timeout\n");
        TimerHalStopTime(g_remoteControlSleepForrbidHandle);
        RemoteControlSetKeepWakeFlag(RemoteControlWakeUpFlag_NotKeep_e);
    }
}

/*************************************************
 Function:        RemoteControlSetTotalState
 Description:     Sets the total state of remote control system
 Input:           state - New state to be set
 Output:          None
 Return:          None
 Others:          Updates the global remote control state variable
                 Used to transition between different operational states
                 Supports state machine workflow control
*************************************************/
static void RemoteControlSetTotalState(RemoteControlState_t state)
{
    g_remoteControlTotalState = state;
}

/*************************************************
 Function:        RemoteControlGetTotalState
 Description:     Gets the current total state of remote control system
 Input:           None
 Output:          None
 Return:          RemoteControlState_t - Current state of the remote control system
 Others:          Returns the global remote control state variable
                 Used by other components to check current operational state
                 Supports state monitoring and conditional execution
*************************************************/
RemoteControlState_t RemoteControlGetTotalState(void)
{
    return g_remoteControlTotalState;
}

/*******************************************************************************
* Function    : RemoteControlStartStateMachine
* Description : Initiates the remote control state machine
*               Checks if the system is in idle state, and if so, prepares for
*               command processing by copying received data, extracting ECU ID
*               and command ID, then transitioning to pre-check state.
*               If not in idle state, sets error code and sends result.
* Input       : None
* Output      : None
* Return      : None
* Others      : Modifies global state variables and local buffer
*******************************************************************************/
static void RemoteControlStartStateMachine(void)
{
    if(RemoteControlGetTotalState() == RemoteControlStateIdle)
    {
        g_remoteControlEcuId = (RemoteControlEcuId_t)(((uint16_t)g_remoteControlReceivePack.pDataBuffer[2] << 8) | g_remoteControlReceivePack.pDataBuffer[1]);
        g_remoteControlCmdId = g_remoteControlReceivePack.pDataBuffer[3];
        g_remoteControlParamValue = g_remoteControlReceivePack.pDataBuffer[4];
        LogHalUpLoadLog("Rc valid cmd,ecu:%d,cmd:%d,param:%d", g_remoteControlEcuId, g_remoteControlCmdId, g_remoteControlParamValue);
        RemoteControlSetKeepWakeFlag(RemoteControlWakeUpFlag_Keep_e);
        AutosarNmSdkSetSubNetWakeupRequest(0x7F);
        RemoteControlSetTotalState(RemoteControlStatePreCheck);
        TimerHalStartTime(g_remoteControlSleepForrbidHandle, REMOTE_CONTROL_SLEEP_FORBID_TIME);
        TimerHalStartTime(g_remoteControlPreCheckTimerHandle, REMOTE_CONTROL_PRE_CHECK_TIME);
    }
    else
    {
        RemoteControlSendResult((uint8_t)REMOTE_CONTROL_CMD_CONTROL_TYPE, (uint16_t)REMOTE_CONTROL_ERR_CODE_EXCUTE_ERROR, ((uint16_t)g_remoteControlReceivePack.pDataBuffer[2] << 8) | g_remoteControlReceivePack.pDataBuffer[1], g_remoteControlReceivePack.pDataBuffer[3], g_remoteControlReceivePack.pDataBuffer[4]);
    }
}

/*******************************************************************************
* Function    : RemoteControlPreCheckProcess
* Description : Performs pre-check for remote control commands
*               Finds the command entry based on ECU ID and command ID,
*               executes the corresponding check function if available,
*               and transitions to certification state if check passes.
* Input       : None
* Output      : None
* Return      : RemoteControlProcessResult_t - Success, Fail, or Processing status
* Others      : Sets global state based on check result
*******************************************************************************/
static void RemoteControlPreCheckProcess(void)
{
    static uint8_t checkCounter = REMOTE_CONTROL_PRE_CHECK_CNT;
    RemoteControlProcessResult_t result = RemoteControlResult_Fail_e;
    const RemoteControlEntry_t* entry = RemoteControlFindCmdEntry(g_remoteControlEcuId, g_remoteControlCmdId);

    LogHalUpLoadLog("RC start check");
    if (entry == NULL)
    {
        LogHalUpLoadLog("Error: No entry found for ECU %d CMD %d\n", g_remoteControlEcuId, g_remoteControlCmdId);
        result = RemoteControlResult_Fail_e;
        g_remoteControlErrorCode = (uint16_t)REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    else if (entry->checkFunc != NULL)
    {
        checkCounter++;
        if(checkCounter >= REMOTE_CONTROL_PRE_CHECK_CNT)
        {
            result = entry->checkFunc();
            checkCounter = 0U;
        }
    }
    
    if(result == RemoteControlResult_Success_e)
    {
        if(g_remoteControlEcuId == ECU_HVAC_E)
        {
            if((g_remoteControlSignalInfo.EMS_EngSt == 0x1) && (g_remoteControlSignalInfo.BCM_KeySt == 2) && (g_remoteControlParamValue > 0))
            {
                RemoteControlSetTotalState(RemoteControlStateProcessSignal);
                g_remoteControlHvacPepsCheck = 1;
            }
            else if(g_remoteControlParamValue == 0)
            {
                RemoteControlSetTotalState(RemoteControlStateProcessSignal);
                g_remoteControlHvacPepsCheck = 1;
            } 
            else
            {
                RemoteControlSetTotalState(RemoteControlStateCertification);
            }
        }
        else if(g_remoteControlEcuId == ECU_HVSM_E)
        {
            if((g_remoteControlSignalInfo.EMS_EngSt == 0x1) && (g_remoteControlSignalInfo.BCM_KeySt == 2) && (g_remoteControlParamValue > 0))
            {
                g_remoteControlHvsmPepsCheck = 1;
                RemoteControlSetTotalState(RemoteControlStateProcessSignal);
            }
            else if(g_remoteControlParamValue == 0)
            {
                g_remoteControlHvsmPepsCheck = 1;
                RemoteControlSetTotalState(RemoteControlStateProcessSignal);
            } 
            else
            {
                RemoteControlSetTotalState(RemoteControlStateCertification);
            }
        }
        else if(g_remoteControlEcuId == ECU_PLGM_E)
        {
            RemoteControlSetTotalState(RemoteControlStateCertification);
        }
        else if(g_remoteControlEcuId == ECU_BCM_E)
        {
            RemoteControlSetTotalState(RemoteControlStateCertification);
        }
        else if(g_remoteControlEcuId == ECU_PEPS_E)
        {
            if(g_remoteControlParamValue == 0)
            {
                if((g_remoteControlSignalInfo.BCM_KeySt == 0)&&(g_remoteControlSignalInfo.EMS_EngSt == 0x0))
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_SUCCESS;
                    RemoteControlSetTotalState(RemoteControlStateSendResult);
                }
                else
                {
                    RemoteControlSetTotalState(RemoteControlStateCertification);
                }
            }
            else
            {
                RemoteControlSetTotalState(RemoteControlStateCertification);
            }
        }
    }
    else if(TimerHalIsTimeout(g_remoteControlPreCheckTimerHandle) == 0)
    {
        TimerHalStopTime(g_remoteControlPreCheckTimerHandle);
        LogHalUpLoadLog("Check failed for ECU %d CMD %d\n", g_remoteControlEcuId, g_remoteControlCmdId);
        RemoteControlSetTotalState(RemoteControlStateSendResult);
    }
}

/*******************************************************************************
* Function    : RemoteControlCertificationProcess
* Description : Handles certification process for remote control commands
*               Caches command entry and certification function for optimization,
*               executes the certification function if available,
*               and transitions to signal processing state if certification passes.
* Input       : None
* Output      : None
* Return      : None
* Others      : Uses static variables for caching to improve performance
*******************************************************************************/
static void RemoteControlCertificationProcess(void)
{
    static uint8_t isInitialized = 0;  
    static RemoteControlProcessResult_t (*cachedCertificationFunc)(void) = NULL;  
    static RemoteControlEntry_t* cachedCmdEntry = NULL;  
    
    uint8_t mappedIndex = RemoteControlMapEcuIdToIndex(g_remoteControlEcuId);
    
    if (isInitialized == 0 || 
        (cachedCmdEntry == NULL && 
         mappedIndex < REMOTE_CONTROL_ECU_MAX_NUM && 
         g_remoteControlCmdId < CMD_REMOTE_CTRL_MAX_NUM_E))
    {
        cachedCmdEntry = RemoteControlFindCmdEntry(g_remoteControlEcuId, g_remoteControlCmdId);
        cachedCertificationFunc = NULL;
        
        if (cachedCmdEntry != NULL)
        {
            if (mappedIndex < REMOTE_CONTROL_ECU_MAX_NUM)
            {
                RemoteControlTotalTable_t* ecuTable = &g_remoteControlLocalMap[mappedIndex];
                if (ecuTable->ecuId == g_remoteControlEcuId)
                {
                    cachedCertificationFunc = cachedCmdEntry->certificationFunc;
                }
            }
        }
        LogHalUpLoadLog("RC start ctf");
        isInitialized = 1;  
    }
    
    if (cachedCmdEntry != NULL)
    {
        if (cachedCertificationFunc != NULL)
        {
            RemoteControlProcessResult_t certResult = cachedCertificationFunc();
            if (certResult == RemoteControlResult_Success_e)
            {
                TBOX_PRINT("Certification passed for ECU %d CMD %d\n", g_remoteControlEcuId, g_remoteControlCmdId);
                RemoteControlSetTotalState(RemoteControlStateProcessSignal);
                isInitialized = 0; 
            }
            else if (certResult == RemoteControlResult_Fail_e)
            {
                TBOX_PRINT("Certification failed for ECU %d CMD %d\n", g_remoteControlEcuId, g_remoteControlCmdId);
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
                RemoteControlSetTotalState(RemoteControlStateSendResult);
                isInitialized = 0; 
            }
        }
        else
        {
            RemoteControlSetTotalState(RemoteControlStateProcessSignal);
            isInitialized = 0;  
        }
    }
    else
    {
        RemoteControlSetTotalState(RemoteControlStateSendResult);
        isInitialized = 0; 
    }
}

/*******************************************************************************
* Function    : RemoteControlHandleSignalProcess
* Description : Handles the state machine flow for remote control signals
*               Manages the CAN signal transmission and response checking
*               for remote control commands in the state machine process.
* Input       : None
* Output      : None
* Return      : None
* Others      : Controls the signal processing phase of the remote control workflow
*******************************************************************************/
static void RemoteControlHandleSignalProcess(void)
{
    uint8_t ret = 0U;
    static uint32_t s_canId = 0U;                 
    static uint8_t s_transCount = 0U;             
    static ProcessSignalState_t s_state = PROCESS_SIGNAL_STATE_IDLE; 
    
    switch(s_state)
    {
        case PROCESS_SIGNAL_STATE_IDLE:
        {
            s_canId = 0U;
            s_transCount = 0U;
            s_state = PROCESS_SIGNAL_STATE_NORMAL_PACK;
        }
        break; 


        case PROCESS_SIGNAL_STATE_NORMAL_PACK:
        {
            RemoteControlNormalPackReqCanSignal();
            s_canId = RemoteControlGetReqCanId();
            
            if((g_remoteControlEcuId == ECU_PLGM_E) && (g_remoteControlPlgmFrameTime == 1U) && (g_remoteControlParamValue == 1))
            {
                if(g_remoteControlTransTimerHandle >= 0)
                {
                    TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_PLGM_SEPE_TIME);
                }
                s_state = PROCESS_SIGNAL_STATE_PLGM_STEP;
            }
            if((g_remoteControlEcuId == ECU_PLGM_E) && (g_remoteControlPlgmFrameTime == 0U) && (g_remoteControlParamValue == 0))
            {
                s_state = PROCESS_SIGNAL_STATE_CLOSE_PLGM_STEP;
                TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_PLGM_CLOSE_WAIT_TIME);
            }
            else
            {
                s_state = PROCESS_SIGNAL_STATE_NORMAL_TRANS;
            }
        }
        break;
        
        case PROCESS_SIGNAL_STATE_CLOSE_PLGM_STEP:
        {
            if((g_remoteControlEcuId == ECU_PLGM_E) && (g_remoteControlPlgmFrameTime == 0U) && (g_remoteControlParamValue == 0))
            {
                if((g_remoteControlTransTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlTransTimerHandle) == 0))
                {
                    TimerHalStopTime(g_remoteControlTransTimerHandle);
                    s_state = PROCESS_SIGNAL_STATE_NORMAL_TRANS;
                }
            }
        }
        break;

        case PROCESS_SIGNAL_STATE_PLGM_STEP:
        {
            if((g_remoteControlTransTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlTransTimerHandle) == 0))
            {
                TimerHalStopTime(g_remoteControlTransTimerHandle);
                s_state = PROCESS_SIGNAL_STATE_NORMAL_TRANS;
            }
            else if(g_remoteControlTransTimerHandle < 0)
            {
                s_state = PROCESS_SIGNAL_STATE_CHECK_SIGNAL;
                TBOX_PRINT("TIMER HANDLE ERROR\n");
            }
        }
        break;
            
        case PROCESS_SIGNAL_STATE_NORMAL_TRANS:
        {
            ret = CanHalTransmitQueued(g_remoteControlCan1Handle, s_canId, g_remoteControlCanBuf, 
                        sizeof(g_remoteControlCanBuf), REMOTE_CONTROL_CAN_FD_USE, CAN_TX_PRIO_HIGH);
            if(ret != 0U)
            {
                LogHalUpLoadLog("RC nm trans error,ret=%d\n", ret);
            }
            if(g_remoteControlTransTimerHandle >= 0)
            {
                TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_TRANS_CYCLE_TIME);
            }
            s_state = PROCESS_SIGNAL_STATE_NORMAL_WAIT;
        }
        break;
            
        case PROCESS_SIGNAL_STATE_NORMAL_WAIT:
        {
            if((g_remoteControlTransTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlTransTimerHandle) == 0))
            {
                TimerHalStopTime(g_remoteControlTransTimerHandle);
                s_transCount++;
                if(s_transCount >= REMOTE_CONTROL_TRANS_MAX_COUNT)
                {
                    if(g_remoteControlEcuId == ECU_HVAC_E)
                    {
                        if(g_remoteControlHvacPepsCheck == 0U)
                        {
                            s_state = PROCESS_SIGNAL_STATE_SPECIAL_PACK;
                            if(g_remoteControlTransTimerHandle >= 0)
                            {
                                TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_TRANS_SEPE_TIME);
                            }
                        }
                        else
                        {
                            s_state = PROCESS_SIGNAL_STATE_CHECK_SIGNAL; 
                            if(g_remoteControlTransTimerHandle >= 0)
                            {
                                TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_CHECK_EXCUTE_TIME); 
                            }   
                        }
                    }
                    else
                    {
                        s_state = PROCESS_SIGNAL_STATE_SPECIAL_PACK;
                        if(g_remoteControlTransTimerHandle >= 0)
                        {
                            TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_TRANS_SEPE_TIME);
                        }
                    }
                    s_transCount = 0U; 
                }
                else
                {
                    s_state = PROCESS_SIGNAL_STATE_NORMAL_TRANS;  
                }
            }
            else if(g_remoteControlTransTimerHandle < 0)
            {
                s_state = PROCESS_SIGNAL_STATE_CHECK_SIGNAL;
                TBOX_PRINT("TIMER HANDLE ERROR!\n");
            }
        }
        break;
            
        case PROCESS_SIGNAL_STATE_SPECIAL_PACK:
        {
            if((g_remoteControlTransTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlTransTimerHandle) == 0))
            {
                TimerHalStopTime(g_remoteControlTransTimerHandle);
                RemoteControlSpecialPackReqCanSignal();
                s_state = PROCESS_SIGNAL_STATE_SPECIAL_TRANS;
            }
            else if(g_remoteControlTransTimerHandle < 0)
            {
                s_state = PROCESS_SIGNAL_STATE_CHECK_SIGNAL;
            }
        }
        break;
            
        case PROCESS_SIGNAL_STATE_SPECIAL_TRANS:
        {
            ret = CanHalTransmitQueued(g_remoteControlCan1Handle, s_canId, g_remoteControlCanBuf, 
                          sizeof(g_remoteControlCanBuf), REMOTE_CONTROL_CAN_FD_USE, CAN_TX_PRIO_HIGH);
            if(ret != 0U)
            {
                LogHalUpLoadLog("RC spc trans error,ret=%d\n", ret);
            }
            
            if(g_remoteControlTransTimerHandle >= 0)
            {
                TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_TRANS_CYCLE_TIME);
            }
            s_state = PROCESS_SIGNAL_STATE_SPECIAL_WAIT;
        }
        break;
            
        case PROCESS_SIGNAL_STATE_SPECIAL_WAIT:
        {
            if((g_remoteControlTransTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlTransTimerHandle) == 0))
            {
                TimerHalStopTime(g_remoteControlTransTimerHandle);
                s_transCount++;
                if(s_transCount >= REMOTE_CONTROL_TRANS_MAX_COUNT)
                {
                    s_transCount = 0U;  
                    
                    if(g_remoteControlEcuId == ECU_PLGM_E)
                    {
                        if((g_remoteControlPlgmFrameTime == 0U) && (g_remoteControlParamValue == 1))
                        {
                            g_remoteControlPlgmFrameTime = 1U;  
                            s_state = PROCESS_SIGNAL_STATE_NORMAL_PACK;  
                        }
                        else
                        {
                            g_remoteControlPlgmFrameTime = 0U;  
                            if(g_remoteControlTransTimerHandle >= 0)
                            {
                                TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_CHECK_EXCUTE_TIME); 
                            }
                            s_state = PROCESS_SIGNAL_STATE_CHECK_SIGNAL; 
                        }
                    }
                    else
                    {
                        if(g_remoteControlTransTimerHandle >= 0)
                        {
                            TimerHalStartTime(g_remoteControlTransTimerHandle, REMOTE_CONTROL_CHECK_EXCUTE_TIME); 
                        }
                        s_state = PROCESS_SIGNAL_STATE_CHECK_SIGNAL;
                    }
                }
                else
                {
                    s_state = PROCESS_SIGNAL_STATE_SPECIAL_TRANS; 
                }
            }
            else if(g_remoteControlTransTimerHandle < 0)
            {
                s_state = PROCESS_SIGNAL_STATE_CHECK_SIGNAL;
                TBOX_PRINT("TIMER HANDLE ERROR\n");
            }
        }
        break;
            
        case PROCESS_SIGNAL_STATE_CHECK_SIGNAL:
        {
            if(RemoteControlCheckResCanSignal() == RemoteControlResult_Success_e)
            {
                if((g_remoteControlEcuId == ECU_HVAC_E) && (g_remoteControlHvacPepsCheck == 0U))
                {
                    LogHalUpLoadLog("AC PEPS START");
                    RemoteControlSetTotalState(RemoteControlStateProcessSignal);
                    if(g_remoteControlTransTimerHandle >= 0)
                    {
                        TimerHalStopTime(g_remoteControlTransTimerHandle);
                    }
                    g_remoteControlHvacPepsCheck = 1U;
                }
                else if((g_remoteControlEcuId == ECU_HVSM_E) && (g_remoteControlHvsmPepsCheck == 0U))
                {
                    LogHalUpLoadLog("SM PEPS START");
                    RemoteControlSetTotalState(RemoteControlStateProcessSignal);
                    if(g_remoteControlTransTimerHandle >= 0)
                    {
                        TimerHalStopTime(g_remoteControlTransTimerHandle);
                    }
                    g_remoteControlHvsmPepsCheck = 1U;
                }
                else
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_SUCCESS;
                    s_canId = 0U;
                    s_transCount = 0U;
                    g_remoteControlHvacPepsCheck = 0U;
                    g_remoteControlHvsmPepsCheck = 0U;
                    if(g_remoteControlTransTimerHandle >= 0)
                    {
                        TimerHalStopTime(g_remoteControlTransTimerHandle);
                    }
                    //RemoteControlSetKeepWakeFlag(RemoteControlWakeUpFlag_NotKeep_e);
                    RemoteControlSetTotalState(RemoteControlStateSendResult);
                    TBOX_PRINT("Remote control exec success!\n");
                }
                s_state = PROCESS_SIGNAL_STATE_IDLE;
            }
            else if((g_remoteControlTransTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlTransTimerHandle) == 0))
            {
                LogHalUpLoadLog("RC check signal timeout");
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_TIME_OUT;
                TimerHalStopTime(g_remoteControlTransTimerHandle);
                s_canId = 0U;
                s_transCount = 0U;
                g_remoteControlHvacPepsCheck = 0U;
                g_remoteControlHvsmPepsCheck = 0U;
                s_state = PROCESS_SIGNAL_STATE_IDLE;
                RemoteControlSetTotalState(RemoteControlStateSendResult);
            }
            else if(g_remoteControlTransTimerHandle < 0)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_EXCUTE_ERROR;
                TBOX_PRINT("Remote control timer handle error!\n");
                TimerHalStopTime(g_remoteControlTransTimerHandle);
                s_canId = 0U;
                s_transCount = 0U;
                g_remoteControlHvacPepsCheck = 0U;
                g_remoteControlHvsmPepsCheck = 0U;
                s_state = PROCESS_SIGNAL_STATE_IDLE;
                RemoteControlSetTotalState(RemoteControlStateSendResult);
            }
        }
        break;
            
        default:
        {
            TBOX_PRINT("Remote control signal process in invalid state: %d\n", s_state);
            s_state = PROCESS_SIGNAL_STATE_IDLE;
            s_transCount = 0U;
            s_canId = 0U;
        }
        break;
    }
}

/*******************************************************************************
* Function    : RemoteControlSendResultProcess
* Description : Sends the execution result of remote control commands
*               Prepares response messages based on execution results and
*               transmits them to the remote client.
* Input       : None
* Output      : None
* Return      : None
* Others      : Resets system state after completing the result transmission
*******************************************************************************/
static void RemoteControlSendResultProcess(void)
{
    RemoteControlSendResult((uint8_t)REMOTE_CONTROL_CMD_CONTROL_TYPE, (uint16_t)g_remoteControlErrorCode, g_remoteControlEcuId, g_remoteControlCmdId, g_remoteControlParamValue);
    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_SUCCESS;
    g_remoteControlEcuId = ECU_NULL_E;
    g_remoteControlCmdId = CMD_DEFAULT_E;
    g_remoteControlParamValue = 0U;
    AutosarNmSdkClearSubNetWakeupRequest();
    RemoteControlSetTotalState(RemoteControlStateIdle);
}

/*******************************************************************************
 * Function    RemoteControlSendResult
 * Description Send remote control command execution result to the remote client
 * Input       None
 * Output      None
 * Return      None
 * Others      This function prepares the response packet with error code, ECU ID and command ID,
 *              then transmits it through MPU HAL UART interface
*******************************************************************************/
static void RemoteControlSendResult(uint8_t msgtype, uint16_t errorcode, uint16_t ecuid, uint8_t cmdid, uint8_t paravalue)
{
    g_remoteControlSendPack.aid = REMOTE_CONTROL_AID;
    g_remoteControlSendPack.mid = REMOTE_CONTROL_MID;
    g_remoteControlSendPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_RESULT;

    memset(g_remoteControlSendBuffer,0,sizeof(g_remoteControlSendBuffer));
    g_remoteControlSendPack.dataBufferSize = sizeof(g_remoteControlSendBuffer);
    g_remoteControlSendBuffer[0] = msgtype;
    g_remoteControlSendBuffer[1] = (uint8_t)errorcode;        
    g_remoteControlSendBuffer[2] = (uint8_t)(errorcode >> 8);  
    g_remoteControlSendBuffer[3] = (uint8_t)ecuid;             
    g_remoteControlSendBuffer[4] = (uint8_t)(ecuid >> 8);      
    g_remoteControlSendBuffer[5] = cmdid;
    g_remoteControlSendBuffer[6] = paravalue;

    TBOX_PRINT("RemoteControlSendResult: msgtype=%d, errorcode=0x%X, ecuid=0x%X, cmdid=%d, paravalue=%d\r\n", 
               msgtype, errorcode, ecuid, cmdid, paravalue);

    g_remoteControlSendPack.pDataBuffer = g_remoteControlSendBuffer;
    g_remoteControlSendPack.dataLength = 7U;
    MpuHalTransmit(g_remoteControlUartHandle,&g_remoteControlSendPack,MPU_HAL_UART_MODE);
}

/*******************************************************************************
 * Function    RemoteControlSendAck
 * Description Send acknowledgment response to the remote client
 * Input       cmdType - Command type to be acknowledged
 * Output      None
 * Return      None
 * Others      This function prepares and transmits an acknowledgment packet
 *              with the specified command type, then transitions the system to idle state
*******************************************************************************/
static void RemoteControlSendAck(void)
{ 
    g_remoteControlSendPack.aid = REMOTE_CONTROL_AID;
    g_remoteControlSendPack.mid = REMOTE_CONTROL_MID;
    g_remoteControlSendPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_ACK;

    memset(g_remoteControlSendBuffer,0,sizeof(g_remoteControlSendBuffer));
    g_remoteControlSendPack.dataBufferSize = sizeof(g_remoteControlSendBuffer);
    g_remoteControlSendBuffer[0] = REMOTE_CONTROL_ACK_CTRL_CMD;
    g_remoteControlSendPack.pDataBuffer = g_remoteControlSendBuffer;
    g_remoteControlSendPack.dataLength = 1U;
    MpuHalTransmit(g_remoteControlUartHandle,&g_remoteControlSendPack,MPU_HAL_UART_MODE);
}

/*******************************************************************************
 * Function    RemoteControlMapEcuIdToIndex
 * Description Map ECU ID to array index for table lookup
 * Input       ecuId - ECU identifier
 * Output      None
 * Return      Mapped array index, or REMOTE_CONTROL_ECU_MAX_NUM if invalid
 * Others      This function converts non-continuous ECU ID values to sequential
 *              array indices for safe access to the remote control table
*******************************************************************************/
static uint8_t RemoteControlMapEcuIdToIndex(RemoteControlEcuId_t ecuId)
{
    uint8_t index = REMOTE_CONTROL_ECU_MAX_NUM; // Default to invalid index
    
    switch (ecuId)
    {
        case ECU_HVAC_E:
            index = 0; // Map to array index 0
            break;
        case ECU_PEPS_E:
            index = 1; // Map to array index 1
            break;
        case ECU_BCM_E:
            index = 2; // Map to array index 2
            break;
        case ECU_HVSM_E:
            index = 3; // Map to array index 3
            break;
        case ECU_PLGM_E:
            index = 4; // Map to array index 4
            break;
        case ECU_HOD_E:
            index = 5; // Map to array index 5
            break;
        default:
            // Invalid ECU ID, keep default value
            break;
    }
    
    return index;
}

/*******************************************************************************
 * Function    RemoteControlFindCmdEntry
 * Description Find the command entry in the remote control command table
 * Input       ecuId - ECU identifier
 *              cmdId - Command identifier
 * Output      None
 * Return      Pointer to the found command entry, or NULL if not found
 * Others      This function searches for a specific command entry in the command table
 *              based on the provided ECU ID and command ID
*******************************************************************************/
static RemoteControlEntry_t* RemoteControlFindCmdEntry(RemoteControlEcuId_t ecuId, RemoteControlCmdId_t cmdId)
{
    RemoteControlEntry_t* pCmdEntry = NULL;
    
    // Check if cmdId is within valid range
    if (cmdId <= CMD_REMOTE_CTRL_MAX_NUM_E)
    {
        // Map ECU ID to array index
        uint8_t index = RemoteControlMapEcuIdToIndex(ecuId);
        
        // Check if index is valid and verify the mapped ECU ID
        if ((index < REMOTE_CONTROL_ECU_MAX_NUM) && (g_remoteControlLocalMap[index].ecuId == ecuId))
        {
            RemoteControlTotalTable_t* ecuTable = &g_remoteControlLocalMap[index];
            
            // Search for the command in the command table
            for (size_t i = 0; i < ecuTable->cmdCount && (pCmdEntry == NULL); i++)
            {
                if (ecuTable->cmdTable[i].cmdId == cmdId)
                {
                    pCmdEntry = &ecuTable->cmdTable[i];
                }
            }
        }
    }
    
    return pCmdEntry;
}

/*************************************************
 Function:        RemoteControlPreCheckLv1Fun
 Description:     Perform level 1 pre-check for remote control operations
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Checks battery voltage is within valid range (9V-16V)
                 Verifies vehicle speed is below 2 km/h and speed signal is valid
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv1Fun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    uint32_t batteryVol = 0U;
    PeripheralHalAdGet(AD_CHANNEL_KL30, &batteryVol);
    if((batteryVol >= 9000U) && (batteryVol <= 16000U) && 
       (g_remoteControlSignalInfo.BCS_VehSpd <= 2U) && (g_remoteControlSignalInfo.BCS_VehSpdVD == 1U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else
    {
        TBOX_PRINT("RemoteControlPreCheckLv1Fun: batteryVol = %d, g_remoteControlSignalInfo.BCS_VehSpd = %d, g_remoteControlSignalInfo.BCS_VehSpdVD = %d", batteryVol, g_remoteControlSignalInfo.BCS_VehSpd, g_remoteControlSignalInfo.BCS_VehSpdVD);
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3AcOnFun
 Description:     Perform level 3 pre-check for remote AC ON operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows AC operation when vehicle is off
                 Allows when in remote control mode and engine is off
                 Allows when engine is running
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3AcOnFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if(g_remoteControlSignalInfo.BCM_KeySt == 0U)                            //off
    {
        ret = RemoteControlResult_Success_e;
    } 
    else if((g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&        //remote on
    (g_remoteControlSignalInfo.BCM_KeySt == 2U) && 
    (g_remoteControlSignalInfo.EMS_EngSt == 0U)) 
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.EMS_EngSt == 1U) &&                   //engine start
    (g_remoteControlSignalInfo.BCM_KeySt == 2U))
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3EngineOnFun
 Description:     Perform level 3 pre-check for remote engine start operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle is off and alarm is disarmed
                 Allows when in remote control mode and engine is off
                 Allows when engine is already running
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3EngineOnFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_KeySt == 0U) &&                    //off set protect
    (g_remoteControlSignalInfo.BCM_ATWS_St == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&    //reomte on  set protect
    (g_remoteControlSignalInfo.BCM_KeySt == 2U) &&
    (g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&
    (g_remoteControlSignalInfo.EMS_EngSt == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if(g_remoteControlSignalInfo.EMS_EngSt == 1U)                   //engine start
    {
        ret = RemoteControlResult_Success_e;
    }
    if((g_remoteControlSignalInfo.EMS_EngSt == 1U)&&(g_remoteControlSignalInfo.PEPS_RemoteControlSt == 0U))
    {
        ret = RemoteControlResult_Fail_e;
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_SUCCESS;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3EngineOffFun
 Description:     Perform level 3 pre-check for remote engine stop operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when engine is running in remote control mode
                 Allows when in remote power on mode with engine running
                 Allows when vehicle is already off
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3EngineOffFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.EMS_EngSt == 1U) &&                    //remote on mode1 and set protect
    (g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&
    (g_remoteControlSignalInfo.PEPS_TELMode == 1U) &&
    (g_remoteControlSignalInfo.BCM_ATWS_St == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.BCM_KeySt == 2U) &&                //remote on and set protect
    (g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&             
    (g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&
    (g_remoteControlSignalInfo.PEPS_TELMode == 1U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if(g_remoteControlSignalInfo.BCM_KeySt == 0U)                   //engine off
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3EngineMode2OnFun
 Description:     Perform level 3 pre-check for remote engine start mode 2
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle is off and in TEL mode 2
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3EngineMode2OnFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_KeySt == 0U) &&                 
    (g_remoteControlSignalInfo.PEPS_TELMode == 2U))
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3PowerOnFun
 Description:     Perform level 3 pre-check for remote power ON operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle is off and alarm is in status 2
                 Allows when vehicle is already powered on
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3PowerOnFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_KeySt == 0U) &&                 
    (g_remoteControlSignalInfo.BCM_ATWS_St == 2U))           //off and set protect
    {
        ret = RemoteControlResult_Success_e;
    }
    else if(g_remoteControlSignalInfo.BCM_KeySt == 2U)       //on
    {
        ret = RemoteControlResult_Success_e;
    }
    if((g_remoteControlSignalInfo.BCM_KeySt == 2) && (g_remoteControlSignalInfo.PEPS_RemoteControlSt == 0U))
    {
        ret = RemoteControlResult_Fail_e;
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_SUCCESS;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3PowerOffFun
 Description:     Perform level 3 pre-check for remote power OFF operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when engine is running in remote control mode
                 Allows when in remote power on mode
                 Allows when vehicle is already off
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3PowerOffFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.EMS_EngSt == 1U) &&        //remote engine on and set protect
    (g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&
    (g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&
    (g_remoteControlSignalInfo.PEPS_TELMode == 1U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.BCM_KeySt == 2U) &&   //remote power on and set protect
    (g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&
    (g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&
    (g_remoteControlSignalInfo.PEPS_TELMode == 1U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if(g_remoteControlSignalInfo.BCM_KeySt == 0U)
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3SeatHeatSetFuc
 Description:     Perform level 3 pre-check for seat heating control
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle is off and alarm is disarmed
                 Allows when in remote control mode with engine off
                 Allows when engine is running
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3SeatHeatSetFuc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&              //off and set protect
    (g_remoteControlSignalInfo.BCM_KeySt == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&         //remote on and set protect
    (g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&
    (g_remoteControlSignalInfo.BCM_KeySt == 2U) &&
    (g_remoteControlSignalInfo.EMS_EngSt == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.EMS_EngSt == 1U) &&           //engine start 
    (g_remoteControlSignalInfo.BCM_KeySt == 2U))
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3SeatVentilatFunc
 Description:     Perform level 3 pre-check for seat ventilation control
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle is off and alarm is disarmed
                 Allows when in remote control mode with engine off
                 Allows when engine is running
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3SeatVentilatFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&              //off and set protect
    (g_remoteControlSignalInfo.BCM_KeySt == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.BCM_ATWS_St == 0U) &&         //remote on and set protect
    (g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1U) &&
    (g_remoteControlSignalInfo.BCM_KeySt == 2U) &&
    (g_remoteControlSignalInfo.EMS_EngSt == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    else if((g_remoteControlSignalInfo.EMS_EngSt == 1U) &&           //engine start 
    (g_remoteControlSignalInfo.BCM_KeySt == 2U))
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3DoorsOnFunc
 Description:     Perform level 3 pre-check for door control ON operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when parking brake mode switch is in OFF state
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3DoorsOnFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if(g_remoteControlSignalInfo.PLGM_ModeSW == 1U)
    {
        ret = RemoteControlResult_Success_e;
    }     
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3DoorsOffFunc
 Description:     Perform level 3 pre-check for door control OFF operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when parking brake mode switch is in OFF state
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3DoorsOffFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if(g_remoteControlSignalInfo.PLGM_ModeSW == 1U)
    {
        ret = RemoteControlResult_Success_e;
    }     
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3MidCtrlLockFunc
 Description:     Perform level 3 pre-check for middle control lock operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows only when all doors, bonnet and trunk are closed
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3MidCtrlLockFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_DriverDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_PsngrDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_RLDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_RRDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_BonnetAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_TrunkAjarSt == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }     
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3WinSetFunc
 Description:     Perform level 3 pre-check for window control operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle key state is OFF
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3WinSetFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if(g_remoteControlSignalInfo.BCM_KeySt == 0U)
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3WinVentilateOnFunc
 Description:     Perform level 3 pre-check for window ventilation ON operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle is off, battery SOC > 50%, and no rain detected
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3WinVentilateOnFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_KeySt == 0U) &&
    (g_remoteControlSignalInfo.EBS_SOC > 50U) &&
    (g_remoteControlSignalInfo.BCM_RLSWarning_Rain == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3WinVentilateOffFunc
 Description:     Perform level 3 pre-check for window ventilation OFF operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows when vehicle key state is OFF
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3WinVentilateOffFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if(g_remoteControlSignalInfo.BCM_KeySt == 0U)
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPreCheckLv3MidCtrlFbdLuckFunc
 Description:     Perform level 3 pre-check for middle control feedback lock operation
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Allows only when all doors, bonnet and trunk are closed
*************************************************/
static RemoteControlProcessResult_t RemoteControlPreCheckLv3MidCtrlFbdLuckFunc(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    if((g_remoteControlSignalInfo.BCM_DriverDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_PsngrDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_RLDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_RRDoorAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_BonnetAjarSt == 0U) &&
    (g_remoteControlSignalInfo.BCM_TrunkAjarSt == 0U))
    {
        ret = RemoteControlResult_Success_e;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckDefaultFun
 Description:     Default check function that performs level 1 pre-check
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Simply calls the level 1 pre-check function
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckDefaultFun(void)
{
    return RemoteControlPreCheckLv1Fun();
}

/*************************************************
 Function:        RemoteControlCheckAcSpeedSetFun
 Description:     Check conditions for AC speed setting commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates AC speed value (0-8)
                 Performs level 1 pre-check
                 For speed > 0, performs level 3 AC ON pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcSpeedSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if(g_remoteControlParamValue <= 8)
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue > 0)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckAcFrontDefSetFun
 Description:     Check conditions for AC front defrost setting commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates AC front defrost value (0 or 1)
                 Performs level 1 pre-check
                 For ON command (1), performs level 3 AC ON pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcFrontDefSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 * Function: RemoteControlCheckAcRearDefSetFun
 * Description: Checks conditions for rear defroster setting command
 * Input: None (uses global g_remoteControlParamValue)
 * Output: None (sets global g_remoteControlErrorCode on failure)
 * Return: RemoteControlProcessResult_t - Success or failure status
 * Others: Validates defroster value is 0 or 1, performs level 1 pre-check,
 *         and performs level 3 AC on pre-check for ON command (1).
 *         Sets appropriate error codes on failure
 ************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcRearDefSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 * Function: RemoteControlCheckAcTempSetFun
 * Description: Checks conditions for temperature setting command
 * Input: None (uses global g_remoteControlParamValue)
 * Output: None (sets global g_remoteControlErrorCode on failure)
 * Return: RemoteControlProcessResult_t - Success or failure status
 * Others: Validates temperature value is 0 or between 18-32, performs level 1 pre-check,
 *         and performs level 3 AC on pre-check for non-zero values.
 *         Sets appropriate error codes on failure
 ************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcTempSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue >= 18) || (g_remoteControlParamValue <= 32) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue > 0)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 * Function: RemoteControlCheckAcAirClcleSetFun
 * Description: Checks conditions for air circulation mode setting command
 * Input: None (uses global g_remoteControlParamValue)
 * Output: None (sets global g_remoteControlErrorCode on failure)
 * Return: RemoteControlProcessResult_t - Success or failure status
 * Others: Validates circulation mode value is 0 or 1, performs level 1 pre-check,
 *         and performs level 3 AC on pre-check for ON command (1).
 *         Sets appropriate error codes on failure
 ************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcAirClcleSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 * Function: RemoteControlCheckAcWindExitModeFun
 * Description: Checks conditions for wind exit mode setting command
 * Input: None (uses global g_remoteControlParamValue)
 * Output: None (sets global g_remoteControlErrorCode on failure)
 * Return: RemoteControlProcessResult_t - Success or failure status
 * Others: Validates wind mode value is 0-4, performs level 1 pre-check,
 *         and performs level 3 AC on pre-check for non-zero values.
 *         Sets appropriate error codes on failure
 ************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcWindExitModeFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if(g_remoteControlParamValue <= 4) 
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue != 0)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 * Function: RemoteControlCheckAcReqSetFun
 * Description: Checks conditions for AC request setting command
 * Input: None (uses global g_remoteControlParamValue)
 * Output: None (sets global g_remoteControlErrorCode on failure)
 * Return: RemoteControlProcessResult_t - Success or failure status
 * Others: Validates AC request value is 0 or 1, performs level 1 pre-check,
 *         and performs level 3 AC on pre-check for ON command (1).
 *         Sets appropriate error codes on failure
 ************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcReqSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 * Function: RemoteControlCheckAcAutostSetFun
 * Description: Checks conditions for auto mode setting command
 * Input: None (uses global g_remoteControlParamValue)
 * Output: None (sets global g_remoteControlErrorCode on failure)
 * Return: RemoteControlProcessResult_t - Success or failure status
 * Others: Validates auto mode value is 0 or 1, performs level 1 pre-check,
 *         and performs level 3 AC on pre-check for ON command (1).
 *         Sets appropriate error codes on failure
 ************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcAutostSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 * Function: RemoteControlCheckAcIonSetFun
 * Description: Checks conditions for ion function setting command
 * Input: None (uses global g_remoteControlParamValue)
 * Output: None (sets global g_remoteControlErrorCode on failure)
 * Return: RemoteControlProcessResult_t - Success or failure status
 * Others: Validates ion function value is 0 or 1, performs level 1 pre-check,
 *         and performs level 3 AC on pre-check for ON command (1).
 *         Sets appropriate error codes on failure
 ************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcIonSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckAcTempAutoSetFun
 Description:     Check conditions for AC temperature auto-set commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates AC temperature auto-set command value (0 or 1)
                 Performs level 1 pre-check
                 For ON command, performs level 3 AC ON pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckAcTempAutoSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3AcOnFun();
            } 
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}
/*************************************************
 Function:        RemoteControlCheckEngineSetFun
 Description:     Check conditions for engine control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates engine command value (0 or 1)
                 Performs level 1 pre-check
                 For ON command, performs level 3 engine ON pre-check
                 For OFF command, performs level 3 engine OFF pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckEngineSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        // If level 1 check passes, perform appropriate level 3 check based on command value
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)              
            {
                ret = RemoteControlPreCheckLv3EngineOnFun();
            } 
            else 
            {
                ret = RemoteControlPreCheckLv3EngineOffFun();
            }   
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckEngineMode2OnFun
 Description:     Check conditions for engine mode 2 start command
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates engine command value (0 or 1)
                 Performs level 1 pre-check
                 For ON command, performs level 3 engine mode 2 ON pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckEngineMode2OnFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        if (ret == RemoteControlResult_Success_e)
        {
            if(g_remoteControlParamValue == 1)
            {
                ret = RemoteControlPreCheckLv3EngineMode2OnFun();
                if(ret != RemoteControlResult_Success_e)
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
                }
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckPowerSetFun
 Description:     Check conditions for power control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates power command value (0 or 1)
                 Performs level 1 pre-check
                 For ON command, performs level 3 power ON pre-check
                 For OFF command, performs level 3 power OFF pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckPowerSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        
        if (ret == RemoteControlResult_Success_e)
        {
            // If level 1 check passes, perform appropriate level 3 check based on command value
            if(g_remoteControlParamValue == 1)
            {
                ret = RemoteControlPreCheckLv3PowerOnFun();
            }
            else 
            {
                ret = RemoteControlPreCheckLv3PowerOffFun();
            }
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
        else
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckEngineEnableFun
 Description:     Check conditions for engine enable/disable commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckEngineEnableFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckMidCtrlLockFun
 Description:     Check conditions for middle control lock commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates lock command value (0 or 1)
                 Performs level 1 pre-check
                 For LOCK command, performs level 3 middle control lock pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckMidCtrlLockFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
        else
        {
            if(g_remoteControlParamValue == 0)
            {
                ret = RemoteControlPreCheckLv3MidCtrlLockFunc();
                if(ret != RemoteControlResult_Success_e)
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
                }
            }
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckLowBeamSetFun
 Description:     Check conditions for low beam light control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckLowBeamSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckHornSetFun
 Description:     Check conditions for horn control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckHornSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}


/*************************************************
 Function:        RemoteControlCheckWinSetFun
 Description:     Check conditions for window control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates window command value (0 or 1)
                 Performs level 1 pre-check
                 Performs level 3 window control pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckWinSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
        else
        {
            ret = RemoteControlPreCheckLv3WinSetFunc();
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
    }  
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }  
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckHazardLampSetFun
 Description:     Check conditions for hazard lamp control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckHazardLampSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckHazardLampOffFun
 Description:     Check conditions for hazard lamp control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckHazardLampOffFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if(g_remoteControlParamValue == 1)
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckTrunkAjarFun
 Description:     Check conditions for trunk ajar control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckTrunkAjarFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckSunRoofSetFun
 Description:     Check conditions for sunroof control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckSunRoofSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckLeftTurnLampFun
 Description:     Check conditions for left turn lamp control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckLeftTurnLampFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckParkLampSetFun
 Description:     Check conditions for park lamp control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckParkLampSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckWinVentilateSetFun
 Description:     Check conditions for window ventilation control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 For ON command, performs level 3 window ventilation ON pre-check
                 For OFF command, performs level 3 window ventilation OFF pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckWinVentilateSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
        else
        {
            // Perform level 3 pre-check based on command value
            if(g_remoteControlParamValue == 1)
            {
                ret = RemoteControlPreCheckLv3WinVentilateOnFunc();
            }
            else
            {
                ret = RemoteControlPreCheckLv3WinVentilateOffFunc();
            }
            
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckMidCtrlFbdLockFun
 Description:     Check conditions for middle control feedback lock commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 For LOCK command, performs level 3 middle control feedback lock pre-check
                 For UNLOCK command, sets function forbidden error
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckMidCtrlFbdLockFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
        else
        {
            // Perform level 3 pre-check based on command value
            if(g_remoteControlParamValue == 1)
            {
                ret = RemoteControlPreCheckLv3MidCtrlFbdLuckFunc();
            }
            else
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_FUC_FORBID;
            }
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckSeatHeatSetFun
 Description:     Check conditions for seat heating control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0-3)
                 Performs level 1 pre-check
                 For non-zero values, performs level 3 seat heating pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckSeatHeatSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if(g_remoteControlParamValue <= 3)
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
        else
        {
            if(g_remoteControlParamValue > 0)
            {
                ret = RemoteControlPreCheckLv3SeatHeatSetFuc();
                if(ret != RemoteControlResult_Success_e)
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
                }
            } 
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckSeatVentilateOnFun
 Description:     Check conditions for seat ventilation control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0-3)
                 Performs level 1 pre-check
                 For non-zero values, performs level 3 seat ventilation pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckSeatVentilateOnFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if(g_remoteControlParamValue <= 3)
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
        else
        {
            if(g_remoteControlParamValue > 0)
            {
                ret = RemoteControlPreCheckLv3SeatVentilatFunc();
                if(ret != RemoteControlResult_Success_e)
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
                }
            } 
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlCheckDoorsSetFun
 Description:     Check conditions for door control commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates command value (0 or 1)
                 Performs level 1 pre-check
                 For ON command, performs level 3 door ON pre-check
                 For OFF command, performs level 3 door OFF pre-check
                 Sets appropriate error codes on failure
*************************************************/
static RemoteControlProcessResult_t RemoteControlCheckDoorsSetFun(void)
{
    RemoteControlProcessResult_t ret = RemoteControlResult_Fail_e;
    
    if((g_remoteControlParamValue == 1) || (g_remoteControlParamValue == 0))
    {
        // Perform level 1 pre-check
        ret = RemoteControlPreCheckLv1Fun();
        if(ret != RemoteControlResult_Success_e)
        {
            g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
        }
        else
        {
            // Perform level 3 pre-check based on command value
            if(g_remoteControlParamValue == 1)
            {
                ret = RemoteControlPreCheckLv3DoorsOnFunc();
            }
            else
            {
                ret = RemoteControlPreCheckLv3DoorsOffFunc();
            }
            
            if(ret != RemoteControlResult_Success_e)
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CONDITION;
            }
        }
    }
    else
    {
        g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_INVALID_CMD;
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlBcmCertification
 Description:     Perform BCM authentication process for remote control
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success, Failure, or Processing
 Others:          Implements state machine for BCM authentication
                 Handles request, random number exchange, calculation and verification
                 Uses CAN communication and encryption
                 Includes timeout and retry mechanisms
*************************************************/
static RemoteControlProcessResult_t RemoteControlBcmCertification(void)
{
    typedef enum
    {
        BCM_AUTU_IDLE_E,
        BCM_AUTU_REQ_E,
        BCM_AUTH_WAIT_RAND_E,
        BCM_AUTH_CALC_E,
        BCM_AUTH_CHECK_E,
        BCM_AUTU_END_E,
    }BcmAuthState_e;
    RemoteControlProcessResult_t ret = RemoteControlResult_Processing_e;
    static BcmAuthState_e bcmAuthState = BCM_AUTU_IDLE_E;
    static uint8_t bcmAuthReqCnt = 0U;
    uint16_t eskLength = 0U;
    uint16_t canIdFlag = 0U;
    uint8_t canRet = 0U;

    switch(bcmAuthState)
    {
        case BCM_AUTU_IDLE_E:
            ret = RemoteControlResult_Processing_e;
            if(g_remoteControlSignalInfo.BCM_RemoteControlSt == 1)
            {
                TBOX_PRINT("BCM_OK_JUMP_AUTH_E\n");
                bcmAuthState = BCM_AUTU_END_E;
                ret = RemoteControlResult_Success_e;
            }
            else
            {
                bcmAuthState = BCM_AUTU_REQ_E;
            }
            break;
        
        case BCM_AUTU_REQ_E:
            memset(g_remoteControlCanBuf,0U,sizeof(g_remoteControlCanBuf));
            canRet = CanHalTransmitQueued(g_remoteControlCan1Handle,REMOTE_CONTROL_TEL_IMMOCode2_E,g_remoteControlCanBuf,sizeof(g_remoteControlCanBuf),REMOTE_CONTROL_CAN_FD_USE, CAN_TX_PRIO_HIGH);
            if(canRet != 0U)
            {
                LogHalUpLoadLog("BCM autu req error,ret=%d", ret);
            }
            TimerHalStartTime(g_remoteControlAuthTimerHandle, REMOTE_CONTROL_BCM_REQ_AHTU_TIME);
            Can0ClearRxFlagByCanId(REMOTE_CONTROL_GW_BCM_E);
            bcmAuthState = BCM_AUTH_WAIT_RAND_E;
            break;
        
        case BCM_AUTH_WAIT_RAND_E:
            canIdFlag = Can0GetRxFlagByCanId(REMOTE_CONTROL_GW_BCM_E);
            if(canIdFlag == 1U)
            {
                bcmAuthReqCnt = 0U;
                bcmAuthState = BCM_AUTH_CALC_E;
            }
            else if((g_remoteControlAuthTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlAuthTimerHandle) == 0))
            {
                bcmAuthReqCnt++;
                TimerHalStopTime(g_remoteControlAuthTimerHandle);
                bcmAuthState = BCM_AUTU_REQ_E;
            }
            else if(bcmAuthReqCnt >= REMOTE_CONTROL_BCM_REQ_MAX_CNT)
            {
                bcmAuthState = BCM_AUTU_END_E;
                ret = RemoteControlResult_Fail_e;
            }
            break;

        case BCM_AUTH_CALC_E:
            eskLength = ESK_LENGTH;
            Service22ReadESKey(g_remoteControlESK, &eskLength);
            g_randomBcmArray[0] = g_remoteControlSignalInfo.BCM_TEL_IMMOCode0;
            g_randomBcmArray[1] = g_remoteControlSignalInfo.BCM_TEL_IMMOCode1;
            g_randomBcmArray[2] = g_remoteControlSignalInfo.BCM_TEL_IMMOCode2;
            g_randomBcmArray[3] = g_remoteControlSignalInfo.BCM_TEL_IMMOCode3;
            g_randomBcmArray[4] = g_remoteControlSignalInfo.BCM_TEL_IMMOCode4;
            g_randomBcmArray[5] = g_remoteControlSignalInfo.BCM_TEL_IMMOCode5;
            g_randomBcmArray[6] = g_remoteControlSignalInfo.BCM_TEL_IMMOCode6;
            g_randomBcmArray[7] = g_remoteControlSignalInfo.BCM_TEL_IMMOCodeSt;
            BcmAuthCalcKey(g_randomBcmArray,g_remoteControlESK,g_remoteControlCanBuf);
            canRet = CanHalTransmitQueued(g_remoteControlCan1Handle,REMOTE_CONTROL_TEL_IMMOCode2_E,g_remoteControlCanBuf,sizeof(g_remoteControlCanBuf),REMOTE_CONTROL_CAN_FD_USE, CAN_TX_PRIO_HIGH);
            if(canRet != 0U)
            {
                LogHalUpLoadLog("BCM cal key send error,ret=%d", ret);
            }
            memset(g_remoteControlCanBuf,0U,sizeof(g_remoteControlCanBuf));
            TimerHalStartTime(g_remoteControlAuthTimerHandle, REMOTE_CONTROL_BCM_CHECK_AHTU_TIME);
            bcmAuthState = BCM_AUTH_CHECK_E;
            break;

        case BCM_AUTH_CHECK_E:
            if((g_remoteControlSignalInfo.BCM_RemoteControlSt == 1)||(g_remoteControlSignalInfo.BCM_TEL_IMMOCodeSt == 1))
            {
                bcmAuthState = BCM_AUTU_END_E;
                ret = RemoteControlResult_Success_e;
            }
            else if((g_remoteControlAuthTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlAuthTimerHandle) == 0))
            {
                TimerHalStopTime(g_remoteControlAuthTimerHandle);
                bcmAuthState = BCM_AUTU_END_E;
                ret = RemoteControlResult_Fail_e;
            }
            break;

        case BCM_AUTU_END_E:
            bcmAuthReqCnt = 0U;
            ret = RemoteControlResult_Processing_e;
            bcmAuthState = BCM_AUTU_IDLE_E;
            break;

        default:
            bcmAuthReqCnt = 0U;
            bcmAuthState = BCM_AUTU_IDLE_E;
            ret = RemoteControlResult_Fail_e;
            break;
            
    }
    return ret;
}

/*************************************************
 Function:        RemoteControlPepsCertification
 Description:     Perform PEPS authentication process for remote control
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success, Failure, or Processing
 Others:          Implements state machine for PEPS authentication
                 Handles request, random number exchange, calculation and verification
                 Uses CAN communication and encryption
                 Includes timeout and retry mechanisms
*************************************************/
static RemoteControlProcessResult_t RemoteControlPepsCertification(void)
{
    typedef enum
    {
        PEPS_AUTU_IDLE_E,
        PEPS_AUTU_REQ_E,
        PEPS_AUTH_WAIT_RAND_E,
        PEPS_AUTH_CALC_E,
        PEPS_AUTH_CHECK_E,
        PEPS_AUTU_END_E,
    }BcmAuthState_e;
    static RemoteControlProcessResult_t ret = RemoteControlResult_Processing_e;
    static BcmAuthState_e pepsAuthState = PEPS_AUTU_IDLE_E;
    static uint8_t pepsAuthReqCnt = 0U;
    static uint16_t eskLength = 0U;
    uint16_t canIdFlag = 0U;
    uint8_t canRet = 0U;

    switch(pepsAuthState)
    {
        case PEPS_AUTU_IDLE_E:
            ret = RemoteControlResult_Processing_e;
            if(g_remoteControlSignalInfo.PEPS_TeleAuthentSt == 2)
            {
                TBOX_PRINT("PEPS_OK_JUMP_AUTH_E\n");
                pepsAuthState = PEPS_AUTU_END_E;
                ret = RemoteControlResult_Success_e;
            }
            else
            {
                pepsAuthState = PEPS_AUTU_REQ_E;
            }
            break;
        
        case PEPS_AUTU_REQ_E:
            memset(g_remoteControlCanBuf,0U,sizeof(g_remoteControlCanBuf));
            canRet = CanHalTransmitQueued(g_remoteControlCan1Handle,REMOTE_CONTROL_TEL_IMMOCode1_E,g_remoteControlCanBuf,sizeof(g_remoteControlCanBuf),REMOTE_CONTROL_CAN_FD_USE, CAN_TX_PRIO_HIGH);
            if(canRet != 0U)
            {
                LogHalUpLoadLog("PEPS autu req error,ret=%d", ret);
            }
            TimerHalStartTime(g_remoteControlAuthTimerHandle, REMOTE_CONTROL_PEPS_REQ_AHTU_TIME);
            Can0ClearRxFlagByCanId(REMOTE_CONTROL_GW_PEPS_E);
            pepsAuthState = PEPS_AUTH_WAIT_RAND_E;
            break;
        
        case PEPS_AUTH_WAIT_RAND_E:
            canIdFlag = Can0GetRxFlagByCanId(REMOTE_CONTROL_GW_PEPS_E);
            if(canIdFlag == 1U)
            {
                pepsAuthState = PEPS_AUTH_CALC_E;
            }
            else if((g_remoteControlAuthTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlAuthTimerHandle) == 0))
            {
                TimerHalStopTime(g_remoteControlAuthTimerHandle);
                pepsAuthReqCnt++;
                pepsAuthState = PEPS_AUTU_REQ_E;
            }
            else if(pepsAuthReqCnt >= REMOTE_CONTROL_PEPS_REQ_MAX_CNT)
            {
                pepsAuthState = PEPS_AUTU_END_E;
                ret = RemoteControlResult_Fail_e;
            }
            break;

        case PEPS_AUTH_CALC_E:
            eskLength = ESK_LENGTH;
            Service22ReadESKey(g_remoteControlESK, &eskLength);
            g_randomPepsArray[0] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode0;
            g_randomPepsArray[1] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode1;
            g_randomPepsArray[2] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode2;
            g_randomPepsArray[3] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode3;
            g_randomPepsArray[4] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode4;
            g_randomPepsArray[5] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode5;
            g_randomPepsArray[6] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode6;
            g_randomPepsArray[7] = g_remoteControlSignalInfo.PEPS_TEL_ChallengeCode7;
            PepsAuthCalcKey8(g_randomPepsArray, g_remoteControlESK, g_remoteControlCanBuf);
            canRet = CanHalTransmitQueued(g_remoteControlCan1Handle,REMOTE_CONTROL_TEL_IMMOCode1_E,g_remoteControlCanBuf,sizeof(g_remoteControlCanBuf),REMOTE_CONTROL_CAN_FD_USE, CAN_TX_PRIO_HIGH);
            if(canRet != 0U)
            {
                LogHalUpLoadLog("PEPS calc key error,ret=%d", ret);
            }
            memset(g_remoteControlCanBuf,0U,sizeof(g_remoteControlCanBuf));
            TimerHalStartTime(g_remoteControlAuthTimerHandle, REMOTE_CONTROL_PEPS_CHECK_AHTU_TIME);
            pepsAuthState = PEPS_AUTH_CHECK_E;
            break;

        case PEPS_AUTH_CHECK_E:
            if((g_remoteControlSignalInfo.PEPS_TeleAuthentSt == 2)||(g_remoteControlSignalInfo.PEPS_RemoteControlSt == 1))
            {
                pepsAuthState = PEPS_AUTU_END_E;
                ret = RemoteControlResult_Success_e;
            }
            else if(g_remoteControlSignalInfo.PEPS_TeleAuthentSt == 1)
            {
                pepsAuthState = PEPS_AUTU_END_E;
                ret = RemoteControlResult_Fail_e;
            }
            else if((g_remoteControlAuthTimerHandle >= 0) && (TimerHalIsTimeout(g_remoteControlAuthTimerHandle) == 0))
            {
                TimerHalStopTime(g_remoteControlAuthTimerHandle);
                pepsAuthReqCnt++;
                pepsAuthState = PEPS_AUTH_CALC_E;
            }
            else if(pepsAuthReqCnt >= REMOTE_CONTROL_PEPS_REQ_MAX_CNT)
            {
                pepsAuthReqCnt = 0U;
                pepsAuthState = PEPS_AUTU_END_E;
                ret = RemoteControlResult_Fail_e;
            }
            break;

        case PEPS_AUTU_END_E:
            pepsAuthReqCnt = 0U;
            ret = RemoteControlResult_Processing_e;
            pepsAuthState = PEPS_AUTU_IDLE_E;
            break;

        default:
            pepsAuthState = PEPS_AUTU_IDLE_E;
            pepsAuthReqCnt = 0U;
            ret = RemoteControlResult_Fail_e;
            break;
            
    }
    return ret;
}

// /*************************************************
//  * Function: RemoteControlPackDefaultSignal
//  * Description: Packs default control signals for different ECUs into CAN frame
//  * Input: RemoteControlEcuId_t ecuId - The ECU ID to pack signals for
//  * Output: None (modifies global g_remoteControlCanBuf)
//  * Return: None
//  * Others: Currently supports HVAC ECU with default temperature, fan speed,
//  *         mode settings and other HVAC parameters
//  ************************************************/
// void RemoteControlPackDefaultSignal(RemoteControlEcuId_t ecuId)
// {
//     switch(ecuId)
//     {
//         case ECU_HVAC_E:
//         {
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_TempSelectManualReq,  0x0);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_DrTempSelectReq,      0x1D);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_WindExitSpdReq,       0xB);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_WindExitModeReq,      0x5);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_RearDefrostReq,       0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_ACReq,                0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_AutoSt,               0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_AirCirculationReq,    0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_FrontDefReq,          0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_ControlSt,            0x0);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_ACMaxReq,             0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_IonReq,               0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_DualReq,              0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_TripleZoneReq,        0x2);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_PaTempSelectReq,      0x1D);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_HVACCtrlModeSt,       0x0);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_RearTempSelectReq,    0x1D);
//             RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf,TEL_HVACF_RearReq,              0x2);
//             break;
//         }
        
//         case ECU_PLGM_E:
//         {  
//             break;
//         }
        
//         default:
//         {
//             //TBOX_PRINT("Remote control pack default signal in invalid ecu id: %d\n", ecuId);
//             break;
//         }
//     }
// }

/*************************************************
 Function:        RemoteControlNormalPackReqCanSignal
 Description:     Pack remote control signals into CAN frame
 Input:           None
 Output:          None
 Return:          None
 Others:          Sets standard CAN signal values based on ECU type and command ID
                  Uses RemoteCtrlSignalValToCanFrame to encode signal values
                  Handles different ECUs and command types
 *************************************************/
static void RemoteControlNormalPackReqCanSignal(void)
{
    memset(g_remoteControlCanBuf, 0x0, sizeof(g_remoteControlCanBuf));
    switch(g_remoteControlEcuId)
    {
        case ECU_PEPS_E: 
        {
            switch(g_remoteControlCmdId)
            {
                case CMD_ENGINE_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReq,   0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReqVD, 0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PowerOffReq,       0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PowerOffReqVD,     0x1);
                    }
                    
                    break;
                    
                case CMD_ENGINE_MODE_2_ON_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngForceStart,    0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngForceStartVD,  0x1);
                    }
                    break;
                    
                case CMD_POWER_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PowerOnReq,       0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PowerOnReqVD,     0x1);
                    }   
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PowerOffReq,      0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PowerOffReqVD,    0x1);
                    }
                    break;
                    
                case CMD_ENGINE_ENABLE_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineForbidReq,  0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineForbidReqVD,0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EnginePermitReq,  0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EnginePermitReqVD,0x1);
                    }
                    break;
                    
                default:
                    break;
            }
        }
        break;
        
        case ECU_HVAC_E: 
        {
            if(g_remoteControlHvacPepsCheck == 0U)
            {
                RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReq,   1);
                RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReqVD, 1);
            }
            else
            {
                (void)memset(g_hvacSignalSet, 0, sizeof(g_hvacSignalSet));
                switch (g_remoteControlCmdId)
                {
                    case CMD_AC_SPEED_SET_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_WindExitSpdReq,
                                            (g_remoteControlParamValue > 0) ? g_remoteControlParamValue : 0);
                        break;

                    case CMD_AC_FRONT_DEF_SET_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_FrontDefReq,
                                            (g_remoteControlParamValue > 0) ? g_remoteControlParamValue : 0);
                        break;

                    case CMD_AC_REAR_DEF_SET_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_RearDefrostReq,
                                            (g_remoteControlParamValue > 0) ? g_remoteControlParamValue : 0);
                        break;

                    case CMD_AC_TEMP_SET_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_DrTempSelectReq,
                                            g_remoteControlParamValue);
                        /* 温度指令下强制单/三区关闭 */
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf, TEL_HVACF_DualReq,        0);
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf, TEL_HVACF_TripleZoneReq,  0);
                        break;

                    case CMD_AC_AIR_CAL_REQ_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_AirCirculationReq,
                                            (g_remoteControlParamValue == 1) ? 2 : 1);
                        break;

                    case CMD_AC_WIND_EXIT_MODE_E:
                        if (g_remoteControlParamValue > 0)
                        {
                            RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                                TEL_HVACF_WindExitModeReq,
                                                g_remoteControlParamValue);
                        }
                        break;

                    case CMD_AC_REQ_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_ACReq,
                                            (g_remoteControlParamValue > 0) ? g_remoteControlParamValue : 0);
                        break;

                    case CMD_AC_AUTOST_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_AutoSt,
                                            (g_remoteControlParamValue > 0) ? g_remoteControlParamValue : 0);
                        break;

                    case CMD_AC_ION_REQ_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_IonReq,
                                            (g_remoteControlParamValue > 0) ? g_remoteControlParamValue : 0);
                        break;
                    
                    case CMD_AC_TIME_SET_E:
                        break;

                    case CMD_AC_FRAG_ST_E:
                        break;
                    
                    case CMD_AC_TEMP_AUTO_SET_E:
                        RemoteCtrlSignalValSet(g_remoteControlCanBuf,
                                            TEL_HVACF_TempSelectManualReq,
                                            (g_remoteControlParamValue > 0) ? g_remoteControlParamValue : 0);
                    
                    default:
                        /* 本次命令不需要特定覆盖，就只走默认值 */
                        break;
                }
                if (g_hvacSignalSet[TEL_HVACF_ControlSt - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_ControlSt,            1);
                }
                if (g_hvacSignalSet[TEL_HVACF_TempSelectManualReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_TempSelectManualReq,  0);
                }
                if (g_hvacSignalSet[TEL_HVACF_DrTempSelectReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_DrTempSelectReq,      32.5);
                }
                if (g_hvacSignalSet[TEL_HVACF_WindExitSpdReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_WindExitSpdReq,       8);
                }
                if (g_hvacSignalSet[TEL_HVACF_WindExitModeReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_WindExitModeReq,      5);
                }
                if (g_hvacSignalSet[TEL_HVACF_RearDefrostReq - TEL_HVACF_TempSelectManualReq] == 0U)    
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_RearDefrostReq,       2);
                }
                if (g_hvacSignalSet[TEL_HVACF_ACReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_ACReq,                2);
                }
                if (g_hvacSignalSet[TEL_HVACF_AutoSt - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_AutoSt,               2);
                }
                if (g_hvacSignalSet[TEL_HVACF_AirCirculationReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_AirCirculationReq,    3);
                }
                if (g_hvacSignalSet[TEL_HVACF_FrontDefReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_FrontDefReq,          2);
                }
                if (g_hvacSignalSet[TEL_HVACF_ACMaxReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_ACMaxReq,             2);
                }
                if (g_hvacSignalSet[TEL_HVACF_IonReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_IonReq,               2);
                }
                if (g_hvacSignalSet[TEL_HVACF_DualReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_DualReq,              2);
                }
                if (g_hvacSignalSet[TEL_HVACF_TripleZoneReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_TripleZoneReq,        2);
                }
                if (g_hvacSignalSet[TEL_HVACF_PaTempSelectReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_PaTempSelectReq,      32.5);
                }
                if (g_hvacSignalSet[TEL_HVACF_HVACCtrlModeSt - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_HVACCtrlModeSt,       7);
                }
                if (g_hvacSignalSet[TEL_HVACF_RearTempSelectReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_RearTempSelectReq,    32.5);
                }
                if (g_hvacSignalSet[TEL_HVACF_RearReq - TEL_HVACF_TempSelectManualReq] == 0U)
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVACF_RearReq,              2);
                }
            }   
        }
        break;
        
        
        case ECU_HVSM_E: 
        {
            if(g_remoteControlHvsmPepsCheck == 0U)
            {
                RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReq,   0x1);
                RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReqVD, 0x1);
            }
            else
            {
                switch(g_remoteControlCmdId)
                {
                    case CMD_M_SEAT_HEAT_SET_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FLHeatingLevelReq,    g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,       0x1);
                        break;
                        
                    case CMD_M_SEAT_VENTILATE_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FLVentilatingLevelReq, g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,        0x1);
                        break;
                        
                    case CMD_S_SEAT_HEAT_SET_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FRHeatingLevelReq, g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,    0x1);
                        break;
                        
                    case CMD_S_SEAT_VENTILATE_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FRVentilatingLevelReq, g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,        0x1);
                        break;
                    
                    case CMD_RL_SEAT_HEAT_SET_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RLHeatingLevelReq, g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,    0x1);
                        break;
                        
                    case CMD_RL_SEAT_VENTILATE_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RLVentilatingLevelReq, g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,        0x1);
                        break;
                        
                    case CMD_RR_SEAT_HEAT_SET_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RRHeatingLevelReq, g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,    0x1);
                        break;
                        
                    case CMD_RR_SEAT_VENTILATE_E:
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RRVentilatingLevelReq, g_remoteControlParamValue);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,        0x1);
                        break;
                        
                    default:
                        break;
                }
            }
        }
        break;
        
        case ECU_BCM_E: 
        {
            switch(g_remoteControlCmdId)
            {
                case CMD_MID_CTRL_LOCK_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_UnlockDoorReq,          0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_UnlockDoorReqVD,        0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LockDoorReq,          0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LockDoorReqVD,        0x1);
                    }
                    break;
                    
                    
                case CMD_LOW_BEAM_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LowBeamLightOnReq,    0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LowBeamLightOnReqVD,  0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LowBeamLightOffReq,    0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LowBeamLightOffReqVD,  0x1);
                    }   
                    break;
                    
                    
                case CMD_HORN_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HornReq,              0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HornReqVD,            0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HornOffReq,            0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HornOffReqVD,          0x1);
                    }
                    break;
                    
                case CMD_WIN_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsOpenReq,       0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsOpenReqVD,     0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsCloseReq,       0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsCloseReqVD,     0x1);
                    }
                    break;
                    
                    
                case CMD_HAZARD_LAMP_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HazardLightOnReq,     0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HazardLightOnReqVD,   0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HazardLightOffReq,     0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HazardLightOffReqVD,   0x1);
                    }   
                    break;
                    
                    
                case CMD_TRUNK_AJAR_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_TrunkUnlockReq,       0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_TrunkUnlockReqVD,     0x1);
                    }
                    break;
                    
                case CMD_SUN_ROOF_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_SunRoofOpenReq,       0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_SunRoofOpenReqVD,     0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_SunRoofCloseReq,       0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_SunRoofCloseReqVD,     0x1);
                    }
                    break;
                    
                    
                case CMD_LEFT_TURN_LAMP_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_VehSearchReq,         0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_VehSearchReqVD,       0x1);
                    }
                    break;
                    
                case CMD_PARK_LAMP_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_ParkingLampOnReq,     0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_ParkingLampOnReqVD,   0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_ParkingLampOffReq,     0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_ParkingLampOffReqVD,   0x1);
                    }
                    break;
                    
                    
                case CMD_WIN_VENTILATE_SET_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsVentilateModeReq, 0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsVentilateModeReqVD, 0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsVentilateModeCloseReq, 0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_WindowsVentilateModeCloseReqVD, 0x1);
                    }
                    break;
                   
                case CMD_MID_CTRL_FBD_LOCK_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LockDoorForceReq,     0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_LockDoorForceReqVD,   0x1);
                    }
                    break;
                    
                case CMD_HAZARD_LAMP_OFF_E:
                    if(g_remoteControlParamValue == 1)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_AllHazardLightOffReq,     0x1);
                    }
                    break;
                default:
                    break;
            }
        }
        break;
        
        case ECU_PLGM_E: 
        {
            if(g_remoteControlCmdId == CMD_DOORS_SET_E)
            {
                if(g_remoteControlParamValue == 1)
                {
                    if(g_remoteControlPlgmFrameTime == 0U)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_TrunkUnlockReq,   0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_TrunkUnlockReqVD, 0x1);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMOpenReq,      0x1);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMOpenReqVD,    0x1);
                    }
                }
                else
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMCloseReq,   0x1);
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMCloseReqVD, 0x1);
                }
            }
        }
        break;

        default:
            break;
    }
}

/*************************************************
 Function:        RemoteControlSpecialPackReqCanSignal
 Description:     Pack special remote control signals into CAN frame
 Input:           None
 Output:          None
 Return:          None
 Others:          Sets special CAN signal values based on ECU type and command ID
                  Uses RemoteCtrlSignalValToCanFrame to encode signal values
                  Handles special cases and configurations for different ECUs
 *************************************************/
static void RemoteControlSpecialPackReqCanSignal(void)
{
    memset(g_remoteControlCanBuf, 0x0, sizeof(g_remoteControlCanBuf));
    
    switch(g_remoteControlEcuId)
    {
        case ECU_HVSM_E: 
        {
            if(g_remoteControlHvsmPepsCheck == 0U)
            {
                RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReq,   0);
                RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_EngineStartReqVD, 0);
            }
            else
            {
                switch(g_remoteControlCmdId)
                {
                    case CMD_M_SEAT_HEAT_SET_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FLHeatingLevelReq,    0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,       0x0);
                        break;
                    }
                    
                    case CMD_M_SEAT_VENTILATE_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FLVentilatingLevelReq,    0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,           0x0);
                        break;
                    }
                    
                    case CMD_S_SEAT_HEAT_SET_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FRHeatingLevelReq,        0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,           0x0);
                        break;
                    }
                    
                    case CMD_S_SEAT_VENTILATE_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_FRVentilatingLevelReq,    0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,           0x0);
                        break;
                    }
                    
                    case CMD_RL_SEAT_HEAT_SET_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RLHeatingLevelReq,        0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,           0x0);
                        break;
                    }
                    
                    case CMD_RL_SEAT_VENTILATE_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RLVentilatingLevelReq,    0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,           0x0);
                        break;
                    }

                    case CMD_RR_SEAT_HEAT_SET_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RRHeatingLevelReq,        0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,           0x0);
                        break;
                    }
                    
                    case CMD_RR_SEAT_VENTILATE_E:
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_RRVentilatingLevelReq,    0x4);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_HVSMCtrlModeSt,           0x0);
                        break;
                    }

                    
                    default:
                        break;
                }
            }
        }
        break;
        
        case ECU_PLGM_E: 
        {
            if(g_remoteControlCmdId == CMD_DOORS_SET_E)
            {
                if(g_remoteControlParamValue == 1)
                {
                    if(g_remoteControlPlgmFrameTime == 0U)
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_TrunkUnlockReq,       0x0);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_TrunkUnlockReqVD,     0x0);
                    }
                    else
                    {
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMOpenReq,          0x0);
                        RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMOpenReqVD,        0x0);
                    }
                }
                else
                {
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMCloseReq,          0x0);
                    RemoteCtrlSignalValToCanFrame(g_remoteControlCanBuf, TEL_PLGMCloseReqVD,        0x0);
                }
            }
            break;
        }
        
        default:
            break;
    }
}

/*************************************************
 * Function:        RemoteControlCheckResCanSignal
 * Description:     Check if the CAN bus signals match the expected values after sending commands
 *                  This step is to check if the bus signals are as expected after sending the command
 *                  No validity check is needed here, but a timer will be used later
 *                  If the expected values are not reached when the timer expires, it will be considered a failure
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Check corresponding signal status based on different ECU and command IDs
 *************************************************/
static RemoteControlProcessResult_t RemoteControlCheckResCanSignal(void)
{
    RemoteControlProcessResult_t checkResult = RemoteControlResult_Fail_e;
    
    // Check corresponding signal status based on ECU type and command ID
    switch(g_remoteControlEcuId)
    {
        case ECU_PEPS_E:
            checkResult = CheckPepsCommandResult();
            break;
            
        case ECU_HVSM_E:
            checkResult = CheckHvsmCommandResult();
            break;
            
        case ECU_BCM_E:
            checkResult = CheckBcmCommandResult();
            break;
        
        case ECU_HVAC_E:
            checkResult = CheckHvacCommandResult();
            break;
        
        case ECU_PLGM_E:
            checkResult = CheckPlgmCommandResult();
            break;

        default:
            // Unsupported ECU type
            break;
    }
    return checkResult;
}

/*************************************************
 * Function:       CheckPepsCommandResult
 * Description:    Check execution results of PEPS related commands
 * Input:          None
 * Return:         Check result (RemoteControlResult_Success_e or RemoteControlResult_Fail_e)
 *************************************************/
static RemoteControlProcessResult_t CheckPepsCommandResult(void)
{
    RemoteControlProcessResult_t result = RemoteControlResult_Fail_e;
    
    switch(g_remoteControlCmdId)
    {
        case CMD_ENGINE_SET_E:
            if((g_remoteControlParamValue == 1U && g_remoteControlSignalInfo.EMS_EngSt == 1U) || 
               (g_remoteControlParamValue != 1U && g_remoteControlSignalInfo.BCM_KeySt == 0U))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
            
        case CMD_ENGINE_MODE_2_ON_E:
            if(g_remoteControlSignalInfo.PEPS_Crankallow == 1U)
            {
                result = RemoteControlResult_Success_e;
            }
            break;

        case CMD_POWER_SET_E:
            if((g_remoteControlParamValue == 1U && g_remoteControlSignalInfo.BCM_KeySt == 2U) || 
               (g_remoteControlParamValue != 1U && g_remoteControlSignalInfo.BCM_KeySt == 0U))
            {
                result = RemoteControlResult_Success_e;
            }
            break;

        case CMD_ENGINE_ENABLE_E:
            if((g_remoteControlParamValue == 1U && g_remoteControlSignalInfo.PEPS_EngForbidSt == 1U) || 
               (g_remoteControlParamValue != 1U && g_remoteControlSignalInfo.PEPS_EngForbidSt == 0U))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
            
        default:
            break;
    }
    
    return result;
}

/*************************************************
 * Function:       CheckHvsmCommandResult
 * Description:    Check execution results of HVSM related commands
 * Input:          None
 * Return:         Check result
 *************************************************/
static RemoteControlProcessResult_t CheckHvsmCommandResult(void)
{
    RemoteControlProcessResult_t result = RemoteControlResult_Fail_e;
    
    if(g_remoteControlHvsmPepsCheck == 0U)
    {
        if(g_remoteControlSignalInfo.EMS_EngSt == 1U)
        {
            result = RemoteControlResult_Success_e;
        }
    }
    else
    {
        switch(g_remoteControlCmdId)
        {
            case CMD_M_SEAT_HEAT_SET_E:
                if(g_remoteControlSignalInfo.HVSM_FLHeatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;
                
            case CMD_M_SEAT_VENTILATE_E:
                if(g_remoteControlSignalInfo.HVSM_FLVentilatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;
                
            case CMD_S_SEAT_HEAT_SET_E:
                if(g_remoteControlSignalInfo.HVSM_FRHeatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;
                
            case CMD_S_SEAT_VENTILATE_E:
                if(g_remoteControlSignalInfo.HVSM_FRVentilatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;
            
            case CMD_RL_SEAT_HEAT_SET_E:
                if(g_remoteControlSignalInfo.HVSMR_RLHeatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;
                
            case CMD_RL_SEAT_VENTILATE_E:
                if(g_remoteControlSignalInfo.HVSMR_RLVentilatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;
            
            case CMD_RR_SEAT_HEAT_SET_E:
                if(g_remoteControlSignalInfo.HVSMR_RRHeatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;

            case CMD_RR_SEAT_VENTILATE_E:
                if(g_remoteControlSignalInfo.HVSMR_RRVentilatingActLevel == g_remoteControlParamValue)
                {
                    result = RemoteControlResult_Success_e;
                }
                break;
                
            default:
                break;
        }
    }
    
    return result;
}

/*************************************************
 Function:        CheckHvacCommandResult
 Description:     Check execution results of HVAC related commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates HVAC system responses against command parameters
                  Checks various HVAC signals like temperature, fan speed, mode, etc.
                  Currently most checks are commented out
 *************************************************/
static RemoteControlProcessResult_t CheckHvacCommandResult(void)
{
    RemoteControlProcessResult_t result = RemoteControlResult_Fail_e;
    if(g_remoteControlHvacPepsCheck == 0U)
    {
        if(g_remoteControlSignalInfo.EMS_EngSt == 1U)
        {
            result = RemoteControlResult_Success_e;
        }
    }
    else
    {
        if(g_remoteControlSignalInfo.HVACF_TelematicsSt == 1U)
        {
            switch(g_remoteControlCmdId)
            {
                case CMD_AC_SPEED_SET_E:
                    if(g_remoteControlSignalInfo.HVACF_WindExitSpd == g_remoteControlParamValue)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;

                case CMD_AC_FRONT_DEF_SET_E:
                    if((g_remoteControlParamValue == 0x1) &&
                    (g_remoteControlSignalInfo.HVACF_WindExitMode == 5U))
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    if((g_remoteControlParamValue == 0x0) &&
                    (g_remoteControlSignalInfo.HVACF_WindExitMode == 0U))
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;

                case CMD_AC_REAR_DEF_SET_E:
                    if(g_remoteControlParamValue == g_remoteControlSignalInfo.HVACF_RearDefrostSt)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;
                
                case CMD_AC_TEMP_SET_E:
                    if(g_remoteControlParamValue == g_remoteControlSignalInfo.HVACF_DriverTempSelect)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;

                case CMD_AC_AIR_CAL_REQ_E:
                    if((g_remoteControlParamValue == 0) && (g_remoteControlSignalInfo.HVACF_AirCirculationSt == 1U))
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    else if((g_remoteControlParamValue == 1) && (g_remoteControlSignalInfo.HVACF_AirCirculationSt == 2U))
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;
                    
                case CMD_AC_WIND_EXIT_MODE_E:
                    if(g_remoteControlParamValue == g_remoteControlSignalInfo.HVACF_WindExitMode)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;
                
                case CMD_AC_REQ_E:
                    if(g_remoteControlParamValue == g_remoteControlSignalInfo.HVACF_ACSt)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                
                    break;
                
                case CMD_AC_AUTOST_E:
                    if(g_remoteControlParamValue == g_remoteControlSignalInfo.HVACF_AutoSt)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;

                case CMD_AC_ION_REQ_E:
                    if(g_remoteControlParamValue == g_remoteControlSignalInfo.HVACF_IonMode)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;
                
                case CMD_AC_TEMP_AUTO_SET_E:
                    if(g_remoteControlParamValue == g_remoteControlSignalInfo.HVACF_TempSelectAuto)
                    {
                        result = RemoteControlResult_Success_e;
                    }
                    break;
                default:
                    break;
            }
        }
    }
    
    return result;
}

/*************************************************
 * Function:       CheckBcmCommandResult
 * Description:    Check execution results of BCM related commands
 * Input:          None
 * Return:         Check result
 *************************************************/
static RemoteControlProcessResult_t CheckBcmCommandResult(void)
{
    RemoteControlProcessResult_t result = RemoteControlResult_Fail_e;
    switch(g_remoteControlCmdId)
    {
        case CMD_MID_CTRL_LOCK_E:
            if((g_remoteControlParamValue == 1 && g_remoteControlSignalInfo.BCM_DriverDoorLockSt == 0x0 && 
                g_remoteControlSignalInfo.BCM_PsngrDoorLockSt == 0x0) || 
               (g_remoteControlParamValue != 1 && g_remoteControlSignalInfo.BCM_DriverDoorLockSt == 0x1 && 
                g_remoteControlSignalInfo.BCM_PsngrDoorLockSt == 0x1))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
            
        case CMD_LOW_BEAM_SET_E:
            if((g_remoteControlParamValue == 1 && g_remoteControlSignalInfo.BCM_LowBeamSt == 0x1) || 
               (g_remoteControlParamValue != 1 && g_remoteControlSignalInfo.BCM_LowBeamSt == 0x0))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
            
        case CMD_HORN_SET_E:
            if((g_remoteControlParamValue == 1 && g_remoteControlSignalInfo.BCM_HornSt == 0x1) || 
               (g_remoteControlParamValue != 1 && g_remoteControlSignalInfo.BCM_HornSt == 0x0))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
            
        case CMD_WIN_SET_E:
            if((g_remoteControlParamValue == 1 && 
                g_remoteControlSignalInfo.FLDCM_FLWinSt == 0x3 &&
                g_remoteControlSignalInfo.FLDCM_RLWinSt == 0x3 &&
                g_remoteControlSignalInfo.FRDCM_FRWinSt == 0x3 &&
                g_remoteControlSignalInfo.FRDCM_RRWinSt == 0x3) ||
               (g_remoteControlParamValue != 1 && 
                g_remoteControlSignalInfo.FLDCM_FLWinSt == 0x1 &&
                g_remoteControlSignalInfo.FLDCM_RLWinSt == 0x1 &&
                g_remoteControlSignalInfo.FRDCM_FRWinSt == 0x1 &&
                g_remoteControlSignalInfo.FRDCM_RRWinSt == 0x1))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
         
        case CMD_HAZARD_LAMP_SET_E:
            if(g_remoteControlParamValue == 1)
            {
                if(((g_remoteControlSignalInfo.BCM_TEL_HazLampCtrlSt == 0x1)&&
                   (g_remoteControlSignalInfo.BCM_HazardLampSt == 0x1)) ||
                   (g_remoteControlSignalInfo.GWM_HazardLampSt == 0x1))
                {
                    result = RemoteControlResult_Success_e;
                }
                else if((g_remoteControlSignalInfo.BCM_TEL_HazLampCtrlSt == 0x0)&&
                        (g_remoteControlSignalInfo.BCM_HazardLampSt == 0x1))
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_HAZARD_LAMP_ON;
                }
            }
            else
            {
                if(g_remoteControlSignalInfo.BCM_HazardLampSt == 0x0)
                {
                    result = RemoteControlResult_Success_e;
                }
                else if((g_remoteControlSignalInfo.BCM_TEL_HazLampCtrlSt == 0x0)&&
                        (g_remoteControlSignalInfo.BCM_HazardLampSt == 0x1))
                {
                    g_remoteControlErrorCode = REMOTE_CONTROL_ERR_HAZARD_LAMP_ON;
                }
            }
            break;
        
        case CMD_TRUNK_AJAR_E:
            if(g_remoteControlSignalInfo.BCM_TrunkAjarSt == 0x1)
            {
                result = RemoteControlResult_Success_e;
            }
            break;
        
        case CMD_SUN_ROOF_SET_E:
            if((g_remoteControlParamValue == 1 && 
                g_remoteControlSignalInfo.BCM_SunRoofPstSt != 0x0 &&
                g_remoteControlSignalInfo.BCM_SunRoofPstSt != 0x4) ||
               (g_remoteControlParamValue != 1 && 
                g_remoteControlSignalInfo.BCM_SunRoofPstSt == 0x0))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
        
        case CMD_LEFT_TURN_LAMP_E:
            if((g_remoteControlParamValue == 1 && g_remoteControlSignalInfo.BCM_LeftTurnLampSt == 0x1) || 
               (g_remoteControlParamValue != 1 && g_remoteControlSignalInfo.BCM_LeftTurnLampSt == 0x0))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
        
        case CMD_PARK_LAMP_SET_E:
            if((g_remoteControlParamValue == 1 && g_remoteControlSignalInfo.BCM_ParkingLampSt == 0x1) || 
               (g_remoteControlParamValue != 1 && g_remoteControlSignalInfo.BCM_ParkingLampSt == 0x0))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
        
        case CMD_WIN_VENTILATE_SET_E:
            if((g_remoteControlParamValue == 1 && 
                g_remoteControlSignalInfo.FLDCM_FLWinVentilateModeSt == 0x1 &&
                g_remoteControlSignalInfo.FRDCM_FRWinVentilateModeSt == 0x1 &&
                g_remoteControlSignalInfo.FLDCM_RLWinVentilateModeSt == 0x1 &&
                g_remoteControlSignalInfo.FRDCM_RRWinVentilateModeSt == 0x1) ||
               (g_remoteControlParamValue != 1 && 
                g_remoteControlSignalInfo.FLDCM_FLWinVentilateModeSt == 0x0 &&
                g_remoteControlSignalInfo.FRDCM_FRWinVentilateModeSt == 0x0 &&
                g_remoteControlSignalInfo.FLDCM_RLWinVentilateModeSt == 0x0 &&
                g_remoteControlSignalInfo.FRDCM_RRWinVentilateModeSt == 0x0))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
        
        case CMD_MID_CTRL_FBD_LOCK_E:
            if((g_remoteControlSignalInfo.BCM_DriverDoorLockSt == 0x1)&&
               (g_remoteControlSignalInfo.BCM_PsngrDoorLockSt == 0x1))
            {
                result = RemoteControlResult_Success_e;
            }
            break;
        case CMD_HAZARD_LAMP_OFF_E:
            if(g_remoteControlSignalInfo.BCM_TEL_HazLampCtrlSt == 0x0)
            {
                result = RemoteControlResult_Success_e;
            }
            break;
        default:
            
            break;
    }
    
    return result;
}

/*************************************************
 Function:        CheckPlgmCommandResult
 Description:     Check execution results of PLGM related commands
 Input:           None
 Output:          None
 Return:          RemoteControlProcessResult_t - Success or Failure
 Others:          Validates door control commands execution
                  Checks door status signals
                  Handles different command scenarios with appropriate error handling
 *************************************************/
static RemoteControlProcessResult_t CheckPlgmCommandResult(void) 
{
    RemoteControlProcessResult_t result = RemoteControlResult_Fail_e;

    switch(g_remoteControlCmdId)
    {
        case CMD_DOORS_SET_E:
        if(g_remoteControlParamValue == 1)
        {
            if((g_remoteControlSignalInfo.PLGM_DoorSt == 0x1)||
               (g_remoteControlSignalInfo.PLGM_DoorSt == 0x5))
            {
                result = RemoteControlResult_Success_e;
            }
            else if (((g_remoteControlSignalInfo.PLGM_RemoteControlSt == 0x2)||
                     (g_remoteControlSignalInfo.PLGM_RemoteControlSt == 0x3))&&
                     (g_remoteControlSignalInfo.PLGM_DoorSt != 0x1)||
                     (g_remoteControlSignalInfo.PLGM_DoorSt != 0x5))
            {
                g_remoteControlErrorCode = REMOTE_CONTROL_ERR_CODE_NO_NAME;
            }
        }
        else
        {
            if(g_remoteControlSignalInfo.PLGM_DoorSt == 0x2)
            {
                result = RemoteControlResult_Success_e;
            }
        }
            break;
        default:
            break;
    }
    return result;
}

/*************************************************
 Function:        RemoteCtrlSignalValSet
 Description:     Sets remote control signal value into CAN frame buffer
 Input:           buf - Buffer to store CAN frame data
                  sig - Remote control request signal ID
                  value - Signal value to be set
 Output:          None
 Return:          None
 Others:          Converts signal value to CAN frame format
                 Marks HVAC signals as set in global array
*************************************************/
static void RemoteCtrlSignalValSet(uint8_t *buf, RemoteControlReqSignalId_t sig, double value)
{
    RemoteCtrlSignalValToCanFrame(buf, sig, value);
    if ((uint32_t)sig < (uint32_t)TEL_RemoteControlReqSignalIdMax)
    {
        g_hvacSignalSet[sig - TEL_HVACF_TempSelectManualReq] = 1U;
    }
}

/*************************************************
 Function:        XteaEncipher64
 Description:     XTEA encryption algorithm implementation
 Input:           v[2] - 64-bit plaintext input
                  k[4] - 128-bit encryption key
 Output:          v[2] - 64-bit ciphertext output (overwritten)
 Return:          None
 Others:          Performs 64 rounds of XTEA encryption
                  Uses the standard delta value 0x9E3779B9
 *************************************************/
 static void XteaEncipher64(uint32_t v[2], const uint32_t k[4])
{
    uint32_t v0 = v[0], v1 = v[1];
    uint32_t sum = 0U;
    const uint32_t delta = 0x9E3779B9u;
    for (uint32_t i = 0; i < 64U; i++) {
        v0 += ((((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + k[sum & 3U]));
        sum += delta;
        v1 += ((((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + k[(sum >> 11) & 3U]));
    }
    v[0] = v0; v[1] = v1;
}

/*************************************************
 Function:        BuildVFromCanRandom
 Description:     Converts CAN random bytes to XTEA input vector
 Input:           canRandom[8] - Random bytes from CAN message
 Output:          v[2] - XTEA encryption input vector
 Return:          None
 Others:          Reverses byte order (CAN Byte0..7 = RD7..RD0)
                  Constructs 32-bit values for v[0] and v[1]
 *************************************************/
static void BuildVFromCanRandom(const uint8_t canRandom[8], uint32_t v[2])
{
    uint8_t RD[8];
    /* 还原 RD：can Byte0..7 分别是 RD7..RD0 */
    for (int i = 0; i < 8; ++i) { RD[7 - i] = canRandom[i]; }

    v[0] = ((uint32_t)RD[3] << 24) | ((uint32_t)RD[2] << 16)
         | ((uint32_t)RD[1] << 8 ) |  (uint32_t)RD[0];
    v[1] = ((uint32_t)RD[7] << 24) | ((uint32_t)RD[6] << 16)
         | ((uint32_t)RD[5] << 8 ) |  (uint32_t)RD[4];
}

/*************************************************
 Function:        BuildKFromEsk
 Description:     Convert ESK bytes to XTEA key array
 Input:           esk[16] - 16-byte ESK data
 Output:          k[4] - 4-element XTEA key array
 Return:          None
 Others:          k[0]=(ESK[3]..ESK[0]), k[1]=(ESK[7]..ESK[4]), etc.
 *************************************************/
static void BuildKFromEsk(const uint8_t esk[16], uint32_t k[4])
{
    for (int w = 0; w < 4; ++w) {
        int b = w * 4;
        k[w] = ((uint32_t)esk[b + 3] << 24) | ((uint32_t)esk[b + 2] << 16)
             | ((uint32_t)esk[b + 1] << 8 ) |  (uint32_t)esk[b + 0];
    }
}

/*************************************************
 Function:        BcmAuthCalcKey
 Description:     Calculate authentication key for BCM module
 Input:           canRandom[8] - 8-byte random data from CAN
                  esk[16] - 16-byte ESK data
 Output:          outKey[8] - 8-byte output key
 Return:          None
 Others:          Output order follows CAN frame sequence: Byte0..7 = SR7..SR0
 *************************************************/
static void BcmAuthCalcKey(const uint8_t canRandom[8], const uint8_t esk[16], uint8_t outKey[8])
{
    uint32_t v[2], k[4];
    BuildVFromCanRandom(canRandom, v);
    BuildKFromEsk(esk, k);
    XteaEncipher64(v, k);

    uint8_t SR[8];
    SR[0] = (uint8_t)( v[0]        & 0xFFu);
    SR[1] = (uint8_t)((v[0] >>  8) & 0xFFu);
    SR[2] = (uint8_t)((v[0] >> 16) & 0xFFu);
    SR[3] = (uint8_t)((v[0] >> 24) & 0xFFu);
    SR[4] = (uint8_t)( v[1]        & 0xFFu);
    SR[5] = (uint8_t)((v[1] >>  8) & 0xFFu);
    SR[6] = (uint8_t)((v[1] >> 16) & 0xFFu);
    SR[7] = (uint8_t)((v[1] >> 24) & 0xFFu);

    /* CAN 发送次序：SR7..SR0 */
    outKey[0] = SR[7]; outKey[1] = SR[6]; outKey[2] = SR[5]; outKey[3] = SR[4];
    outKey[4] = SR[3]; outKey[5] = SR[2]; outKey[6] = SR[1]; outKey[7] = SR[0];
}

/*************************************************
 Function:        XteaEncipher32
 Description:     Perform 32-round XTEA encryption
 Input:           v[2] - 64-bit plaintext input
                  k[4] - 128-bit encryption key
 Output:          v[2] - 64-bit ciphertext output (overwrites input)
 Return:          None
 Others:          Implements standard XTEA algorithm with 32 rounds
 *************************************************/
static void XteaEncipher32(uint32_t v[2], const uint32_t k[4])
{
    uint32_t v0 = v[0], v1 = v[1];
    uint32_t sum = 0U;
    const uint32_t delta = 0x9E3779B9u;
    for (uint32_t i = 0; i < 32U; i++) {
        v0 += ((((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + k[sum & 3U]));
        sum += delta;
        v1 += ((((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + k[(sum >> 11) & 3U]));
    }
    v[0] = v0; v[1] = v1;
}

/*************************************************
 Function:        BuildKFromNewEsk
 Description:     Generate XTEA key array from transformed ESK
 Input:           esk[16] - 16-byte ESK data
 Output:          k[4] - 4-element XTEA key array
 Return:          None
 Others:          New ESK = ESK XOR "AF_EMSBCMPEPSTEL" (16-byte constant)
 *************************************************/
static void BuildKFromNewEsk(const uint8_t esk[16], uint32_t k[4])
{
    static const uint8_t s_const[16] = {
        /* "AF_EMSBCMPEPSTEL" */
        0x41,0x46,0x5F,0x45,0x4D,0x53,0x42,0x43,
        0x4D,0x50,0x45,0x50,0x53,0x54,0x45,0x4C
    };
    uint8_t nesk[16];
    for (int i = 0; i < 16; ++i) {
        nesk[i] = (uint8_t)(esk[i] ^ s_const[i]);
    }
    /* k[0]=(ESK[0]<<24)+…+ESK[3]，依次类推 */
    for (int w = 0; w < 4; ++w) {
        int b = w * 4;
        k[w] = ((uint32_t)nesk[b + 0] << 24) |
               ((uint32_t)nesk[b + 1] << 16) |
               ((uint32_t)nesk[b + 2] <<  8) |
               ((uint32_t)nesk[b + 3] <<  0);
    }
}

/*************************************************
 Function:        BuildVFromRandom
 Description:     Assemble random bytes into XTEA input vector
 Input:           rnd[8] - 8-byte random data
 Output:          v[2] - 64-bit XTEA input vector
 Return:          None
 Others:          v[0]=(RD0..RD3), v[1]=(RD4..RD7) —— RD0 is the most significant byte
 *************************************************/
static void BuildVFromRandom(const uint8_t rnd[8], uint32_t v[2])
{
    v[0] = ((uint32_t)rnd[0] << 24) | ((uint32_t)rnd[1] << 16)
         | ((uint32_t)rnd[2] <<  8) |  (uint32_t)rnd[3];
    v[1] = ((uint32_t)rnd[4] << 24) | ((uint32_t)rnd[5] << 16)
         | ((uint32_t)rnd[6] <<  8) |  (uint32_t)rnd[7];
}

/*************************************************
 Function:        PepsAuthCalcKey8
 Description:     Calculate 8-byte PEPS authentication response
 Input:           rnd[8] - 8-byte random number from PEPS
                  esk[16] - Device ESK data
 Output:          out[8] - 8-byte output: {0x00,0x00,SR0,SR1,SR2,SR3,SR4,SR5}
 Return:          None
 Others:          First two bytes are always 0x00, followed by SR0..SR5
 *************************************************/
static void PepsAuthCalcKey8(const uint8_t rnd[8], const uint8_t esk[16], uint8_t out[8])
{
    uint32_t v[2], k[4];
    BuildVFromRandom(rnd, v);
    BuildKFromNewEsk(esk, k);
    XteaEncipher32(v, k);

    /* SR 提取规则：SR0..SR5 来自 v[0]/v[1] 的高→中两个字节 */
    out[0] = 0x00;
    out[1] = 0x00;
    out[2] = (uint8_t)((v[0] >> 24) & 0xFFu); /* SR0 */
    out[3] = (uint8_t)((v[0] >> 16) & 0xFFu); /* SR1 */
    out[4] = (uint8_t)((v[0] >>  8) & 0xFFu); /* SR2 */
    out[5] = (uint8_t)((v[0] >>  0) & 0xFFu); /* SR3 */
    out[6] = (uint8_t)((v[1] >> 24) & 0xFFu); /* SR4 */
    out[7] = (uint8_t)((v[1] >> 16) & 0xFFu); /* SR5 */
}

/*************************************************
 Function:        RemoteControlSetKeepWakeFlag
 Description:     Set the keep wake flag for remote control module
 Input:           keepWakeFlag - Flag value to set
 Output:          None
 Return:          None
 Others:          Updates the global keep wake flag variable
 *************************************************/
static void RemoteControlSetKeepWakeFlag(uint8_t keepWakeFlag)
{
    g_remoteControlKeepWakeFlag = keepWakeFlag;
}

/*************************************************
 Function:        RemoteControlGetKeepWakeFlag
 Description:     Get the current keep wake flag value
 Input:           None
 Output:          None
 Return:          uint8_t - Current keep wake flag value
 Others:          Returns the global keep wake flag variable
 *************************************************/
uint8_t RemoteControlGetKeepWakeFlag(void)
{
    return g_remoteControlKeepWakeFlag;
}

/*************************************************
  Function:        RemoteConreolReqWakeStateMachine
  Description:     Manage the state machine for remote wake requests
  Input:           None
  Output:          None
  Return:          None
  Others:          Sets or clears subnet wakeup requests based on wake time and status
 *************************************************/
static void RemoteConreolReqWakeStateMachine(void)
{
    if(g_remoteControlReqWakeStatus == REMOTE_CONTROL_REQ_WAKE_STATUS_NORMAL)
    {
        if(g_remoteControReqWakeTime != 0U)
        {
            AutosarNmSdkSetSubNetWakeupRequest(g_remoteControlReqWakeByte);
        }
        else if(g_remoteControReqWakeTime == 0U)
        {
            AutosarNmSdkClearSubNetWakeupRequest();
            g_remoteControlReqWakeByte = 0U;
            g_remoteControlReqWakeStatus = REMOTE_CONTROL_REQ_WAKE_STATUS_IDLE;
        }
    }
}

/*************************************************
  Function:        RemoteControlGetOtaFlag
  Description:     Get the current OTA flag value
  Input:           None
  Output:          None
  Return:          uint8_t - Current OTA flag value
  Others:          Returns the global remote control OTA flag variable
 *************************************************/
uint8_t RemoteControlGetOtaFlag(void)
{
    return g_remoteControlOTAFlag;
}

/*************************************************
  Function:        RemoteControlSendReqWakeUpResult
  Description:     Send wake-up request result to remote control
  Input:           None
  Output:          None
  Return:          None
  Others:          Creates and transmits wake-up result message through MPU HAL
 *************************************************/
static void RemoteControlSendReqWakeUpResult(void)
{
    g_remoteControlSendPack.aid = REMOTE_CONTROL_AID;
    g_remoteControlSendPack.mid = REMOTE_CONTROL_MID;
    g_remoteControlSendPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_RESULT;

    memset(g_remoteControlSendBuffer,0,sizeof(g_remoteControlSendBuffer));
    g_remoteControlSendPack.dataBufferSize = sizeof(g_remoteControlSendBuffer);
    g_remoteControlSendBuffer[0] = REMOTE_CONTROL_CMD_WAKE_TYPE;
    g_remoteControlSendBuffer[1] = REMOTE_CONTROL_OTA_AND_WAKE_RESULT;
    g_remoteControlSendPack.pDataBuffer = g_remoteControlSendBuffer;
    g_remoteControlSendPack.dataLength = 2U;
    MpuHalTransmit(g_remoteControlUartHandle,&g_remoteControlSendPack,MPU_HAL_UART_MODE);
    LogHalUpLoadLog("RC Send WakeUp Ack");
}

/*************************************************
  Function:        RemoteControlSendIntoOtaModeResult
  Description:     Send OTA mode entry result to remote control
  Input:           None
  Output:          None
  Return:          None
  Others:          Creates and transmits OTA mode result message through MPU HAL
 *************************************************/
static void RemoteControlSendIntoOtaModeResult(void)
{
    g_remoteControlSendPack.aid = REMOTE_CONTROL_AID;
    g_remoteControlSendPack.mid = REMOTE_CONTROL_MID;
    g_remoteControlSendPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_RESULT;

    memset(g_remoteControlSendBuffer,0,sizeof(g_remoteControlSendBuffer));
    g_remoteControlSendPack.dataBufferSize = sizeof(g_remoteControlSendBuffer);
    g_remoteControlSendBuffer[0] = REMOTE_CONTROL_CMD_OTA_TYPE;
    g_remoteControlSendBuffer[1] = REMOTE_CONTROL_OTA_AND_WAKE_RESULT;
    g_remoteControlSendPack.pDataBuffer = g_remoteControlSendBuffer;
    g_remoteControlSendPack.dataLength = 2U;
    MpuHalTransmit(g_remoteControlUartHandle,&g_remoteControlSendPack,MPU_HAL_UART_MODE);
    LogHalUpLoadLog("RC Send Into Ota Mode Ack");
}

