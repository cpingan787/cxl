#include "logHal.h"
// #include "timerHal.h"
#include "peripheralHal.h"
#include "mpuHal.h"
#include "powerManageHal.h"
// #include "bleHal.h"

#include "batterySdk.h"
// #include "autosarNmSdk.h"
#include "powerManageSdk.h"
#include "taskPowerManage.h"
#include "taskDtcProcess.h"
// #include "canPeriodTask.h"
#include "NVM.h"
#include "Dem.h"
#include "Dem_PBcfg.h"
#include "Std_Types.h"
#include "Com.h"
#include "Com_Cfg.h"
#include "r_cg_macrodriver.h"
#include "r_port.h"
#include "r_cg_port.h"
#include "NvM_Cfg.h"
#include "NvM_Inter.h"
#include "CanNm.h"

//蓄电池电压 DTC
#define kl30VOLTAGE_DTC_HIGH ((Dem_EventIdType)EventParameter_0xD56217) /* 45u - U1562 FTB:17 */
#define kl30VOLTAGE_DTC_LOW ((Dem_EventIdType)EventParameter_0xD56316)  /* 46u - U1563 FTB:16 */
#define kl30VOLTAGE_DTC_START_DELAY_CNT       5

typedef enum
{
    E_KL30_DETECT_NORMAL = 0,
    E_KL30_DETECT_HIGH,
    E_KL30_DETECT_LOW,
} Kl30DetectState;

static Kl30DetectState g_voltageDiagState = E_KL30_DETECT_NORMAL;
static uint32_t g_diagRecoverTimerCount = 0;
static uint8_t kl30_StartCnt = 0;
static uint8_t g_kl30VoltageUsgMdCnt = 0;
static uint8_t g_diagStartFlag = 0x00;
static uint32_t g_diagFaultTimerCount = 0;
static const uint16_t g_diagMaxVolage = 16000;
static const uint16_t g_diagMinVolage = 9000;
static const uint16_t g_diagMaxRecoverVolage = 15500;
static const uint16_t g_diagMinRecoverVolage = 9500;
static const uint32_t g_diagRecoverTime = 1000;
static const uint32_t g_digStartTime = 1000;
static const uint32_t g_diagFaultTime = 1000;
static boolean g_kl30HighFlag = FALSE;
static boolean g_kl30LowFlag  = FALSE;

static void KL30_SyncMonitorStateWithDem(void)         /* 当Dem状态已被外部清除时，同步复位KL30本地监控状态 */
{
    Dem_UdsStatusByteType eventStatus = 0;            

    if (g_kl30HighFlag == TRUE)                        
    {
        if (Dem_GetEventStatus(kl30VOLTAGE_DTC_HIGH, &eventStatus) == E_OK) 
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                g_kl30HighFlag = FALSE;                
                if (g_voltageDiagState == E_KL30_DETECT_HIGH) 
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL; 
                }
                g_diagFaultTimerCount = 0;            
                g_diagRecoverTimerCount = 0u;          
            }
        }
    }

    if (g_kl30LowFlag == TRUE)                        
    {
        if (Dem_GetEventStatus(kl30VOLTAGE_DTC_LOW, &eventStatus) == E_OK) 
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0)
            {
                g_kl30LowFlag = FALSE;                 
                if (g_voltageDiagState == E_KL30_DETECT_LOW) 
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL; 
                }
                g_diagFaultTimerCount = 0;           
                g_diagRecoverTimerCount = 0;         
            }
        }
    }
}

void kl30VoltageDTCProcess(uint16_t powerVoltage)
{
    boolean eptReady = FALSE;
    boolean startDelayReady = FALSE;
    boolean usgMdReady = FALSE;

    KL30_SyncMonitorStateWithDem();

    if (kl30_StartCnt < kl30VOLTAGE_DTC_START_DELAY_CNT)                    /* 若启动计数还没达到门限 */
    {
        kl30_StartCnt++;                                                    /* 每次调用累加一次启动计数 */
    }
    eptReady = ISEPTStCmdOff();

    if (kl30_StartCnt >= kl30VOLTAGE_DTC_START_DELAY_CNT)
    {
        startDelayReady = TRUE;
    }

    usgMdReady = Diag_CheckUsgMdPrecondition1s(&g_kl30VoltageUsgMdCnt);

    if ((eptReady == TRUE) && (startDelayReady == TRUE) && (usgMdReady == TRUE))
    {
    if (E_KL30_DETECT_NORMAL == g_voltageDiagState)
     {
        if (powerVoltage > g_diagMaxVolage)
        {
            g_voltageDiagState = E_KL30_DETECT_HIGH;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
        }
        else if (powerVoltage < g_diagMinVolage)
        {
            g_voltageDiagState = E_KL30_DETECT_LOW;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
        }
    }
    else if (E_KL30_DETECT_HIGH == g_voltageDiagState)
    {
        if (powerVoltage <= g_diagMaxRecoverVolage)
        {
            g_diagFaultTimerCount = 0;
            if (g_diagRecoverTimerCount >= (g_diagRecoverTime / 200))
            {
                g_voltageDiagState = E_KL30_DETECT_NORMAL;
                Dem_SetEventStatus(kl30VOLTAGE_DTC_HIGH, DEM_EVENT_STATUS_PASSED);
            }
            else
            {
                g_diagRecoverTimerCount++;
            }
        }
        else
        {
            g_diagRecoverTimerCount = 0;
            if (powerVoltage > g_diagMaxVolage)
            {
                if (g_diagFaultTimerCount >= (g_diagFaultTime / 200))
                {
                    Dem_SetEventStatus(kl30VOLTAGE_DTC_HIGH, DEM_EVENT_STATUS_FAILED);
                    g_kl30HighFlag = TRUE;
                }
                else
                {
                    g_diagFaultTimerCount += 1;
                }
            }
            else
            {
                g_diagFaultTimerCount = 0;
            }
        }
    }
    else if (E_KL30_DETECT_LOW == g_voltageDiagState)
    {
        if (powerVoltage >= g_diagMinRecoverVolage)
        {
            g_diagFaultTimerCount = 0;
            if (g_diagRecoverTimerCount >= (g_diagRecoverTime / 200))
            {
                g_voltageDiagState = E_KL30_DETECT_NORMAL;
                g_diagRecoverTimerCount = 0;
                Dem_SetEventStatus(kl30VOLTAGE_DTC_LOW, DEM_EVENT_STATUS_PASSED);
            }
            else
            {
                g_diagRecoverTimerCount++;
            }
        }
        else
        {
            g_diagRecoverTimerCount = 0;
            if (powerVoltage < g_diagMinVolage)
            {
                if (g_diagFaultTimerCount >= (g_diagFaultTime / 200))
                {
                    Dem_SetEventStatus(kl30VOLTAGE_DTC_LOW, DEM_EVENT_STATUS_FAILED);
                    g_kl30LowFlag = TRUE;
                }
                else
                {
                    g_diagFaultTimerCount++;
                }
            }
            else
            {
                g_diagFaultTimerCount = 0;
            }
        }
    }
    else
    {
        g_voltageDiagState = E_KL30_DETECT_NORMAL;
        g_diagRecoverTimerCount = 0;
        g_diagFaultTimerCount = 0;
    }
    }
}



