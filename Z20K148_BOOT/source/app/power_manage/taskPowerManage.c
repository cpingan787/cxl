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


const BatteryConfigure_t g_batterConfig = 
{
    .tempHighErrorValue = 85,   //℃
    .tempHighAlarmValue = 70,    
    .voltageHighErrorValue = 5000,//mv
    .voltageLowErrorValue = 200,
    .batterySocAlarmValue = 30,   //电池电量%
    .batteryTemperatureHighErrorFun = NULL,
    .batteryNoPlugInErrorFun = NULL,
    .batteryVoltageHighErrorFun = NULL,
    .batteryVoltageLowErrorFun = NULL,
    .batteryShortErrorFun = NULL,
};

static void PowerWakeUpProcess(uint8_t mcuWakeUpSource,uint8_t cpuWakeUpSource,uint32_t *pDelayTime_ms)
{
    //uint8_t MapWakeUpSource = 0;
  
    if((mcuWakeUpSource >= PM_HAL_WAKEUP_SOURCE_CAN1) && (mcuWakeUpSource <= PM_HAL_WAKEUP_SOURCE_CAN6))
    {
        *pDelayTime_ms = 0;
        //MapWakeUpSource = mcuWakeUpSource;
    }
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_MPU)
    {
        if(cpuWakeUpSource == 0x02)
        {
            //MapWakeUpSource = MAP_WAKE_UP_SOURCE_CPU_TCP;
            *pDelayTime_ms = 45*1000; //
        }
        else if(cpuWakeUpSource == 0x08)
        {
            //MapWakeUpSource = MAP_WAKE_UP_SOURCE_CPU_RTC;
            *pDelayTime_ms = 45*1000; //
        }
        else
        {
            //MapWakeUpSource = MAP_WAKE_UP_SOURCE_NONE;
            *pDelayTime_ms = 45*1000; //20200702 WHL
        }
    }
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_KL15)
    {
        *pDelayTime_ms = 0;
        //MapWakeUpSource = MAP_WAKE_UP_SOURCE_MCU_KL15;
    }
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_BLE)
    {
        *pDelayTime_ms = 45*1000;
       // MapWakeUpSource = MAP_WAKE_UP_SOURCE_CPU_TCP;
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
    //TBOX_PRINT("CycleSendEnableAll---\r\n");
  }

}

static void StopCommunication(void)
{
  if(g_communicationStartFlag)
  {
    NmMessageSendDisable();
    CanPeriodSendDisableAll();
    g_communicationStartFlag = 0;
    //TBOX_PRINT("CycleSendDisableAll---\r\n");
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
            //TBOX_PRINT("set mode high\r\n");
            //stop diagnostic 
            //StopDiagnosticDetection();
        }
        else if(kl30Voltage<g_diagMinVoltage)
        {
            g_voltageDiagState = E_KL30_DETECT_LOW;
            g_diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
            //TBOX_PRINT("set mode low\r\n");
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
                //TBOX_PRINT("clear high DTC\r\n");
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
                //TBOX_PRINT("set high DTC\r\n");
              }
              else
              {
                g_diagFaultTimerCount += 1;
              }
            }
            else
            {
                g_diagFaultTimerCount = 0;
                //TBOX_PRINT("clear high DTC count\r\n");
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
                    //TBOX_PRINT("clear low DTC\r\n");
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
                    //TBOX_PRINT("clear low DTC\r\n");
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
                //TBOX_PRINT("set low DTC\r\n");
              }
              else
              {
                g_diagFaultTimerCount += 1;
              }   
            }
            else
            {
                g_diagFaultTimerCount = 0;
                //TBOX_PRINT("clear low DTC count\r\n");
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
}

static const AutosarNmParameter_t g_netManageAutosarConfigure[] = 
{
    {
        .canChannel                 = TBOX_CAN_CHANNEL_D,
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

void PmDebugPrint(void)
{
    static uint32_t count = 0;
    uint32_t wakeCount;
    uint8_t pmState,wakeupSource;
    static uint8_t lastPmStat = 0;
    static uint8_t lastWakeupSource = 0;
    static uint8_t lastWakeupCount = 0;

    count++;
    PowerManageSdkGetPowerInfo(&pmState,&wakeupSource,&wakeCount);
    if((pmState != lastPmStat) || (wakeupSource != lastWakeupSource) || (wakeCount != lastWakeupCount))
    {
        lastPmStat = pmState;
        lastWakeupSource = wakeupSource;
        lastWakeupCount = wakeCount;
        TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n",pmState,wakeupSource,wakeCount);
        return;
    }
    else if(count<200)
    {
        return;
    }
    count = 0;
    TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n",pmState,wakeupSource,wakeCount);
    
    uint32_t voltage = 0;
    BatterySdkGetVoltage(&voltage);
    
    uint32_t level = BatterySdkGetBatteySoc();
    uint32_t voltageKl30 = 0;
    PeripheralHalAdGet(AD_CHANNEL_KL30,&voltageKl30);
    
    TBOX_PRINT("KL30 %d,battery %d, level %d%\r\n",voltageKl30,voltage,level);
    //TBOX_PRINT("KL30 voltage %d",voltageKl30);
    /*TimerHalDebugPrint(&wakeCount);
    TBOX_PRINT("timer hal test %d \r\n",wakeCount);*/    
}

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
 

void TaskPowerManage(void *pvParameters)
{
    TickType_t xLastWakeTime;    
    uint8_t timeCount;
    
    AutosarNmSdkConfig(g_netManageAutosarConfigure,sizeof(g_netManageAutosarConfigure)/sizeof(g_netManageAutosarConfigure[0]));
    PowerManageSdkInit(&g_pmCondg);
    //BatterySdkInit(&g_batterConfig,10,E_BATTERY_XYSR);
    
    // PowerManageSdkPowerOn();
    MpuHalStart();
    xLastWakeTime = xTaskGetTickCount();
    timeCount = 0;
    uint8_t bleRestFlag = 0;
    while(1)
    {
        if(bleRestFlag < 2)
        {
//             BleHalRestSet(1);
            bleRestFlag++;
        }
        else if(bleRestFlag == 2)
        {
//             BleHalRestSet(0);
            bleRestFlag++;
        }
        vTaskDelayUntil( &xLastWakeTime, 5 );
        PowerManageSdkCycleProcess(5);
        NetManageAutosarCycleProcess();             
        WatchDogCycleProcess();
        timeCount++;
        if(2==timeCount)
        {
            timeCount = 0;
            MpuHalCycleProcess(10);
            //BatterySdkCycleProcess();
            Kl30DetectCycleProcess();
            PmDebugPrint();
        }
        xLastWakeTime = xTaskGetTickCount();
    }
}

