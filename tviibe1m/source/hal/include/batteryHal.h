#ifndef _BATTERYHAL_H
#define _BATTERYHAL_H

int16_t BatteryHalInit(void);
void BatteryHalEnableOut(void);
void BatteryHalDisableOut(void);
void BatteryHalEnableCharge(void);
void BatteryHalDisableCharge(void);
int16_t BatteryHalGetVoltage(uint32_t *pVoltage);
int16_t BatteryHalGetNtc(uint32_t *pVoltage);
void BatteryHalEnableCheck(uint8_t flag);
int16_t BatteryHalGetState(void);

#endif  //_BATTERYHAL_H