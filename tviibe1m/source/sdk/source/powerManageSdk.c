#include <string.h>
#include "FreeRTOS.h"
#include "task.h"

#include "powerManageSdk.h"
#include "remoteControl.h"

#include "peripheralHal.h"
#include "PowerManageHal.h"
#include "mpuHal.h"
#include "bleHal.h"
#include "canHal.h"
#include "logHal.h"
#include "timerHal.h"

#include "mpuPowerSyncSdk.h"
#include "parameterSyncSdk.h"
#include "autosarNmSdk.h"
#include "ParameterStoreManageApp.h"

#define PM_SDK_DEBUG_NO_MPU            0



#define PM_SDK_SLEEP_ACK_HANDLE_MAX     30
#define PM_NM_SLEEP_STATUS_WAIT         0
#define PM_NM_SLEEP_STATUS_COMPLETE     1
#define PM_NM_SLEEP_STATUS_REWAKE       2
#define PM_NM_RESET_WAKE_LOCAL          1
#define PM_NM_RESET_WAKE_MPU            2
#define PM_NM_RESET_WAKE_BLE            3
#define PM_NM_RESET_WAKE_BLE_PARK       4


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
	uint8_t RemoteWakeFlag;
    uint32_t kl30WakeCount;
    uint32_t kl30WakeDelay;
    const PmSdkConfig_t *pPmConfig;
    
}PmSdkManage_t;


static PmSdkManage_t g_pmManage;


int16_t PowerManageSdkInit(const PmSdkConfig_t* pmConfig)
{
    if(pmConfig!=NULL)
    {
        /*g_pmManage.degInfo = pmConfig->degInfo;
        g_pmManage.canNmType = pmConfig->canNmType;        e;
        g_pmManage.wakeupFun = pmConfig->wakeupFun;
        g_pmManage.kl30WakeDelay = pmConfig->kl30OffWakeDelay;
        g_pmManage.mpuDeepSleep = pmConfig->mpuDeepSleep;
        g_pmManage.gSensorDeepSleep = pmConfig->gSensorDeepSleep;*/
        g_pmManage.wakeDelayTime = pmConfig->wakeDelayTime;
        g_pmManage.pPmConfig= pmConfig;
        g_pmManage.pmState = E_PM_STATE_UNPOWED;
        g_pmManage.wakeupSource = 0;
        g_pmManage.wakeupCount = 0;
        g_pmManage.testMode = 0;
        g_pmManage.forceSleepFlag = 0;
        g_pmManage.sleepOpenCount = 0;
        g_pmManage.kl30OffFlag = 0;
        g_pmManage.sleepState = 1;
        g_pmManage.mpuWakeSource = 0;
        
        return PM_SDK_STATUS_OK;
    }
    else
    {
        return PM_SDK_STATUS_ERR;
    }
}

static uint8_t CanWakeUpSourceIsValid(uint8_t wakeSource)
{
    if((wakeSource>=PM_HAL_WAKEUP_SOURCE_CAN1)&&(wakeSource<=PM_HAL_WAKEUP_SOURCE_CAN8))
    {
        return 0;
    }
    else
    {
        return 1;
    }        
}

static void WakeDelayProcess(uint8_t mcuWakeSource,uint8_t mpuWakeSource,uint32_t *pWakeDelayTime)
{
    if(CanWakeUpSourceIsValid(mcuWakeSource)==0)
    {
        *pWakeDelayTime = 0;
    }
    if(g_pmManage.wakeupFun!=NULL)
    {
        g_pmManage.wakeupFun(mcuWakeSource,mpuWakeSource,pWakeDelayTime);
    }    
}

static void PmAwakeInitProcess(uint8_t wakeupSource)
{
    g_pmManage.sleepState = 1;
}

static void PmPreSleepProcess(void)
{
    g_pmManage.sleepState = 0;
}

static void PmNmAllStart(uint8_t active)
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkNetworkRequest(active);
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

static void PmNmGotoAwakeMode(uint8_t wakeupSource)
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        if(CanWakeUpSourceIsValid(wakeupSource)==0)
        {
            //AutosarNmSdkNetworkRequest(0);
        }
        else
        {
            AutosarNmSdkNetworkRequest(1);
        }
        
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

static void PmNmGotoSleepMode(void)
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        AutosarNm_NetworkRelease(0);
		AutosarNm_NetworkRelease(1);
        
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

