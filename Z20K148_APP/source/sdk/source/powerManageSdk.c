/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: powerManageSdk.c
 Author: 
 Created Time: 
 Description: 
 Others: 
 *************************************************/
/****************************** include ***************************************/
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "powerManageSdk.h"
#include "secocSdk.h"
#include "peripheralHal.h"
#include "PowerManageHal.h"
#include "mpuHal.h"
#include "canHal.h"
#include "logHal.h"
#include "timerHal.h"
#include "gSensorHal.h"
#include "ecallHal.h"
#include "mpuPowerSyncSdk.h"
#include "parameterSyncSdk.h"
#include "autosarNmSdk.h"
#include "alarmSdk.h"
#include "remoteControl.h"
/****************************** Macro Definitions ******************************/
#define PM_SDK_DEBUG_NO_MPU             0
#define PM_SDK_SLEEP_ACK_HANDLE_MAX     30
#define PM_NM_SLEEP_STATUS_WAIT         0
#define PM_NM_SLEEP_STATUS_COMPLETE     1
#define PM_NM_SLEEP_STATUS_REWAKE       2
#define PM_NM_RESET_WAKE_LOCAL          1
#define PM_NM_RESET_WAKE_MPU            2
#define PM_NM_RESET_WAKE_BLE            3
#define PM_NM_RESET_WAKE_BLE_PARK       4
#define PM_NM_LOCAL_WAKE_DELAY_TIME     150
#define PM_MCU_SEND_SLEEP_CMD_TIMEOUT   2000
#define PM_NM_WAKEUP_SOURCE_MPU_NO_CAN  43U             //wake up no network msg send
/****************************** Type Definitions ******************************/
typedef struct 
{
    uint8_t ackFlag;
    uint8_t name[10];
}SleepAckManage_t;

typedef enum
{
    E_PM_STATE_UNPOWED = 0,
    E_PM_STATE_POWER_ON,//1
    E_PM_STATE_NMPU_SLEEP,//2
    E_PM_STATE_NMPU_PRE_CHECK_CAN,//3
    E_PM_STATE_NMPU_WAKE,//4
    E_PM_STATE_NMPU_DELAY,//5
    E_PM_STATE_NMPU_CHECK_NM_STATUS,//6
    E_PM_STATE_WAKE,//7
    E_PM_STATE_WAKE_DELAY,//8
    E_PM_STATE_CHECK_NM_STATUS,//9
    E_PM_STATE_PRE_SLEEP_NOTICE,//10
    E_PM_STATE_PRE_SLEEP_WAIT,//11
    E_PM_STATE_MCU_SLEEP,//12
    E_PM_STATE_PRE_CHECK_CAN,//13
    E_PM_STATE_GET_MPU_WAKE_SOURCE,//14    
    E_PM_STATE_GET_MPU_SLEEP_FINISH,//15
}PmSdkState_e;

#pragma pack(push,4)
typedef struct
{
    uint8_t degInfo;
    uint8_t canNmType;
    uint32_t wakeDelayTime;
    PmWakeCallFun_t wakeupFun;
    PmSdkState_e pmState;    
    uint8_t wakeResetFlag;
    uint8_t sleepState;
    uint8_t deepSleepFlag;
    SleepAckManage_t sleepAck[PM_SDK_SLEEP_ACK_HANDLE_MAX];
    uint8_t sleepOpenCount;
    uint8_t testMode;
    uint8_t forceSleepFlag;
    uint8_t wakeupSource;
    uint8_t mpuWakeSource;
    uint32_t wakeupCount;
    uint32_t wakeDelayCount;
    uint8_t kl30OffFlag;
    uint32_t kl30WakeCount;
    uint32_t kl30WakeDelay;
    uint32_t remoteControlWakeTimeoutCount;
    uint32_t preSleepNoticeCount;
    uint8_t fastSleepFlag; /*快速休眠标志*/
    const PmSdkConfig_t *pPmConfig;
    
}PmSdkManage_t;
#pragma pack(pop)

/****************************** Global Variables ******************************/
static PmSdkManage_t g_pmManage;
static uint16_t g_pmNmLocalWakeupTime = 0U;
static uint8_t g_pmMpuWakeUpFlag = 0U;
/****************************** Function Declarations *************************/
static uint8_t CanWakeUpSourceIsValid(uint8_t wakeSource);
static void WakeDelayProcess(uint8_t mcuWakeSource, uint8_t mpuWakeSource,uint32_t *pWakeDelayTime);
static void PmAwakeInitProcess(uint8_t wakeupSource);
static void PmPreSleepProcess(void);
static void PmNmAllStart(uint8_t active);
#if(0)
static void PmNmGetWakeMsgReceiveState(uint8_t* pWakeMsgRxFlag, uint8_t* pWakeChannel);
#endif
static void PmNmGotoAwakeMode(uint8_t wakeupSource);
static void PmNmGotoSleepMode(void);
static void PmNmGetMsgReceiveState(uint8_t* pMsgRxFlag,uint8_t* pRxChannel);
static void PmNmGetSleepStatus(uint8_t* pNmSleepStatus, uint8_t* pWakeChannel);
static void PmNmOsekGetSleepAck(uint8_t* pAck);
static int16_t PmGetBleWakeState(void);
static int16_t PmMpuStartIsFinished(void);
static uint8_t PmGetCanWakeupSourceByChannel(uint8_t canChannel);
static uint8_t PmGetNoAckHandle(uint8_t* pHandle);
static void PrintNoAckName(uint8_t handle);
static void ClearAllSleepAckFlag(void);
static void PmStatePowerOnProcess(uint32_t cycleTime);
static void PmStateNmpuSleep(uint32_t cycleTime);
static void PmStateNmpuWake(uint32_t cycleTime);
static void PmStateNmpuDelay(uint32_t cycleTime);
static void PmStateNmpuCheckNmStatusProcess(uint32_t cycleTime);
static void PmStateGetMpuSleepFinishProcess(uint32_t cycleTime);
static void PmStateWakeProcess(uint32_t cycleTime);
static void PmStateWakeDelayProcess(uint32_t cycleTime);
static void PmStateCheckNmStatusProcess(uint32_t cycleTime);
static void PmStatePreSleepNoticeProcess(uint32_t cycleTime);
static void PmStatePreSleepWaitProcess(uint32_t cycleTime);
static void PmStateMcuSleepProcess(uint32_t cycleTime);
static void PmStatePreCheckCanProcess(uint32_t cycleTime);
static void PmStateGetMpuWakeSourceProcess(uint32_t cycleTime);
static uint8_t PowerManageSdkGetMpuWakeUpFlag(void);

