#ifndef _PERIPHERALHAL_H
#define _PERIPHERALHAL_H

#include "platform_cfg.h"	// 包含MCU平台配置信息的头文件
#include "stdint.h"
// #include "common_drv.h"		// 包含SDK中常用信息的头文件

/***********************AD convert*****************************************/
/*****************************************************/
#define AD_CHANNEL_KL30                 0//
#define AD_CHANNEL_BATTERY              1
#define AD_CHANNEL_NTC                  2
//#define AD_CHANNEL_CAN_POWER            3//error 4.2V
#define AD_CHANNEL_MICP                 4
//#define AD_CHANNEL_SPK_N                5
//#define AD_CHANNEL_MICN                 6
//#define AD_CHANNEL_ECALL                7
//#define AD_CHANNEL_VCC_NAND             8
//#define AD_CHANNEL_LED_GND              9//error
//#define AD_CHANNEL_V_GSM                10
//#define AD_CHANNEL_V_BLUE               11
#define AD_CHANNEL_SYS_5V               12
#define AD_CHANNEL_SOS_KEY               13

#define AD_REF_VOLTAGE                  3300//3300mv-------3.3V

#define AD_CHANNEL_KL30_FACTOR          2200/200
#define AD_CHANNEL_BATTERY_FACTOR       1499/499
//#define AD_CHANNEL_4G_FACTOR       20/10
#define AD_CHANNEL_NTC_FACTOR           1
#define AD_CHANNEL_MICP_FACTOR          1
#define AD_CHANNEL_SOS_FACTOR           1

#define PERIPHERAL_TIMER_INSTANCE_NUMBER    40

/*****************************************************/

typedef void(* typeSetWakeupSourceCallbackPtr)(uint8_t source);
typedef void(* typeSetBatteryModeCallbackPtr)(uint8_t mode);
typedef void(* typeTimerCallbackPtr)(void);
typedef struct
{
    uint8_t UseFlag;
    uint8_t timerOnFlag;
    uint32_t TimerCount;
    typeTimerCallbackPtr TimerCallback;
}PeripheralTimer_t;

extern PeripheralTimer_t g_peripheralTimer[PERIPHERAL_TIMER_INSTANCE_NUMBER];

/*************************************************
  Function:     PeripheralHalInit
  Description:  Peripheral Hal init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void PeripheralHalInit(void);

/*************************************************
  Function:     PeripheralHalGetKl15Status
  Description:  Get Kl15 status
  Input:        none
  Output:       KL15 status
  Return:       None
  Others:       None
*************************************************/
int16_t PeripheralHalGetKl15Status (void);
int16_t PeripheralHalGetKl30Status (void);
void PeripheralHalSetSysOn (uint8_t flag);
int16_t PeripheralHalAdGet(uint8_t adChannel,uint32_t *pValue);
void PeripheralHalAdcStart(uint8_t sarNo);
void PeripheralHal1msTimerProcess(void);
void PeripheralHalMcuHardReset(void);
void PeripheralHalFeedWatchDog(void);
void PeripheralHalSetLedMode(uint8_t mode);
void PeripheralHalSetTestMode(uint8_t testMode);
void TimerHalDelayMs(uint32_t dalayMs);
void PeripheralHalRegisterSetWakeupSourceCallback(typeSetWakeupSourceCallbackPtr pCallBackFun);
void PeripheralHalRegisterSetBatteryModeCallback(typeSetBatteryModeCallbackPtr pCallBackFun);

void RtcWakeupInit(uint32_t time);
int16_t RtcWakeUpProcess(uint32_t maxvoltage,uint32_t minvoltage);
void PeripheralHalTestMain(void);
static void DelayRLTUnderFlowCallback(void);
#endif    //_PERIPHERALHAL_H
