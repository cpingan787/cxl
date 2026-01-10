#include <stdio.h>
#include <stdarg.h>

#include "cy_project.h"
#include "cy_device_headers.h"
#include "sdkdemo.h"
#include "bleHal.h"
#include "securityHal.h"
#include "flashHal.h"
#include "timeSyncSdk.h"

int32_t BleDataSend(uint8_t *pData,uint32_t txLength)
{
  BleHalTransmit(pData,txLength);

  return 0;
}
int32_t BleATRecv(uint8_t *pData,uint32_t *readCount)
{
  return BleHalReadAT(pData,readCount);
}

int32_t BleDataRecv(uint8_t *pData,uint32_t *readCount)
{
  return BleHalRead(pData,readCount);
}

uint32_t MpuDataReceive(unsigned char *data, unsigned int datalen)
{
  return 0;
}
  
uint32_t MpuDataSend(unsigned char *data, unsigned int datalen)
{
  return 0;
}

typedef struct
{
      uint32_t year;
      uint8_t  month;
      uint8_t  day;
      uint8_t  hour;
      uint8_t  minute;
      uint8_t  second;

}TimeSevice_t;

uint32_t GetSystemTime(ST_LOCALTIME *systime)
{
    TimeSevice_t Beijing_Time;
    
    if(TimeSyncSdkGetRealTime(0,&Beijing_Time.year,&Beijing_Time.month,&Beijing_Time.day,&Beijing_Time.hour,&Beijing_Time.minute,&Beijing_Time.second)==0)
    {
      systime->tm_year = (int)Beijing_Time.year;
      systime->tm_mon = (int)Beijing_Time.month;
      systime->tm_mday = (int)Beijing_Time.day;
      systime->tm_hour = (int)Beijing_Time.hour;
      systime->tm_min = (int)Beijing_Time.minute;
      systime->tm_sec = (int)Beijing_Time.second;
      return 0;
    }
  return 1;
}

uint32_t SENVMRead(uint32_t Address, uint8_t* Data, uint32_t DataLen)
{
  FlashHalSmallDataBlockRead(Address,0,Data,DataLen);
  return 0;
}
uint32_t SENVMWrite(uint32_t Address, uint8_t* Data, uint32_t DataLen)
{
/*
    Cy_Flashc_MainWriteEnable();
    Cy_FlashWriteWork(Address,(uint32_t *)Data,CY_FLASH_DRIVER_NON_BLOCKING);
    WorkFlashWaitUntilRdy1(0);
    Cy_Flashc_MainWriteDisable();*/
  
  FlashHalSmallDataBlockWrite(Address,0,Data,DataLen);
  return 0;
}

uint32_t SENVMErase(uint32_t Address)
{
    FlashHalSmallDataBlockErase(Address);

    return 0;
}