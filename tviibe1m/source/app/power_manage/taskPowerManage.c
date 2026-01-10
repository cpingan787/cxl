#include "FreeRTOS.h"
#include "task.h"

#include "logHal.h"
#include "timerHal.h"
#include "peripheralHal.h"
#include "mpuHal.h"
#include "powerManageHal.h"

#include "batterySdk.h"
#include "autosarNmSdk.h"
#include "powerManageSdk.h"
#include "taskPowerManage.h"
#include "taskDtcProcess.h"
#include "canPeriodTask.h"


const BatteryConfigure_t g_batterConfig = 
{
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
    else if(mcuWakeUpSource==PM_HAL_WAKEUP_SOURCE_MCURTC)
    {
        *pDelayTime_ms = 6*60*1000;
        //MapWakeUpSource = PM_HAL_WAKEUP_SOURCE_MCURTC;
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

static uint8_t g_CommunicationStartFlag = 0;
static uint8_t g_powerOnState = 0;   


static void StartCommunication(void)
{
  if(0==g_CommunicationStartFlag)
  {  
    g_CommunicationStartFlag = 1;
    
    if(0==g_powerOnState)
    {
      g_powerOnState = 1;
      PowerManageSdkPowerOn();
      //CycleSendSetPowerStartState();
      //CanPeriodCycleStart();
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
  if(g_CommunicationStartFlag)
  {
    NmMessageSendDisable();
    CanPeriodSendDisableAll();
    g_CommunicationStartFlag = 0;
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
static uint32_t diagRecoverTimerCount = 0;
static uint8_t g_DiagStartFlag = 0x00;
static uint16_t g_NMDisableTimeCount	=   0;                      //��ֹʱ�����

//
static uint8_t g_kl30DtcResetFlag = 0;
static uint32_t g_diagFaultTimerCount = 0;
static const uint16_t g_communicationMaxVoltage = 18000;//mv
static const uint16_t g_communicationMinVoltage = 8000;//mv
#define RECOVER_VOLTAGE 100

//diagnostic start process
static const uint16_t g_diagMaxVoltage = 16000;//mv
static const uint16_t g_diagMaxRecoverVoltage = 15000;//mv
static const uint16_t g_diagMinVoltage = 9000;//mv
static const uint16_t g_diagMinRecoverVoltage = 10000;//mv
static const uint32_t g_diagRecoverTime = 2000;//ms
static const uint32_t g_diagStartTime = 1500;//ms
static const uint32_t g_diagFaultTime = 2000;//ms

static void Kl30DetectCycleProcess(void)
{
    uint32_t u16BAT_VOL;
    PeripheralHalAdGet(AD_CHANNEL_KL30,&u16BAT_VOL);   
    /********communication control ************************************/
    if(E_KL30_DETECT_NORMAL==g_voltageComState)
    {
        if(u16BAT_VOL>(g_communicationMaxVoltage + RECOVER_VOLTAGE))
        {
            g_voltageComState = E_KL30_DETECT_HIGH;
            //to do stop communication
            StopCommunication();
            //Ng_AllDisableCommunication();
        }
        else if(u16BAT_VOL<(g_communicationMinVoltage - RECOVER_VOLTAGE))
        {
            g_voltageComState = E_KL30_DETECT_LOW;
            //to do stop communication
            //Ng_AllDisableCommunication();
            StopCommunication();
        }
    }
    else if(E_KL30_DETECT_HIGH==g_voltageComState)
    {
        if(u16BAT_VOL<g_communicationMaxVoltage)//recover
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
        if(u16BAT_VOL>g_communicationMinVoltage)//recover
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
  
    /****************diagnostic voltage detecting ************/
    if(E_KL30_DETECT_NORMAL==g_voltageDiagState)
    {
        if(u16BAT_VOL>g_diagMaxVoltage)
        {
            g_voltageDiagState = E_KL30_DETECT_HIGH;
            diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
            //TBOX_PRINT("set mode high\r\n");
            //stop diagnostic 
            //StopDiagnosticDetection();
        }
        else if(u16BAT_VOL<g_diagMinVoltage)
        {
            g_voltageDiagState = E_KL30_DETECT_LOW;
            diagRecoverTimerCount = 0;
            g_diagFaultTimerCount = 0;
            //TBOX_PRINT("set mode low\r\n");
            //stop diagnostic
            //StopDiagnosticDetection();
        }
    }
    else if(E_KL30_DETECT_HIGH==g_voltageDiagState)
    {
        if(u16BAT_VOL <= g_diagMaxRecoverVoltage -RECOVER_VOLTAGE)//recover
        { 
            g_diagFaultTimerCount = 0;
            if(diagRecoverTimerCount>=(g_diagRecoverTime/10))
            {
                g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                //start diagnostic
                ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_HIGH);
                //TBOX_PRINT("clear high DTC\r\n");
            }
            else
            {
                diagRecoverTimerCount++;
            }   
        }
        else
        {            
            diagRecoverTimerCount = 0;
            if(u16BAT_VOL > g_diagMaxVoltage+RECOVER_VOLTAGE)
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
        if(u16BAT_VOL >= g_diagMinRecoverVoltage + RECOVER_VOLTAGE)//recover
        {
            g_diagFaultTimerCount = 0;
            
            if(g_DiagStartFlag)
            {
                if(diagRecoverTimerCount>=(g_diagRecoverTime/10))
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                    ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);
                    //TBOX_PRINT("clear low DTC\r\n");
                }
                else
                {
                    diagRecoverTimerCount++;
                }             
            }
            else
            {
                if(diagRecoverTimerCount>=(g_diagStartTime/10))
                {
                    g_voltageDiagState = E_KL30_DETECT_NORMAL;  
                    g_DiagStartFlag = 1;
                    ClearDtcFaultState(E_DTC_ITEM_KL30_VOLTAGE_LOW);  
                    //TBOX_PRINT("clear low DTC\r\n");
                }
                else
                {
                    diagRecoverTimerCount++;
                } 
            }
        }
        else
        {
            diagRecoverTimerCount = 0;
            if(u16BAT_VOL<g_diagMinVoltage -RECOVER_VOLTAGE)
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

void Kl30DtcCheckReset(void)
{
    g_kl30DtcResetFlag = 1;
}

static void Can2BusErrorEvent(uint8_t flag)
{
    if(flag)
    {
        SetDtcFaultState(E_DTC_ITEM_BDCAN_BUSOFF);
    }
    else
    {
        ClearDtcFaultState(E_DTC_ITEM_BDCAN_BUSOFF);
    }
}
static void Can3BusErrorEvent(uint8_t flag)
{
    if(flag)
    {
        SetDtcFaultState(E_DTC_ITEM_ADCAN_BUSOFF);
    }
    else
    {
        ClearDtcFaultState(E_DTC_ITEM_ADCAN_BUSOFF);
    }
}
static void Can1BusErrorEvent(uint8_t flag)
{
    if(flag)
    {
        SetDtcFaultState(E_DTC_ITEM_PTCAN_BUSOFF);
    }
    else
    {
        ClearDtcFaultState(E_DTC_ITEM_PTCAN_BUSOFF);
    }
}

static const AutosarNmParameter_t g_netManageAutosarConfigure[] = 
{
    {
        .canChannel                 = TBOX_CAN_CHANNEL_B,
        .NodeId                     = 0x03,
        .BaseAddress                = 0x500,   
        .NodeIdMin                  = 0x00,//CAN网络管理报文的节点最小值
        .NodeIdMax                  = 0xFF,//CAN网络管理报文的节点最大值
        .repeatMessageTime          = 1500,//节点在RMS(重复报文)状态中保持的最长时间  T_REPEAT_MESSAGE unit:ms
        .nmTimeOutTime              = 2000,//长城要求1800-2200，但是由于误差原因，选择2300在这个范围内，节点在NM(网络模式)中保持的最长时间       T_NM_TIMEOUT  unit:ms
        .waitBusSleepTime           = 2000,      //确保所有节点有时间停止其网络活动          T_WAIT_BUS_SLEEP unit:ms
        .startTXTime                = 50,		         //从非BSM(睡眠模式)进入RMS(重复报文模式)状态到开始发送第一帧NM报文的最大时间间隔
        .startxAppFrameTime         = 20,      //成功发送第一帧网络管理报文后开始发送应用报文最大间隔时间
        .immediateCycleTime         = 20,//快速发送网络管理报文的周期ms
        .msgCycleTime               = 500,           //正常发送子状态或常规操作状态下，网络管理报文发送周期		
        .wakeupTime                 = 100,             //从休眠模式进入网络模式，开始重复发送网络管理报文的最大时间
        .immediateTimes             = 5,		       //快速发送子状态下，以周期时间immediateCycleTime发送的网络管理报文数量
        .busOffQuickTime            = 50,		       //ms
        .busOffSlowTime             = 200,		     //ms
        .busOffQuickTimes           = 5,		             //节点进入快恢复次数
        .busOffErrorEventLimitCount = 8,//设置BUSOFF的DTC的最低次数
        .canBusErrorCallBack = Can1BusErrorEvent,
    },
    
    {
        .canChannel                 = TBOX_CAN_CHANNEL_D,
        .NodeId                     = 0x03,
        .BaseAddress                = 0x500,   
        .NodeIdMin                  = 0x00,//CAN网络管理报文的节点最小值
        .NodeIdMax                  = 0xFF,//CAN网络管理报文的节点最大值
        .repeatMessageTime          = 1500,//节点在RMS(重复报文)状态中保持的最长时间  T_REPEAT_MESSAGE unit:ms
        .nmTimeOutTime              = 2000,//长城要求1800-2200，但是由于误差原因，选择2300在这个范围内，节点在NM(网络模式)中保持的最长时间       T_NM_TIMEOUT  unit:ms
        .waitBusSleepTime           = 2000,      //确保所有节点有时间停止其网络活动          T_WAIT_BUS_SLEEP unit:ms
        .startTXTime                = 50,		         //从非BSM(睡眠模式)进入RMS(重复报文模式)状态到开始发送第一帧NM报文的最大时间间隔
        .startxAppFrameTime         = 20,      //成功发送第一帧网络管理报文后开始发送应用报文最大间隔时间
        .immediateCycleTime         = 20,//快速发送网络管理报文的周期ms
        .msgCycleTime               = 500,           //正常发送子状态或常规操作状态下，网络管理报文发送周期		
        .wakeupTime                 = 100,             //从休眠模式进入网络模式，开始重复发送网络管理报文的最大时间
        .immediateTimes             = 5,		       //快速发送子状态下，以周期时间immediateCycleTime发送的网络管理报文数量
        .busOffQuickTime            = 50,		       //ms
        .busOffSlowTime             = 200,		     //ms
        .busOffQuickTimes           = 5,		             //节点进入快恢复次数
        .busOffErrorEventLimitCount = 8,//设置BUSOFF的DTC的最低次数
        .canBusErrorCallBack = Can2BusErrorEvent,
    },
		
};

void NmMessageSendDisable(void)
{
    uint8_t i,num;
    num = sizeof(g_netManageAutosarConfigure)/sizeof(g_netManageAutosarConfigure[0]);
    for(i=0;i<num;i++)
    {
        AutosarNmSdkDisableCommunication(i);
    }  
}

void NmMessageSendEnable(void)
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
    count++;
    if(count<5)
    {
        return;
    }
    count = 0;
    PowerManageSdkGetPowerInfo(&pmState,&wakeupSource,&wakeCount);
    //TBOX_PRINT("powerstate is %d,wakesoure is %d,wakecount is %d\r\n",pmState,wakeupSource,wakeCount);
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
void TaskNetManage(void *pvParameters)
{
	TickType_t xLastWakeTime;  
	uint32_t distime;
    AutosarNmSdkConfig(g_netManageAutosarConfigure,sizeof(g_netManageAutosarConfigure)/sizeof(g_netManageAutosarConfigure[0]));
	xLastWakeTime = xTaskGetTickCount();
	while(1)
	{
	   
	   if(GetTboxOtaStatus() == 1)
	   {
			distime = 6*1000;//30s
			g_NMDisableTimeCount++;
			if(g_NMDisableTimeCount>=distime)
			{
			   g_NMDisableTimeCount=0;
			   SetTboxOtaStatus(0);
			}
	   }
	   else
	   {				
			g_NMDisableTimeCount=0;
			NetManageAutosarCycleProcess(); 			
	   }
	   vTaskDelayUntil(&xLastWakeTime,5);
	}
}

void TaskPowerManage(void *pvParameters)
{
    TickType_t xLastWakeTime;    
    uint8_t timeCount;
    
    PowerManageSdkInit(&g_pmCondg);
    BatterySdkInit(&g_batterConfig,10,E_BATTERY_XYSR);
    
    //PowerManageSdkPowerOn();
    MpuHalStart();
    xLastWakeTime = xTaskGetTickCount();
    timeCount = 0;
    while(1)
    {
        vTaskDelayUntil( &xLastWakeTime, 5 );
        PowerManageSdkCycleProcess(5);
		//NetManageAutosarCycleProcess(); 			
        WatchDogCycleProcess();
        timeCount++;
        if(2==timeCount)
        {
            timeCount = 0;
            MpuHalCycleProcess(10);
            BatterySdkCycleProcess();
            Kl30DetectCycleProcess();
            PmDebugPrint();
        }        
    }
}

