#include "taskVehicleDataToMpu.h"

#include "canHal.h"
#include "mpuHal.h"
#include "logHal.h"
// #include "powerManageSdk.h"
#include "canMsgDynamicConfigure.h"
#include "canMsgToMpu.h"
#include "Com.h"



#define VEHICLE_TO_CPU_TASK_CYCLE_TIME       5//ms
#define VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME     100//ms


static uint8_t g_mpuDriverRxBuffer[300];
static int16_t g_mpuHandle = -1;
static VehicleInfor_t g_vehicleInfor;

static void TboxCanRxCycleProcess(void)
{
    Std_ReturnType ret;
    uint8 signalValue = 0;

    CanMsgTransmitToCpu(g_mpuHandle);

    ret = Com_ReceiveSignalGroup(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx);
    if(ret != E_OK)
    {
        g_vehicleInfor.iccLost = 1;
    }
    else
    {
        g_vehicleInfor.iccLost = 0;
    }
    ret = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret == E_OK)
    {
        g_vehicleInfor.userModeValid = signalValue;
    }
    ret = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret == E_OK)
    {
        g_vehicleInfor.userMode = signalValue;
    }
    ret = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret == E_OK)
    {
        g_vehicleInfor.vehicleModeValid = signalValue;
    }
    ret = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret == E_OK)
    {
        g_vehicleInfor.vehicleMode = signalValue;
    }

 /* if(rxCount<(1000/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
  {
    return;
  }
  if(!g_disableUartTxFlag)
  {
    CanMsgTransmitToCpu(g_mpuHandle);
  }*/
}

uint8_t GetVehicleInfor(VehicleInfor_t *vehicleInfor)
{
    vehicleInfor->iccLost = g_vehicleInfor.iccLost;
    vehicleInfor->userModeValid = g_vehicleInfor.userModeValid;
    vehicleInfor->userMode = g_vehicleInfor.userMode;
    vehicleInfor->vehicleModeValid = g_vehicleInfor.vehicleModeValid;
    vehicleInfor->vehicleMode = g_vehicleInfor.vehicleMode;
    return 0;
}

uint8_t CheckVehicleModeIsTransport(void)
{
    if((g_vehicleInfor.vehicleModeValid == 1) && (g_vehicleInfor.vehicleMode == VehMd_3_TRANSPORT))
    {
        return 1;
    }
    return 0;
}

//static void PrintTaskInfo(void);
static uint8_t g_mpuRxDataBuffer[100];

void TaskVehicleDataToCpuInit(void)
{
    int16_t lastSleepState;
    int16_t sleepCommandHandle;
    MpuHalFilter_t mpuFilter;
    MpuHalDataPack_t rxPack;
    //
    // ProjectSecocConfig();
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x02;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x02;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,sizeof(g_mpuDriverRxBuffer));

    CanMsgTansmitToCpuInitialize();
    CanMsgDynamicConfigureInitialize(g_mpuHandle); 
    // sleepCommandHandle = PowerManageSdkOpenHandle("ToMpu");

    lastSleepState = 0x01;
    rxPack.pDataBuffer = g_mpuRxDataBuffer;
    rxPack.dataBufferSize = sizeof(g_mpuRxDataBuffer);
    rxPack.dataLength = 0;

    g_vehicleInfor.userModeValid = 0;
    g_vehicleInfor.userMode = 0;
    g_vehicleInfor.vehicleModeValid = 0;
    g_vehicleInfor.vehicleMode = 0;
}

void TaskVehicleDataToCpu(void)
{
    uint16_t timeCount;
    int16_t sleepFlag;
    int16_t lastSleepState;
    int16_t sleepCommandHandle;
    int16_t ret;

    // MpuHalFilter_t mpuFilter;
    MpuHalDataPack_t rxPack;

    // while(1)
    {     
        //can receive
        TboxCanRxCycleProcess();
#if(0)
        sleepFlag = PowerManageSdkGetSleepState(sleepCommandHandle);
        if(sleepFlag!=0)
        {        
            if(lastSleepState!=sleepFlag)
            {
              
            }     
        }
        else
        {
            if(lastSleepState!=sleepFlag)
            {
                PowerManageSdkSetSleepAck(sleepCommandHandle);
            }
        }
        lastSleepState = sleepFlag;
        //
        timeCount++;
        if(timeCount>=(VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME/VEHICLE_TO_CPU_TASK_CYCLE_TIME))
        {
            if(0 == sleepFlag)
            {
            //vehicle_pack_realdata_to_cpu(UartHandle3);
            //vehicle_pack_gbdata_to_cpu(UartHandle3); 
            }
            timeCount = 0;
        }
#endif
        // NodeMissingCheckTimeOut(VEHICLE_TO_CPU_TASK_CYCLE_TIME);     // TODO guanyuan
        //delay
        if((timeCount&0x01)==0x00)
        {      
        	// SecocSdkSyncMessageCycleProcess(g_tboxCan2Handle,10);
            //CanRxCanMsgCycleCheck(VEHICLE_TO_CPU_TASK_CYCLE_TIME*2);  
            rxPack.dataLength = 0;
            ret = MpuHalReceive(g_mpuHandle,&rxPack,0); 
            if(MPU_HAL_STATUS_OK==ret)
            {
                CanMsgToCpuConfigureSyncCycleProcess(&rxPack,10);
            }
            else
            {
                CanMsgToCpuConfigureSyncCycleProcess(NULL,10);
            }
        }
    }  	
}


//void VehicleToCpuUartTxDisable(void)
//{
//	g_disableUartTxFlag = 0x01;
//}
//
//void VehicleToCpuUartTxEnable(void)
//{
//	g_disableUartTxFlag = 0x00;
//}