static void PmNmGetWakeMsgReceiveState(uint8_t* pWakeMsgRxFlag,uint8_t* pWakeChannel )
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetNetManageReceiveStatus(pWakeMsgRxFlag,pWakeChannel);
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

static void PmNmGetMsgReceiveState(uint8_t* pMsgRxFlag,uint8_t* pRxChannel)
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetCanStatus(pMsgRxFlag,pRxChannel);

    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}
static void  PmNmCheckWakeUp(void)
{
	NetManageAutosarState_e netManageState_1;
	NetManageAutosarState_e netManageState_2;
	
	netManageState_1 = GetNetManageState(0);
	netManageState_2 = GetNetManageState(1);
	
	TBOX_PRINT("RemoteControlRecvPorcess is %d,%d\r\n",netManageState_1,netManageState_2);
	//主动唤醒CAN
	if((netManageState_1!=E_NETMANAGESTATE_REPEATMESSAGESTATE && netManageState_2!=E_NETMANAGESTATE_NORMALOPERATIONSTATE)||
		(netManageState_2!=E_NETMANAGESTATE_REPEATMESSAGESTATE && netManageState_2!=E_NETMANAGESTATE_NORMALOPERATIONSTATE))
	{
		
		AutosarNmSdkNetworkRequest(1);
		ApplicationMessageEnableTransmit(0);
		ApplicationMessageEnableTransmit(1);
		
	}
}

static void PmNmGetSleepStatus(uint8_t* pNmSleepStatus,uint8_t* pWakeChannel )
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetSleepStatus(pNmSleepStatus);
        *pWakeChannel = 0;
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

static void PmNmOsekGetSleepAck(uint8_t* pAck)
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理*/
        *pAck = 0;
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}


static int16_t PmGetBleWakeState(void)
{
    return 1;
}

static int16_t PmMpuStartIsFinished(void)
{
    /*to do*/
#if(PM_SDK_DEBUG_NO_MPU)
    return 0;
#else
    //if mpu failed to start,then return 0
    if(MpuPowerSyncSdkGetNadModuleStatus() == 0)
    {
        return 0;
    }
    if(ParameterSyncSdkGetFromCpuIsFinished()==0)
    {
        return 0;
    }
    return 1;
#endif
}

static uint8_t PmGetCanWakeupSourceByChannel(uint8_t canChannel)
{
    uint8_t wakeupSource;
    if(canChannel>7)
    {
        return 0;
    }
    wakeupSource = PM_HAL_WAKEUP_SOURCE_CAN1+canChannel;
    return wakeupSource;
}

static uint8_t PmGetNoAckHandle(uint8_t* pHandle)
{
    uint8_t i,num,result;
    
    result = 0;
    num = g_pmManage.sleepOpenCount;
    
    for(i=0;i<num;i++)
    {
        if(0==g_pmManage.sleepAck[i].ackFlag)
        {
            result = 1;
            break;
        }
    }
    if(0==result)
    {
        *pHandle = i;
    }    
    return result;
    
}

static void PrintNoAckName(uint8_t handle)
{
    if(handle<g_pmManage.sleepOpenCount)
    {
        TBOX_PRINT("task--%s ack missing\n",g_pmManage.sleepAck[handle].name);
    }
    else
    {
        TBOX_PRINT("invalid handle when print ack missing\n");
    }
}

static void ClearAllSleepAckFlag(void)
{
    uint8_t i,num;

    num = g_pmManage.sleepOpenCount;
    
    for(i=0;i<num;i++)
    {
        g_pmManage.sleepAck[i].ackFlag = 0;
    }
}

static void PmStatePowerOnProcess(uint32_t cycleTime)
{
    g_pmManage.wakeDelayCount += cycleTime;
    if(g_pmManage.wakeDelayCount<10)
    {
        return ;
    }
    g_pmManage.wakeDelayCount = 0;
    if(PeripheralHalGetKl15Status()==1)
    {
        PmNmAllStart(1);
        PmAwakeInitProcess(PM_HAL_WAKEUP_SOURCE_KL15);
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
    }
    else
    {
        //PmNmAllStart(0);
        PmAwakeInitProcess(PM_HAL_WAKEUP_SOURCE_CAN1);
        g_pmManage.pmState = E_PM_STATE_NMPU_CHECK_NM_STATUS;
    }
}