//备用电池电压过高、过低  DTC

#define DEM_EVT_BACKUP_BAT_HIGH   ((Dem_EventIdType)EventParameter_0x955017) /*19u - B1550 FTB:17 */
#define DEM_EVT_BACKUP_BAT_LOW    ((Dem_EventIdType)EventParameter_0x955016) /*18u - B1550 FTB:16 */

#define BACKUP_BAT_ADC_CHANNEL    AD0_CHANNEL_BUB_VOLTAGE_ADC
#define BACKUP_BAT_KL30_CHANNEL   AD0_CHANNEL_KL30
 
#define BACKUP_BAT_DTC_LOW_VALID_MIN_TH_MV        100
#define BACKUP_BAT_DTC_LOW_TH_MV                  1800
#define BACKUP_BAT_DTC_HIGH_TH_MV                 2800
#define BACKUP_BAT_DTC_HIGH_RECOVER_TH_MV         2800
#define BACKUP_BAT_DTC_LOW_RECOVER_TH_MV          1800

#define BACKUP_BAT_KL30_LOW_TH_MV                 9000
#define BACKUP_BAT_KL30_HIGH_TH_MV                16000

#define BACKUP_BAT_DTC_HIGH_CONFIRM_CNT           25
#define BACKUP_BAT_DTC_LOW_CONFIRM_CNT            1200
#define BACKUP_BAT_DTC_RECOVER_CNT                25
#define BACKUP_BAT_DTC_PRECOND_CONFIRM_CNT        5

static uint8_t BackupBat_StartDelay_Cnt = 0;      
static uint8_t BackupBat_UsgMd_Cnt = 0;           
static uint8_t BackupBat_VoltageCan_Cnt = 0;      
static uint8_t BackupBat_EptOff_Cnt = 0;          

static boolean BackupBat_HighEnable = FALSE;
static boolean BackupBat_LowEnable = FALSE;

static uint16_t BackupBat_High_Cnt = 0;
static uint16_t BackupBat_Low_Cnt = 0;
static uint8_t BackupBat_High_Ok_Cnt = 0;         
static uint8_t BackupBat_Low_Ok_Cnt = 0;         

static boolean BackupBat_High_Flag = FALSE;
static boolean BackupBat_Low_Flag = FALSE;

static boolean BackupBat_IsCharging(void)         /* 判断当前备用电池是否处于充电状态 */
{
    if (BatteryHalGetState() == 1)
    {
        return TRUE;
    }
    return FALSE;
}

static boolean BackupBat_IsEptStCmdOff(void)      /* 判断EPTStCmdOn != TRUE */
{
    boolean eptStCmdOn = FALSE;
    Std_ReturnType ret = E_NOT_OK;

    ret = Com_ReceiveSignal(
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTStCmdOn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,
        &eptStCmdOn);

    if ((ret == E_OK) && (eptStCmdOn != TRUE))
    {
        return TRUE;
    }
    return FALSE;
}

static boolean BackupBat_IsKl30RangeOk(void)      /* 判断 KL30 是否在 9V~16V 之间 */
{
    uint32_t kl30Voltage = 0;

    if (PeripheralHalAdGet(BACKUP_BAT_KL30_CHANNEL, &kl30Voltage) != 0)
    {
        return FALSE;
    }

    if ((kl30Voltage >= BACKUP_BAT_KL30_LOW_TH_MV) &&
        (kl30Voltage <= BACKUP_BAT_KL30_HIGH_TH_MV))
    {
        return TRUE;
    }
    return FALSE;
}

static boolean BackupBat_CheckPrecondition1s(boolean condition, uint8_t *pCnt) /* 判断使能条件是否连续满足1s */
{
    if (pCnt == NULL_PTR)
    {
        return FALSE;
    }

    if (condition == TRUE)
    {
        if (*pCnt < BACKUP_BAT_DTC_PRECOND_CONFIRM_CNT)
        {
            (*pCnt)++;
        }
    }
    else
    {
        *pCnt = 0;
    }

    if (*pCnt >= BACKUP_BAT_DTC_PRECOND_CONFIRM_CNT)
    {
        return TRUE;
    }
    return FALSE;
}

