/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: batteryHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "batteryHal.h"
#include "platform_cfg.h"
#include "peripheralHal.h"
#include "gpio_drv.h"

/****************************** Macro Definitions ******************************/
/* CHAR_ON */
#define BATTERY_CHARGE_PORT           PORT_E
#define BATTERY_CHARGE_PIN            GPIO_12
#define BATTERY_CHARGE_PIN_MUX        PTE12_GPIO
/* 5V_OUT_ON */
#define BATTERY_OUT_PORT              PORT_A
#define BATTERY_OUT_PIN               GPIO_0
#define BATTERY_OUT_PIN_MUX           PTA0_GPIO
/* BATTERY_ON */
#define BATTERY_SWITCHON_PORT         PORT_E
#define BATTERY_SWITCHON_PIN          GPIO_9
#define BATTERY_SWITCHON_PIN_MUX      PTE9_GPIO
/* CHECK_BATTERY */
#define BATTERY_CHECK_PORT            PORT_D
#define BATTERY_CHECK_PIN             GPIO_17
#define BATTERY_CHECK_PIN_MUX         PTD17_GPIO

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
/****************************** Function Declarations *************************/
/****************************** Public Function Implementations ***************/

/*************************************************
Function:     BatteryHalInit
Description:  Battery module init
Input:        None
Output:       None
Return:       None
Others:       None
*************************************************/
void BatteryHalInit(void)
{
    /* CHAR_ON pin init */
    PORT_PinmuxConfig(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN, BATTERY_CHARGE_PIN_MUX);
    GPIO_SetPinDir(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN);

    /* 5V_OUT_ON pin init */
    PORT_PinmuxConfig(BATTERY_OUT_PORT, BATTERY_OUT_PIN, BATTERY_OUT_PIN_MUX);
    PORT_PullConfig(BATTERY_OUT_PORT, BATTERY_OUT_PIN, PORT_PULL_DOWN);
    GPIO_SetPinDir(BATTERY_OUT_PORT, BATTERY_OUT_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(BATTERY_OUT_PORT,BATTERY_OUT_PIN);

    /* BATTERY_ON pin init */
    PORT_PinmuxConfig(BATTERY_SWITCHON_PORT, BATTERY_SWITCHON_PIN, BATTERY_SWITCHON_PIN_MUX);
    GPIO_SetPinDir(BATTERY_SWITCHON_PORT, BATTERY_SWITCHON_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(BATTERY_SWITCHON_PORT, BATTERY_SWITCHON_PIN);

    /* CHECK_BATTERY pin init */
    PORT_PinmuxConfig(BATTERY_CHECK_PORT, BATTERY_CHECK_PIN, BATTERY_CHECK_PIN_MUX);
    GPIO_SetPinDir(BATTERY_CHECK_PORT, BATTERY_CHECK_PIN, GPIO_OUTPUT);
    GPIO_ClearPinOutput(BATTERY_CHECK_PORT, BATTERY_CHECK_PIN);
}

/*************************************************
Function:     BatteryHalEnableOut
Description:  Battery enable out
Input:        None
Output:       None
Return:       None
Others:       None
*************************************************/
void BatteryHalEnableOut(void)
{
  /* start battery switch */
  GPIO_SetPinOutput(BATTERY_SWITCHON_PORT,BATTERY_SWITCHON_PIN);
  /* start battery boost */
  GPIO_SetPinOutput(BATTERY_OUT_PORT,BATTERY_OUT_PIN);
}

/*************************************************
Function:     BatteryHalDisableOut
Description:  Battery disable out
Input:        None
Output:       None
Return:       None
Others:       None
*************************************************/
void BatteryHalDisableOut(void)
{
  /* close battery switch */
  GPIO_ClearPinOutput(BATTERY_SWITCHON_PORT,BATTERY_SWITCHON_PIN);
  /* close battery boost */
  GPIO_ClearPinOutput(BATTERY_OUT_PORT,BATTERY_OUT_PIN);
}

/*************************************************
Function:     BatteryHalEnableCharge
Description:  Battery enable charge
Input:        None
Output:       None
Return:       None
Others:       None
*************************************************/
void BatteryHalEnableCharge(void)
{
  /* start battery charge */
  GPIO_SetPinOutput(BATTERY_CHARGE_PORT,BATTERY_CHARGE_PIN);
}

/*************************************************
Function:     BatteryHalDisableCharge
Description:  Battery disable charge
Input:        None
Output:       None
Return:       None
Others:       None
*************************************************/
void BatteryHalDisableCharge(void)
{
  /* start battery charge */
  GPIO_ClearPinOutput(BATTERY_CHARGE_PORT,BATTERY_CHARGE_PIN);
}

/*************************************************
Function:     BatteryHalGetVoltage
Description:  Get battery voltage
Input:        None
Output:       pVoltage : Address of the output voltage value
Return:       0  : get success
              -1 : get failed
Others:       None
*************************************************/
int16_t BatteryHalGetVoltage(uint32_t *pVoltage)
{
    int16_t ret = BATTERYHAL_ERR;
    uint32_t voltage = 0u;

    ret = PeripheralHalAdGet(AD_CHANNEL_BATTERY, &voltage);
    if (ret == BATTERYHAL_OK) {
        *pVoltage = voltage;
    }

    return ret;
}

/*************************************************
Function:     BatteryHalGetNtc
Description:  Get NTC AD value
Input:        None
Output:       pVoltage : Address of the output voltage value
Return:       0  : get success
              -1 : get failed
Others:       None
*************************************************/
int16_t BatteryHalGetNtc(uint32_t *pVoltage)
{
    int16_t ret = BATTERYHAL_ERR;
    uint32_t voltage = 0u;

    ret = PeripheralHalAdGet(AD_CHANNEL_NTC, &voltage);
    if (ret == BATTERYHAL_OK) {
        *pVoltage = voltage;
    }

    return ret;
}

/*************************************************
Function:     BatteryHalEnableCheck
Description:  Battery enable check 
Input:        None
Output:       None
Return:       None
Others:       None
*************************************************/
void BatteryHalEnableCheck(uint8_t flag)
{
  
}

/*************************************************
Function:     BatteryHalGetState
Description:  Get battery state
Input:        None
Output:       None
Return:       0 : idle state
              1 : charge state
              2 : enable state
Others:       None
*************************************************/
int16_t BatteryHalGetState(void)
{
    int16_t ret = BATTERYHAL_STATE_IDLE;
    GPIO_Level_t level = GPIO_LOW;
    do {
        level = GPIO_ReadPinLevel(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN);
        if (level == GPIO_HIGH) {
            ret = BATTERYHAL_STATE_CHARGE;
            break;
        }
        level = GPIO_ReadPinLevel(BATTERY_SWITCHON_PORT, BATTERY_SWITCHON_PIN);
        if (level == GPIO_HIGH) {
            ret = BATTERYHAL_STATE_EN;
        } else {
            ret = BATTERYHAL_STATE_IDLE;
        }
    } while (0);
    
    return ret;
}