static void PmStateNmpuSleep(uint32_t cycleTime)
{
    uint8_t wakeCanMsgRxFlag = 0;
    uint8_t wakeChannel = 0;    
    uint8_t wakeupSource =PM_HAL_WAKEUP_SOURCE_NONE;
    
    PmNmGetWakeMsgReceiveState(&wakeCanMsgRxFlag ,&wakeChannel );
    if(PeripheralHalGetKl15Status()==1)
    {
        wakeupSource  =PM_HAL_WAKEUP_SOURCE_KL15;
        PmNmGotoAwakeMode(wakeupSource );
        PmAwakeInitProcess(wakeupSource  );
        WakeDelayProcess(wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
    }
    else if(PmGetBleWakeState()==0)
    {
        wakeupSource  = PM_HAL_WAKEUP_SOURCE_BLE;
        PmNmGotoAwakeMode(wakeupSource );
        PmAwakeInitProcess(wakeupSource  );
        WakeDelayProcess(wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
    }
    else if(wakeCanMsgRxFlag !=0)
    {
        wakeupSource  = PmGetCanWakeupSourceByChannel(wakeChannel);
        PmNmGotoAwakeMode(wakeupSource );
        PmAwakeInitProcess(wakeupSource  );
        WakeDelayProcess(wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        
    }
    else if(PmMpuStartIsFinished()==0)
    {
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
    }    
}

static void PmStateNmpuWake(uint32_t cycleTime)
{
    if(PeripheralHalGetKl15Status()==0)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_DELAY;
        g_pmManage.wakeDelayCount = 0;
    }
    else if(PmMpuStartIsFinished()==0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
    }
}

static void PmStateNmpuDelay(uint32_t cycleTime)
{
    if(PeripheralHalGetKl15Status()==1)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);        
    }
    else if(PmMpuStartIsFinished()==0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
    }
    else if(g_pmManage.wakeDelayCount>=g_pmManage.wakeDelayTime)
    {
        PmNmGotoSleepMode();
        g_pmManage.pmState = E_PM_STATE_NMPU_CHECK_NM_STATUS;
    }
    else 
    {
        g_pmManage.wakeDelayCount += cycleTime;
    }
}

static void PmStateNmpuCheckNmStatusProcess(uint32_t cycleTime)
{
    uint8_t nmSleepStatus = 0;
    uint8_t wakeChannel = 0;
    uint8_t wakeupSource;
    
    PmNmGetSleepStatus(&nmSleepStatus,&wakeChannel) ;
    if(PeripheralHalGetKl15Status()==1)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);
        PmNmGotoAwakeMode(PM_HAL_WAKEUP_SOURCE_KL15);
    }
    else if(nmSleepStatus==PM_NM_SLEEP_STATUS_REWAKE )
    {
        wakeupSource =PmGetCanWakeupSourceByChannel(wakeChannel);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        WakeDelayProcess(wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        PmNmGotoAwakeMode(wakeupSource);
    }
    else if(nmSleepStatus==PM_NM_SLEEP_STATUS_COMPLETE)
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_SLEEP;
        PmPreSleepProcess();
    }
    else if(PmMpuStartIsFinished()==0)
    {
        g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;
    }
    else if(g_pmManage.wakeDelayCount>=g_pmManage.wakeDelayTime)
    {
        /*Can网络管理进入休眠*/
        PmNmGotoSleepMode();
        g_pmManage.pmState = E_PM_STATE_NMPU_CHECK_NM_STATUS;
    }
}

static void PmStateGetMpuSleepFinishProcess(uint32_t cycleTime)
{ 
    uint8_t mpuSleepStatus;
    mpuSleepStatus = MpuPowerSyncSdkGetSleepStatus();
    if(mpuSleepStatus==0)
    {
        g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
    }    
}

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
   else if(PeripheralHalGetKl15Status()==0)
   {
       //电源管理状态进入延时唤醒状态
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmManage.wakeDelayCount = 0;
   }    
}