static void BackupBat_VoltageHighAndLowEnableDetectProcess(void)              /* 备用电池高低压DTC使能条件处理函数 */
{
    boolean startDelayReady = FALSE;
    boolean usgMdReady = FALSE;
    boolean canReady = FALSE;
    boolean eptReady = FALSE;
    boolean kl30Ready = FALSE;
    boolean commonReady = FALSE;

    startDelayReady = BackupBat_CheckPrecondition1s(TRUE, &BackupBat_StartDelay_Cnt);
    usgMdReady = Diag_CheckUsgMdPrecondition1s(&BackupBat_UsgMd_Cnt);
    canReady = BackupBat_CheckPrecondition1s(IsCanNetworkNormal(), &BackupBat_VoltageCan_Cnt);
    eptReady = BackupBat_CheckPrecondition1s(BackupBat_IsEptStCmdOff(), &BackupBat_EptOff_Cnt);
    kl30Ready = BackupBat_IsKl30RangeOk();

    if ((startDelayReady == TRUE) &&
        (usgMdReady == TRUE) &&
        (canReady == TRUE) &&
        (eptReady == TRUE) &&
        (kl30Ready == TRUE))
    {
        commonReady = TRUE;
    }
    else
    {
        commonReady = FALSE;
    }

    BackupBat_HighEnable = commonReady;

    if ((commonReady == TRUE) /*&&
        (BackupBat_IsCharging() == TRUE)*/)
    {
        BackupBat_LowEnable = TRUE;
    }
    else
    {
        BackupBat_LowEnable = FALSE;
    }
}

static void BackupBat_SyncMonitorStateWithDem(void)
{
    Dem_UdsStatusByteType eventStatus = 0;

    if (BackupBat_High_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_BACKUP_BAT_HIGH, &eventStatus) == E_OK)
        {
            if ((eventStatus & DEM_UDS_STATUS_TF) == 0)
            {
                BackupBat_High_Cnt = 0;
                BackupBat_High_Ok_Cnt = 0;
                BackupBat_High_Flag = FALSE;
            }
        }
    }

    if (BackupBat_Low_Flag == TRUE)
    {
        if (Dem_GetEventStatus(DEM_EVT_BACKUP_BAT_LOW, &eventStatus) == E_OK)
        {
            if ((eventStatus & DEM_UDS_STATUS_TF) == 0)
            {
                BackupBat_Low_Cnt = 0;
                BackupBat_Low_Ok_Cnt = 0;
                BackupBat_Low_Flag = FALSE;
            }
        }
    }
}

void BackupBat_DtcInit(void)
{
    BackupBat_StartDelay_Cnt = 0;
    BackupBat_UsgMd_Cnt = 0;
    BackupBat_VoltageCan_Cnt = 0;
    BackupBat_EptOff_Cnt = 0;

    BackupBat_HighEnable = FALSE;
    BackupBat_LowEnable = FALSE;

    BackupBat_High_Cnt = 0;
    BackupBat_Low_Cnt = 0;
    BackupBat_High_Ok_Cnt = 0;
    BackupBat_Low_Ok_Cnt = 0;

    BackupBat_High_Flag = FALSE;
    BackupBat_Low_Flag = FALSE;
}

void BackupBat_DetectProcess_200ms(void)
{
    uint32_t backupBatVoltage = 0;

    BackupBat_SyncMonitorStateWithDem();
    BackupBat_VoltageHighAndLowEnableDetectProcess();
    PeripheralHalAdGet(BACKUP_BAT_ADC_CHANNEL, &backupBatVoltage);
    //TBOX_PRINT("backupBatVoltage_gaodi = %d\n", backupBatVoltage);

    if (BackupBat_HighEnable == TRUE)
    {
        if (backupBatVoltage > BACKUP_BAT_DTC_HIGH_TH_MV)
        {
            if (BackupBat_High_Cnt < BACKUP_BAT_DTC_HIGH_CONFIRM_CNT)
            {
                BackupBat_High_Cnt++;
            }
            BackupBat_High_Ok_Cnt = 0;
        }
        else if (backupBatVoltage <= BACKUP_BAT_DTC_HIGH_RECOVER_TH_MV)
        {
            BackupBat_High_Cnt = 0;

            if (BackupBat_High_Flag == TRUE)
            {
                if (BackupBat_High_Ok_Cnt < BACKUP_BAT_DTC_RECOVER_CNT)
                {
                    BackupBat_High_Ok_Cnt++;
                }
            }
            else
            {
                BackupBat_High_Ok_Cnt = 0;
            }
        }
        else
        {
            BackupBat_High_Cnt = 0;
            BackupBat_High_Ok_Cnt = 0;
        }
    }
    else
    {
        BackupBat_High_Cnt = 0;
        BackupBat_High_Ok_Cnt = 0;
    }

    if (BackupBat_LowEnable == TRUE)
    {
        if ((backupBatVoltage >= BACKUP_BAT_DTC_LOW_VALID_MIN_TH_MV) &&
            (backupBatVoltage < BACKUP_BAT_DTC_LOW_TH_MV))
        {
            if (BackupBat_Low_Cnt < BACKUP_BAT_DTC_LOW_CONFIRM_CNT)
            {
                BackupBat_Low_Cnt++;
            }
            BackupBat_Low_Ok_Cnt = 0;
        }
        else if (backupBatVoltage >= BACKUP_BAT_DTC_LOW_RECOVER_TH_MV)
        {
            BackupBat_Low_Cnt = 0;

            if (BackupBat_Low_Flag == TRUE)
            {
                if (BackupBat_Low_Ok_Cnt < BACKUP_BAT_DTC_RECOVER_CNT)
                {
                    BackupBat_Low_Ok_Cnt++;
                }
            }
            else
            {
                BackupBat_Low_Ok_Cnt = 0;
            }
        }
        else
        {
            BackupBat_Low_Cnt = 0;
            BackupBat_Low_Ok_Cnt = 0;
        }
    }
    else
    {
        BackupBat_Low_Cnt = 0;
        BackupBat_Low_Ok_Cnt = 0;
    }

    if ((BackupBat_High_Cnt >= BACKUP_BAT_DTC_HIGH_CONFIRM_CNT) &&
        (BackupBat_High_Flag == FALSE))
    {
        BackupBat_Low_Cnt = 0;
        BackupBat_Low_Ok_Cnt = 0;

        if (BackupBat_Low_Flag == TRUE)
        {
            BackupBat_Low_Flag = FALSE;
            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_LOW, DEM_EVENT_STATUS_PASSED);
        }

        BackupBat_High_Cnt = 0;
        BackupBat_High_Ok_Cnt = 0;
        BackupBat_High_Flag = TRUE;
        Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_HIGH, DEM_EVENT_STATUS_FAILED);
    }

    if ((BackupBat_Low_Cnt >= BACKUP_BAT_DTC_LOW_CONFIRM_CNT) &&
        (BackupBat_Low_Flag == FALSE))
    {
        BackupBat_High_Cnt = 0;
        BackupBat_High_Ok_Cnt = 0;

        if (BackupBat_High_Flag == TRUE)
        {
            BackupBat_High_Flag = FALSE;
            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_HIGH, DEM_EVENT_STATUS_PASSED);
        }

        BackupBat_Low_Cnt = 0;
        BackupBat_Low_Ok_Cnt = 0;
        BackupBat_Low_Flag = TRUE;
        Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_LOW, DEM_EVENT_STATUS_FAILED);
    }

    if ((BackupBat_High_Ok_Cnt >= BACKUP_BAT_DTC_RECOVER_CNT) &&
        (BackupBat_High_Flag == TRUE))
    {
        BackupBat_High_Cnt = 0;
        BackupBat_High_Ok_Cnt = 0;
        BackupBat_High_Flag = FALSE;
        Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_HIGH, DEM_EVENT_STATUS_PASSED);
    }

    if ((BackupBat_Low_Ok_Cnt >= BACKUP_BAT_DTC_RECOVER_CNT) &&
        (BackupBat_Low_Flag == TRUE))
    {
        BackupBat_Low_Cnt = 0;
        BackupBat_Low_Ok_Cnt = 0;
        BackupBat_Low_Flag = FALSE;
        Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_LOW, DEM_EVENT_STATUS_PASSED);
    }
}



