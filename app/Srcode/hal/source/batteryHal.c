#include "batteryHal.h"
#include "peripheralHal.h"
#include "r_port.h"

/*
 * IAM_A车_4G_A0, MCU sheet:
 *   BUB_BOOST_EN     -> P10_15
 *   BUB_CHARGE_EN    -> P9_4
 *   BUB_DisCharge_EN -> P11_0
 *
 * KL30_DOWN_DET is handled by PeripheralHalGetKl30Status().
 */
#define BATTERY_BOOST_PORT        (Port10)
#define BATTERY_BOOST_PIN         (15U)

#define BATTERY_CHARGE_PORT       (Port9)
#define BATTERY_CHARGE_PIN        (4U)

#define BATTERY_DISCHARGE_PORT    (Port11)
#define BATTERY_DISCHARGE_PIN     (0U)

static uint8_t s_batteryHalChargeCmd = 0U;

/*************************************************
  Function:     BatteryHalInit
  Description:  Battery module init
  Input:        None
  Output:       None
  Return:       0
*************************************************/
int16_t BatteryHalInit(void)
{
    /*
     * BUB_BOOST_EN: push-pull output, default high.
     * Keep the legacy project's initial behavior.
     */
    R_PORT_DisableFastMode(BATTERY_BOOST_PORT, BATTERY_BOOST_PIN);
    R_PORT_SetPushPull(BATTERY_BOOST_PORT, BATTERY_BOOST_PIN);
    R_PORT_SetGpioOutput(BATTERY_BOOST_PORT, BATTERY_BOOST_PIN, High);

    /* BUB_CHARGE_EN: push-pull output, default low. */
    R_PORT_SetPushPull(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN);
    R_PORT_SetGpioOutput(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN, Low);

    /* BUB_DisCharge_EN: push-pull output, default low. */
    R_PORT_DisableFastMode(BATTERY_DISCHARGE_PORT, BATTERY_DISCHARGE_PIN);
    R_PORT_SetPushPull(BATTERY_DISCHARGE_PORT, BATTERY_DISCHARGE_PIN);
    R_PORT_SetGpioOutput(BATTERY_DISCHARGE_PORT, BATTERY_DISCHARGE_PIN, Low);

    s_batteryHalChargeCmd = 0U;

    return 0;
}

void BatteryHalBoostEnable(void)
{
    R_PORT_SetGpioOutput(BATTERY_BOOST_PORT, BATTERY_BOOST_PIN, High);
}

void BatteryHalBoostDisable(void)
{
    R_PORT_SetGpioOutput(BATTERY_BOOST_PORT, BATTERY_BOOST_PIN, Low);
}

/*************************************************
  Function:     BatteryHalEnableOut
  Description:  Enable backup-battery discharge output
*************************************************/
void BatteryHalEnableOut(void)
{
    R_PORT_SetGpioOutput(BATTERY_DISCHARGE_PORT,
                         BATTERY_DISCHARGE_PIN,
                         High);
}

/*************************************************
  Function:     BatteryHalDisableOut
  Description:  Disable backup-battery discharge output
*************************************************/
void BatteryHalDisableOut(void)
{
    R_PORT_SetGpioOutput(BATTERY_DISCHARGE_PORT,
                         BATTERY_DISCHARGE_PIN,
                         Low);
}

/*************************************************
  Function:     BatteryHalEnableCharge
  Description:  Enable backup-battery charging
*************************************************/
void BatteryHalEnableCharge(void)
{
    R_PORT_SetGpioOutput(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN, High);
    s_batteryHalChargeCmd = 1U;
}

/*************************************************
  Function:     BatteryHalDisableCharge
  Description:  Disable backup-battery charging
*************************************************/
void BatteryHalDisableCharge(void)
{
    R_PORT_SetGpioOutput(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN, Low);
    s_batteryHalChargeCmd = 0U;
}

/*************************************************
  Function:     BatteryHalGetVoltage
  Description:  Get backup-battery voltage
*************************************************/
int16_t BatteryHalGetVoltage(uint32_t *pVoltage)
{
    uint32_t voltage = 0U;

    if (pVoltage == NULL)
    {
        return -1;
    }

    if (PeripheralHalAdGet(AD0_CHANNEL_BUB_VOLTAGE_ADC, &voltage) != 0)
    {
        return -1;
    }

    *pVoltage = voltage;
    return 0;
}

/*************************************************
  Function:     BatteryHalGetNtc
  Description:  Get backup-battery NTC ADC value
*************************************************/
int16_t BatteryHalGetNtc(uint32_t *pVoltage)
{
    uint32_t voltage = 0U;

    if (pVoltage == NULL)
    {
        return -1;
    }

    if (PeripheralHalAdGet(AD0_CHANNEL_BUB_TEMP_ADC, &voltage) != 0)
    {
        return -1;
    }

    *pVoltage = voltage;
    return 0;
}

void BatteryHalEnableCheck(uint8_t flag)
{
    (void)flag;
}

/*************************************************
  Function:     BatteryHalGetState
  Return:       BATTERY_HAL_STATE_IDLE
                BATTERY_HAL_STATE_CHARGING
                BATTERY_HAL_STATE_DISCHARGING
*************************************************/
int16_t BatteryHalGetState(void)
{
    if (s_batteryHalChargeCmd != 0U)
    {
        return BATTERY_HAL_STATE_CHARGING;
    }

    /*
     * On this board KL30_DOWN_DET is high when KL30 is lost.
     * PeripheralHalGetKl30Status() returns 1 when KL30 is present,
     * and 0 when KL30 is absent, so absence means backup discharge state.
     */
    if (PeripheralHalGetKl30Status() == 0)
    {
        return BATTERY_HAL_STATE_DISCHARGING;
    }

    return BATTERY_HAL_STATE_IDLE;
}
