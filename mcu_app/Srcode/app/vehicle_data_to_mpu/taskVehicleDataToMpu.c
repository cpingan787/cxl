#include "taskVehicleDataToMpu.h"

#include "canHal.h"
#include "mpuHal.h"
#include "logHal.h"
#include "powerManageSdk.h"
#include "canMsgDynamicConfigure.h"
#include "canMsgToMpu.h"
#include "Com.h"
#include "Com_Callout.h"
#include "CanNm.h"



#define VEHICLE_TO_CPU_TASK_CYCLE_TIME       5//ms
#define VEHICLE_TO_CPU_UPLOAD_CYCLE_TIME     100//ms
#define IAM_1F1_LOST_10_FRAME_THRESHOLD      2U


static uint8_t g_mpuDriverRxBuffer[300];
static int16_t g_mpuHandle = -1;
static MpuHalDataPack_t g_dataPack;
static uint8_t g_mpuRxDataBuffer[100];
static VehicleInfor_t g_vehicleInfor;
static uint8_t g_lastUserMode = 0;  /* 用于跟踪用户模式变化 */

static void TboxCanRxCycleProcess(void)
{
    Std_ReturnType ret;
    uint8 signalValue = 0;
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;
    uint16_t nkiState = 0;

    CanMsgTransmitToCpu(g_mpuHandle);
    // (void)CanNm_GetState(0, &nmStatePtr, &nmModePtr);
    // if((nmStatePtr != NM_STATE_BUS_SLEEP) && (Rx_0x1F1_100msTimeoutCnt >= IAM_1F1_LOST_10_FRAME_THRESHOLD))
    if(Rx_0x1F1_100msTimeoutCnt >= IAM_1F1_LOST_10_FRAME_THRESHOLD)
    {
        g_vehicleInfor.iccLost = 1;
        g_vehicleInfor.userModeValid = 1;
        g_vehicleInfor.userMode = UsgMd_1_Standby;
        g_vehicleInfor.vehicleModeValid = 1;
        g_vehicleInfor.vehicleMode = VehMd_0_NORMAL;
        nkiState = 0;
        Com_SendSignal(IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &nkiState);
        return;
    }

    g_vehicleInfor.iccLost = 0;
    (void)Com_ReceiveSignalGroup(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx);
    ret = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret == E_OK)
    {
        g_vehicleInfor.userModeValid = signalValue;
    }
    ret = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret == E_OK)
    {
        g_vehicleInfor.userMode = signalValue;
        /* 检测用户模式从非sleep/standby变为sleep/standby */
        if((g_lastUserMode != UsgMd_0_Sleep) && (g_lastUserMode != UsgMd_1_Standby))
        {
            if((signalValue == UsgMd_0_Sleep) || (signalValue == UsgMd_1_Standby))
            {
                /* 用户模式从非sleep/standby变为sleep/standby，清零listen唤醒计时器 */
                ResetListenTimer();
            }
        }
        g_lastUserMode = signalValue;
        if((signalValue == UsgMd_2_Comfortable) || (signalValue == UsgMd_3_NormalDriving) || (signalValue == UsgMd_4_AIPraking) || (signalValue == UsgMd_5_AIPilot))
        {
            nkiState = 1;
        }
    }
    // /* 用户模式无效时才使用standby mode（从flash读取的模式已经处理了无效情况） */
    // if(g_vehicleInfor.userModeValid == 0)
    // {
    //     g_vehicleInfor.userMode = UsgMd_1_Standby;
    // }
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
    // /* 车辆模式默认为normal mode */
    // if(g_vehicleInfor.vehicleModeValid == 0)
    // {
    //     g_vehicleInfor.vehicleMode = VehMd_0_NORMAL;
    // }

    ret = Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysPwrMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue);
    if(ret == E_OK)
    {
        if((signalValue == 2) || (signalValue == 3))
        {
            nkiState = 1;
        }
    }
    Com_SendSignal(IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &nkiState);
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

void TaskVehicleDataToCpuInit(void)
{
    int16_t sleepCommandHandle;
    MpuHalFilter_t mpuFilter;
    
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x02;
    mpuFilter.midMin = 0x01;
    mpuFilter.midMax = 0x02;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,sizeof(g_mpuDriverRxBuffer));

    CanMsgTansmitToCpuInitialize();
    CanMsgDynamicConfigureInitialize(g_mpuHandle); 
    // sleepCommandHandle = PowerManageSdkOpenHandle("ToMpu");

    g_dataPack.pDataBuffer = g_mpuRxDataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_mpuRxDataBuffer);
    g_dataPack.dataLength = 0;

    g_vehicleInfor.userModeValid = 0;
    g_vehicleInfor.userMode = 0;
    g_vehicleInfor.vehicleModeValid = 0;
    g_vehicleInfor.vehicleMode = 0;
    g_vehicleInfor.iccLost = 1;
}

void TaskVehicleDataToCpu(void)
{
    uint16_t timeCount;
    int16_t sleepFlag;
    int16_t lastSleepState;
    int16_t sleepCommandHandle;
    int16_t ret;

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
            ret = MpuHalReceive(g_mpuHandle, &g_dataPack, 0);
            if (MPU_HAL_STATUS_OK == ret)
            {
                CanMsgToCpuConfigureSyncCycleProcess(&g_dataPack, 10);
            }
            else
            {
                CanMsgToCpuConfigureSyncCycleProcess(NULL, 10);
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
