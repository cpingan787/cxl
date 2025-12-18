/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: taskPowerManage.c
 Author:
 Created Time:
 Description:
 Others:
 *************************************************/
/****************************** include ***************************************/
#include "FreeRTOS.h"
#include "task.h"
#include "logHal.h"
#include "timerHal.h"
#include "peripheralHal.h"
#include "mpuHal.h"
#include "powerManageHal.h"
// #include "bleHal.h"
#include "batterySdk.h"
#include "autosarNmSdk.h"
#include "powerManageSdk.h"
#include "taskPowerManage.h"
#include "taskDtcProcess.h"
#include "canPeriodTask.h"
#include "gpio_drv.h"
/****************************** Macro Definitions ******************************/

/****************************** Type Definitions ******************************/
typedef enum
{
    E_KL30_DETECT_NORMAL,
    E_KL30_DETECT_HIGH,
    E_KL30_DETECT_LOW,
} kl30DetectState_e;

typedef enum
{
    E_VOLTAGE_STATUS_NORMAL = 0,    // Normal voltage status
    E_VOLTAGE_STATUS_GENERAL_ERROR, // General error status
    E_VOLTAGE_STATUS_CRITICAL_ERROR // Critical error status
} VoltageStatus_e;
/****************************** Function Declarations *************************/
static void Can1BusErrorEvent(uint8_t flag);

/****************************** Global Variables ******************************/
static uint8_t g_lastMcuWakeupSource = PM_HAL_WAKEUP_SOURCE_NONE; // 存储最近一次的唤醒源 0xB245_cxl
const BatteryConfigure_t g_batterConfig =
    {
        .tempHighErrorValue = 85, // ℃
        .tempHighAlarmValue = 70,
        .voltageHighErrorValue = 5000, // mv
        .voltageLowErrorValue = 200,
        .batterySocAlarmValue = 30, // 电池电量%
        .batteryTemperatureHighErrorFun = NULL,
        .batteryNoPlugInErrorFun = NULL,
        .batteryVoltageHighErrorFun = NULL,
        .batteryVoltageLowErrorFun = NULL,
        .batteryShortErrorFun = NULL,
};

static const AutosarNmParameter_t g_netManageAutosarConfigure[] =
    {
        {
            .canChannel = TBOX_CAN_CHANNEL_2,
            .NodeId = 0x2D,
            .BaseAddress = 0x500,
            .NodeIdMin = 0x00,               // Minimum node value for CAN network management messages
            .NodeIdMax = 0xFF,               // Maximum node value for CAN network management messages
            .startUpTime = 1000,             // Maximum time the node stays in RMS (Start Up State) mode. T_REPEAT_MESSAGE unit: ms
            .nmTimeOutTime = 1000,           // Maximum time the node stays in NM (Network Mode) state. T_NM_TIMEOUT unit: ms.
            .waitBusSleepTime = 5000,  // Ensure all nodes have time to stop their network activities. T_WAIT_BUS_SLEEP unit: ms
            .startTXTime = 10,               // Maximum time interval from leaving BSM (Bus Sleep Mode) to entering RMS (Repeat Message State) mode and starting to send the first NM message
            .startxAppFrameTime = 20,        // Maximum time interval to start sending application frames after successfully sending the first NM message
            .immediateCycleTime = 20,        // Period for sending NM messages rapidly in the sub-state mode, unit: ms
            .msgCycleTime = 200 - 5,             // Normal cycle time for sending network management messages in the sub-state or regular operation mode
            .wakeupTime = 100,               // Maximum time to start sending network management messages repeatedly after transitioning from sleep mode to network mode
            .immediateTimes = 10,            // Number of network management messages sent at immediateCycleTime in the sub-state mode
            .busOffQuickTime = 0,            // Time for quick recovery after bus-off in milliseconds
            .busOffSlowTime = 180,             // Time for slow recovery after bus-off in milliseconds
            .busOffQuickTimes = 0,           // Number of quick recovery attempts after bus-off
            .busOffErrorEventLimitCount = 2, // Minimum number of bus-off DTC occurrences required
            .canBusErrorCallBack = Can1BusErrorEvent,
        },
};

