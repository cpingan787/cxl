#ifndef _REMOTE_CONTROL_H_
#define _REMOTE_CONTROL_H_

#include "stdint.h"
#include "mpuHal.h"

int16_t RemoteControlInit(int16_t mpuHandle,uint16_t cycleTime);

void RemoteControlPorcess(MpuHalDataPack_t *msgData);











#endif
