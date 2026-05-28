#include <string.h>
#include "powerManageSdk.h"
#include "peripheralHal.h"
// #include "PowerManageHal.h"
#include "powManager.h"
#include "mpuHal.h"
#include "logHal.h"
#include "timerHal.h"
// #include "gSensorHal.h"
#include "osHal.h"
#include "ecallHal.h"

#include "mpuPowerSyncSdk.h"
// #include "parameterSyncSdk.h"

#include "taskVehicleDataToMpu.h"
#include "taskPowerManage.h"

#include "CanNm.h"
#include "Dio.h"
#include "iodefine.h"

#include "BswM_EcuM.h"
#include "BswM.h"
#include "BswM_Ext.h"

#include "NVM.h"

#define DV_TEST_ENABLE                  0
#define PM_SDK_DEBUG_NO_MPU             0

#define PM_SDK_SLEEP_ACK_HANDLE_MAX     30
#define PM_NM_SLEEP_STATUS_WAIT         0
#define PM_NM_SLEEP_STATUS_COMPLETE     1
#define PM_NM_SLEEP_STATUS_REWAKE       2
#define PM_NM_RESET_WAKE_LOCAL          1
#define PM_NM_RESET_WAKE_MPU            2
#define PM_NM_RESET_WAKE_BLE            3
#define PM_NM_RESET_WAKE_BLE_PARK       4
#define PM_BACKUP_MODE_FORCE_TIME       (2UL * 60UL * 1000UL)
#define PM_KL30_OVERVOLTAGE_MV          18500UL
#define PM_KL30_OVERVOLTAGE_RECOVER_MV  17500UL
#define PM_KL30_OVERVOLTAGE_WAKE_ADC_WAIT_MS 20UL
#define PM_RESF_DEEPSTOP_RESET_MASK     (1UL << 10)
#define PM_CAN_WAKEUP_WUF0_MASK         (1UL << 6)
#define PM_CAN_WAKEUP_WUF_ISO0_MASK     0x00000010UL

#define PM_SDK_24H_RESTART_TIME         (24 * 3600)  // (24 * 3600) 单位：秒

/* Flash存储有效性标志 */
#define PM_FLASH_DATA_VALID_FLAG        0xA5  /* 数据有效标志 */
#define PM_FLASH_DATA_VALID_INDEX       5     /* 标志位在缓冲区中的索引 */
#define PM_LISTEN_DEFAULT_SECONDS       (14UL * 24UL * 3600UL)  // 单位：秒

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
    E_PM_STATE_CHECK_WAKEUP_SOURCE,
    E_PM_STATE_PRE_CHECK_CAN,
    E_PM_STATE_GET_MPU_WAKE_SOURCE,
    E_PM_STATE_GET_MPU_SLEEP_FINISH,
    E_PM_STATE_BACKUP_MODE,
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
    uint32_t kl30WakeCount;
    uint32_t kl30WakeDelay;
    uint32_t backupModeDelayCount;
    uint8_t kl30OverVoltageFlag;
    uint8_t listenTimerSavePending;
    volatile uint32_t restart24hTimer;       // 24小时重启计时器
    volatile uint32_t listenWakeupTimer;     // listen休眠唤醒计时器
    uint8_t mpuPowerOffFlag;        // MPU关机标志（1：关机，0：休眠）
    const PmSdkConfig_t *pPmConfig;
}PmSdkManage_t;

static PmSdkManage_t g_pmManage;
static uint8_t g_pmResetReasonValid = 0;
static uint32_t g_pmResetReason = 0;
static uint8_t g_pmWakeFactorValid = 0;
static uint32_t g_pmWakeFactor0 = 0;
static uint32_t g_pmWakeFactor20 = 0;
static uint32_t g_pmWakeFactorIso0 = 0;
static uint8_t g_pmDeepstopCanOnlyWakeDetected = 0;
static uint8_t g_pmDeepstopCanPreCheckNoMpu = 0;
static uint8_t g_backupBatAgingReqOnceFlag = 0;

/* 运行期间计时器累计毫秒数（1ms中断累计） */
static volatile uint32_t g_timerMsAccumulator = 0;
static volatile uint8_t g_listenTimerClearReqFlag = 0;

static int16_t SaveListenTimerParam(void);
static int16_t ClearListenTimerParam(void);
static void PmProcessListenTimerFlashRequest(void);
static uint8_t PmBackupModeProcess(uint32_t cycleTime);
static uint8_t PmKl30OverVoltageSleepProcess(void);
static uint8_t PmDetectWakeupSourceByIo(void);
static void PmReadWakeFactorOnce(void);
static uint8_t PmDeepstopWakeupSourceIsCan(void);
static void PmDeepstopCanNonNmPrepareSleep(void);
uint8_t PowerManageSdkShouldKeepMpuOffBeforeInit(void);

static uint32_t GetListenTimerSeconds(uint8_t listenTimer, uint8_t timerUnit)
{
    if(timerUnit == 0) // 天
    {
        return ((uint32_t)listenTimer * 24UL * 3600UL);
    }

    if(timerUnit == 1) // 小时
    {
        return ((uint32_t)listenTimer * 3600UL);
    }

    if(timerUnit == 2) // 分钟
    {
        return ((uint32_t)listenTimer * 60UL);
    }

    return PM_LISTEN_DEFAULT_SECONDS;
}

static uint8_t ReadListenTimerFromDIDC106(uint32_t* pListenTimer)
{
    uint8_t timerUnit = 0;

    if(pListenTimer == NULL)
    {
        return PM_SDK_STATUS_ERR;
    }

    if(NvM_ReadBlock(NvMBlock_DIDC106, NvMBlockRamBuffer31) == E_NOT_OK)
    {
        return PM_SDK_STATUS_ERR;
    }

    if(NvMBlockRamBuffer31[0] == 0)
    {
        *pListenTimer = 0;
        return PM_SDK_STATUS_OK;
    }

    timerUnit = NvMBlockRamBuffer31[4] & 0x03;
    if(timerUnit == 0) // 天
    {
        *pListenTimer = ((uint32_t)NvMBlockRamBuffer31[0] * 24UL * 3600UL);
    }
    else if(timerUnit == 1) // 小时
    {
        *pListenTimer = ((uint32_t)NvMBlockRamBuffer31[0] * 3600UL);
    }
    else if(timerUnit == 2) // 分钟
    {
        *pListenTimer = ((uint32_t)NvMBlockRamBuffer31[0] * 60UL);
    }
    else
    {
        return PM_SDK_STATUS_ERR;
    }

    return PM_SDK_STATUS_OK;
}

