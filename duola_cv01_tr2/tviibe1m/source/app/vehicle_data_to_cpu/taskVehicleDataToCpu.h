#ifndef _TASK_APPVEHICLE_DATA_TO_CPU_H
#define _TASK_APPVEHICLE_DATA_TO_CPU_H

#include <stdint.h>

int16_t TaskAppVehicleDataToCpuInit(void);
void DataUploadProcessSleep(void);
void DataUploadProcessAwake(void);

void VehicleToCpuUartTxDisable(void);
void VehicleToCpuUartTxEnable(void);
void VehicleUdsHeartTxDisable(void);
void VehicleUdsHeartTxEnable(void);

uint8_t GetBcmRemoteState();
void CleanBcmRemoteState();

void DtcSdkMesageCanSend(uint8_t* pu8Data,uint8_t DtcNum);

void TaskVehicleDataToCpu( void *pvParameters );

#endif    //_TASK_APPVEHICLE_DATA_TO_CPU_H