static uint8_t g_communicationStartFlag = 0;
static uint8_t g_powerOnState = 0;
static kl30DetectState_e g_voltageComState = E_KL30_DETECT_LOW;
static kl30DetectState_e g_voltageComTargetState = E_KL30_DETECT_LOW; // Target state to transition to
static uint32_t g_voltageStateChangeCount = 0; // Counter for state hold time
static const uint32_t g_voltageStateHoldTime = 20; // 20 cycles = 200ms (since each cycle is 10ms)
static uint32_t g_diagRecoverTimerCount = 0;
static uint8_t g_kl30DtcResetFlag = 0;
static uint32_t g_diagFaultTimerCount = 0;
static const uint16_t g_communicationMaxVoltage = 18000; // mv
static const uint16_t g_communicationMinVoltage = 7000;  // mv
static const uint16_t g_diagCriticalMaxVoltage = 18000;  // mv
static const uint16_t g_diagCriticalMinVoltage = 7000;   // mv
static const uint16_t g_diagMaxVoltage = 16000;          // mv
static const uint16_t g_diagMinVoltage = 9000;           // mv
static const uint32_t g_diagFaultTime = 500;             // ms
/****************************** Public Function Implementations ***************/

/****************************** Private Function Implementations ***************/
static void PowerWakeUpProcess(uint8_t mcuWakeUpSource, uint8_t cpuWakeUpSource, uint32_t *pDelayTime_ms)
{
    // uint8_t MapWakeUpSource = 0;
    g_lastMcuWakeupSource = mcuWakeUpSource; // 记录`唤醒源 0xB245_cxl
    if ((mcuWakeUpSource >= PM_HAL_WAKEUP_SOURCE_CAN1) && (mcuWakeUpSource <= PM_HAL_WAKEUP_SOURCE_CAN6))
    {
        *pDelayTime_ms = 0;
        // MapWakeUpSource = mcuWakeUpSource;
    }
    else if (mcuWakeUpSource == PM_HAL_WAKEUP_SOURCE_MPU)
    {
        if (cpuWakeUpSource == 0x02)
        {
            // MapWakeUpSource = MAP_WAKE_UP_SOURCE_CPU_TCP;
            *pDelayTime_ms = 45 * 1000; //
        }
        else if (cpuWakeUpSource == 0x08)
        {
            // MapWakeUpSource = MAP_WAKE_UP_SOURCE_CPU_RTC;
            *pDelayTime_ms = 45 * 1000; //
        }
        else
        {
            // MapWakeUpSource = MAP_WAKE_UP_SOURCE_NONE;
            *pDelayTime_ms = 45 * 1000; // 20200702 WHL
        }
    }
    else if (mcuWakeUpSource == PM_HAL_WAKEUP_SOURCE_KL15)
    {
        *pDelayTime_ms = 0;
        // MapWakeUpSource = MAP_WAKE_UP_SOURCE_MCU_KL15;
    }
    else if (mcuWakeUpSource == PM_HAL_WAKEUP_SOURCE_BLE)
    {
        *pDelayTime_ms = 45 * 1000;
        // MapWakeUpSource = MAP_WAKE_UP_SOURCE_CPU_TCP;
    }
    else if (mcuWakeUpSource == PM_HAL_WAKEUP_SOURCE_KL30)
    {
        *pDelayTime_ms = 2 * 60 * 1000;
        // MapWakeUpSource = MAP_WAKE_UP_SOURCE_MCU_KL30;
    }
    else
    {
        *pDelayTime_ms = 0;
        // MapWakeUpSource = MAP_WAKE_UP_SOURCE_NONE;
    }
}