static uint8_t ReadListenTimerFromReservedBlock(uint32_t* pListenTimer)
{
    if(pListenTimer == NULL)
    {
        return PM_SDK_STATUS_ERR;
    }

    if(NvM_ReadBlock(NvMBlock_listentiming, NvMBlockRamBuffer56) == E_NOT_OK)
    {
        return PM_SDK_STATUS_ERR;
    }

    if(NvMBlockRamBuffer56[PM_FLASH_DATA_VALID_INDEX] != PM_FLASH_DATA_VALID_FLAG)
    {
        return PM_SDK_STATUS_ERR;
    }

    *pListenTimer = ((uint32_t)NvMBlockRamBuffer56[0] << 24) |
                    ((uint32_t)NvMBlockRamBuffer56[1] << 16) |
                    ((uint32_t)NvMBlockRamBuffer56[2] << 8) |
                    NvMBlockRamBuffer56[3];

    TBOX_PRINT("Get listen timer from flash: %u seconds\n", *pListenTimer);
    return PM_SDK_STATUS_OK;
}

// 诊断配置时，同步更新当前计时。实际应用中，诊断配置完，应该会重启。可能不需要
void SetListenTimer(uint8_t listenTimer, uint8_t timerUnit)
{
    g_pmManage.listenWakeupTimer = GetListenTimerSeconds(listenTimer, timerUnit);
    TBOX_PRINT("set listen timer: %u seconds\n", g_pmManage.listenWakeupTimer);
    (void)SaveListenTimerParam();
}

// Listen 持续时长重新计时
void PowerManageSdkSyncListenTimer(uint8_t timerValue, uint8_t timerUnit)
{
    uint32_t listenTimer = PM_LISTEN_DEFAULT_SECONDS;  // 默认14天

    if(timerValue == 0)
    {
        (void)SaveListenTimerParam();
        return;
    }

    if(timerUnit == 0) // 天
    {
        listenTimer = ((uint32_t)timerValue * 24UL * 3600UL);
    }
    else if(timerUnit == 1) // 小时
    {
        listenTimer = ((uint32_t)timerValue * 3600UL);
    }
    else if(timerUnit == 2) // 分钟
    {
        listenTimer = ((uint32_t)timerValue * 60UL);
    }
    else
    {
        return;
    }

    g_pmManage.listenWakeupTimer = listenTimer;
    TBOX_PRINT("diag sync listen timer: %u seconds\n", g_pmManage.listenWakeupTimer);
    (void)SaveListenTimerParam();
}

void ResetListenTimer(void)
{
    uint32_t listenTimer = PM_LISTEN_DEFAULT_SECONDS;  // 默认14天

    if(ReadListenTimerFromDIDC106(&listenTimer) != PM_SDK_STATUS_OK)
    {
        listenTimer = PM_LISTEN_DEFAULT_SECONDS;
    }

    g_pmManage.listenWakeupTimer = listenTimer;
    TBOX_PRINT("Reset listen timer: %u seconds\n", g_pmManage.listenWakeupTimer);
    (void)SaveListenTimerParam();
}

// 上电复位，获取存储的listen唤醒持续时长，继续计时
static uint32_t GetListenTimerParam(void)
{
    uint32_t listenTimer = PM_LISTEN_DEFAULT_SECONDS;  // 默认14天

    if(ReadListenTimerFromReservedBlock(&listenTimer) == PM_SDK_STATUS_OK)
    {
        return listenTimer;
    }

    if(ReadListenTimerFromDIDC106(&listenTimer) == PM_SDK_STATUS_OK)
    {
        return listenTimer;
    }

    return PM_LISTEN_DEFAULT_SECONDS;
}

static int16_t SaveListenTimerParam(void)
{
    VehicleInfor_t vehicleInfor;

    /* 复位前将listenWakeupTimer和用户模式存储到flash */
    /* 存储listenWakeupTimer值到NvMBlockRamBuffer56[0-3] (4字节) */
    NvMBlockRamBuffer56[0] = (g_pmManage.listenWakeupTimer >> 24) & 0xFF;
    NvMBlockRamBuffer56[1] = (g_pmManage.listenWakeupTimer >> 16) & 0xFF;
    NvMBlockRamBuffer56[2] = (g_pmManage.listenWakeupTimer >> 8) & 0xFF;
    NvMBlockRamBuffer56[3] = g_pmManage.listenWakeupTimer & 0xFF;
    /* 读取并存储用户模式到NvMBlockRamBuffer56[4] */
    if(GetVehicleInfor(&vehicleInfor) == 0)
    {
        NvMBlockRamBuffer56[4] = vehicleInfor.userMode;
    }
    else
    {
        NvMBlockRamBuffer56[4] = UsgMd_1_Standby;  /* 默认standby模式 */
    }
    /* 设置存储有效性标志到NvMBlockRamBuffer56[5] */
    NvMBlockRamBuffer56[PM_FLASH_DATA_VALID_INDEX] = PM_FLASH_DATA_VALID_FLAG;

    if(NvM_WriteBlock(NvMBlock_listentiming, NvMBlockRamBuffer56) == E_NOT_OK)
    {
        return E_NOT_OK;
    }

    return PM_SDK_STATUS_OK;
}

/* 获取存储的用户模式 */
uint8_t GetStoredUserMode(void)
{
    uint8_t userMode = UsgMd_1_Standby;  /* 默认standby模式 */

    if(NvM_ReadBlock(NvMBlock_listentiming, NvMBlockRamBuffer56) == E_OK)
    {
        /* 检查存储的数据是否有效 */
        if(NvMBlockRamBuffer56[PM_FLASH_DATA_VALID_INDEX] != PM_FLASH_DATA_VALID_FLAG)
        {
            /* 数据无效，使用默认值（新设备） */
            TBOX_PRINT("User mode data is invalid, use default value\n");
            return userMode;
        }

        userMode = NvMBlockRamBuffer56[4];
        /* 检查用户模式是否有效 */
        if(userMode > UsgMd_6_XOTA)
        {
            userMode = UsgMd_1_Standby;  /* 无效时使用standby模式 */
        }
    }

    return userMode;
}

static int16_t ClearListenTimerParam(void)
{
    /* 直接基于当前RAM镜像清空剩余计时，不再先读flash */
    NvMBlockRamBuffer56[0] = 0;
    NvMBlockRamBuffer56[1] = 0;
    NvMBlockRamBuffer56[2] = 0;
    NvMBlockRamBuffer56[3] = 0;
    NvMBlockRamBuffer56[PM_FLASH_DATA_VALID_INDEX] = PM_FLASH_DATA_VALID_FLAG;

    if(NvM_WriteBlock(NvMBlock_listentiming, NvMBlockRamBuffer56) == E_NOT_OK)
    {
        return PM_SDK_STATUS_ERR;
    }

    return PM_SDK_STATUS_OK;
}

