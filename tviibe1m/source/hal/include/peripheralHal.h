#ifndef _PERIPHERALHAL_H
#define _PERIPHERALHAL_H

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

/*****************************************************/

typedef void(* typeSetWakeupSourceCallbackPtr)(uint8_t source);
typedef void(* typeSetBatteryModeCallbackPtr)(uint8_t mode);

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
void PeripheralHalMpuPowerOn(uint8_t status);

int16_t PeripheralHalGetHpdStatus (void);
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
int16_t PeripheralHalAdGet(uint8_t AdChannel,uint32_t *pValue);
void PeripheralHalAdcStart(uint8_t SAR_No);
void PeripheralHal1msTimerProcess(void);
void PeripheralHalMcuHardReset(void);
void PeripheralHalFeedWatchDog(void);

void PeripheralHalSetTestMode(uint8_t testMode);

void PeripheralHalRegisterSetWakeupSourceCallback(typeSetWakeupSourceCallbackPtr pCallBackFun);
void PeripheralHalRegisterSetBatteryModeCallback(typeSetBatteryModeCallbackPtr pCallBackFun);


#endif    //_PERIPHERALHAL_H
