#ifndef _PERIPHERALHAL_H
#define _PERIPHERALHAL_H

#include <stdint.h>

/***********************AD convert*****************************************/
/*****************************************************/

// #define AD_CHANNEL_BATTERY              9
// #define AD_CHANNEL_NTC                  8
//#define AD_CHANNEL_CAN_POWER            3//error 4.2V
//#define AD_CHANNEL_MICP                 4
//#define AD_CHANNEL_SPK_N                5
//#define AD_CHANNEL_MICN                 6
//#define AD_CHANNEL_ECALL                7
//#define AD_CHANNEL_VCC_NAND             8
//#define AD_CHANNEL_LED_GND              9//error
//#define AD_CHANNEL_V_GSM                10
//#define AD_CHANNEL_V_BLUE               11
//#define AD_CHANNEL_SYS_5V               12

/*ADC0*/
#define AD0_CHANNEL_MAIN_ANT_ADC         0
#define AD0_CHANNEL_DIV_ANT_ADC          1
#define AD0_CHANNEL_MIMO4_ANT_ADC        2
#define AD0_CHANNEL_MIMO3_ANT_ADC        3
#define AD0_CHANNEL_CV2X_ANT_TRX1_ADC    4
#define AD0_CHANNEL_CV2X_ANT_TRX0_ADC    5
#define AD0_CHANNEL_UWB_ANT1_ADC         6
#define AD0_CHANNEL_VCC_BLE_DET          7
#define AD0_CHANNEL_BUB_TEMP_ADC         8
#define AD0_CHANNEL_BUB_VOLTAGE_ADC      9
#define AD0_CHANNEL_MCU_GPS_ANT_ADC1    10
#define AD0_CHANNEL_MCU_GPS_ANT_ADC0    11
#define AD0_CHANNEL_UWB_ANT0_ADC        12
#define AD0_CHANNEL_KL30                13
#define AD0_CHANNEL_beCALL_GenLED_StateDET_ADC 14
#define AD0_CHANNEL_ANT_BLE_ADC         15
/*ADC1*/
#define AD1_CHANNEL_MCU_REV_ADC         16
// #define AD1_CHANNEL_LED                 17
#define AD1_CHANNEL_MIC_OUT_ADC_DET     18
#define AD1_CHANNEL_CDS_ADC             19
#define AD1_CHANNEL_MIC_IN_ADC_DET      20
#define AD1_CHANNEL_UWB_ANT2_ADC        21
#define AD1_CHANNEL_ECALL_BUTTON_ADC    22
#define AD1_CHANNEL_EXT_1PPS_ADC        23



#define AD_REF_VOLTAGE                  3300//3300mv-------3.3V

#define AD_CHANNEL_KL30_FACTOR          220/20
#define AD_CHANNEL_BATTERY_FACTOR       300/100
//#define AD_CHANNEL_4G_FACTOR       20/10
#define AD_CHANNEL_NTC_FACTOR           1
/*****************************************************/

typedef void(* typeSetWakeupSourceCallbackPtr)(uint8_t source);
typedef void(* typeSetBatteryModeCallbackPtr)(uint8_t mode);

typedef struct
{
  uint16_t adValue[25];
  uint8_t adValid;  
}AdConvertBuffer_t;

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
  Function:     PeripheralHalSetMode
  Description:  Set the sleep and wake mode
  Input:        mode :sleep or wake
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void PeripheralHalSetMode(uint8_t mode);

/*************************************************
  Function:     PeripheralHalMpuPowerOn
  Description:  power on or power down mpu power
  Input:        status :power on or power down
  Output:       None
  Return:       None
  Others:       None
*************************************************/
//void PeripheralHalMpuPowerOn(uint8_t status);

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
//void PeripheralHal1msTimerProcess(void);
void PeripheralHalMcuHardReset(void);
void PeripheralHalFeedWatchDog(void);

void PeripheralHalSetTestMode(uint8_t testMode);

void PeripheralHalRegisterSetWakeupSourceCallback(typeSetWakeupSourceCallbackPtr pCallBackFun);
//void PeripheralHalRegisterSetBatteryModeCallback(typeSetBatteryModeCallbackPtr pCallBackFun);

void RtcWakeupInit(uint32_t time);
int16_t RtcWakeUpProcess(uint32_t maxvoltage,uint32_t minvoltage);

void PeripheralHalSetLedFastFlash(void);
void PeripheralHalSetLedNomalFlash(void);

#endif    //_PERIPHERALHAL_H