//备用电池电源开路、对地短路检测
#define DEM_EVT_BACKUP_BAT_SHORT_GND   ((Dem_EventIdType)EventParameter_0x955011)  //对地短路
#define DEM_EVT_BACKUP_BAT_OPEN        ((Dem_EventIdType)EventParameter_0x955013)  //对电源开路
#define BACKUP_BAT_VOLTAGE_ADC_CHANNEL                    AD0_CHANNEL_BUB_VOLTAGE_ADC
#define BACKUP_BAT_OPEN_ADC_CHANNEL                       AD0_CHANNEL_BUB_TEMP_ADC

#define BACKUP_BAT_SHORT_GND_TH_MV               100    
#define BACKUP_BAT_OPEN_TH_MV                    3200
#define BACKUP_BAT_NORMAL_LOW_TH_MV              100
#define BACKUP_BAT_NORMAL_HIGH_TH_MV             2800

#define BACKUP_BAT_OPEN_CONFIRM_CNT              300    //开路确认时间
#define BACKUP_BAT_SHORT_GND_CONFIRM_CNT         1200   //对地短路确认时间
#define BACKUP_BAT_RECOVER_CNT                   25     //故障解除计数

#define BACKUP_BAT_CAN_CONFIRM_CNT               5      //can网络正常计数

static uint8_t BackupBat_Can_Cnt = 0;                                            
static uint16_t BackupBat_ShortGnd_Cnt = 0;                                              
static uint16_t BackupBat_Open_Cnt = 0; 
static uint8_t BackupBat_Normal_Cnt = 0;                                                                                         

static boolean BackupBat_ShortGnd_Flag = FALSE;                                    
static boolean BackupBat_Open_Flag = FALSE;
static boolean BackupBat_Enable = FALSE;      //监测使能标志

static void BackupBat_EnableDetectProcess(void)                                    /* 备用电池开路/短路DTC使能条件检测 */
{
    if ((Dtc_IsCommonMonitorEnable() == TRUE) &&                                   
        (IsCanNetworkNormal() == TRUE) /*&&                                          
        (BackupBat_IsCharging() == TRUE)*/)                                          
    {
        if (BackupBat_Can_Cnt < BACKUP_BAT_CAN_CONFIRM_CNT)                        
        {
            BackupBat_Can_Cnt++;                                                   
        }
    }
    else
    {
        BackupBat_Can_Cnt = 0;                                                     
    }

    if (BackupBat_Can_Cnt >= BACKUP_BAT_CAN_CONFIRM_CNT)                           
    {
        BackupBat_Enable = TRUE;                                                  
    }
    else
    {
        BackupBat_Enable = FALSE;                                                 
    }
}

static void BackupBat_ResetShortGndMonitorState(void)                              /* 复位对地短路相关诊断状态 */
{
    BackupBat_ShortGnd_Cnt = 0;                                                    
    BackupBat_Normal_Cnt = 0;                                                          
    BackupBat_ShortGnd_Flag = FALSE;                                               
}

static void BackupBat_ResetOpenMonitorState(void)                                  /* 复位源开路相关诊断状态 */
{
    BackupBat_Open_Cnt = 0;                                                        
    BackupBat_Normal_Cnt = 0;                                                          
    BackupBat_Open_Flag = FALSE;                                                   
}

static void BackupBat_SyncOpenShortMonitorStateWithDem(void)                      
{
    Dem_UdsStatusByteType eventStatus = 0;                                        

    if (BackupBat_ShortGnd_Flag == TRUE)                                          
    {
        if (Dem_GetEventStatus(DEM_EVT_BACKUP_BAT_SHORT_GND, &eventStatus) == E_OK) 
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0) 
            {
                BackupBat_ResetShortGndMonitorState();                             
            }
        }
    }

    if (BackupBat_Open_Flag == TRUE)                                               
    {
        if (Dem_GetEventStatus(DEM_EVT_BACKUP_BAT_OPEN, &eventStatus) == E_OK)     
        {
            if ((eventStatus & (DEM_UDS_STATUS_TF | DEM_UDS_STATUS_PDTC | DEM_UDS_STATUS_CDTC | DEM_UDS_STATUS_TFSLC)) == 0) 
            {
                BackupBat_ResetOpenMonitorState();                                 
            }
        }
    }
}

void BackupBatOpenShort_DtcInit(void)                                              
{
    BackupBat_Can_Cnt = 0;                                                         
    BackupBat_ShortGnd_Cnt = 0;                                                   
    BackupBat_Open_Cnt = 0;                                                        
    BackupBat_Normal_Cnt = 0;                                                          

    BackupBat_ShortGnd_Flag = FALSE;                                               
    BackupBat_Open_Flag = FALSE;                                                   
    BackupBat_Enable = FALSE;                                                      
}

