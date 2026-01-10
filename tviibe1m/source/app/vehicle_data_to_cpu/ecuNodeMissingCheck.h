#ifndef _ECU_NODE_MISSING_CHECK_H
#define _ECU_NODE_MISSING_CHECK_H

#include <stdint.h>


void NodeMissingCheckInit(void);

void EcuNodeMissingCheckCanId(uint8_t canChannel,uint32_t canId);
uint8_t Can_E2E_DTC_Check(uint32_t canId,uint8_t *pData,uint8_t canChannel);

void NodeMissingCheckTimeOut(uint32_t cycleTime);

void ClearNodeMissingCheckConfig(void);
void NodeMissingCheckReset(void);
void DisableNodeMissingCheckByChannel(uint8_t channel);
uint8_t GetCcuLostStatus(void);

#endif    //_ECU_NODE_MISSING_CHECK_H