static void PmProcessListenTimerFlashRequest(void)
{
    if((g_listenTimerClearReqFlag != 0) && (g_pmManage.listenTimerSavePending == 0))
    {
        g_listenTimerClearReqFlag = 0;
        (void)ClearListenTimerParam();
    }
}

void PowerManageSdkSetWakeupSource(uint8_t wakeupSource)
{
    g_pmManage.wakeupSource = wakeupSource;
}

int16_t PowerManageSdkInit(const PmSdkConfig_t* pmConfig)
{
    uint8_t deepstopReset;
    uint8_t noLocalWake;

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
        g_pmManage.backupModeDelayCount = 0;
        g_pmManage.kl30OverVoltageFlag = 0;
        g_pmManage.listenTimerSavePending = 0;
        g_pmManage.sleepState = 1;
        g_pmManage.mpuWakeSource = 0;
        g_pmManage.restart24hTimer = PM_SDK_24H_RESTART_TIME;
        g_pmManage.listenWakeupTimer = GetListenTimerParam();
        TBOX_PRINT("listenWakeupTimer: %u\n", g_pmManage.listenWakeupTimer);
        g_pmManage.mpuPowerOffFlag = 0;
        g_pmDeepstopCanPreCheckNoMpu = 0;
        deepstopReset = PowerManageSdkCheckDeepstopReset();
        PmReadWakeFactorOnce();
        noLocalWake = PmDeepstopWakeupSourceIsCan();
        TBOX_PRINT("deepstop wake check: resf=0x%X deepstop=%d wuf0=0x%X wuf20=0x%X wufIso0=0x%X canWake=%d\r\n",
                   g_pmResetReason,
                   deepstopReset,
                   g_pmWakeFactor0,
                   g_pmWakeFactor20,
                   g_pmWakeFactorIso0,
                   noLocalWake);
        if(PowerManageSdkShouldKeepMpuOffBeforeInit() != 0U)
        {
            g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_CAN1;
            g_pmManage.mpuPowerOffFlag = 1;
            g_pmDeepstopCanPreCheckNoMpu = 1;
            TBOX_PRINT("deepstop CAN wakeup, delay MPU start for NM check\r\n");
        }

        return PM_SDK_STATUS_OK;
    }
    else
    {
        return PM_SDK_STATUS_ERR;
    }
}

static void WakeDelayProcess(uint8_t mcuWakeSource,uint8_t mpuWakeSource,uint32_t *pWakeDelayTime)
{
    // if(CanWakeUpSourceIsValid(mcuWakeSource)==0)
    // {
    //     *pWakeDelayTime = 0;
    // }
    if(g_pmManage.wakeupFun!=NULL)
    {
        g_pmManage.wakeupFun(mcuWakeSource,mpuWakeSource,pWakeDelayTime);
    }    
}

static void PmAwakeInitProcess(uint8_t wakeupSource)
{
    g_pmManage.sleepState = 1;
}

static void PmRequestBackupBatAgingCheckOnce(void)
{
    if (g_backupBatAgingReqOnceFlag == 0)
    {
        BackupBatAging_RequestCheckOnWakeup();
        g_backupBatAgingReqOnceFlag = 1;
    }
}

static void PmPreSleepProcess(void)
{
    g_pmManage.sleepState = 0;
}

static uint8_t PmDetectWakeupSourceByIo(void)
{
    if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CanRx_DET_INT_Pin0_2) == STD_LOW)
    {
        return PM_HAL_WAKEUP_SOURCE_CAN1;
    }

    if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_NAD_WAKEUP_MCU_Pin8_2) == STD_LOW)
    {
        return PM_HAL_WAKEUP_SOURCE_MPU;
    }

    // if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ECALL_BUTTON_DET_Pin9_5) == STD_HIGH)
    // {
    //     return PM_HAL_WAKEUP_SOURCE_ECALL;
    // }

    if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_RTC_INT_Pin0_6) == STD_LOW)
    {
        return PM_HAL_WAKEUP_SOURCE_MCURTC;
    }

    return 0;
}

static void PmReadWakeFactorOnce(void)
{
    if(g_pmWakeFactorValid == 0U)
    {
        g_pmWakeFactor0 = STBC_WUF0.WUF0;
        g_pmWakeFactor20 = STBC_WUF20.WUF20;
        g_pmWakeFactorIso0 = STBC_WUFISO.WUF_ISO0;
        g_pmWakeFactorValid = 1U;
    }
}

static uint8_t PmDeepstopWakeupSourceIsCan(void)
{
    PmReadWakeFactorOnce();

    if((g_pmWakeFactor0 & PM_CAN_WAKEUP_WUF0_MASK) != 0U)
    {
        return 1U;
    }

    if((g_pmWakeFactorIso0 & PM_CAN_WAKEUP_WUF_ISO0_MASK) != 0U)
    {
        return 1U;
    }

    return 0U;
}

static void PmNmAllStart(void)
{
    APP_RequestNetWork();
}

static void PmNmGotoSleepMode(void)
{
    APP_ClearWakeupHold();
    APP_ReleaseNetWork();
}

static void PmDeepstopCanNonNmPrepareSleep(void)
{
    APP_ClearWakeupHold();
    APP_ReleaseNetWork();
    User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN();
    BswM_RequestMode(RPort_CanNMIndi_1, COND_NM_ALLOWED_SLEEP);
    APP_SetSleepMode(APP_SLEEP_MODE);

    g_pmManage.sleepState = 0;
    g_pmManage.mpuPowerOffFlag = 1;
    g_pmManage.wakeDelayCount = 0;
}
#if(0)
static void PmNmGetWakeMsgReceiveState(uint8_t* pWakeMsgRxFlag,uint8_t* pWakeChannel )
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetNetManageReceiveStatus(0,pWakeMsgRxFlag);
        *pWakeChannel = 0;
        AutosarNmSdkGetNetManageReceiveStatusClear(0);
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
        AutosarNmSdkGetCanStatus(0,pMsgRxFlag);
        *pRxChannel = 0;
    }
    else if(2==g_pmManage.pPmConfig->canNmType)
    {
        /*osek网络管理启动*/
        //OsekNmSdkStart(active);
    }
}

