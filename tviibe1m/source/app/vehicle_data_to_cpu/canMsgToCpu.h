#ifndef _CAN_MSG_TO_CPU_H
#define _CAN_MSG_TO_CPU_H

#include <stdint.h>
#include "canHal.h"

#define RX_CAN_CONFIGURE_BUFFER_SIZE            150
#define RX_CAN_CONFIGURE_CHANNEL_NUMBER         1

typedef struct
{
  uint32_t canId;
  uint8_t msgRepeatNumber;
}CanMsgRxConfigure_t;







int16_t CanMsgTansmitToCpuInitialize(void);
int16_t SaveCanMsgToBuffer(uint8_t canChannel,const CanHalMsg_t *pCanMsg);
int16_t CanMsgTransmitToCpu(uint8_t canChannel,int16_t mpuHandle);

int16_t GetCanMsgConfigureBufferSize(uint8_t canChannel);
int16_t CanMsgConfigureBufferAdd(uint8_t canChannel,CanMsgRxConfigure_t *pEelement);
void SetCanMsgConfigureBufferInvalidData(void);
void SetCanMsgConfigureBufferValidData(void);

uint8_t CanMsgConfigureBufferDataIsValid(void);
//void SetCanNetManageBufferIndexInvalid(void);
//void CheckCanNetManageTimeoutCycleProcess(uint32_t cycleTimeMs);


//void Get425DebugData(uint8_t *pCanData);

#endif    //_CAN_MSG_TO_CPU_H