void BackupBatOpenShort_DetectProcess_200ms(void)                                  
{
    uint32_t backupBatVoltage = 0;                                                  
    uint32_t backupBatOpenVoltage = 0;                                              //用于开路判断

    BackupBat_SyncOpenShortMonitorStateWithDem();                                  
    BackupBat_EnableDetectProcess();                                                

    PeripheralHalAdGet(BACKUP_BAT_VOLTAGE_ADC_CHANNEL, &backupBatVoltage);          
    PeripheralHalAdGet(BACKUP_BAT_OPEN_ADC_CHANNEL, &backupBatOpenVoltage);
    TBOX_PRINT("[BACKUP_BAT_VOLTAGE_ADC] %d\r\n", backupBatVoltage);
    TBOX_PRINT("[BACKUP_BAT_OPEN_ADC_temp] %d\r\n", backupBatOpenVoltage);


    if (BackupBat_Enable == TRUE)
    {
        if (backupBatOpenVoltage > BACKUP_BAT_OPEN_TH_MV)
        {
            if (BackupBat_Open_Cnt < BACKUP_BAT_OPEN_CONFIRM_CNT)
            {
                BackupBat_Open_Cnt++;
            }

            BackupBat_ShortGnd_Cnt = 0;
            BackupBat_Normal_Cnt = 0;
        }
        else if (backupBatVoltage < BACKUP_BAT_SHORT_GND_TH_MV)
        {
            if (BackupBat_ShortGnd_Cnt < BACKUP_BAT_SHORT_GND_CONFIRM_CNT)
            {
                BackupBat_ShortGnd_Cnt++;
            }

            BackupBat_Open_Cnt = 0;
            BackupBat_Normal_Cnt = 0;
        }
        else if ((BackupBat_Open_Flag == TRUE) &&
                 (backupBatOpenVoltage < BACKUP_BAT_OPEN_TH_MV))
        {
            if (BackupBat_Normal_Cnt < BACKUP_BAT_RECOVER_CNT)
            {
                BackupBat_Normal_Cnt++;
            }

            BackupBat_ShortGnd_Cnt = 0;
            BackupBat_Open_Cnt = 0;
        }
        else if ((BackupBat_ShortGnd_Flag == TRUE) &&
                 (backupBatVoltage >= BACKUP_BAT_NORMAL_LOW_TH_MV) &&
                 (backupBatVoltage <= BACKUP_BAT_NORMAL_HIGH_TH_MV))
        {
            if (BackupBat_Normal_Cnt < BACKUP_BAT_RECOVER_CNT)
            {
                BackupBat_Normal_Cnt++;
            }

            BackupBat_ShortGnd_Cnt = 0;
            BackupBat_Open_Cnt = 0;
        }
        else
        {
            BackupBat_ShortGnd_Cnt = 0;
            BackupBat_Open_Cnt = 0;
            BackupBat_Normal_Cnt = 0;
        }

        if ((BackupBat_Open_Cnt >= BACKUP_BAT_OPEN_CONFIRM_CNT) &&
            (BackupBat_Open_Flag == FALSE))
        {
            BackupBat_Open_Flag = TRUE;
            BackupBat_Open_Cnt = 0;
            BackupBat_Normal_Cnt = 0;

            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_OPEN, DEM_EVENT_STATUS_FAILED);

            if (BackupBat_ShortGnd_Flag == TRUE)
            {
                BackupBat_ShortGnd_Flag = FALSE;
                BackupBat_ShortGnd_Cnt = 0;
                BackupBat_Normal_Cnt = 0;
                Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_SHORT_GND, DEM_EVENT_STATUS_PASSED);
            }
        }

        if ((BackupBat_ShortGnd_Cnt >= BACKUP_BAT_SHORT_GND_CONFIRM_CNT) &&
            (BackupBat_ShortGnd_Flag == FALSE))
        {
            BackupBat_ShortGnd_Flag = TRUE;
            BackupBat_ShortGnd_Cnt = 0;
            BackupBat_Normal_Cnt = 0;

            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_SHORT_GND, DEM_EVENT_STATUS_FAILED);

            if (BackupBat_Open_Flag == TRUE)
            {
                BackupBat_Open_Flag = FALSE;
                BackupBat_Open_Cnt = 0;
                BackupBat_Normal_Cnt = 0;
                Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_OPEN, DEM_EVENT_STATUS_PASSED);
            }
        }

        if (BackupBat_Normal_Cnt >= BACKUP_BAT_RECOVER_CNT)
        {
            if (BackupBat_ShortGnd_Flag == TRUE)
            {
                BackupBat_ShortGnd_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_SHORT_GND, DEM_EVENT_STATUS_PASSED);
            }

            if (BackupBat_Open_Flag == TRUE)
            {
                BackupBat_Open_Flag = FALSE;
                Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_OPEN, DEM_EVENT_STATUS_PASSED);
            }

            BackupBat_ShortGnd_Cnt = 0;
            BackupBat_Open_Cnt = 0;
            BackupBat_Normal_Cnt = 0;
        }
    }
    else
    {
        BackupBat_ShortGnd_Cnt = 0;
        BackupBat_Open_Cnt = 0;
        BackupBat_Normal_Cnt = 0;
    }
}




//备用电池老化检测

#define DEM_EVT_BACKUP_BAT_AGING   ((Dem_EventIdType)EventParameter_0x955201)

static boolean BackupBat_Aging_Flag = FALSE;
//static uint8_t BackupBat_Aging_WakeupFlag = 0;   //0不允许检测，1允许
static uint8_t BackupBat_Aging_ReqDoneFlag = 0;

void BackupBatAging_DtcInit(void)                                             
{
    BackupBat_Aging_Flag = FALSE;
    //BackupBat_Aging_WakeupFlag = 0;                                             // 初始化时清除已上报标志
    BackupBat_Aging_ReqDoneFlag = 0;
}