static void PmNmGetSleepStatus(uint8_t* pNmSleepStatus,uint8_t* pWakeChannel )
{
    if(1==g_pmManage.pPmConfig->canNmType)
    {
        /*autoSar网络管理启动*/
        //AutosarNmSdkStart(active);
        AutosarNmSdkGetSleepStatus(0,pNmSleepStatus);
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
#endif
static int16_t PmMpuStartIsFinished(void)
{
#if(PM_SDK_DEBUG_NO_MPU)
    return 0;
#else
    if((MpuPowerSyncSdkGetNadModuleStatus()==0) && (ParameterSyncSdkGetFromCpuIsFinished()==0))
    {
        return 0;
    }
    return 1;
#endif
}

#if(0)
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
#endif

void APP_SetWakeupSource(uint8 WakeupSrc)
{
	PowerManageSdkSetWakeupSource(WakeupSrc);
}

uint8_t closeFlag = 0;
void APP_GotoSleep(void)
{
    closeFlag = 1;
}

static void PmStatePowerOnProcess(uint32_t cycleTime)
{
    g_pmManage.wakeDelayCount += cycleTime;
    if(g_pmManage.wakeDelayCount<10)
    {
        return ;
    }
#if(DV_TEST_ENABLE == 1)
    MpuHalSetMode(1);
    MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
#endif
    g_pmManage.wakeDelayCount = 0;
    PmRequestBackupBatAgingCheckOnce();
    if(g_pmDeepstopCanPreCheckNoMpu != 0)
    {
        APP_SetWakeupHold();
        g_pmManage.pmState = E_PM_STATE_PRE_CHECK_CAN;
        TBOX_PRINT("deepstop CAN wakeup, pre-check NM before MPU start\r\n");
        return;
    }

    if(PmMpuStartIsFinished()==0)
    {
        // PmNmAllStart();
        // PmAwakeInitProcess(PM_HAL_WAKEUP_SOURCE_KL15);
        // WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_KL15,0x00,&g_pmManage.wakeDelayTime);  // TODO guanyuan
        g_pmManage.pmState = E_PM_STATE_WAKE;
    }
    else
    {
        // PmAwakeInitProcess(PM_HAL_WAKEUP_SOURCE_CAN1);
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
    }
#if(DV_TEST_ENABLE == 1)
    PmNmAllStart();
#endif
}

static void PmStateNmpuSleep(uint32_t cycleTime)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    CanNm_GetState(0, &nmStatePtr, &nmModePtr);
    if((nmStatePtr != NM_STATE_BUS_SLEEP))
    {
        g_pmManage.pmState = E_PM_STATE_NMPU_WAKE;
        g_pmManage.wakeDelayCount = 0;
    }
    else if(PmMpuStartIsFinished()==0)
    {
        PmNmGotoSleepMode();
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
    }
}

static void PmStateNmpuWake(uint32_t cycleTime)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    CanNm_GetState(0, &nmStatePtr, &nmModePtr);
    if((nmStatePtr == NM_STATE_BUS_SLEEP))
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
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    CanNm_GetState(0, &nmStatePtr, &nmModePtr);
    if((nmStatePtr != NM_STATE_BUS_SLEEP))
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
        // PmNmGotoSleepMode();
        g_pmManage.pmState = E_PM_STATE_NMPU_SLEEP;
    }
    else 
    {
        g_pmManage.wakeDelayCount += cycleTime;
    }
}
#if(0)
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
#endif
static void PmStateWakeProcess(uint32_t cycleTime)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

#if(DV_TEST_ENABLE == 1)
    if(g_pmManage.testMode == 0)
    {
        // keep running
    }
    else
    {
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmManage.wakeDelayCount = 0;
    }
    return;
#endif

    if(PmBackupModeProcess(cycleTime) != 0)
    {
        return;
    }

    CanNm_GetState(0,&nmStatePtr,&nmModePtr);
    if(g_pmManage.testMode!=0) 
    {
        if(g_pmManage.forceSleepFlag!=0)
        {
            g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
            g_pmManage.wakeDelayCount = 0;
        }
    }
    else if(MpuPowerSyncSdkGetSleepDisableState() != 0)
    {
        PmNmAllStart();
    }
//    else if(NM_STATE_BUS_SLEEP == nmStatePtr)
//    {
//         //电源管理状态进入延时唤醒状态
//         g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
//         g_pmManage.wakeDelayCount = 0;
//    }
    else
    {
        g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
        g_pmManage.wakeDelayCount = 0;
    }
}

static void PmStateWakeDelayProcess(uint32_t cycleTime)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    if(PmBackupModeProcess(cycleTime) != 0)
    {
        return;
    }

    CanNm_GetState(0,&nmStatePtr,&nmModePtr);
    if(MpuPowerSyncSdkGetSleepDisableState() != 0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
        g_pmManage.wakeDelayCount = 0;
        PmNmAllStart();
        // g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL15;
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        // WakeDelayProcess(g_pmManage.wakeupSource, 0x00, &g_pmManage.wakeDelayTime);
    }
    // else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_LOCAL)
    // {
    //     g_pmManage.wakeDelayCount = 0;
    //     g_pmManage.wakeResetFlag = 0;
    // }
    // else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_MPU)
    // {
    //     g_pmManage.wakeDelayCount = 0;
    //     g_pmManage.wakeResetFlag = 0;
    // }
    // else if(g_pmManage.wakeResetFlag==PM_NM_RESET_WAKE_BLE)
    // {
    //     g_pmManage.wakeDelayCount = 0;
    //     g_pmManage.wakeResetFlag = 0;
    // }
    // else if(PeripheralHalGetKl30Status()==0)
    // {
    //     g_pmManage.kl30WakeCount++;
    //     if(g_pmManage.kl30WakeCount >= g_pmManage.pPmConfig->kl30OffWakeDelay)//g_pmManage.kl30WakeDelay)
    //     {
    //         PmNmGotoSleepMode();
    //         g_pmManage.wakeDelayCount = 0;
    //         g_pmManage.kl30WakeCount = 0;
    //         g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;
    //     }
    // }
    else if(NM_STATE_BUS_SLEEP == nmStatePtr)
    {
        PmNmGotoSleepMode();
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
    }

    if(g_pmManage.wakeDelayCount >= g_pmManage.wakeDelayTime)
    {
        PmNmGotoSleepMode();
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_CHECK_NM_STATUS;
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
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    if(PmBackupModeProcess(cycleTime) != 0)
    {
        return;
    }

    CanNm_GetState(0,&nmStatePtr,&nmModePtr);
    if(NM_STATE_BUS_SLEEP == nmStatePtr)
    {
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_NOTICE;
        g_pmManage.wakeDelayCount = 0;
        // TBOX_PRINT("PmStateCheckNmStatusProcess--%d\r\n",sleepStatus);
    }
    // else if(sleepStatus ==2) // TODO guanyuan
    // {
    //     /*重新唤醒网络*/
    //     g_pmManage.pmState = E_PM_STATE_WAKE_DELAY;
    //     g_pmManage.wakeupSource=PM_HAL_WAKEUP_SOURCE_CAN1;
    //     // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
    //     // WakeDelayProcess(PM_HAL_WAKEUP_SOURCE_CAN1,0x00,&g_pmManage.wakeDelayTime);
    //     g_pmManage.wakeDelayCount = 0;
    // }
    else if(MpuPowerSyncSdkGetSleepDisableState()!=0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.wakeupSource   = PM_HAL_WAKEUP_SOURCE_MPU;
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource );
        // WakeDelayProcess(g_pmManage.wakeupSource,0x00,&g_pmManage.wakeDelayTime);
    }
