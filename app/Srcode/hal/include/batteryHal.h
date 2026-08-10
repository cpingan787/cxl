#ifndef BATTERY_HAL_H
#define BATTERY_HAL_H

#include <stdint.h>

#define BATTERY_HAL_STATE_IDLE          (0)
#define BATTERY_HAL_STATE_CHARGING      (1)
#define BATTERY_HAL_STATE_DISCHARGING   (2)

int16_t BatteryHalInit(void);
void BatteryHalBoostEnable(void);
void BatteryHalBoostDisable(void);
void BatteryHalEnableOut(void);
void BatteryHalDisableOut(void);
void BatteryHalEnableCharge(void);
void BatteryHalDisableCharge(void);
int16_t BatteryHalGetVoltage(uint32_t *pVoltage);
int16_t BatteryHalGetNtc(uint32_t *pVoltage);
void BatteryHalEnableCheck(uint8_t flag);
int16_t BatteryHalGetState(void);

#endif /* BATTERY_HAL_H */