/****************************** Public Function Implementations ***************/
/*************************************************
  Function:       PowerManageSdkInit
  Description:    Initialize power management SDK
  Input:          pmConfig: Pointer to power management configuration structure
  Output:         None
  Return:         PM_SDK_STATUS_OK if initialization succeeded, PM_SDK_STATUS_ERR otherwise
  Others:         Initializes global power management state variables in g_pmManage
*************************************************/
int16_t PowerManageSdkInit(const PmSdkConfig_t* pmConfig)
{
    int16_t result = PM_SDK_STATUS_ERR; // 默认返回错误状态
    
    if(pmConfig != NULL)
    {
        // g_pmManage.degInfo = pmConfig->degInfo;
        // g_pmManage.canNmType = pmConfig->canNmType;       
        // g_pmManage.kl30WakeDelay = pmConfig->kl30OffWakeDelay;
        // g_pmManage.mpuDeepSleep = pmConfig->mpuDeepSleep;
        // g_pmManage.gSensorDeepSleep = pmConfig->gSensorDeepSleep;
        g_pmManage.wakeupFun = pmConfig->wakeupFun;
        g_pmManage.wakeDelayTime = pmConfig->wakeDelayTime;
        g_pmManage.pPmConfig = pmConfig;
        g_pmManage.pmState = E_PM_STATE_UNPOWED;
        g_pmManage.wakeupSource = 0;
        g_pmManage.wakeupCount = 0;
        g_pmManage.testMode = 0;
        g_pmManage.forceSleepFlag = 0;
        g_pmManage.sleepOpenCount = 0;
        g_pmManage.kl30OffFlag = 0;
        g_pmManage.sleepState = 1;
        g_pmManage.mpuWakeSource = 0;
        g_pmManage.preSleepNoticeCount = 0;
        g_pmManage.fastSleepFlag = 0; 
        result = PM_SDK_STATUS_OK;
    }
    
    return result;
}

/*************************************************
  Function:       PowerManageSdkCycleProcess
  Description:    Power management main state machine cycle processing function
  Input:          cycleTime: Periodic call cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         This function must be called periodically to drive
                  the power management state machine
*************************************************/
void PowerManageSdkCycleProcess(uint32_t cycleTime)
{
    if(E_PM_STATE_UNPOWED == g_pmManage.pmState)
    {
        
    }
    else if(E_PM_STATE_POWER_ON == g_pmManage.pmState)
    {
        PmStatePowerOnProcess(cycleTime);
    }
    else if(E_PM_STATE_NMPU_SLEEP == g_pmManage.pmState)
    {
        PmStateNmpuSleep(cycleTime);
    }
    else if(E_PM_STATE_NMPU_WAKE == g_pmManage.pmState)
    {
        PmStateNmpuWake(cycleTime);
    }
    else if(E_PM_STATE_NMPU_DELAY == g_pmManage.pmState)
    {
        PmStateNmpuDelay(cycleTime);
    }
    else if(E_PM_STATE_NMPU_CHECK_NM_STATUS == g_pmManage.pmState)
    {
        PmStateNmpuCheckNmStatusProcess(cycleTime);
    }
    else if(E_PM_STATE_GET_MPU_SLEEP_FINISH == g_pmManage.pmState)
    {
        PmStateGetMpuSleepFinishProcess(cycleTime);
    }
    else if(E_PM_STATE_WAKE == g_pmManage.pmState)
    {
        PmStateWakeProcess(cycleTime);
    }
    else if(E_PM_STATE_WAKE_DELAY == g_pmManage.pmState)
    {
        PmStateWakeDelayProcess(cycleTime);
    }
    else if(E_PM_STATE_CHECK_NM_STATUS == g_pmManage.pmState)
    {
        PmStateCheckNmStatusProcess(cycleTime);
    }
    else if(E_PM_STATE_PRE_SLEEP_NOTICE == g_pmManage.pmState)
    {
        PmStatePreSleepNoticeProcess(cycleTime);
    }
    else if(E_PM_STATE_PRE_SLEEP_WAIT == g_pmManage.pmState)
    {
        PmStatePreSleepWaitProcess(cycleTime);
    }
    else if(E_PM_STATE_MCU_SLEEP == g_pmManage.pmState)
    {
        PmStateMcuSleepProcess(cycleTime);
    }
    else if(E_PM_STATE_PRE_CHECK_CAN == g_pmManage.pmState)
    {
        PmStatePreCheckCanProcess(cycleTime);
    }
    else if(E_PM_STATE_GET_MPU_WAKE_SOURCE == g_pmManage.pmState)
    {
        PmStateGetMpuWakeSourceProcess(cycleTime);
    }
    else 
    {
        //PeripheralHalMcuHardReset();
    }
}

/*************************************************
  Function:       PowerManageSdkPowerOn
  Description:    Enter power-on state of power management SDK
  Input:          None
  Output:         None
  Return:         None
  Others:         Initializes power management state to POWER_ON
                  and must be protected by critical section
*************************************************/
void PowerManageSdkPowerOn(void)
{
    /*进入临界区保护*/
    taskENTER_CRITICAL();
    /*电源管理状态初始化*/
    g_pmManage.pmState = E_PM_STATE_POWER_ON;
    /*进入临界区保护*/
    taskEXIT_CRITICAL();   
}

/*************************************************
  Function:       PowerManageSdkSetWakeDelay
  Description:    Set wake delay time for power management
  Input:          time: Wake delay time in milliseconds
  Output:         None
  Return:         PM_SDK_STATUS_OK always
  Others:         Wake delay affects transition timing after wakeup
*************************************************/
int16_t PowerManageSdkSetWakeDelay(uint32_t time)
{
    /*进入临界区保护*/
    taskENTER_CRITICAL();
    /*电源管理状态初始化*/
    g_pmManage.wakeDelayTime = time;
    /*进入临界区保护*/
    taskEXIT_CRITICAL();
    return PM_SDK_STATUS_OK;
}

/*************************************************
  Function:       PowerManageSdkResetWake
  Description:    Reset wake state according to specified wake mode
  Input:          wakeMode: Wake reset mode definition
  Output:         None
  Return:         PM_SDK_STATUS_OK always
  Others:         Used to force wake state re-evaluation
*************************************************/
int16_t PowerManageSdkResetWake(uint8_t wakeMode)
{
    /*电源管理状态初始化*/
    g_pmManage.wakeResetFlag = wakeMode+1;
    return PM_SDK_STATUS_OK;
}