const PmSdkConfig_t g_pmCondg =
    {
        .degInfo = 1,
        .canNmType = 1,
        .wakeDelayTime = 20,
        .wakeupFun = PowerWakeUpProcess,
        .kl30OffWakeDelay = (60 * 10),
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

/*################################# KL30 detection process ############################################*/
static void StartCommunication(void)
{
    if (0 == g_communicationStartFlag)
    {
        g_communicationStartFlag = 1;
        if (0 == g_powerOnState)
        {
            g_powerOnState = 1;
            PowerManageSdkPowerOn();
        }
        else
        {
            CanHalTxMsgEnable(TBOX_CAN_CHANNEL_2);
        }
        // TBOX_PRINT("CycleSendEnableAll---\r\n");
    }
}

static void StopCommunication(void)
{
    if (g_communicationStartFlag)
    {
        CanHalTxMsgDisable(TBOX_CAN_CHANNEL_2);
        g_communicationStartFlag = 0;
        // TBOX_PRINT("CycleSendDisableAll---\r\n");
    }
}

static void McuVoltageDtcCheckProcess(void)
{
    // uint32_t kl30_voltage_mv = 0;
    uint32_t v_4g_mv = 0;
    uint32_t v_can_mv = 0;
    uint32_t v_mic_mv = 0;
    uint32_t v_gps_mv = 0;
    uint32_t v_gps1_mv = 0;
    uint32_t v_bcall_led_mv = 0;
    uint32_t v_ecall_led_mv = 0;
    //uint32_t v_bcall_adc_mv = 0;
    //uint32_t v_ecall_adc_mv = 0;
    const uint32_t STUCK_LIMIT_1MIN = 6000;
    static uint32_t s_ecall_stuck_cnt = 0;
    static uint32_t s_bcall_stuck_cnt = 0;
    // 1. 读取主电源电压 (KL30)
    // if (PeripheralHalAdGet(AD_CHANNEL_KL30, &kl30_voltage_mv) == 0)
    // {
    //     //   检查 B11001C: 主电源超限
    //     kl30_voltage_mv = kl30_voltage_mv / 11;
    //     if (kl30_voltage_mv < 800 || kl30_voltage_mv > 1480)
    //     {
    //         SetDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_RANGE);
    //     }
    //     else
    //     {
    //         ClearDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_RANGE);
    //     }

    //     // 检查 B110091: 主电源超极限
    //     if (kl30_voltage_mv < 630 || kl30_voltage_mv > 1670)
    //     {
    //         SetDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_MAX_RANGE);
    //     }
    //     else
    //     {
    //         ClearDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_MAX_RANGE);
    //     }
    // }
    // 2. 读取4G模块电压
    if (PeripheralHalAdGet(AD_CHANNEL_4G, &v_4g_mv) == 0)
    {
        // TBOX_PRINT("4g voltage is %d mv\r\n", v_4g_mv);
        //  检查 B32011C: 4G 模块电压异常
        if (v_4g_mv < 1800 || v_4g_mv > 2050)
        {
            SetDtcFaultState(E_DTC_ITEM_4G_MODULE_VOLTAGE);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_4G_MODULE_VOLTAGE);
        }
    }

    // 3. 读取CAN收发器电源电压
    if (PeripheralHalAdGet(AD_CHANNEL_CAN_POWER, &v_can_mv) == 0)
    {
        // TBOX_PRINT("can power voltage is %d mv\r\n", v_can_mv);
        // 检查 B33001C: CAN 电源电压超限
        if (v_can_mv < 2380 || v_can_mv > 2650)
        {
            SetDtcFaultState(E_DTC_ITEM_CAN_POWER_ABNORMAL);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_CAN_POWER_ABNORMAL);
        }
    }
    // 4. 读取麦克风电源电压
    if (PeripheralHalAdGet(AD_CHANNEL_MIC, &v_mic_mv) == 0)
    {
        // TBOX_PRINT("mic voltage is %d mv\r\n", v_mic_mv);
        //  检查 B32031F: 麦克风信号输入故障
        //  正常范围: 10mV < V < 550mV
        if (v_mic_mv <= 10 || v_mic_mv >= 550)
        {
            SetDtcFaultState(E_DTC_ITEM_MPU_MIC_SIGNAL_FAULT);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_MPU_MIC_SIGNAL_FAULT);
        }
    }
    // 5. 读取GPS天线电压
    if (PeripheralHalAdGet(AD_CHANNEL_GPS, &v_gps_mv) == 0 &&
        PeripheralHalAdGet(AD_CHANNEL_GPS1, &v_gps1_mv) == 0)
    {
        // TBOX_PRINT("gps voltage is %d mv, gps1 voltage is %d mv\r\n", v_gps_mv, v_gps1_mv);
        // 检查 B320411: GPS天线对地短路
        if (v_gps_mv < 100 && v_gps1_mv < 100)
        {
            SetDtcFaultState(E_DTC_ITEM_MPU_GPS_ANTENNA_SHORT_GND);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_MPU_GPS_ANTENNA_SHORT_GND);
        }

        // 检查 B320415: GPS天线开路或对电源短路
        bool isOpen = (v_gps_mv > 700 && v_gps_mv < 1200) && (v_gps1_mv > 700 && v_gps1_mv < 1200);
        bool isShortToBat = (v_gps_mv > 1500 && v_gps1_mv > 1500);

        if (isOpen || isShortToBat)
        {
            // TBOX_PRINT("set E_DTC_ITEM_MPU_GPS_ANTENNA_OPEN_SHORT\r\n");
            SetDtcFaultState(E_DTC_ITEM_MPU_GPS_ANTENNA_OPEN_SHORT);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_MPU_GPS_ANTENNA_OPEN_SHORT);
        }
    }
    // 6. 读取 B-Call LED 电压
    if (PeripheralHalAdGet(AD_CHANNEL_BCALL_LIGHT, &v_bcall_led_mv) == 0)
    {
        // TBOX_PRINT("bcall led voltage is %d mv\r\n", v_bcall_led_mv);
        //  检查 B320D11: B_Call指示灯短路到地
        if (v_bcall_led_mv < 100) // 阈值 0.1V = 100mV
        {
            SetDtcFaultState(E_DTC_ITEM_BCALL_LIGHT_SHORT_GND);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_BCALL_LIGHT_SHORT_GND);
        }
    }

    // 7. 读取 E-Call LED 电压
    if (PeripheralHalAdGet(AD_CHANNEL_ECALL_LIGHT, &v_ecall_led_mv) == 0)
    {
        if (v_ecall_led_mv < 100)
        {
            SetDtcFaultState(E_DTC_ITEM_ECALL_LIGHT_SHORT_GND);
        }
        else
        {
            ClearDtcFaultState(E_DTC_ITEM_ECALL_LIGHT_SHORT_GND);
        }
    }
    // 8. B-Call 按键电气故障诊断 (DTC B320707)
    if (GPIO_ReadPinLevel(PORT_C, GPIO_1) == 1)
    {
        if (s_bcall_stuck_cnt < STUCK_LIMIT_1MIN)
        {
            s_bcall_stuck_cnt++;
        }
        else
        {
            SetDtcFaultState(E_DTC_ITEM_MPU_BCALL_KEY_STUCK);
        }
    }
    else
    {
        s_bcall_stuck_cnt = 0;
        ClearDtcFaultState(E_DTC_ITEM_MPU_BCALL_KEY_STUCK);
    }

    // 9. E-Call 按键电气故障诊断 (DTC B320807)
    if (GPIO_ReadPinLevel(PORT_C, GPIO_0) == 1) 
    {
        if (s_ecall_stuck_cnt < STUCK_LIMIT_1MIN)
        {
            s_ecall_stuck_cnt++;
        }
        else
        {
            SetDtcFaultState(E_DTC_ITEM_MPU_ECALL_KEY_STUCK);
        }
    }
    else
    {
        s_ecall_stuck_cnt = 0;
        ClearDtcFaultState(E_DTC_ITEM_MPU_ECALL_KEY_STUCK);
    }
}