void BackupBatAging_RequestCheckOnWakeup(void)                                        // 唤醒时执行一次老化检测
{
    //BackupBat_Aging_WakeupFlag = 1; 
    BackupBat_Aging_ReqDoneFlag = 0; 
}

void BackupBatAging_DetectProcess(void)
{
    uint8_t ageResult = E_BatteryAgeResult_Invalid;
    //TBOX_PRINT("BackupBatAging_DetectProcess enter\r\n");

     if(/*(BackupBat_Aging_WakeupFlag == 1) && */                                
       (BackupBat_Aging_ReqDoneFlag == 0) &&                                 
       (Dtc_IsCommonMonitorEnable()))                                 
    {
        //TBOX_PRINT("BackupBatAging_DetectProcess, request age check\r\n");
        BatterySdkRequestAgeCheck();                                          // 真正发起一次备用电池老化检测请求
        BackupBat_Aging_ReqDoneFlag = 1;                                     // 标记本次唤醒已经发起过检测
    }

    if(BatterySdkGetAgeCheckResult(&ageResult) != 0)
    {
        return;
    }

    //BackupBat_Aging_WakeupFlag = 0;

    if(ageResult == E_BatteryAgeResult_Aging)
    {
        if(BackupBat_Aging_Flag == FALSE)
        {
            BackupBat_Aging_Flag = TRUE;
            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_AGING, DEM_EVENT_STATUS_FAILED);
        }
    }
    else if(ageResult == E_BatteryAgeResult_Normal)
    {
        if(BackupBat_Aging_Flag == TRUE)
        {
            BackupBat_Aging_Flag = FALSE;
            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_AGING, DEM_EVENT_STATUS_PASSED);
        }
        else                                                                  // 如果此前没有故障，也主动上报一次正常
        {
            Dem_SetEventStatus(DEM_EVT_BACKUP_BAT_AGING, DEM_EVENT_STATUS_PASSED); 
        }
    }
}                                       



const BatteryConfigure_t g_batterConfig = 
{
    .tempHighErrorValue = 85,   //℃
    .tempHighAlarmValue = 70,    
    .voltageHighErrorValue = 3300,//mv
    .voltageLowErrorValue = 200,
    .batterySocAlarmValue = 30,   //电池电量%
    .batteryTemperatureHighErrorFun = NULL,
    .batteryNoPlugInErrorFun = NULL,
    .batteryVoltageHighErrorFun = NULL,
    .batteryVoltageLowErrorFun = NULL,
    .batteryShortErrorFun = NULL,
};

static uint32_t g_rvcWakeupDelay = 30*1000;   /* RVC唤醒维持时间默认30秒 */
static uint32_t g_smsWakeupDelay = 45*1000;   /* 短信唤醒维持时间默认45秒 */

int8_t GetRvcWakeupDelay(void)
{
    uint32_t rvcWakeupDelay = 30*1000;   /* RVC唤醒维持时间默认30秒 */

    if(NvM_ReadBlock(NvMBlock_DIDC30D, NvMBlockRamBuffer46) == E_NOT_OK)
    {
        return -1;
    }

    g_rvcWakeupDelay = NvMBlockRamBuffer46[1] * 1000;
    g_smsWakeupDelay = NvMBlockRamBuffer46[0] * 1000;
    return 0;
}


static void PowerWakeUpProcess(uint8_t mcuWakeUpSource,uint8_t cpuWakeUpSource,uint32_t *pDelayTime_ms)
{
    //uint8_t MapWakeUpSource = 0;
    uint8_t mpuSubWakeSource = 0;
  
    if((mcuWakeUpSource >= PM_HAL_WAKEUP_SOURCE_CAN1) && (mcuWakeUpSource <= PM_HAL_WAKEUP_SOURCE_CAN6))
    {
        *pDelayTime_ms = 0;
        //MapWakeUpSource = mcuWakeUpSource;
    }
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_MPU)
    {
        if(cpuWakeUpSource == 0x21) // 短信唤醒
        {
            mpuSubWakeSource = MpuPowerSyncSdkGetMpuSubWakeUpSource();
            if (mpuSubWakeSource == 0x01) // RVC wakeup timer
            {
                *pDelayTime_ms = g_rvcWakeupDelay;
            }
            else    // 其他短信唤醒
            {
                //MapWakeUpSource = MAP_WAKE_UP_SOURCE_MCU_MPU;
                *pDelayTime_ms = g_smsWakeupDelay;
            }
        }
        else
        {
            //MapWakeUpSource = MAP_WAKE_UP_SOURCE_NONE;
            *pDelayTime_ms = 45*1000;
        }
    }
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_KL30)
    {
        *pDelayTime_ms = 2*60*1000;
        //MapWakeUpSource = MAP_WAKE_UP_SOURCE_MCU_KL30;
    }
    else 
    {
        *pDelayTime_ms = 0;
        //MapWakeUpSource = MAP_WAKE_UP_SOURCE_NONE;
    }
}

const PmSdkConfig_t g_pmCondg = 
{
    .degInfo = 1,
    .canNmType = 1,
    .wakeDelayTime = 20,
    .wakeupFun = PowerWakeUpProcess,
    .kl30OffWakeDelay = (60*10),
    .deepSleepConfig = 
    {
        .mpuDeepSleep = 1,
        .gSensorDeepSleep = 1,
    },
    .customSleepConfig =
    {
        .mpuDeepSleep = 1,
        .gSensorDeepSleep = 1,
    },
};

#if(0)
/*################################# KL30 detection process ############################################*/
static void NmMessageSendDisable(void);
static void NmMessageSendEnable(void);

static uint8_t g_communicationStartFlag = 0;
static uint8_t g_powerOnState = 0;   


static void StartCommunication(void)
{
  if(0==g_communicationStartFlag)
  {  
    g_communicationStartFlag = 1;
    
    if(0==g_powerOnState)
    {
      g_powerOnState = 1;
      PowerManageSdkPowerOn();
      //CycleSendSetPowerStartState();
      CanPeriodCycleStart();
    }
    else
    {
      NmMessageSendEnable();
      CanPeriodSendEnableAll();       
    }
    ////TBOX_PRINT("CycleSendEnableAll---\r\n");
  }

}

