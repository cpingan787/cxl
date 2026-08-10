#ifndef _TASK_POWER_MANAGE_H
#define _TASK_POWER_MANAGE_H
//#include "Rte_NvM_Type.h"
#include <stdint.h>



void TaskPowerManageInit(void);
//void DtcDetectProcessInit(void);
void TaskPowerManage(uint32_t cycleTime);


void Kl30DtcCheckReset(void);

void BackupBat_DtcInit(void);
void BackupBat_DetectProcess_200ms(void);
void BackupBatOpenShort_DtcInit(void);
void BackupBatOpenShort_DetectProcess_200ms(void);
void BackupBatAging_DtcInit(void);
void BackupBatAging_RequestCheckOnWakeup(void);
void BackupBatAging_DetectProcess(void);






#endif//_TASK_POWER_MANAGE_H