#if(0)
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
#endif
}

#define VIN_LEN 17
static uint8_t CheckVinIsInvalid(void)
{
    uint8_t i;
    uint8_t vinZero[VIN_LEN] = {0};
    uint8_t vinFF[VIN_LEN];

    for(i = 0; i < VIN_LEN; i++)
    {
        vinFF[i] = 0xFF;
    }

    if(NvM_ReadBlock(NvMBlock_DIDF190, NvMBlockRamBuffer7) == E_NOT_OK) // may need to change
    {
        TBOX_PRINT("read vin error\r\n");
        return 1;
    }

    if ((memcmp(NvMBlockRamBuffer7, vinZero, VIN_LEN) == 0) ||
        (memcmp(NvMBlockRamBuffer7, vinFF, VIN_LEN) == 0))
    {
        TBOX_PRINT("CheckVinIsInvalid\r\n");
        return 1;
    }

    return 0;
}

static uint8_t CheckListenTimerIsExpired(void)
{
    if(g_pmManage.listenWakeupTimer == 0)
    {
        TBOX_PRINT("CheckListenTimerIsExpired\r\n");
        return 1;
    }

    return 0;
}

static uint8_t CheckVehicleModeIsTransport(void)
{
    VehicleInfor_t vehicleInfor = {0};

    GetVehicleInfor(&vehicleInfor);
    if((vehicleInfor.vehicleModeValid == 1) && (vehicleInfor.vehicleMode == VehMd_3_TRANSPORT))
    {
        TBOX_PRINT("CheckVehicleModeIsTransport\r\n");
        return 1;
    }
    return 0;
}

static uint8_t PmBackupModeProcess(uint32_t cycleTime)
{
    int16_t sleepDisableEvent;

    if(PeripheralHalGetKl30Status() != 0)
    {
        g_pmManage.backupModeDelayCount = 0;
        return 0;
    }

    sleepDisableEvent = MpuPowerSyncSdkGetRawSleepDisableEvent();
    if(DisableSleepEventIsOTA((uint8_t)sleepDisableEvent) != 0)
    {
        g_pmManage.backupModeDelayCount = 0;
        return 0;
    }

    if(CheckVinIsInvalid() != 0)
    {
        g_pmManage.backupModeDelayCount = 0;
        return 0;
    }

    if(sleepDisableEvent == 0)
    {
        g_pmManage.backupModeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_BACKUP_MODE;
        MpuPowerSyncSdkSetRkMode(4);
        TBOX_PRINT("enter backup mode\r\n");
        return 1;
    }

    if(g_pmManage.backupModeDelayCount >= PM_BACKUP_MODE_FORCE_TIME)
    {
        g_pmManage.backupModeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_BACKUP_MODE;
        MpuPowerSyncSdkSetRkMode(4);
        TBOX_PRINT("enter backup mode after timeout\r\n");
        return 1;
    }

    g_pmManage.backupModeDelayCount += cycleTime;
    return 0;
}

static uint8_t PmBackupModeCanIsSleepReady(void)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CanRx_DET_INT_Pin0_2) == STD_LOW)
    {
        return 0;
    }

    if(APP_GetWakeupHold() != FALSE)
    {
        return 0;
    }

    CanNm_GetState(0, &nmStatePtr, &nmModePtr);
    if(nmStatePtr != NM_STATE_BUS_SLEEP)
    {
        return 0;
    }

    return 1;
}

static uint8_t PmKl30OverVoltageSleepProcess(void)
{
    uint32_t kl30Voltage = 0;
    Com_IpduGroupVector ipduGroupVector;

    if(PeripheralHalAdGet(AD0_CHANNEL_KL30, &kl30Voltage) != 0)
    {
        return 0;
    }

    if(kl30Voltage < PM_KL30_OVERVOLTAGE_RECOVER_MV)
    {
        if(g_pmManage.kl30OverVoltageFlag != 0)
        {
            Com_ClearIpduGroupVector(ipduGroupVector);
            Com_SetIpduGroup(ipduGroupVector, Com_RxPduGroup_CONTROLLER_0_IAM, TRUE);
            Com_SetIpduGroup(ipduGroupVector, Com_TxPduGroup_CONTROLLER_0_IAM, TRUE);
            Com_IpduGroupControl(ipduGroupVector, TRUE);
            (void)Nm_EnableCommunication(0);
            TBOX_PRINT("KL30 over voltage recovered: %u mV\r\n", kl30Voltage);
        }
        g_pmManage.kl30OverVoltageFlag = 0;
        return 0;
    }

    if(kl30Voltage > PM_KL30_OVERVOLTAGE_MV)
    {
        if(g_pmManage.kl30OverVoltageFlag == 0)
        {
            TBOX_PRINT("KL30 over voltage: %u mV, force bus sleep\r\n", kl30Voltage);
        }
        g_pmManage.kl30OverVoltageFlag = 1;
    }

    if(g_pmManage.kl30OverVoltageFlag == 0)
    {
        return 0;
    }

    APP_ClearWakeupHold();
    APP_ReleaseNetWork();
    User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN();
    BswM_RequestMode(RPort_CanNMIndi_1, COND_NM_ALLOWED_SLEEP);
    (void)Nm_DisableCommunication(0);
    Com_ClearIpduGroupVector(ipduGroupVector);
    Com_SetIpduGroup(ipduGroupVector, Com_RxPduGroup_CONTROLLER_0_IAM, TRUE);
    Com_SetIpduGroup(ipduGroupVector, Com_TxPduGroup_CONTROLLER_0_IAM, FALSE);
    Com_IpduGroupControl(ipduGroupVector, FALSE);
    g_pmManage.sleepState = 0;
    g_pmManage.wakeDelayCount = 0;
    g_pmManage.backupModeDelayCount = 0;
    g_pmManage.mpuPowerOffFlag = 1;
    g_pmManage.wakeupSource = 0;
    MpuPowerSyncSdkSetSleepMode(2);
    MpuHalPowerOff();
    APP_SetSleepMode(APP_SLEEP_MODE);
    g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
    return 1;
}