static void StopCommunication(void)
{
  if(g_communicationStartFlag)
  {
    NmMessageSendDisable();
    CanPeriodSendDisableAll();
    g_communicationStartFlag = 0;
    ////TBOX_PRINT("CycleSendDisableAll---\r\n");
  }
}

typedef enum
{
  E_KL30_DETECT_NORMAL,
  E_KL30_DETECT_HIGH,
  E_KL30_DETECT_LOW,
}kl30DetectState_e;

static kl30DetectState_e g_voltageComState = E_KL30_DETECT_LOW;
static kl30DetectState_e g_voltageDiagState = E_KL30_DETECT_LOW;
static uint32_t g_diagRecoverTimerCount = 0;
static uint8_t g_DiagStartFlag = 0x00;


//
static uint8_t g_kl30DtcResetFlag = 0;
static uint32_t g_diagFaultTimerCount = 0;
static const uint16_t g_communicationMaxVoltage = 18400;//mv
static const uint16_t g_communicationMinVoltage = 6500;//mv

//diagnostic start process
static const uint16_t g_diagMaxVoltage = 16000;//mv
static const uint16_t g_diagMaxRecoverVoltage = 15000;//mv
static const uint16_t g_diagMinVoltage = 9000;//mv
static const uint16_t g_diagMinRecoverVoltage = 10000;//mv
static const uint32_t g_diagRecoverTime = 500;//ms
static const uint32_t g_diagStartTime = 500;//ms
static const uint32_t g_diagFaultTime = 500;//ms

static void KL30DetectDtcProcess(uint32_t kl30Voltage)
{
    if(E_KL30_DETECT_NORMAL==g_voltageDiagState)
    {
        if(kl30Voltage>g_diagMaxVoltage)
        {
            g_voltageDiagState = E_KL30_DETECT_HIGH;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
            ////TBOX_PRINT("set mode high\r\n");
            //stop diagnostic 
            //StopDiagnosticDetection();
        }
        else if(kl30Voltage<g_diagMinVoltage)
        {
            g_voltageDiagState = E_KL30_DETECT_LOW;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
            ////TBOX_PRINT("set mode low\r\n");
            //stop diagnostic
            //StopDiagnosticDetection();
        }
    }
    else if(E_KL30_DETECT_HIGH==g_voltageDiagState)
    {
        if(kl30Voltage <= g_diagMaxRecoverVoltage)//recover
        { 
            g_diagFaultTimerCount = 0;
            if(g_diagRecoverTimerCount>=(g_diagRecoverTime/10))
            {
                g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                //start diagnostic
                ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_HIGH);
                ////TBOX_PRINT("clear high DTC\r\n");
            }
            else
            {
                g_diagRecoverTimerCount++;
            }   
        }
        else
        {            
            g_diagRecoverTimerCount = 0;
            if(kl30Voltage > g_diagMaxVoltage)
            {
              if(g_diagFaultTimerCount >= (g_diagFaultTime/10) )
              {
                SetDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_HIGH); 
                //SetVolFault();
                ////TBOX_PRINT("set high DTC\r\n");
              }
              else
              {
                g_diagFaultTimerCount += 1;
              }
            }
            else
            {
                g_diagFaultTimerCount = 0;
                ////TBOX_PRINT("clear high DTC count\r\n");
            }
        }
    }
    else if(E_KL30_DETECT_LOW==g_voltageDiagState)
    {
        if(kl30Voltage >= g_diagMinRecoverVoltage)//recover
        {
            g_diagFaultTimerCount = 0;
            
            if(g_DiagStartFlag)
            {
                if(g_diagRecoverTimerCount>=(g_diagRecoverTime/10))
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                    ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);
                    ////TBOX_PRINT("clear low DTC\r\n");
                }
                else
                {
                    g_diagRecoverTimerCount++;
                }             
            }
            else
            {
                if(g_diagRecoverTimerCount>=(g_diagStartTime/10))
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                    g_DiagStartFlag = 1;
                    ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);  
                    ////TBOX_PRINT("clear low DTC\r\n");
                }
                else
                {
                    g_diagRecoverTimerCount++;
                } 
            }
        }
        else
        {
            g_diagRecoverTimerCount = 0;
            if(kl30Voltage<g_diagMinVoltage)
            {
              if(g_diagFaultTimerCount >= (g_diagFaultTime/10) )
              {
                SetDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW); 
                ////TBOX_PRINT("set low DTC\r\n");
              }
              else
              {
                g_diagFaultTimerCount += 1;
              }   
            }
            else
            {
                g_diagFaultTimerCount = 0;
                ////TBOX_PRINT("clear low DTC count\r\n");
            }  
        }
    }
    //
    if(g_kl30DtcResetFlag!=0)
    {
        g_kl30DtcResetFlag = 0;
        if(g_voltageDiagState!=E_KL30_DETECT_NORMAL)
        {
            g_diagFaultTimerCount = 0;
            ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);  
            ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_HIGH);
        }
    }
}
static void KL30DetectCommunicationProcess(uint32_t kl30Voltage)
{
    if(E_KL30_DETECT_NORMAL==g_voltageComState)
    {
        if(kl30Voltage>(g_communicationMaxVoltage + 500))
        {
            g_voltageComState = E_KL30_DETECT_HIGH;
            //to do stop communication
            StopCommunication();
            //Ng_AllDisableCommunication();
        }
        else if(kl30Voltage<(g_communicationMinVoltage - 500))
        {
            g_voltageComState = E_KL30_DETECT_LOW;
            //to do stop communication
            //Ng_AllDisableCommunication();
            StopCommunication();
        }
    }
    else if(E_KL30_DETECT_HIGH==g_voltageComState)
    {
        if(kl30Voltage<g_communicationMaxVoltage)//recover
        {
            g_voltageComState = E_KL30_DETECT_NORMAL;          
            //start communication
            //Nm_AllEnableCommunication();
            StartCommunication();
        }
        else
        {
            StopCommunication();
        }
    }
    else if(E_KL30_DETECT_LOW==g_voltageComState)
    {
        if(kl30Voltage>g_communicationMinVoltage)//recover
        {
            g_voltageComState = E_KL30_DETECT_NORMAL; 
            //start communication
            //Nm_AllEnableCommunication();
            StartCommunication();
        }         
        else
        {
            StopCommunication();
        }
    }
}