static void PmStateWakeDelayProcess(uint32_t cycleTime)
{
    uint8_t sleepAck = 0,wakeMsgRxFlag=0,wakeChannel =0;
    
    PmNmOsekGetSleepAck(&sleepAck );
    PmNmGetWakeMsgReceiveState(&wakeMsgRxFlag ,&wakeChannel );
    if(g_pmManage.kl30OffFlag!=0)
    {
        g_pmManage.kl30OffFlag = 0;
    }
    else if(PeripheralHalGetKl15Status()!=0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_KL15;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_LOCAL)
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeResetFlag = 0;
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_MPU)
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeResetFlag = 0;
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_BLE)
    {
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeResetFlag = 0;
    }
    else if(sleepAck==1)
    {
        PmNmGotoSleepMode();
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
    }
    else if(MpuPowerSyncSdkGetSleepDisableState()!=0)
    {
        g_pmManage.wakeDelayCount += cycleTime;
    }
    else if(g_pmManage.wakeDelayCount>=g_pmManage.wakeDelayTime)
    {
        PmNmGotoSleepMode();
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;//E_PM_STATE_PRE_SLEEP_NOTICE;
    }
    else 
    {
        g_pmManage.wakeDelayCount += cycleTime;
    }    
}

static void PmStateCheckNmStatusProcess(uint32_t cycleTime)
{
    uint8_t sleepStatus = 0;
    uint8_t wakeChannel;
    
    PmNmGetSleepStatus(&sleepStatus ,&wakeChannel);
    if(sleepStatus ==1)
    {
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
        g_pmManage.wakeDelayCount = 0;
    }
    else if(sleepStatus ==2)
    {
        /*重新唤醒网络*/
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmManage.wakeupSource=PM_HAL_WAKEUP_SOURCE_CAN1;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_CAN1,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(PeripheralHalGetKl15Status()!=0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_KL15;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);
    }
    else if(MpuPowerSyncSdkGetSleepDisableState()!=0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_LOCAL)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_MPU)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_MPU;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_BLE)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_BLE;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(g_pmManage.kl30OffFlag!=0)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.kl30OffFlag= 0;
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_KL30;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
}

static void PmStatePreSleepNoticeProcess(uint32_t cycleTime)
{
    g_pmManage.sleepState = 0;
    g_pmManage.wakeDelayCount = 0;
    if(g_pmManage.pPmConfig->deepSleepConfig.mpuDeepSleep!=0)
    {
        MpuPowerSyncSdkSetSleep(g_pmManage.deepSleepFlag);
    }
    else
    {
        /*通知MPU休眠*/
        MpuPowerSyncSdkSetSleep(0);
    }
    g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_WAIT;
}