static void PmStatePreSleepNoticeProcess(uint32_t cycleTime)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

#if(DV_TEST_ENABLE == 1)
    if(g_pmManage.testMode == 2)
    {
        g_pmManage.mpuPowerOffFlag = 1;  // 标记MPU关机
        MpuHalPowerOff();
        g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
        APP_SetSleepMode(APP_SLEEP_MODE);
        TBOX_PRINT("set NAD shutdown\r\n");
    }
    else
    {
        g_pmManage.mpuPowerOffFlag = 0;  // 标记MPU休眠
        /*通知MPU休眠*/
        MpuPowerSyncSdkSetSleep(0);
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_WAIT;
        APP_SetSleepMode(APP_LISTEN_MODE);
        TBOX_PRINT("set NAD sleep\r\n");
    }
    return;
#endif

    if(PmBackupModeProcess(cycleTime) != 0)
    {
        return;
    }

    CanNm_GetState(0,&nmStatePtr,&nmModePtr);
    if(MpuPowerSyncSdkGetSleepDisableState() != 0)
    {
        g_pmManage.pmState = E_PM_STATE_WAKE;
        g_pmManage.wakeDelayCount = 0;
        PmNmAllStart();
        // g_pmManage.wakeupSource = PM_HAL_WAKEUP_SOURCE_KL15;
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        // WakeDelayProcess(g_pmManage.wakeupSource, 0x00, &g_pmManage.wakeDelayTime);
    }
    g_pmManage.sleepState = 0;
    g_pmManage.wakeDelayCount = 0;

    if(g_pmManage.restart24hTimer == 0)
    {
        SaveListenTimerParam();
        MpuHalReset();
        TBOX_PRINT("24H timer expired, system reset\r\n");
        TBOX_PRINT("24H timer expired, system reset\r\n");
        TBOX_PRINT("24H timer expired, system reset\r\n");
        Mcu_PerformReset();
        return;
    }

    if((CheckVinIsInvalid() == 1) || (CheckListenTimerIsExpired() == 1) || (CheckVehicleModeIsTransport() == 1))
    {
        g_pmManage.mpuPowerOffFlag = 1;  // 标记MPU关机
        MpuPowerSyncSdkSetSleepMode(2);
        MpuHalPowerOff();
        g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
        APP_SetSleepMode(APP_SLEEP_MODE);
        TBOX_PRINT("set NAD shutdown\r\n");
    }
    else
    {
        g_pmManage.mpuPowerOffFlag = 0;  // 标记MPU休眠
        MpuPowerSyncSdkSetSleepMode(1);
        /*通知MPU休眠*/
        MpuPowerSyncSdkSetSleep(0);
        g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_WAIT;
        APP_SetSleepMode(APP_LISTEN_MODE);
        TBOX_PRINT("set NAD sleep\r\n");
    }
}