static void Kl30DetectCycleProcess(void)
{
    uint32_t u16BatVol;

    PeripheralHalAdGet(AD_CHANNEL_KL30,&u16BatVol);   
    /********communication control ************************************/
    KL30DetectCommunicationProcess(u16BatVol);
 
    /****************diagnostic voltage detecting ************/
    KL30DetectDtcProcess(u16BatVol);  
}

void Kl30DtcCheckReset(void)
{
    g_kl30DtcResetFlag = 1;
}

static void Can1BusErrorEvent(uint8_t flag)
{
   /* if(flag)
    {
        SetBusOffDtc();
    }
    else
    {
        ClearBusOffDtc();  
    }*/
}

static const AutosarNmParameter_t g_netManageAutosarConfigure[] = 
{
    {
        .canChannel                 = TBOX_CAN_CHANNEL_2,
        .NodeId                     = 0x0A,     //TBOX NM ID 0x50A
        .BaseAddress                = 0x500,
        .NodeIdMin                  = 0x00,     //CAN网络管理报文的节点最小值
        .NodeIdMax                  = 0x7F,     //CAN网络管理报文的节点最大值
        .repeatMessageTime          = 1600,     //节点在RMS(重复报文)状态中保持的最长时间  T_REPEAT_MESSAGE unit:ms
        .nmTimeOutTime              = 2000,     //长城要求1800-2200，但是由于误差原因，选择2300在这个范围内，节点在NM(网络模式)中保持的最长时间       T_NM_TIMEOUT  unit:ms
        .waitBusSleepTime           = 5000,     //确保所有节点有时间停止其网络活动          T_WAIT_BUS_SLEEP unit:ms
        .startTXTime                = 10,       //从非BSM(睡眠模式)进入RMS(重复报文模式)状态到开始发送第一帧NM报文的最大时间间隔
        .startxAppFrameTime         = 20,       //成功发送第一帧网络管理报文后开始发送应用报文最大间隔时间
        .immediateCycleTime         = 20,       //快速发送网络管理报文的周期ms
        .msgCycleTime               = 470,//500,      //正常发送子状态或常规操作状态下，网络管理报文发送周期		
        .wakeupTime                 = 100,      //从休眠模式进入网络模式，开始重复发送网络管理报文的最大时间
        .immediateTimes             = 10,       //快速发送子状态下，以周期时间immediateCycleTime发送的网络管理报文数量
        .busOffQuickTime            = 5,        //ms
        .busOffSlowTime             = 200,      //ms
        .busOffQuickTimes           = 1,        //节点进入快恢复次数
        .busOffErrorEventLimitCount = 2,        //设置BUSOFF的DTC的最低次数
        .canBusErrorCallBack = Can1BusErrorEvent,
    },

};

static void NmMessageSendDisable(void)
{
    uint8_t i,num;
    num = sizeof(g_netManageAutosarConfigure)/sizeof(g_netManageAutosarConfigure[0]);
    for(i=0;i<num;i++)
    {
        AutosarNmSdkDisableCommunication(i);
    }  
}

static void NmMessageSendEnable(void)
{
    uint8_t i,num;
    num = sizeof(g_netManageAutosarConfigure)/sizeof(g_netManageAutosarConfigure[0]);
    for(i=0;i<num;i++)
    {
        AutosarNmSdkEnableCommunication(i);
    }    
}
#endif
void PmDebugPrint(void)
{
    static uint32_t count = 0;
    uint32_t wakeCount;
    uint8_t pmState,wakeupSource;
    static uint8_t lastPmState = 0;

    count++;
    PowerManageSdkGetPowerInfo(&pmState,&wakeupSource,&wakeCount);
    if(pmState != lastPmState)
    {
        TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n",pmState,wakeupSource,wakeCount);
        lastPmState = pmState;
    }
    if(count < 1000)
    {
        return;
    }
    count = 0;
    TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n",pmState,wakeupSource,wakeCount);
    
    uint32_t voltage = 0;
    BatterySdkGetVoltage(&voltage);
    
    uint32_t level = BatterySdkGetBatteySoc();
    uint32_t voltageKl30 = 0;
    PeripheralHalAdGet(AD0_CHANNEL_KL30,&voltageKl30);
    
    
    //TBOX_PRINT("KL30 %d,battery %d, level %d%\r\n",voltageKl30,voltage,level);
    ////TBOX_PRINT("KL30 voltage %d",voltageKl30);
    /*TimerHalDebugPrint(&wakeCount);
    //TBOX_PRINT("timer hal test %d \r\n",wakeCount);*/    
}
#if(0)
void WatchDogCycleProcess(void)
{
    static uint32_t count = 0;
    count++;
    if(count<10)
    {
        return ;
    }
    count = 0;
    PeripheralHalFeedWatchDog();
}
#endif

void TaskPowerManageInit(void)
{
    GetRvcWakeupDelay();
    PowerManageSdkInit(&g_pmCondg);
    BatterySdkInit(&g_batterConfig,10,E_BATTERY_FDK);
    PowerManageSdkPowerOn();
    if(PowerManageSdkShouldStartMpuOnPowerOn() != 0)
    {
        MpuHalStart();
    }
}

void TaskPowerManage(uint32_t cycleTime)
{   
    static uint8_t timeCount;

    PowerManageSdkCycleProcess(5);
    // NetManageAutosarCycleProcess();             
    // WatchDogCycleProcess();

    timeCount++;
    if(2==timeCount)
    {
        timeCount = 0;
        MpuHalCycleProcess(10);
        BatterySdkCycleProcess();
        //Kl30DetectCycleProcess();
        PmDebugPrint();
        kl30DetectProcess();
    }
}


