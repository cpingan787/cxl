#ifndef _TASK_POWER_MANAGE_H
#define _TASK_POWER_MANAGE_H



void TaskPowerManageInit(void);
void TaskPowerManage(uint32_t cycleTime);


void Kl30DtcCheckReset(void);


void kl30VoltageDTCProcess(uint16_t powerVoltage);

uint8_t GetTripCounterDetectEnable(void);

void SystemTimeMs(void);

void DtcGpioInit(void);





#endif//_TASK_POWER_MANAGE_H