static void ProcessDtcReset(void)
{
    if (g_kl30DtcResetFlag != 0)
    {
        g_kl30DtcResetFlag = 0;
        g_diagFaultTimerCount = 0;
        ClearDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_RANGE);
        ClearDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_MAX_RANGE);
    }
}

static void KL30DetectDtcProcess(uint32_t kl30Voltage)
{
    static VoltageStatus_e lastVoltageStatus = E_VOLTAGE_STATUS_NORMAL;
    VoltageStatus_e currentVoltageStatus = E_VOLTAGE_STATUS_NORMAL;

    // Determine current voltage status
    if (kl30Voltage >= g_diagMinVoltage && kl30Voltage <= g_diagMaxVoltage) // Normal voltage range (9-16V)
    {
        currentVoltageStatus = E_VOLTAGE_STATUS_NORMAL;
    }
    else if (kl30Voltage < g_diagCriticalMinVoltage || kl30Voltage > g_diagCriticalMaxVoltage) // Critical error
    {
        currentVoltageStatus = E_VOLTAGE_STATUS_CRITICAL_ERROR;
    }
    else // E_VOLTAGE_STATUS_GENERAL_ERROR - General error (7-9V or 16-18V)
    {
        currentVoltageStatus = E_VOLTAGE_STATUS_GENERAL_ERROR;
    }

    // Reset corresponding timers when status changes
    if (currentVoltageStatus != lastVoltageStatus)
    {
        if (currentVoltageStatus == E_VOLTAGE_STATUS_NORMAL) // Enter normal status
        {
            g_diagFaultTimerCount = 0;   // Clear fault timer
            g_diagRecoverTimerCount = 0; // Reset recovery timer and restart timing
        }
        else // Enter error status
        {
            g_diagRecoverTimerCount = 0; // Clear recovery timer
            g_diagFaultTimerCount = 0;   // Reset fault timer to ensure re-timing when switching between different error types
        }
        lastVoltageStatus = currentVoltageStatus;
    }

    // Execute corresponding logic based on current status
    if (currentVoltageStatus == E_VOLTAGE_STATUS_NORMAL) // Normal voltage range
    {
        // Clear DTC after continuous normal operation for 500ms
        if (g_diagRecoverTimerCount >= (g_diagFaultTime / 10))
        {
            ClearDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_RANGE);
            ClearDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_MAX_RANGE);
            g_diagRecoverTimerCount = 0; // Reset recovery timer
        }
        else
        {
            g_diagRecoverTimerCount++;
        }
    }
    else if (currentVoltageStatus == E_VOLTAGE_STATUS_CRITICAL_ERROR) // Critical error
    {
        // Increase critical error timer
        g_diagFaultTimerCount++;

        // Set DTC after critical error persists for 500ms
        if (g_diagFaultTimerCount >= (g_diagFaultTime / 10))
        {
            SetDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_MAX_RANGE);
            // Clear general error DTC (critical error has priority)
            ClearDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_RANGE);
        }
    }
    else // General error
    {
        // Increase general error timer
        g_diagFaultTimerCount++;

        // Set DTC after general error persists for 500ms
        if (g_diagFaultTimerCount >= (g_diagFaultTime / 10))
        {
            SetDtcFaultState(E_DTC_ITEM_MAIN_POWER_OVER_RANGE);
        }
    }

    // Process DTC reset logic
    ProcessDtcReset();
}

