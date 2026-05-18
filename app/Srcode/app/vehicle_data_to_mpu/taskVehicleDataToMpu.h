#ifndef _TASK_APPVEHICLE_DATA_TO_CPU_H
#define _TASK_APPVEHICLE_DATA_TO_CPU_H

#include <stdint.h>

typedef enum
{
    UsgMd_0_Sleep,
    UsgMd_1_Standby,
    UsgMd_2_Comfortable,
    UsgMd_3_NormalDriving,
    UsgMd_4_AIPraking,
    UsgMd_5_AIPilot,
    UsgMd_6_XOTA,
}UserMode_e;


typedef enum
{
    VehMd_0_NORMAL,
    VehMd_1_CRASH,
    VehMd_2_FACTORY,
    VehMd_3_TRANSPORT,
    VehMd_4_DYNO,
    VehMd_5_EXHIBITION,
    VehMd_6_Reserved,
    VehMd_7_Reserved,
    VehMd_8_Engineering,
    VehMd_9_Service,
}VehicleMode_e;

typedef struct 
{
    uint8_t iccLost;
    uint8_t userMode;
    uint8_t userModeValid;
    uint8_t vehicleMode;
    uint8_t vehicleModeValid;
}VehicleInfor_t;

//int16_t TaskAppVehicleDataToCpuInit(void);
//void DataUploadProcessSleep(void);
//void DataUploadProcessAwake(void);


//void VehicleToCpuGetRxCanCnt(uint16_t *pCanRxCnt);
//void VehicleToCpuUartTxDisable(void);
//void VehicleToCpuUartTxEnable(void);
uint8_t GetVehicleInfor(VehicleInfor_t *vehicleInfor);

void TaskVehicleDataToCpuInit(void);
void TaskVehicleDataToCpu(void);

#endif    //_TASK_APPVEHICLE_DATA_TO_CPU_H