static void PmStatePreSleepWaitProcess(uint32_t cycleTime)
{
    uint8_t mpuSleepStatus = 0;
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;
    NvM_RequestResultType saveResult = NVM_REQ_PENDING;

#if(PM_SDK_DEBUG_NO_MPU)    
    mpuSleepStatus = 0;
#else
    mpuSleepStatus = MpuPowerSyncSdkGetSleepStatus();
#endif
    CanNm_GetState(0, &nmStatePtr, &nmModePtr);
    g_pmManage.wakeDelayCount += cycleTime;
    if(mpuSleepStatus==0)
    {
        if(g_pmManage.listenTimerSavePending == 0)
        {
            if(SaveListenTimerParam() == PM_SDK_STATUS_OK)
            {
                g_pmManage.listenTimerSavePending = 1;
            }
            return;
        }

        if(NvM_GetErrorStatus(NvMBlock_listentiming, &saveResult) != E_OK)
        {
            return;
        }

        if(saveResult == NVM_REQ_OK)
        {
            g_pmManage.listenTimerSavePending = 0;
            g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
        }
        else if(saveResult != NVM_REQ_PENDING)
        {
            g_pmManage.listenTimerSavePending = 0;
        }
        return;
    }

    if(MpuPowerSyncSdkGetSleepDisableState()!=0)
    {
        g_pmManage.sleepState = 1;
        // ClearAllSleepAckFlag();        
        g_pmManage.wakeupSource  = PM_HAL_WAKEUP_SOURCE_MPU;
        // MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        // WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
#if(0)
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
#endif
    // else if((nmStatePtr != NM_STATE_BUS_SLEEP))  // TODO guanyuan
    // {
    //     g_pmManage.sleepState = 1;
    //     // ClearAllSleepAckFlag();        
    //     // g_pmManage.wakeupSource  = PmGetCanWakeupSourceByChannel(wakeChannel);
    //     // MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
    //     // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
    //     // PmAwakeInitProcess(g_pmManage.wakeupSource);
    //     g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
    //     // WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
    //     g_pmManage.wakeDelayCount = 0;
    // }
}

static void PmStateMcuSleepProcess(uint32_t cycleTime)
{
    VehicleInfor_t vehicleInfor = {0};

    if(GetVehicleInfor(&vehicleInfor) == 0)
    {
        TBOX_PRINT("userMode before sleep: %u\r\n", vehicleInfor.userMode);
    }

    /*MPU进入低功耗*/
    MpuHalSetMode(0);
    /*设置peripheral模块进入低功耗*/
    PeripheralHalSetMode(0);
    /*休眠前状态清零*/
    g_pmManage.wakeDelayCount = 0;
    g_pmManage.kl30WakeCount = 0;
	g_pmManage.wakeupSource = 0;
    g_backupBatAgingReqOnceFlag = 0;
    if(g_pmManage.mpuPowerOffFlag == 0)
    {
        TimerHalPrepareSleep(g_pmManage.listenWakeupTimer);
    }
    TimerHalSetMode(0);
    EcallHalSetMode(0);
    LogHalSetMode(0);
    

    // /*进入低功耗函数*/
    // PowerManageHalSleep();
    APP_AllowedGodown();
    closeFlag = 0;
    g_pmManage.pmState = E_PM_STATE_CHECK_WAKEUP_SOURCE;
}

static void PmStateCheckWakeupSourceProcess(uint32_t cycleTime)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;
    uint8_t wakeupSource = 0;
    uint32_t sleepTime;

    if(g_pmManage.wakeupSource == 0)
    {
        g_pmManage.wakeupSource = PmDetectWakeupSourceByIo();
    }

    if(g_pmManage.wakeupSource == 0)
    {
        return;
    }

    PeripheralHalSetMode(1);
    if(g_pmManage.wakeDelayCount < PM_KL30_OVERVOLTAGE_WAKE_ADC_WAIT_MS)
    {
        g_pmManage.wakeDelayCount += cycleTime;
        return;
    }

    if(PmKl30OverVoltageSleepProcess() != 0)
    {
        return;
    }
    g_pmManage.wakeDelayCount = 0;

    APP_SetWakeupHold();
    
    LogHalSetMode(1);
    /*获取唤醒源*/
    TBOX_PRINT("Wakeup source is : %d\r\n",g_pmManage.wakeupSource);
    TimerHalSetMode(1);
    /*MPU进入正常模式*/
    MpuHalSetMode(1);
    /*设置peripheral模块进入正常模式*/
    PeripheralHalSetMode(1);
    EcallHalSetMode(1);
    if(PeripheralHalGetKl30Status() != 0)
    {
        MpuPowerSyncSdkSetRkMode(1);
    }
    /*进行一次备用电池老化检测*/
    PmRequestBackupBatAgingCheckOnce();
#if(DV_TEST_ENABLE == 1)
    g_pmManage.testMode = 0;
    PmAwakeInitProcess(g_pmManage.wakeupSource);
    MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
    PmNmAllStart();
    g_pmManage.pmState = E_PM_STATE_WAKE;
    if(g_pmManage.mpuPowerOffFlag == 1)
    {
        PeripheralHalMcuHardReset();  // 执行硬件复位
    }
    return;
#endif

    MpuPowerSyncSdkSetSleepMode(0);
    if(g_pmManage.wakeupSource==PM_HAL_WAKEUP_SOURCE_MPU)
    {
        /*MPU唤醒处理*/
        g_pmManage.pmState =E_PM_STATE_GET_MPU_WAKE_SOURCE;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
    }
    else if (g_pmManage.wakeupSource == PM_HAL_WAKEUP_SOURCE_CAN1)
    {
        g_pmManage.pmState = E_PM_STATE_PRE_CHECK_CAN;
        g_pmManage.wakeDelayCount = 0;
    }
    else 
    {
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
        if(g_pmManage.wakeupSource != PM_HAL_WAKEUP_SOURCE_MCURTC)
        {
            PmNmAllStart();
            g_pmManage.pmState = E_PM_STATE_WAKE;
        }
    }

    if(g_pmManage.mpuPowerOffFlag == 0) // listen唤醒才更新计时，sleep唤醒不更新计时
    {
        // source = TimerHalGetWakeupSource();
        sleepTime = TimerHalGetSleepDuration();
        TBOX_PRINT("sleep time = %d sec\r\n", sleepTime);
        
        // 唤醒后更新计时，如果休眠时间大于休眠前计时，则计时清零
        if(sleepTime > g_pmManage.restart24hTimer)
        {
            g_pmManage.restart24hTimer = 0;
        }
        else
        {
            g_pmManage.restart24hTimer -= sleepTime;
        }
        
        if(sleepTime > g_pmManage.listenWakeupTimer)
        {
            g_pmManage.listenWakeupTimer = 0;
        }
        else
        {
            g_pmManage.listenWakeupTimer -= sleepTime;
        }

    if(g_pmManage.listenWakeupTimer == 0)
    {
        g_listenTimerClearReqFlag = 1;
    }
    }
}

static void PmStatePreCheckCanProcess(uint32_t cycleTime)
{
    uint8_t wakeCanMsgRxFlag;
    uint8_t wakeChannel;
    uint8_t allCanReceiveFlag;
    uint8_t allCanRxChannel;
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;
    
    // /*获取can唤醒报文接收状态*/
    // wakeCanMsgRxFlag = 0;
    // wakeChannel = 0;
    // PmNmGetWakeMsgReceiveState(&wakeCanMsgRxFlag,&wakeChannel);
    // /*获取can报文接收状态*/
    // allCanReceiveFlag = 0;
    // allCanRxChannel = 0;
    // PmNmGetMsgReceiveState(&allCanReceiveFlag,&allCanRxChannel);
    CanNm_GetState(0, &nmStatePtr, &nmModePtr);
    if((g_pmDeepstopCanPreCheckNoMpu == 0) && (MpuPowerSyncSdkGetSleepDisableState() != 0))
    {
        // g_pmManage.wakeupSource =PM_HAL_WAKEUP_SOURCE_KL15;
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        // PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        // WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    else if((nmStatePtr != NM_STATE_BUS_SLEEP))
    {
        if(g_pmDeepstopCanPreCheckNoMpu != 0)
        {
            g_pmDeepstopCanPreCheckNoMpu = 0;
            g_pmManage.mpuPowerOffFlag = 0;
            MpuHalStart();
            PmNmAllStart();
            g_pmManage.pmState = E_PM_STATE_POWER_ON;
            g_pmManage.wakeDelayCount = 0;
            TBOX_PRINT("deepstop CAN NM wakeup, start MPU\r\n");
            return;
        }
        /*can唤醒 处理*/
        // g_pmManage.wakeupSource = PmGetCanWakeupSourceByChannel(wakeChannel );
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource);
        // PmAwakeInitProcess(g_pmManage.wakeupSource);
        g_pmManage.pmState =E_PM_STATE_WAKE_DELAY;
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        // WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
    }
    // else if(allCanReceiveFlag !=0)
    // {
    //     /*can唤醒 处理*/
    //     g_pmManage.wakeDelayCount = 0;
    // }
    else if(g_pmManage.wakeDelayCount<500)
    {
        /*延迟计数*/
        g_pmManage.wakeDelayCount += cycleTime;
    }
    else 
    {
        /*报文接收超时休眠*/
        if(g_pmDeepstopCanPreCheckNoMpu != 0)
        {
            g_pmDeepstopCanPreCheckNoMpu = 0;
            PmDeepstopCanNonNmPrepareSleep();
            g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;
            TBOX_PRINT("deepstop CAN non-NM wakeup, go sleep without MPU\r\n");
            return;
        }
        APP_ClearWakeupHold();
        g_pmManage.pmState = E_PM_STATE_MCU_SLEEP;;
    }
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
        // if(g_pmManage.mpuWakeSource != PM_HAL_WAKEUP_SOURCE_MPU)    // TODO guanyuan
        {
            PmNmAllStart();
        }
        // PmNmGotoAwakeMode(g_pmManage.wakeupSource);  // TODO guanyuan
        PmAwakeInitProcess(g_pmManage.wakeupSource);
        WakeDelayProcess(g_pmManage.wakeupSource,g_pmManage.mpuWakeSource ,&g_pmManage.wakeDelayTime);
        g_pmManage.wakeDelayCount = 0;
        g_pmManage.pmState = E_PM_STATE_WAKE;
    }
}

