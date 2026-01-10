#ifndef _TASK_POWER_MANAGE_H
#define _TASK_POWER_MANAGE_H




void TaskPowerManage(void *pvParameters);
void TaskNetManage(void *pvParameters);

void Kl30DtcCheckReset(void);
void NmMessageSendDisable(void);
void NmMessageSendEnable(void);





#endif//_TASK_POWER_MANAGE_H