/*************************************************
  Function:       PowerManageSdkOpenHandle
  Description:    Open a sleep acknowledgement handle
  Input:          pName: Pointer to handle name string
  Output:         None
  Return:         Handle index if success, -1 if failed
  Others:         Handle is used for sleep acknowledgement management
*************************************************/
int16_t PowerManageSdkOpenHandle(const char* pName)
{
    int16_t handle = -1;
    uint32_t len;
    
    /*进入临界区保护*/
    taskENTER_CRITICAL();
    if(g_pmManage.sleepOpenCount<30)
    {
        /*创建句柄*/
        handle  = g_pmManage.sleepOpenCount;
        g_pmManage.sleepOpenCount++;
    }
    /*进入临界区保护*/
    taskEXIT_CRITICAL();
    if(handle>=0)
    {
        /*初始化sleepAck相关变量 */
        g_pmManage.sleepAck[handle].ackFlag = 0;
        if(pName!=NULL)
        {
            len = strlen(pName);
            if(len>9)
            {
                len = 9;
            }
            /*设置名称*/
            memcpy(g_pmManage.sleepAck[handle].name,pName,len);
            g_pmManage.sleepAck[handle].name[len] = 0;
        }
        else
        {
            g_pmManage.sleepAck[handle].name[0] = 0;
        }        
    }  
    return handle;
}

/*************************************************
  Function:       PowerManageSdkGetSleepState
  Description:    Get current sleep state of power management
  Input:          pmHandle: Power management handle (reserved)
  Output:         None
  Return:         Current sleep state
  Others:         Return value indicates whether system is awake or sleeping
*************************************************/
int16_t PowerManageSdkGetSleepState(int16_t pmHandle)
{
    return g_pmManage.sleepState;
}

/*************************************************
  Function:       PowerManageSdkSetSleepAck
  Description:    Set sleep acknowledgement flag for specified handle
  Input:          pmHandle: Power management handle
  Output:         None
  Return:         PM_SDK_STATUS_OK if success, PM_SDK_STATUS_ERR otherwise
  Others:         All opened handles must acknowledge before entering sleep
*************************************************/
int16_t PowerManageSdkSetSleepAck(int16_t pmHandle)
{
    if((pmHandle > 0) && (pmHandle<PM_SDK_SLEEP_ACK_HANDLE_MAX))
    {
        /*将sleep ack标志设置为1*/
        g_pmManage.sleepAck[pmHandle].ackFlag = 1;
        return PM_SDK_STATUS_OK;
    }
    else
    {
        return PM_SDK_STATUS_ERR;
    }
}

/*************************************************
  Function:       PowerManageSdkSetTestMode
  Description:    Enable or disable power management test mode
  Input:          mode: Test mode flag (0: disable, 1: enable)
  Output:         None
  Return:         PM_SDK_STATUS_OK if success, PM_SDK_STATUS_ERR otherwise
  Others:         Test mode allows force sleep behavior
*************************************************/
int16_t PowerManageSdkSetTestMode(uint8_t mode)
{
    if(mode<=1)
    {
        /*设置测试模式*/
        g_pmManage.testMode = mode;
        return PM_SDK_STATUS_OK;
    }
    else
    {
        return PM_SDK_STATUS_ERR;
    }
}

/*************************************************
  Function:       PowerManageSdkDeepSleep
  Description:    Set deep sleep flag for power management
  Input:          deepSleepFlag: Deep sleep enable flag
  Output:         None
  Return:         None
  Others:         This flag is synchronized to MPU power management
*************************************************/
void PowerManageSdkDeepSleep(uint8_t deepSleepFlag)
{
    /*设置深度休眠标志*/
    g_pmManage.deepSleepFlag = deepSleepFlag;
    /*设置MPU的深度休眠标志*/
    MpuPowerSyncSdkSetDeepSleepFlag(deepSleepFlag);
}

/*************************************************
  Function:       PowerManageSdkForceSleep
  Description:    Force system to enter sleep process
  Input:          None
  Output:         None
  Return:         None
  Others:         Used mainly in test or special control scenarios
*************************************************/
void PowerManageSdkForceSleep(void)
{
    /*设置强制休眠标志*/
    g_pmManage.forceSleepFlag = 1;
}

/*************************************************
  Function:       PowerManageSdkGetPowerInfo
  Description:    Get current power management information
  Input:          pPmState: Pointer to power management state
                  pWakeupSource: Pointer to wakeup source
                  pWakeCount: Pointer to wakeup count
  Output:         Power management status information
  Return:         None
  Others:         Output parameters can be NULL if not needed
*************************************************/
void PowerManageSdkGetPowerInfo(uint8_t* pPmState,uint8_t* pWakeupSource,uint32_t* pWakeCount)
{
    if(pPmState!=NULL)
    {
        /*设置强制休眠标志*/
        *pPmState = g_pmManage.pmState;
    }
    if(pWakeupSource!=NULL)
    {
        /*设置强制休眠标志*/
        *pWakeupSource = g_pmManage.wakeupSource;
    }
    if(pWakeCount!=NULL)
    {
        /*设置强制休眠标志*/
        *pWakeCount = g_pmManage.wakeupCount;
    }
}

/*************************************************
  Function:       PowerManageSdkSetMpuWakeUpFlag
  Description:    Set MPU wake-up flag
  Input:          flag: MPU wake-up flag value
  Output:         None
  Return:         None
  Others:         Used for MPU–MCU wake synchronization
*************************************************/
void PowerManageSdkSetMpuWakeUpFlag(uint8_t flag)
{
    g_pmMpuWakeUpFlag = flag;
}

/*************************************************
  Function:       PowerManageSdkSetFastSleep
  Description:    Enable or disable fast sleep mode
  Input:          fastSleepFlag: Fast sleep enable flag
  Output:         None
  Return:         None
  Others:         Fast sleep skips部分休眠流程
*************************************************/
void PowerManageSdkSetFastSleep(uint8_t fastSleepFlag)
{
    g_pmManage.fastSleepFlag = fastSleepFlag;
}

/*************************************************
  Function:       PowerManageSdkGetFastSleep
  Description:    Get fast sleep mode status
  Input:          None
  Output:         None
  Return:         Fast sleep flag status
  Others:         Non-zero indicates fast sleep enabled
*************************************************/
uint8_t PowerManageSdkGetFastSleep(void)
{
    return g_pmManage.fastSleepFlag;
}

/****************************** Private Function Implementations ***************/
/*************************************************
  Function:       CanWakeUpSourceIsValid
  Description:    Check whether CAN wakeup source is valid
  Input:          wakeSource: Wakeup source value
  Output:         None
  Return:         0 if valid, 1 if invalid
  Others:         Used for CAN wake source filtering
*************************************************/

static uint8_t CanWakeUpSourceIsValid(uint8_t wakeSource)
{
    return ((wakeSource >= PM_HAL_WAKEUP_SOURCE_CAN1) && (wakeSource <= PM_HAL_WAKEUP_SOURCE_CAN8)) ? 0 : 1;
}

