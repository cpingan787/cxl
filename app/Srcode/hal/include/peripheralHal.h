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

/* R7F701581 ADCA0 channel map from schematic sheet 16. */
#define AD_CHANNEL_INVALID                         (0xFFU)
#define AD_CHANNEL_COUNT                           (16U)
#define AD_RESOLUTION_COUNTS                       (4096UL)

/* AP0_0 ... AP0_15 */
#define AD0_CHANNEL_MAIN_ANT_ADC                   (0U)
#define AD0_CHANNEL_DIV_ANT_ADC                    (1U)
#define AD0_CHANNEL_ECALL_BUTTON_ADC               (2U)
/* AP0_3 is MAIN_ANT_CTRL and is used as a digital output. */
#define AD0_CHANNEL_MIC_IN_ADC_DET                 (4U)
#define AD0_CHANNEL_MIC_OUT_ADC_DET                (5U)
/* AP0_6 is ZM8201V_SHDN and is used as a digital output. */
#define AD0_CHANNEL_BUB_TEMP_ADC                   (8U)
#define AD0_CHANNEL_BUB_VOLTAGE_ADC                (9U)
#define AD0_CHANNEL_MCU_GPS_ANT_ADC1              (10U)
#define AD0_CHANNEL_MCU_GPS_ANT_ADC0              (11U)
#define AD0_CHANNEL_ANT_BLE_ADC                   (12U)
#define AD0_CHANNEL_KL30                         (13U)
/*
 * beCALL_RedLED_StateDET_ADC is duplicated. The schematic note says to use
 * MCU pin 52, which is AP0_15.
 */
#define AD0_CHANNEL_beCALL_GenLED_StateDET_ADC    (15U)

/* Compatibility aliases for old application code. */
#define AD1_CHANNEL_MIC_OUT_ADC_DET               AD0_CHANNEL_MIC_OUT_ADC_DET
#define AD1_CHANNEL_MIC_IN_ADC_DET                AD0_CHANNEL_MIC_IN_ADC_DET
#define AD1_CHANNEL_ECALL_BUTTON_ADC              AD0_CHANNEL_ECALL_BUTTON_ADC

/* Old-platform ADC signals not populated on IAM_A车_4G_A0. */
#define AD0_CHANNEL_MIMO4_ANT_ADC                 AD_CHANNEL_INVALID
#define AD0_CHANNEL_MIMO3_ANT_ADC                 AD_CHANNEL_INVALID
#define AD0_CHANNEL_CV2X_ANT_TRX1_ADC             AD_CHANNEL_INVALID
#define AD0_CHANNEL_CV2X_ANT_TRX0_ADC             AD_CHANNEL_INVALID
#define AD0_CHANNEL_UWB_ANT1_ADC                  AD_CHANNEL_INVALID
#define AD0_CHANNEL_VCC_BLE_DET                   AD_CHANNEL_INVALID
#define AD0_CHANNEL_UWB_ANT0_ADC                  AD_CHANNEL_INVALID
#define AD1_CHANNEL_MCU_REV_ADC                   AD_CHANNEL_INVALID
#define AD1_CHANNEL_CDS_ADC                       AD_CHANNEL_INVALID
#define AD1_CHANNEL_UWB_ANT2_ADC                  AD_CHANNEL_INVALID
#define AD1_CHANNEL_EXT_1PPS_ADC                  AD_CHANNEL_INVALID

#define AD_REF_VOLTAGE                            (3300UL)
#define AD_CHANNEL_KL30_FACTOR                    (11UL)
#define AD_CHANNEL_BATTERY_FACTOR                 (3UL)
#define AD_CHANNEL_NTC_FACTOR                     (1UL)
#define AD_CHANNEL_SOS_FACTOR                     (2UL)

/*****************************************************/

typedef void(* typeSetWakeupSourceCallbackPtr)(uint8_t source);
typedef void(* typeSetBatteryModeCallbackPtr)(uint8_t mode);

typedef struct
{
  uint16_t adValue[AD_CHANNEL_COUNT];
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
int16_t PeripheralHalGetKl15Status(void);
int16_t PeripheralHalGetKl30Status(void);
void PeripheralHalSetSysOn (uint8_t flag);
int16_t PeripheralHalAdGet(uint8_t adChannel, uint32_t *pValue);
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
void PeripheralHalSetDeepsleep_PWR_EN_Low(void);
#endif    //_PERIPHERALHAL_H
