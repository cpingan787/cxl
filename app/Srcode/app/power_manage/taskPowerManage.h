#ifndef _TASK_POWER_MANAGE_H
#define _TASK_POWER_MANAGE_H
//#include "Rte_NvM_Type.h"



void TaskPowerManageInit(void);
//void DtcDetectProcessInit(void);
void TaskPowerManage(uint32_t cycleTime);


void Kl30DtcCheckReset(void);






#endif//_TASK_POWER_MANAGE_H