/*************************************************
  Function:       WakeDelayProcess
  Description:    Calculate and adjust wake delay time
  Input:          mcuWakeSource: MCU wakeup source
                  mpuWakeSource: MPU wakeup source
                  pWakeDelayTime: Pointer to wake delay time
  Output:         Wake delay time
  Return:         None
  Others:         May invoke user-registered wakeup callback
*************************************************/
static void WakeDelayProcess(uint8_t mcuWakeSource, uint8_t mpuWakeSource, uint32_t *pWakeDelayTime)
{
    if(CanWakeUpSourceIsValid(mcuWakeSource) == 0)
    {
        *pWakeDelayTime = 0;
    }
    if(g_pmManage.wakeupFun != NULL)
    {
        g_pmManage.wakeupFun(mcuWakeSource,mpuWakeSource,pWakeDelayTime);
    }    
}

/*************************************************
  Function:       PmAwakeInitProcess
  Description:    Initialize awake state variables
  Input:          wakeupSource: Wakeup source
  Output:         None
  Return:         None
  Others:         Called after system wakeup
*************************************************/
static void PmAwakeInitProcess(uint8_t wakeupSource)
{
    g_pmManage.sleepState = 1;
}

/*************************************************
  Function:       PmPreSleepProcess
  Description:    Prepare system for sleep state
  Input:          None
  Output:         None
  Return:         None
  Others:         Clears sleep state flag
*************************************************/
static void PmPreSleepProcess(void)
{
    g_pmManage.sleepState = 0;
}

