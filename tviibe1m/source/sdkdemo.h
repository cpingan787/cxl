#ifndef _SDKDEMO_H
#define _SDKDEMO_H

#include "securityHal.h"

typedef struct
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
}ST_LOCALTIME;


uint32_t MpuDataReceive(unsigned char *data, unsigned int datalen);
uint32_t MpuDataSend(unsigned char *data, unsigned int datalen);
uint32_t GetSystemTime(ST_LOCALTIME *systime);
void BoardSleepus(uint32_t delay_us);
void BoardSleepms(uint32_t delay_ms);
uint32_t SENVMRead(uint32_t Address, uint8_t* Data, uint32_t DataLen);
uint32_t SENVMWrite(uint32_t Address, uint8_t* Data, uint32_t DataLen);
uint32_t SENVMErase(uint32_t Address);
void SPIResetl(void);
void SPIReseth(void);
void SPICsen(void);
void SPICsoff(void);
uint8_t HAL_SE_GetIntPinState(void);
uint8_t HAL_SE_SpiSend(unsigned char *data, unsigned short datalen);
uint8_t HAL_SE_SpiReceive(unsigned char *data, unsigned short  datalen);


int32_t BleATRecv(uint8_t *pData,uint32_t *readCount);
int32_t BleDataSend(uint8_t *pData,uint32_t txLength);
int32_t BleDataRecv(uint8_t *pData,uint32_t *readCount);

#endif  //_SDKDEMO_H