static void KL30DetectCommunicationProcess(uint32_t kl30Voltage)
{
    kl30DetectState_e targetState = g_voltageComState;
    
    // Determine target state based on current voltage
    if (E_KL30_DETECT_NORMAL == g_voltageComState)
    {
        if (kl30Voltage > (g_communicationMaxVoltage))
        {
            targetState = E_KL30_DETECT_HIGH;
        }
        else if (kl30Voltage < (g_communicationMinVoltage))
        {
            targetState = E_KL30_DETECT_LOW;
        }
    }
    else if (E_KL30_DETECT_HIGH == g_voltageComState)
    {
        if (kl30Voltage < g_communicationMaxVoltage) // recover
        {
            targetState = E_KL30_DETECT_NORMAL;
        }
    }
    else if (E_KL30_DETECT_LOW == g_voltageComState)
    {
        if (kl30Voltage > g_communicationMinVoltage) // recover
        {
            targetState = E_KL30_DETECT_NORMAL;
        }
    }
    
    // Check if target state is different from current state
    if (targetState != g_voltageComState)
    {
        // Check if we're already tracking this state change
        if (targetState != g_voltageComTargetState)
        {
            // New state change detected, start counting
            g_voltageComTargetState = targetState;
            g_voltageStateChangeCount = 0;
        }
        else
        {
            // Continue counting for the same state change
            g_voltageStateChangeCount++;
            
            // Check if state has been stable for required time (200ms)
            if (g_voltageStateChangeCount >= g_voltageStateHoldTime)
            {
                // State has been stable long enough, perform state change
                g_voltageComState = targetState;
                
                // Reset counters
                g_voltageStateChangeCount = 0;
                
                // Execute actions based on new state
                if (E_KL30_DETECT_NORMAL == g_voltageComState)
                {
                    // start communication
                    // Nm_AllEnableCommunication();
                    StartCommunication();
                }
                else
                {
                    // to do stop communication
                    // Ng_AllDisableCommunication();
                    StopCommunication();
                }
            }
        }
    }
    else
    {
        // Target state is same as current state, reset counters
        g_voltageStateChangeCount = 0;
        g_voltageComTargetState = targetState;
        
        // If in abnormal state, ensure communication is stopped
        if (E_KL30_DETECT_NORMAL != g_voltageComState)
        {
            StopCommunication();
        }
    }
}

static void Kl30DetectCycleProcess(void)
{
    uint32_t u16BatVol;

    PeripheralHalAdGet(AD_CHANNEL_KL30, &u16BatVol);
    /********communication control ************************************/
    KL30DetectCommunicationProcess(u16BatVol);

    /****************diagnostic voltage detecting ************/
    KL30DetectDtcProcess(u16BatVol);
}