static void PmStateBackupModeProcess(uint32_t cycleTime)
{
    int16_t sleepDisableEvent;

    (void)cycleTime;

    if(PeripheralHalGetKl30Status() != 0)
    {
        g_pmManage.backupModeDelayCount = 0;
        g_pmManage.wakeDelayCount = 0;
        MpuPowerSyncSdkSetRkMode(1);
        g_pmManage.pmState = E_PM_STATE_WAKE;
        TBOX_PRINT("exit backup mode\r\n");
        return;
    }

    sleepDisableEvent = MpuPowerSyncSdkGetRawSleepDisableEvent();
    if(DisableSleepEventIsEcall((uint8_t)sleepDisableEvent) != 0)
    {
        return;
    }

    if(sleepDisableEvent != 0)
    {
        return;
    }

    if(PmBackupModeCanIsSleepReady() == 0)
    {
        return;
    }

    g_pmManage.sleepState = 0;
    g_pmManage.wakeDelayCount = 0;
    g_pmManage.mpuPowerOffFlag = 0;
    MpuPowerSyncSdkSetSleepMode(1);
    MpuPowerSyncSdkSetSleep(0);
    APP_SetSleepMode(APP_LISTEN_MODE);
    g_pmManage.pmState = E_PM_STATE_PRE_SLEEP_WAIT;
    TBOX_PRINT("backup mode set NAD sleep\r\n");
}

void PowerManageSdkCycleProcess(uint32_t cycleTime)
{
    PmProcessListenTimerFlashRequest();

    if((E_PM_STATE_UNPOWED != g_pmManage.pmState) &&
       (E_PM_STATE_MCU_SLEEP != g_pmManage.pmState) &&
       (E_PM_STATE_CHECK_WAKEUP_SOURCE != g_pmManage.pmState))
    {
        if(PmKl30OverVoltageSleepProcess() != 0)
        {
            return;
        }
    }

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
        // PmStateNmpuCheckNmStatusProcess(cycleTime);
    }
    // else if(E_PM_STATE_GET_MPU_SLEEP_FINISH==g_pmManage.pmState)
    // {
    //     PmStateGetMpuSleepFinishProcess(cycleTime);
    // }
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
    else if(E_PM_STATE_CHECK_WAKEUP_SOURCE==g_pmManage.pmState)
    {
        PmStateCheckWakeupSourceProcess(cycleTime);
    }
    else if(E_PM_STATE_PRE_CHECK_CAN==g_pmManage.pmState)
    {
        PmStatePreCheckCanProcess(cycleTime);
    }
    else if(E_PM_STATE_GET_MPU_WAKE_SOURCE==g_pmManage.pmState)
    {
        PmStateGetMpuWakeSourceProcess(cycleTime);
    }
    else if(E_PM_STATE_BACKUP_MODE==g_pmManage.pmState)
    {
        PmStateBackupModeProcess(cycleTime);
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

    g_backupBatAgingReqOnceFlag = 0;

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
    if((pmHandle >= 0) && (pmHandle < PM_SDK_SLEEP_ACK_HANDLE_MAX))
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
    if (mode <= 2)
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
#if(0)
void PowerManageSdkDeepSleep(uint8_t deepSleepFlag)
{
    /*设置深度休眠标志*/
    g_pmManage.deepSleepFlag = deepSleepFlag;
    /*设置MPU的深度休眠标志*/
    MpuPowerSyncSdkSetSleepMode(deepSleepFlag);
}

void PowerManageSdkForceSleep(void)
{
    /*设置强制休眠标志*/
    g_pmManage.forceSleepFlag = 1;
}
#endif
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

void PowerManageSdkForceWakeupMpu(uint16_t cycleTime)
{
    static uint8_t count = 0;
    static uint8_t wakeupMpuTimes = 0;
    
    count++;
    if(count < (1000 / cycleTime))
    {
        return;
    }
    count = 0;
    if(wakeupMpuTimes < 5)
    {
        MpuPowerSyncSdkSetWake(g_pmManage.wakeupSource);
        wakeupMpuTimes++;
    }
    else
    {
        wakeupMpuTimes = 10;
    }
}

/*************************************************
  Function:     PowerManageSdkTimerDecrement
  Description:  运行期间计时器递减，供1ms定时器中断调用
  Input:        None
  Output:       None
  Return:       None
  Others:       累计1000ms（1秒）后递减restart24hTimer和listenWakeupTimer
*************************************************/
void PowerManageSdkTimerDecrement(void)
{
    g_timerMsAccumulator++;
    
    if(g_timerMsAccumulator >= 1000)
    {
        g_timerMsAccumulator = 0;
        
        /* 递减24小时重启计时器 */
        if(g_pmManage.restart24hTimer > 0)
        {
            g_pmManage.restart24hTimer--;
        }
        
        /* 递减listen唤醒计时器 */
        if(g_pmManage.listenWakeupTimer > 0)
        {
            g_pmManage.listenWakeupTimer--;
        if(g_pmManage.listenWakeupTimer == 0)
        {
            g_listenTimerClearReqFlag = 1;
        }
        }
    }
}

uint8_t PowerManageSdkCheckDeepstopReset(void)
{
    if(g_pmResetReasonValid == 0U)
    {
        g_pmResetReason = RESCTL.RESF;
        g_pmResetReasonValid = 1U;
    }

    return ((g_pmResetReason & PM_RESF_DEEPSTOP_RESET_MASK) != 0U) ? 1U : 0U;
}

uint8_t PowerManageSdkShouldStartMpuOnPowerOn(void)
{
    if(PmKl30OverVoltageSleepProcess() != 0)
    {
        return 0U;
    }

    return (g_pmDeepstopCanPreCheckNoMpu == 0U) ? 1U : 0U;
}

uint8_t PowerManageSdkShouldKeepMpuOffBeforeInit(void)
{
    if((PowerManageSdkCheckDeepstopReset() != 0U) &&
       (PmDeepstopWakeupSourceIsCan() != 0U))
    {
        g_pmDeepstopCanOnlyWakeDetected = 1U;
    }

    return g_pmDeepstopCanOnlyWakeDetected;
}
