#ifndef _MPU_HAL_IF_H
#define _MPU_HAL_IF_H

#include <stdint.h>

#define MPU_HAL_STATUS_OK       0
#define MPU_HAL_STATUS_ERR       -1

typedef struct
{
  uint8_t aid;
  uint8_t mid;
  uint8_t subcommand;
  uint16_t dataBufferSize;
  uint16_t dataLength;
  uint8_t* pDataBuffer;
}MpuHalDataPack_t;

typedef struct
{
  uint8_t aid;
  uint8_t midMin;
  uint8_t midMax;
}MpuHalFilter_t;








void MpuHalInit(void);
void MpuHalCycleProcess(uint32_t cycleTime);
int16_t MpuHalOpen(void);
int16_t MpuHalSetRxFilter(int16_t handle,const MpuHalFilter_t* pFilter);
int16_t MpuHalSetRxBuffer(int16_t handle,uint8_t* pBuffer,uint32_t bufferSize);
int16_t MpuHalTransmit(int16_t handle,const MpuHalDataPack_t* pTxMsg);
int16_t MpuHalReceive(int16_t handle,MpuHalDataPack_t* pRxMsg,uint32_t waitTime );
void MpuHalStart(void);
int16_t MpuHalStartIsFinished(void);
void MpuHalReset(void);
int16_t MpuHalResetIsFinished(void);
void MpuHalPowerOff(void);
void MpuHalSetMode(uint8_t wakeMode);
int16_t MpuHalGetWakeMode(void);

void MpuHalRequestIrqFun(void);


void MpuHalTxTask(void *pvParameters);

#endif