#ifndef _TASK_POWER_MANAGE_H
#define _TASK_POWER_MANAGE_H
//#include "Rte_NvM_Type.h"



void TaskPowerManageInit(void);
//void DtcDetectProcessInit(void);
void TaskPowerManage(uint32_t cycleTime);


void Kl30DtcCheckReset(void);


// void kl30VoltageDTCProcess(uint16_t powerVoltage);

// uint8_t GetTripCounterDetectEnable(void);
// void TripCntStore_DetectProcess_200ms(void);

// void SystemTimeMs(void);

// void EepromSetReadAllResult(NvM_RequestResultType readAllResult);





#endif//_TASK_POWER_MANAGE_H