static void PmStatePreSleepWaitProcess(uint32_t cycleTime)
{
    uint8_t mpuSleepStatus = 0;
    uint8_t noAckHandle = 0;
    uint8_t ret;
    uint8_t rxFlag = 0;
    uint8_t wakeChannel = 0;
    //uint8_t wakeSource = 0;
#if(PM_SDK_DEBUG_NO_MPU)    
    mpuSleepStatus = 0;
#else
    mpuSleepStatus = MpuPowerSyncSdkGetSleepStatus();
#endif
    PmNmGetWakeMsgReceiveState(&rxFlag,&wakeChannel);
    g_pmManage.wakeDelayCount += cycleTime;
    if(mpuSleepStatus==0)
    {
        ret = PmGetNoAckHandle(&noAckHandle); 
        if(ret!=0)
        {
            if(g_pmManage.wakeDelayCount >=1000)
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
    else if(PeripheralHalGetKl15Status()!=0)
    {
        g_pmManage.sleepState = 1;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource =PM_HAL_WAKEUP_SOURCE_KL15;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(MpuPowerSyncSdkGetSleepDisableState()!=0)
    {
        g_pmManage.sleepState = 1;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource  = PM_HAL_WAKEUP_SOURCE_MPU;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_LOCAL)
    {
        /*电源管理复位唤醒状态*/
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.sleepState = 1;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource  = PM_HAL_WAKEUP_SOURCE_MPU;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_MPU)
    {
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.sleepState = 1;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource  = PM_HAL_WAKEUP_SOURCE_MPU;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_BLE)
    {
        g_pmManage.wakeResetFlag = 0;
        g_pmManage.sleepState = 1;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource  = PM_HAL_WAKEUP_SOURCE_BLE;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(rxFlag!=0)
    {
        g_pmManage.sleepState = 1;
        ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource  = PmGetCanWakeupSourceByChannel(wakeChannel);
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
}

static void PmStateMcuSleepProcess(uint32_t cycleTime)
{
    /*MPU进入低功耗*/
    MpuHalSetMode(0);
    /*设置peripheral模块进入低功耗*/
    PeripheralHalSetMode(0);
    /*设置蓝牙进入低功耗*/
    //BleHalSetMode(0);
    if((g_pmManage.deepSleepFlag==1)&&(g_pmManage.pPmConfig->deepSleepConfig.gSensorDeepSleep==1))
    {
        /*gSensor断电*/
        /*GSensorHalPowerOff();*/
    }
    /*设置can进入休眠*/
    CanHalSetsleep(0);
    /*gSensor上电*/
    /*GSensorHalPowerOn();*/
    /*休眠前状态清零*/
    g_pmManage.wakeDelayCount = 0;
    g_pmManage.kl30WakeCount = 0;
    TimerHalSetMode(0);
    LogHalSetSleep(0);
    /*进入低功耗函数*/
    PowerManageHalSleep();
    LogHalSetSleep(1);
    /*获取唤醒源*/
    g_pmManage.wakeupSource = PowerManageHalGetWakeupSource();
    TBOX_PRINT("Wakeup source is : %d\r\n",g_pmManage.wakeupSource);
    TimerHalSetMode(1);
    /*MPU进入正常模式*/
    MpuHalSetMode(1);
    /*设置can进入正常模式*/
    CanHalSetsleep(1);
    /*设置peripheral模块进入正常模式*/
    PeripheralHalSetMode(1);
    /*设置蓝牙进入正常模式*/
    //BleHalSetMode(1);
    g_pmManage.wakeupCount++;
    ClearAllSleepAckFlag();
	ClearAllVariable();
    if(g_pmManage.wakeupSource==PM_HAL_WAKEUP_SOURCE_MPU)
    {
        /*MPU唤醒处理*/
        g_pmManage.pmState =E_PM_STATE_GET_MPU_WAKE_SOURCE;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
		PowerManageSdkSetWakeDelay(20*1000);
    }
    else if(g_pmManage.RemoteWakeFlag == 1)//remote
    {
    	SetRemoteWakeupFlag(0);
    	PmNmCheckWakeUp();
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.sleepState = 1;
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_MPU;
        WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
    }
    else if(CanWakeUpSourceIsValid(g_pmManage.wakeupSource)==0)
    {
        g_pmManage.pmState = E_PM_STATE_PRE_CHECK_CAN;
        g_pmManage.wakeDelayCount = 0;
		PowerManageSdkSetWakeDelay(5*1000);
    }
    else
    {
        if(g_pmManage.wakeupSource==PM_HAL_WAKEUP_SOURCE_KL30)
        {
			 g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
        }
		else
		{
	        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
	        PmAwakeInitProcess(g_pmManage.wakeupSource);
	        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
	        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
	        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
	        g_pmManage.wakeDelayCount = 0;
			PowerManageSdkSetWakeDelay(5*1000);
	        if(g_pmManage.wakeupSource==PM_HAL_WAKEUP_SOURCE_KL15)
	        {
	            /*KL15唤醒处理*/
	            g_pmManage.pmState = E_PM_STATE_WAKE;
	        }
		}	
    }
}

static void PmStatePreCheckCanProcess(uint32_t cycleTime)
{
    uint8_t wakeCanMsgRxFlag;
    uint8_t wakeChannel;
    uint8_t allCanReceiveFlag;
    uint8_t allCanRxChannel;
    
    /*获取can唤醒报文接收状态*/
    wakeCanMsgRxFlag = 0;
    wakeChannel = 0;
    PmNmGetWakeMsgReceiveState(&wakeCanMsgRxFlag,&wakeChannel);
    /*获取can报文接收状态*/
    allCanReceiveFlag = 0;
    allCanRxChannel = 0;
    PmNmGetMsgReceiveState(&allCanReceiveFlag,&allCanRxChannel);
    if(PeripheralHalGetKl15Status()!=0)
    {
        /*KL15 ON 处理*/
        g_pmManage.wakeupSource =PM_HAL_WAKEUP_SOURCE_KL15;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(wakeCanMsgRxFlag!=0)
    {
        /*can唤醒 处理*/
        g_pmManage.wakeupSource = PmGetCanWakeupSourceByChannel(wakeChannel );
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if(allCanReceiveFlag !=0)
    {
        /*can唤醒 处理*/
        g_pmManage.wakeDelayCount = 0;
    }
    else if(g_pmManage.wakeDelayCount<500)
    {
        /*延迟计数*/
        g_pmManage.wakeDelayCount += cycleTime;
    }
    else 
    {
        /*报文接收超时休眠*/
        g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
    }
}
static void ClearAllVariable()
{
	setRemoteCertifystatus();
	CanMessageInit();
}
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
    if(ret==0)
    {
        /*获取MPU唤醒源完成，执行MCU唤醒*/
        g_pmManage.mpuWakeSource = cpuWakeSource;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    }
    else if(PeripheralHalGetKl15Status()!=0)
    {
        /*KL15 ON 处理*/
        g_pmManage.wakeupSource =PM_HAL_WAKEUP_SOURCE_KL15;
        PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE;
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }    
}

void PowerManageSdkCycleProcess(uint32_t cycleTime)
{
    if(E_PM_STATE_UNPOWED==g_pmManage.pmState)
    {
        
    }
    else if(E_PM_STATE_POWER_ON==g_pmManage.pmState)
    {
        PmStatePowerOnProcess(cycleTime);
    }
    else if(E_PM_STATE_NMPU_SLEEP==g_pmManage.pmState)
    {
        PmStateNmpuSleep(cycleTime);
    }
    else if(E_PM_STATE_NMPU_WAKE==g_pmManage.pmState)
    {
        PmStateNmpuWake(cycleTime);
    }
    else if(E_PM_STATE_NMPU_DELAY==g_pmManage.pmState)
    {
        PmStateNmpuDelay(cycleTime);
    }
    else if(E_PM_STATE_NMPU_CHECK_NM_STATUS==g_pmManage.pmState)
    {
        PmStateNmpuCheckNmStatusProcess(cycleTime);
    }
    else if(E_PM_STATE_GET_MPU_SLEEP_FINISH==g_pmManage.pmState)
    {
        PmStateGetMpuSleepFinishProcess(cycleTime);
    }
    else if(E_PM_STATE_WAKE==g_pmManage.pmState)
    {
        PmStateWakeProcess(cycleTime);
    }
    else if(E_PM_STATE_WAKE_DELAY==g_pmManage.pmState)
    {
        PmStateWakeDelayProcess(cycleTime);
    }
    else if(E_PM_STATE_CHECK_NM_STATUS==g_pmManage.pmState)
    {
        PmStateCheckNmStatusProcess(cycleTime);
    }
    else if(E_PM_STATE_PRE_SLEEP_NOTICE==g_pmManage.pmState)
    {
        PmStatePreSleepNoticeProcess(cycleTime);
    }
    else if(E_PM_STATE_PRE_SLEEP_WAIT==g_pmManage.pmState)
    {
        PmStatePreSleepWaitProcess(cycleTime);
    }
    else if(E_PM_STATE_MCU_SLEEP==g_pmManage.pmState)
    {
        PmStateMcuSleepProcess(cycleTime);
    }
    else if(E_PM_STATE_PRE_CHECK_CAN==g_pmManage.pmState)
    {
        PmStatePreCheckCanProcess(cycleTime);
    }
    else if(E_PM_STATE_GET_MPU_WAKE_SOURCE==g_pmManage.pmState)
    {
        PmStateGetMpuWakeSourceProcess(cycleTime);
    }
    else 
    {
        //PeripheralHalMcuHardReset();
    }
}

void PowerManageSdkPowerOn(void)
{
    /*进入临界区保护*/
    taskENTER_CRITICAL();
    /*电源管理状态初始化*/
    g_pmManage.pmState = E_PM_STATE_POWER_ON;
    /*进入临界区保护*/
    taskEXIT_CRITICAL();   
}

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

int16_t PowerManageSdkResetWake(uint8_t wakeMode)
{
    /*电源管理状态初始化*/
    g_pmManage.wakeResetFlag = wakeMode+1;
    return PM_SDK_STATUS_OK;
}

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

int16_t PowerManageSdkGetSleepState(int16_t pmHandle)
{
    return g_pmManage.sleepState;
}

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

void PowerManageSdkDeepSleep(uint8_t deepSleepFlag)
{
    /*设置深度休眠标志*/
    g_pmManage.deepSleepFlag = deepSleepFlag;
    /*设置MPU的深度休眠标志*/
    MpuPowerSyncSdkSetDeepSleepFlag(deepSleepFlag);
}

void PowerManageSdkForceSleep(void)
{
    /*设置强制休眠标志*/
    g_pmManage.forceSleepFlag = 1;
}

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

void SetRemoteWakeupFlag(uint8_t Flag)
{
	if(Flag<2)
	{
		g_pmManage.RemoteWakeFlag = Flag;
	}
}