uint8_t Kl30VoltageState(void)
{
    return g_voltageComState;
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
    if (flag)
    {
        SetDtcFaultState(E_DTC_ITEM_TCAN_BUSOFF);
    }
    else
    {
        ClearDtcFaultState(E_DTC_ITEM_TCAN_BUSOFF);
    }
}

void PmDebugPrint(void)
{
    static uint32_t count = 0;
    uint32_t wakeCount;
    uint8_t pmState, wakeupSource;
    static uint8_t lastPmStat = 0;
    static uint8_t lastWakeupSource = 0;
    static uint32_t lastWakeupCount = 0;

    count++;
    PowerManageSdkGetPowerInfo(&pmState, &wakeupSource, &wakeCount);
    if ((pmState != lastPmStat) || (wakeupSource != lastWakeupSource) || (wakeCount != lastWakeupCount))
    {
        lastPmStat = pmState;
        lastWakeupSource = wakeupSource;
        lastWakeupCount = wakeCount;
        TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n", pmState, wakeupSource, wakeCount);
        LogHalUpLoadLog("ps is %d,wakesc is %d,wakecnt is %d", pmState, wakeupSource, wakeCount);
        return;
    }
    else if (count < 200)
    {
        return;
    }
    count = 0;
    TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n", pmState, wakeupSource, wakeCount);
    LogHalUpLoadLog("ps is %d,wakesc is %d,wakecnt is %d", pmState, wakeupSource, wakeCount);
    uint32_t voltage = 0;
    BatterySdkGetVoltage(&voltage);

    uint32_t level = BatterySdkGetBatteySoc();
    uint32_t voltageKl30 = 0;
    PeripheralHalAdGet(AD_CHANNEL_KL30, &voltageKl30);

    TBOX_PRINT("KL30 %d,battery %d, level %d\r\n", voltageKl30, voltage, level);
    // TBOX_PRINT("KL30 voltage %d",voltageKl30);
    /*TimerHalDebugPrint(&wakeCount);
    TBOX_PRINT("timer hal test %d \r\n",wakeCount);*/
}

void WatchDogCycleProcess(void)
{
    static uint32_t count = 0;
    count++;
    if (count < 10)
    {
        return;
    }
    count = 0;
    PeripheralHalFeedWatchDog();
}

void EBcallInit(void)
{
    PORT_PinmuxConfig(PORT_C, GPIO_0, PTC0_GPIO);
    GPIO_SetPinDir(PORT_C, GPIO_0, GPIO_INPUT);

    PORT_PinmuxConfig(PORT_C, GPIO_1, PTC1_GPIO);
    GPIO_SetPinDir(PORT_C, GPIO_1, GPIO_INPUT);
}

void TaskPowerManage(void *pvParameters)
{
    TickType_t xLastWakeTime;
    uint8_t timeCount;
    EBcallInit();
    AutosarNmSdkConfig(g_netManageAutosarConfigure, sizeof(g_netManageAutosarConfigure) / sizeof(g_netManageAutosarConfigure[0]));
    PowerManageSdkInit(&g_pmCondg);
    // BatterySdkInit(&g_batterConfig,10,E_BATTERY_XYSR);

    // PowerManageSdkPowerOn();
    MpuHalStart();
    xLastWakeTime = xTaskGetTickCount();
    timeCount = 0;
    uint8_t bleRestFlag = 0;
    while (1)
    {
        if (bleRestFlag < 2)
        {
            //             BleHalRestSet(1);
            bleRestFlag++;
        }
        else if (bleRestFlag == 2)
        {
            //             BleHalRestSet(0);
            bleRestFlag++;
        }
        vTaskDelayUntil(&xLastWakeTime, 5);
        PowerManageSdkCycleProcess(5);
        NetManageAutosarCycleProcess();
        WatchDogCycleProcess();
        timeCount++;
        if (2 == timeCount)
        {
            timeCount = 0;
            MpuHalCycleProcess(10);
            // BatterySdkCycleProcess();
            Kl30DetectCycleProcess();
            McuVoltageDtcCheckProcess(); // set dtc
            PmDebugPrint();
        }
        xLastWakeTime = xTaskGetTickCount();
    }
}
/*************************************************
  Function:       PowerManageGetLastWakeupSource
  Description:    获取系统最近一次的唤醒源
  Input:          无
  Output:         无
  Return:         唤醒源ID
*************************************************/
uint8_t PowerManageGetLastWakeupSource(void) // 0xB245_cxl
{
    return g_lastMcuWakeupSource;
}