/*************************************************
  Function:       PmNmAllStart
  Description:    Start or stop network management
  Input:          active: Network request flag
  Output:         None
  Return:         None
  Others:         Supports AUTOSAR or OSEK NM
*************************************************/
static void PmNmAllStart(uint8_t active)
{
    if(1 == g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkNetworkRequest(active);
    }
    else if(2 == g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}
#if(0)
static void PmNmGetWakeMsgReceiveState(uint8_t* pWakeMsgRxFlag, uint8_t* pWakeChannel )
{
    if(1 == g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetNetManageReceiveStatus(0,pWakeMsgRxFlag);
        *pWakeChannel = 0;
        AutosarNmSdkGetNetManageReceiveStatusClear(0);
    }
    else if(2 == g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}
#endif

/*************************************************
  Function:       PmNmGotoAwakeMode
  Description:    Switch network management to awake mode
  Input:          wakeupSource: Wakeup source
  Output:         None
  Return:         None
  Others:         Requests network based on wake source
*************************************************/
static void PmNmGotoAwakeMode(uint8_t wakeupSource)
{
    if(1 == g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        if(CanWakeUpSourceIsValid(wakeupSource) == 0)
        {
            AutosarNmSdkNetworkRequest(0);
        }
        else
        {
            AutosarNmSdkNetworkRequest(1);
        }
        
    }
    else if(2 == g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

/*************************************************
  Function:       PmNmGotoSleepMode
  Description:    Switch network management to sleep mode
  Input:          None
  Output:         None
  Return:         None
  Others:         Releases network request
*************************************************/
static void PmNmGotoSleepMode(void)
{
    if(1 == g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        AutosarNmSdkNetworkRelease(0);
        
    }
    else if(2 == g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

/*************************************************
  Function:       PmNmGetMsgReceiveState
  Description:    Get network message receive state
  Input:          pMsgRxFlag: Message receive flag
                  pRxChannel: Receive channel
  Output:         Message receive state
  Return:         None
  Others:         Used to detect CAN activity
*************************************************/
static void PmNmGetMsgReceiveState(uint8_t* pMsgRxFlag,uint8_t* pRxChannel)
{
    if(1 == g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetCanStatus(0, pMsgRxFlag);
        *pRxChannel = 0;
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

/*************************************************
  Function:       PmNmGetSleepStatus
  Description:    Get network management sleep status
  Input:          pNmSleepStatus: Sleep status
                  pWakeChannel: Wakeup channel
  Output:         Sleep status information
  Return:         None
  Others:         Supports AUTOSAR NM
*************************************************/
static void PmNmGetSleepStatus(uint8_t* pNmSleepStatus, uint8_t* pWakeChannel )
{
    if(1 == g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetSleepStatus(0, pNmSleepStatus);
        *pWakeChannel = 0;
    }
    else if(2 == g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

/*************************************************
  Function:       PmNmOsekGetSleepAck
  Description:    Get OSEK network management sleep ACK
  Input:          pAck: ACK flag
  Output:         ACK state
  Return:         None
  Others:         Placeholder for OSEK NM
*************************************************/
static void PmNmOsekGetSleepAck(uint8_t* pAck)
{
    if(1 == g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理*/
        *pAck = 0;
    }
    else if(2 == g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

/*************************************************
  Function:       PmGetBleWakeState
  Description:    Get BLE wakeup state
  Input:          None
  Output:         None
  Return:         BLE wake state
  Others:         Used to detect BLE wake events
*************************************************/
static int16_t PmGetBleWakeState(void)
{
    return 1;
}

/*************************************************
  Function:       PmMpuStartIsFinished
  Description:    Check whether MPU startup is finished
  Input:          None
  Output:         None
  Return:         0 if finished, 1 otherwise
  Others:         Depends on MPU power sync status
*************************************************/
static int16_t PmMpuStartIsFinished(void)
{
    int16_t result = 1; 
    
#if(PM_SDK_DEBUG_NO_MPU)
    result = 0;
#else
    // if((MpuPowerSyncSdkGetNadModuleStatus()==0) && (ParameterSyncSdkGetFromCpuIsFinished()==0))
    if((MpuPowerSyncSdkGetNadModuleStatus() == 0))
    {
        result = 0;
    }
#endif
    
    return result;
}

/*************************************************
  Function:       PmGetCanWakeupSourceByChannel
  Description:    Convert CAN channel to wakeup source
  Input:          canChannel: CAN channel index
  Output:         None
  Return:         Wakeup source value
  Others:         Supports CAN1–CAN8 mapping
*************************************************/
static uint8_t PmGetCanWakeupSourceByChannel(uint8_t canChannel)
{
    uint8_t wakeupSource = 0; 
    
    if(canChannel <= 7)
    {
        wakeupSource = PM_HAL_WAKEUP_SOURCE_CAN1 + canChannel;
    }
    
    return wakeupSource;
}

/*************************************************
  Function:       PmGetNoAckHandle
  Description:    Find sleep handle without ACK
  Input:          pHandle: Pointer to handle index
  Output:         Handle index
  Return:         1 if found, 0 if all ACKed
  Others:         Used during pre-sleep checking
*************************************************/
static uint8_t PmGetNoAckHandle(uint8_t* pHandle)
{
    uint8_t i,num,result;
    
    result = 0;
    num = g_pmManage.sleepOpenCount;
    
    for(i = 0;i < num; i++)
    {
        if(0 == g_pmManage.sleepAck[i].ackFlag)
        {
            result = 1;
            break;
        }
    }
    if(0 == result)
    {
        *pHandle = i;
    }    
    return result;
    
}

/*************************************************
  Function:       PrintNoAckName
  Description:    Print name of handle without ACK
  Input:          handle: Handle index
  Output:         None
  Return:         None
  Others:         Used for debug and log output
*************************************************/
static void PrintNoAckName(uint8_t handle)
{
    if(handle < g_pmManage.sleepOpenCount)
    {
        TBOX_PRINT("task--%s ack missing\n",g_pmManage.sleepAck[handle].name);
    }
    else
    {
        TBOX_PRINT("invalid handle when print ack missing\n");
    }
}

/*************************************************
  Function:       ClearAllSleepAckFlag
  Description:    Clear all sleep acknowledgement flags
  Input:          None
  Output:         None
  Return:         None
  Others:         Called after wakeup or reset
*************************************************/
static void ClearAllSleepAckFlag(void)
{
    uint8_t i,num;

    num = g_pmManage.sleepOpenCount;
    
    for(i = 0;i < num; i++)
    {
        g_pmManage.sleepAck[i].ackFlag = 0;
    }
}

/*************************************************
  Function:       PmStatePowerOnProcess
  Description:    Handle POWER_ON state processing for local wake (KL15) and NM start/stop decision
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - When KL15 is ON, accumulates local wake delay and starts NM after delay
                  - When KL15 is OFF, releases NM and moves to NM sleep-status check state
*************************************************/
static void PmStatePowerOnProcess(uint32_t cycleTime)
{
    if(PeripheralHalGetKl15Status() == 1)
    {
        g_pmNmLocalWakeupTime += cycleTime;
        if(g_pmNmLocalWakeupTime >= PM_NM_LOCAL_WAKE_DELAY_TIME)
        {
            g_pmNmLocalWakeupTime = 0U;
            PmNmAllStart(1);
            PmAwakeInitProcess(PM_HAL_WAKEUP_SOURCE_KL15);
            WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,(uint32_t*)&g_pmManage.wakeDelayTime);
            g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        }
    }
    else
    {
        PmNmGotoSleepMode();
        g_pmManage.pmState = E_PM_STATE_NMPU_CHECK_NM_STATUS;
    }
}

/*************************************************
  Function:       PmStateNmpuSleep
  Description:    Handle NMPU_SLEEP state and detect wakeup triggers while MPU is not ready
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Checks wake sources in priority: KL15, BLE, CAN NM receive flag, MPU-start finished
                  - On wake trigger, requests NM awake mode and transitions to NMPU_WAKE
                  - If MPU-start finished, transitions to PRE_SLEEP_NOTICE
*************************************************/
static void PmStateNmpuSleep(uint32_t cycleTime)
{
    uint8_t wakeupSource = PM_HAL_WAKEUP_SOURCE_NONE;
    
    if(PeripheralHalGetKl15Status() == 1)
    {
        wakeupSource  = PM_HAL_WAKEUP_SOURCE_KL15;
        PmNmGotoAwakeMode(wakeupSource);
        PmAwakeInitProcess(wakeupSource);
        WakeDelayProcess(wakeupSource,0x00,(uint32_t*)&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
#if(SECOC_ENABLE == 1)
        SecocSdkWakeUp();
#endif
    }
    else if(PmGetBleWakeState() == 0)
    {
        wakeupSource  = PM_HAL_WAKEUP_SOURCE_BLE;
        PmNmGotoAwakeMode(wakeupSource);
        PmAwakeInitProcess(wakeupSource);
        WakeDelayProcess(wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
#if(SECOC_ENABLE == 1)
        SecocSdkWakeUp();
#endif
    }
    else if(CanHalReceiveCanNmFlagCheck() != 0U)
    {
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_CAN2;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
    }
    else if(PmMpuStartIsFinished() == 0)
    {
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
    }    
}

/*************************************************
  Function:       PmStateNmpuWake
  Description:    Handle NMPU_WAKE state and decide whether to enter full WAKE or delay shutdown
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - If KL15 turns OFF, transitions to NMPU_DELAY and resets wakeDelayCount
                  - If MPU-start finished, transitions to WAKE (MCU fully awake workflow)
*************************************************/
static void PmStateNmpuWake(uint32_t cycleTime)
{
    if(PeripheralHalGetKl15Status() == 0)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_DELAY;
        g_pmManage.wakeDelayCount = 0;
    }
    else if(PmMpuStartIsFinished() == 0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
    }
}

/*************************************************
  Function:       PmStateNmpuDelay
  Description:    Handle NMPU_DELAY state and manage delay window before NM sleep request
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - If KL15 returns ON, transitions back to NMPU_WAKE and recalculates wake delay
                  - If MPU-start finished, transitions to WAKE_DELAY (enter MCU wake-delay workflow)
                  - If delay expires, releases NM and transitions to NMPU_CHECK_NM_STATUS
*************************************************/
static void PmStateNmpuDelay(uint32_t cycleTime)
{
    if(PeripheralHalGetKl15Status() == 1)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);        
    }
    else if(PmMpuStartIsFinished() == 0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmNmLocalWakeupTime = 0U;

    }
    else if(g_pmManage.wakeDelayCount >= g_pmManage.wakeDelayTime)
    {
        PmNmGotoSleepMode();
        g_pmManage.pmState = E_PM_STATE_NMPU_CHECK_NM_STATUS;
    }
    else 
    {
        g_pmManage.wakeDelayCount += cycleTime;
    }
}

/*************************************************
  Function:       PmStateNmpuCheckNmStatusProcess
  Description:    Handle NMPU_CHECK_NM_STATUS state and evaluate NM sleep completion / re-wake events
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Queries NM sleep status and wake channel
                  - If KL15 ON: forces NM awake and transitions to NMPU_WAKE
                  - If NM indicates REWAKE: maps channel to wake source, requests NM awake, transitions to NMPU_WAKE
                  - If NM indicates COMPLETE: clears CAN-NM receive flag, marks pre-sleep, transitions to NMPU_SLEEP
                  - If MPU-start finished: transitions to CHECK_NM_STATUS (MCU-side NM check)
*************************************************/
static void PmStateNmpuCheckNmStatusProcess(uint32_t cycleTime)
{
    uint8_t nmSleepStatus = 0;
    uint8_t wakeChannel = 0;
    uint8_t wakeupSource;
    
    PmNmGetSleepStatus(&nmSleepStatus,&wakeChannel) ;
    if(PeripheralHalGetKl15Status() == 1)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);
        PmNmGotoAwakeMode(PM_HAL_WAKEUP_SOURCE_KL15);
    }
    else if(nmSleepStatus == PM_NM_SLEEP_STATUS_REWAKE )
    {
        wakeupSource = PmGetCanWakeupSourceByChannel(wakeChannel);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        WakeDelayProcess(wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        PmNmGotoAwakeMode(wakeupSource);
    }
    else if(nmSleepStatus == PM_NM_SLEEP_STATUS_COMPLETE)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_SLEEP;
        CanHalClearReceiveCanNmFlag();
        PmPreSleepProcess();
    }
    else if(PmMpuStartIsFinished() == 0)
    {
        g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;
    }

}

/*************************************************
  Function:       PmStateGetMpuSleepFinishProcess
  Description:    Wait for MPU sleep entry completion and decide MCU sleep transition
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Reads MPU sleep status from power sync SDK
                  - When MPU reports sleep complete, transitions to MCU_SLEEP
*************************************************/
static void PmStateGetMpuSleepFinishProcess(uint32_t cycleTime)
{ 
    uint8_t mpuSleepStatus;
    mpuSleepStatus = MpuPowerSyncSdkGetSleepStatus();
    if(mpuSleepStatus==0)
    {
        g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
    }    
}

/*************************************************
  Function:       PmStateWakeProcess
  Description:    Handle WAKE state and decide whether to enter pre-sleep path when KL15 OFF or force sleep in test mode
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - In test mode: if forceSleepFlag set, transitions to PRE_SLEEP_NOTICE
                  - In normal mode: if KL15 OFF, transitions to WAKE_DELAY and resets counters
*************************************************/
static void PmStateWakeProcess(uint32_t cycleTime)
{
   if(g_pmManage.testMode!=0) 
   {
       if(g_pmManage.forceSleepFlag!=0)
       {
            g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
            g_pmManage.wakeDelayCount = 0;
       }
   }
   else if(PeripheralHalGetKl15Status() == 0)
   {
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeDelayCount = 0;
   }    
}

/*************************************************
  Function:       PmStateWakeDelayProcess
  Description:    Handle WAKE_DELAY state and manage delayed sleep entry conditions and wake reset events
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Handles KL15 re-on debounce (local wake delay before returning to WAKE)
                  - Keeps system awake if RemoteControl/OTA/MPU keep-wake flags are active
                  - Clears/reset wakeDelayCount when wakeResetFlag is asserted (LOCAL/MPU/BLE)
                  - Handles KL30 OFF delay window before transitioning to CHECK_NM_STATUS
                  - If sleepAck asserted: transitions to PRE_SLEEP_NOTICE
                  - If sleep is disabled by MPU sync: only accumulates delay count
                  - When KL15 OFF: releases NM and transitions to CHECK_NM_STATUS (with special MPU-wake delay window)
*************************************************/
static void PmStateWakeDelayProcess(uint32_t cycleTime)
{
    uint8_t sleepAck = 0;

    PmNmOsekGetSleepAck(&sleepAck );
    if(g_pmManage.kl30OffFlag != 0)
    {
        g_pmManage.kl30OffFlag = 0;
    }
    else if(PeripheralHalGetKl15Status() != 0)
    {
        g_pmNmLocalWakeupTime += cycleTime;
        if(g_pmNmLocalWakeupTime >= PM_NM_LOCAL_WAKE_DELAY_TIME)
        {
            g_pmNmLocalWakeupTime = 0U;
            g_pmManage.pmState = E_PM_STATE_WAKE;
            g_pmManage.wakeDelayCount = 0;
            g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL15;
            PmNmGotoAwakeMode(g_pmManage.wakeupSource);
            PmAwakeInitProcess(g_pmManage.wakeupSource);
            WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        }
    }
    if((RemoteControlGetKeepWakeFlag() == 1) || (RemoteControlGetOtaFlag() == 1) || (MpuPowerSyncSdkGetWakeFlag() == 1))
    {
        PmNmAllStart(1);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_LOCAL)
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeResetFlag = 0;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_MPU)
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeResetFlag = 0;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_BLE)
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeResetFlag = 0;
    }
    else if(PeripheralHalGetKl30Status() == 0)
    {
        g_pmManage.kl30WakeCount++;
        if(g_pmManage.kl30WakeCount >= g_pmManage.pPmConfig->kl30OffWakeDelay)
        {
            PmNmGotoSleepMode();
            g_pmManage.wakeDelayCount = 0;
            g_pmManage.kl30WakeCount = 0;
            g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;            
        }
    }
    else if(sleepAck == 1)
    {
        PmNmGotoSleepMode();
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
    }
    else if(MpuPowerSyncSdkGetSleepDisableState() != 0)
    {
        g_pmManage.wakeDelayCount += cycleTime;
    }
    else if(PeripheralHalGetKl15Status() == 0)
    {
        PmNmGotoSleepMode();
        if((g_pmManage.wakeupSource == PM_HAL_WAKEUP_SOURCE_MPU) || (PowerManageSdkGetMpuWakeUpFlag() == 0x01))
        {
           g_pmManage.wakeDelayCount += cycleTime;
            if(g_pmManage.wakeDelayCount >= 2000)               //delay for remote control cmd
            {
                g_pmManage.wakeDelayCount = 0;
                g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;
            }
        }
        else
        {
            g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;
        }
    }
    else 
    {
        g_pmManage.wakeDelayCount += cycleTime;
    }    
}

/*************************************************
  Function:       PmStateCheckNmStatusProcess
  Description:    Handle CHECK_NM_STATUS state and evaluate whether NM has completed sleep or triggered re-wake
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - If NM sleep COMPLETE: clears CAN-NM flag, transitions to PRE_SLEEP_NOTICE
                  - If NM indicates REWAKE: requests NM awake and transitions to WAKE_DELAY
                  - If KL15 ON: prepares KL15 wake and transitions to WAKE_DELAY
                  - If RemoteControl/OTA/MPU keep-wake flags: transitions to WAKE_DELAY with MPU wake source
                  - If MPU sleep-disable state asserted: transitions to WAKE_DELAY using MPU wake source
                  - If wakeResetFlag asserted (LOCAL/MPU/BLE) or KL30 OFF flag set: forces wake path and transitions to WAKE_DELAY
*************************************************/
static void PmStateCheckNmStatusProcess(uint32_t cycleTime)
{
    uint8_t sleepStatus = 0;
    uint8_t wakeChannel;
    
    PmNmGetSleepStatus(&sleepStatus ,&wakeChannel);
    if(sleepStatus == PM_NM_SLEEP_STATUS_COMPLETE)
    {
        CanHalClearReceiveCanNmFlag();
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
        g_pmManage.wakeDelayCount = 0;
        TBOX_PRINT("PmStateCheckNmStatusProcess--%d\r\n",sleepStatus);
    }
    else if(sleepStatus == PM_NM_SLEEP_STATUS_REWAKE)
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_CAN2;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_CAN1,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(PeripheralHalGetKl15Status() != 0)
    {
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL15;
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if((RemoteControlGetKeepWakeFlag() == 1) || (RemoteControlGetOtaFlag() == 1) || (MpuPowerSyncSdkGetWakeFlag() == 1))   //add for off ignore kl15 remote wakeup
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.mpuWakeSource = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(MpuPowerSyncSdkGetSleepDisableState() != 0)
    {
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_MPU;
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_LOCAL)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeResetFlag = 0;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_MPU)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeResetFlag = 0;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_BLE)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeResetFlag = 0;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_BLE;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.kl30OffFlag != 0)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.kl30OffFlag = 0;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL30;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
}

/*************************************************
  Function:       PmStatePreSleepNoticeProcess
  Description:    Handle PRE_SLEEP_NOTICE state and notify MPU to enter sleep mode (normal / fast / deep sleep)
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Sets sleepState to 0 and resets wakeDelayCount
                  - If MPU deep sleep enabled: requests MPU sleep based on deepSleepFlag
                  - Else: selects fast sleep or normal sleep according to fastSleepFlag
                  - Transitions to PRE_SLEEP_WAIT after issuing MPU sleep request
*************************************************/
static void PmStatePreSleepNoticeProcess(uint32_t cycleTime)
{
    g_pmManage.sleepState = 0;
    g_pmManage.wakeDelayCount = 0;
#if (PM_SDK_DEBUG_NO_MPU)
#else
    if(g_pmManage.pPmConfig->deepSleepConfig.mpuDeepSleep != 0)
    {
        MpuPowerSyncSdkSetSleep(g_pmManage.deepSleepFlag);
    }
    else
    {
        if(PowerManageSdkGetFastSleep() != 0)
        {
            /*快速休眠模式*/
            MpuPowerSyncSdkSetSleep(3);
        }
        else
        {
            /*正常休眠模式*/
            MpuPowerSyncSdkSetSleep(0);
        }
    }
#endif
    g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_WAIT;
}

/*************************************************
  Function:       PmStatePreSleepWaitProcess
  Description:    Handle PRE_SLEEP_WAIT state and wait for MPU sleep readiness plus local sleep ACK aggregation
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Polls MPU sleep status and accumulates timeout counter
                  - If MPU sleep ready: checks local sleepAck handles; prints missing ACK name on timeout; then enters MCU_SLEEP
                  - If KL15 ON: cancels sleep, clears ACK flags, triggers wake path, transitions to WAKE_DELAY
                  - If RemoteControl/OTA/MPU keep-wake flags: transitions to WAKE_DELAY (MPU wake source)
                  - If MPU sleep-disable asserted: cancels sleep and transitions to WAKE_DELAY
                  - If wakeResetFlag asserted (LOCAL/MPU/BLE): cancels sleep and transitions to WAKE_DELAY
                  - If MPU wake flag detected: transitions to GET_MPU_WAKE_SOURCE for wake reason fetch
                  - If send-sleep command timeout: retries PRE_SLEEP_NOTICE with retry counter and fallback to MCU_SLEEP
*************************************************/
static void PmStatePreSleepWaitProcess(uint32_t cycleTime)
{
    uint8_t mpuSleepStatus = 0;
    uint8_t noAckHandle = 0;
    uint8_t ret;
    //uint8_t wakeSource = 0;
#if(PM_SDK_DEBUG_NO_MPU)    
    mpuSleepStatus = 0;
#else
    mpuSleepStatus = MpuPowerSyncSdkGetSleepStatus();
#endif
    g_pmManage.wakeDelayCount += cycleTime;
    if(mpuSleepStatus == 0)
    {
#if(PM_SDK_DEBUG_NO_MPU)
        ret = 0;
#else
        ret = PmGetNoAckHandle(&noAckHandle); 
#endif
        if(ret != 0)
        {
            if(g_pmManage.wakeDelayCount >= 1000)
            {
                PrintNoAckName(noAckHandle);
                g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
            }
        } 
        else
        {
            g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
        }
    }
    else if(PeripheralHalGetKl15Status() != 0)
    {
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.sleepState = 1;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL15;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource, g_pmManage.mpuWakeSource, &g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if((RemoteControlGetKeepWakeFlag() == 1) || (RemoteControlGetOtaFlag() == 1) || (MpuPowerSyncSdkGetWakeFlag() == 1))   //add for off ignore kl15 remote wakeup
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.mpuWakeSource = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(MpuPowerSyncSdkGetSleepDisableState() != 0)
    {
        g_pmManage.sleepState = 1;
        g_pmNmLocalWakeupTime = 0U;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_MPU;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource, g_pmManage.mpuWakeSource, &g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_LOCAL)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.sleepState = 1;
        g_pmNmLocalWakeupTime = 0U;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource  = PM_HAL_WAKEUP_SOURCE_MPU;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource, g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_MPU)
    {
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.sleepState = 1;
        g_pmNmLocalWakeupTime = 0U;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_MPU;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource, g_pmManage.mpuWakeSource , &g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(g_pmManage.wakeResetFlag == PM_NM_RESET_WAKE_BLE)
    {
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.sleepState = 1;
        g_pmNmLocalWakeupTime = 0U;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_BLE;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource, g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(PowerManageSdkGetMpuWakeUpFlag() == 0x01)
    {
        g_pmManage.mpuWakeSource = PM_HAL_WAKEUP_SOURCE_MPU;
        PowerManageSdkSetMpuWakeUpFlag(0x00);
        MpuPowerSyncSdkSetWake(g_pmManage.mpuWakeSource);
        g_pmManage.pmState = E_PM_STATE_GET_MPU_WAKE_SOURCE;
        g_pmManage.wakeDelayCount = 0;
    }   
    else if(g_pmManage.wakeDelayCount >= PM_MCU_SEND_SLEEP_CMD_TIMEOUT)
    {
        g_pmManage.preSleepNoticeCount++;
        if(g_pmManage.preSleepNoticeCount > 60)
        {
            g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
            g_pmManage.preSleepNoticeCount = 0;
        }
        else
        {
            g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
        }
        g_pmManage.wakeDelayCount = 0;
    }
}

/*************************************************
  Function:       PmStateMcuSleepProcess
  Description:    Handle MCU_SLEEP state including peripheral low-power entry, platform sleep, and post-wakeup recovery
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Forces MPU wake-up flag cleared before sleeping
                  - Sets MPU/peripheral/CAN/timer/ecall/log modules into low-power
                  - Calls PowerManageHalSleep() to enter low power
                  - After wake: restores modules, gets wakeup source, increments wakeup count
                  - Decides next state by wakeup source:
                      * MPU wake: GET_MPU_WAKE_SOURCE and notify MPU wake
                      * CAN wake: PRE_CHECK_CAN (message receive validation)
                      * KL15/KL30 wake: WAKE_DELAY (local wake delay)
                      * Otherwise: releases NM and transitions to NMPU_CHECK_NM_STATUS
*************************************************/
static void PmStateMcuSleepProcess(uint32_t cycleTime)
{
    LogHalUpLoadLog("Mcu Ready Sleep");
    PowerManageSdkSetMpuWakeUpFlag(0x00);
    /*MPU进入低功耗*/
    MpuHalSetMode(0);
    /*设置peripheral模块进入低功耗*/
    PeripheralHalSetMode(0);
    /*设置蓝牙进入低功耗*/
    // BleHalSetMode(0);
    if((g_pmManage.deepSleepFlag == 1)&&(g_pmManage.pPmConfig->deepSleepConfig.gSensorDeepSleep == 1))
    {
        /*gSensor断电*/
        /*GSensorHalPowerOff();*/
    }
    /*设置can进入休眠*/
    CanHalSetMode(0);
    CanHalClearReceiveCanNmFlag();
    /*gSensor上电*/
    /*GSensorHalPowerOn();*/
    /*休眠前状态清零*/
    g_pmManage.preSleepNoticeCount = 0;
    g_pmManage.wakeDelayCount = 0;
    g_pmManage.kl30WakeCount = 0;
    TimerHalSetMode(0);
    EcallHalSetMode(0);
    EcallHalSetSrsEn(0);
    LogHalSetMode(0);
    /*进入低功耗函数*/
    PowerManageHalSleep();
    
    LogHalSetMode(1);
    AlarmSdkSetSelfcheckState(E_SELFCHECK_RUN_INIT);
//    GSensorHalInit(1);
    /*获取唤醒源*/
    g_pmManage.wakeupSource = PowerManageHalGetWakeupSource();
    TBOX_PRINT("Wakeup source is : %d\r\n",g_pmManage.wakeupSource);
    TimerHalSetMode(1);
    /*MPU进入正常模式*/
    MpuHalSetMode(1);
    LogHalUpLoadLog("wakeup source is %d\r\n", g_pmManage.wakeupSource);
    /*设置can进入正常模式*/
    CanHalSetMode(1);
    /*设置peripheral模块进入正常模式*/
    PeripheralHalSetMode(1);
    EcallHalSetMode(1);
    EcallHalSetSrsEn(1);
    /*设置蓝牙进入正常模式*/
    // BleHalSetMode(1);
    g_pmManage.wakeupCount++;
    ClearAllSleepAckFlag();
#if(SECOC_ENABLE == 1)
    SecocSdkWakeUp();
#endif
    if((g_pmManage.wakeupSource == PM_HAL_WAKEUP_SOURCE_MPU) || (PowerManageSdkGetMpuWakeUpFlag() == 0x01))
    {
        /*MPU唤醒处理*/
        g_pmManage.pmState = E_PM_STATE_GET_MPU_WAKE_SOURCE;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
    }
    else if(CanWakeUpSourceIsValid(g_pmManage.wakeupSource) == 0)
    {
        g_pmManage.pmState = E_PM_STATE_PRE_CHECK_CAN;
        g_pmManage.wakeDelayCount = 0;
    }
    else if((g_pmManage.wakeupSource == PM_HAL_WAKEUP_SOURCE_KL15)||(g_pmManage.wakeupSource == PM_HAL_WAKEUP_SOURCE_KL30))
    {
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
    }
    else
    {
        PmNmGotoSleepMode();
        g_pmManage.pmState = E_PM_STATE_NMPU_CHECK_NM_STATUS;
    }
}

/*************************************************
  Function:       PmStatePreCheckCanProcess
  Description:    Handle PRE_CHECK_CAN state and validate CAN/NM message reception after CAN wakeup
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - If KL15 ON: forces KL15 wake path and transitions to WAKE_DELAY
                  - If CAN NM receive flag set: forces CAN wake path and transitions to WAKE_DELAY
                  - If any CAN message received: resets timeout counter
                  - If no message within timeout window: transitions back to MCU_SLEEP
*************************************************/
static void PmStatePreCheckCanProcess(uint32_t cycleTime)
{
    uint8_t allCanReceiveFlag = 0U;
    uint8_t allCanRxChannel = 0U;

    PmNmGetMsgReceiveState(&allCanReceiveFlag,&allCanRxChannel);
    if(PeripheralHalGetKl15Status() != 0U)
    {
        /*KL15 ON 处理*/
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL15;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource, g_pmManage.mpuWakeSource , &g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(CanHalReceiveCanNmFlagCheck() != 0U)
    {
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_CAN2;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0U;
    }
    else if(allCanReceiveFlag)
    {
        g_pmManage.wakeDelayCount = 0U;
    }
    else if(g_pmManage.wakeDelayCount < 500U)
    {
        /*延迟计数*/
        g_pmManage.wakeDelayCount += cycleTime;
    }
    else 
    {
        /*报文接收超时休眠*/
        g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;;
    }
}

/*************************************************
  Function:       PmStateGetMpuWakeSourceProcess
  Description:    Handle GET_MPU_WAKE_SOURCE state and fetch MPU wake reason before completing MCU wake flow
  Input:          cycleTime: Periodic cycle time in milliseconds
  Output:         None
  Return:         None
  Others:         - Queries MPU wake status via power sync SDK
                  - If wake reason obtained: sets MPU wake source, requests NM awake, calculates wake delay, transitions to WAKE_DELAY
                  - If KL15 ON during waiting: forces KL15 wake path and transitions to WAKE_DELAY
                  - If RemoteControl/OTA/MPU keep-wake flags: maintains awake path and transitions to WAKE_DELAY
*************************************************/
static void PmStateGetMpuWakeSourceProcess(uint32_t cycleTime)
{
    uint8_t cpuWakeSource;
    int16_t ret;
    
    cpuWakeSource = 0;
#if(PM_SDK_DEBUG_NO_MPU)
    ret = 0;
#else
    ret = MpuPowerSyncSdkGetWakeStatus(&cpuWakeSource);
#endif
    if(ret == 0)
    {
        /*获取MPU唤醒源完成，执行MCU唤醒*/
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.mpuWakeSource = PM_HAL_WAKEUP_SOURCE_MPU;
        if(cpuWakeSource != PM_NM_WAKEUP_SOURCE_MPU_NO_CAN)
        {
            PmNmGotoAwakeMode(g_pmManage.wakeupSource);
            PmAwakeInitProcess(g_pmManage.wakeupSource);
        }
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(PeripheralHalGetKl15Status() != 0)
    {
        /*KL15 ON 处理*/
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL15;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    } 
    else if((RemoteControlGetKeepWakeFlag() == 1) || (RemoteControlGetOtaFlag() == 1) || (MpuPowerSyncSdkGetWakeFlag() == 1))   
    {
        g_pmNmLocalWakeupTime = 0U;
        g_pmManage.mpuWakeSource = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
}

/*************************************************
  Function:       PowerManageSdkSetMpuWakeUpFlag
  Description:    Set MPU wake-up flag
  Input:          flag: MPU wake-up flag value
  Output:         None
  Return:         None
  Others:         Used for MPU–MCU wake synchronization
*************************************************/
static uint8_t PowerManageSdkGetMpuWakeUpFlag(void)
{
    return g_pmMpuWakeUpFlag;
}
