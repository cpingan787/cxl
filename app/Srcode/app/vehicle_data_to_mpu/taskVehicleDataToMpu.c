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
static uint8_t g_lastUserMode = 0;  /* 上一次用户模式状态 */
static uint16_t g_vehicleInforPrintCnt = 0;

static void TboxVehicleInforPrintPeriodic(void)
{
    if (++g_vehicleInforPrintCnt < (5000u / VEHICLE_TO_CPU_TASK_CYCLE_TIME))
    {
        return;
    }

    g_vehicleInforPrintCnt = 0;
    TBOX_PRINT(
        "vehicleInfor: iccLost=%u userModeValid=%u userMode=%u vehicleModeValid=%u vehicleMode=%u\r\n",
        g_vehicleInfor.iccLost,
        g_vehicleInfor.userModeValid,
        g_vehicleInfor.userMode,
        g_vehicleInfor.vehicleModeValid,
        g_vehicleInfor.vehicleMode);
}

static void TboxCanRxCycleProcess(void)
{
    uint8 signalValue = 0;
    uint16_t nkiState = 0;

    CanMsgTransmitToCpu(g_mpuHandle);

    // Nm_StateType nmStatePtr = 0;
    // Nm_ModeType nmModePtr = 0;

    // CanNm_GetState(0,&nmStatePtr,&nmModePtr);

    // 待适配can_callout
    /* ICC 离线兜底 */
    // if(Rx_0x1F1_100msTimeoutCnt >= IAM_1F1_LOST_10_FRAME_THRESHOLD)
    // {
    //     // TBOX_PRINT("IIC LOST AAAA \r\n");
    //     g_vehicleInfor.iccLost = 1; 
    //     g_vehicleInfor.userModeValid = 1;
    //     g_vehicleInfor.userMode = UsgMd_1_Standby;
    //     g_vehicleInfor.vehicleModeValid = 1;
    //     g_vehicleInfor.vehicleMode = VehMd_0_NORMAL;
    //     nkiState = 0;
    // }
    // else
    {
        g_vehicleInfor.iccLost = 0;
        Com_ReceiveSignalGroup(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx);

        /* 读取用户模式 */
        if(Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue) == E_OK)
        {
            g_vehicleInfor.userModeValid = signalValue;
        }
        if(Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue) == E_OK)
        {
            g_vehicleInfor.userMode = signalValue;
            if((g_lastUserMode != UsgMd_0_Sleep) && (g_lastUserMode != UsgMd_1_Standby))
            {
                if((signalValue == UsgMd_0_Sleep) || (signalValue == UsgMd_1_Standby))
                {
                    /* 用户模式从!(sleep||standby)到(sleep||standby)后IAM_Power_Timer_1重置 */
                    ResetListenTimer();
                    TBOX_PRINT("usgmd change from %u, to %u, reset listen timer\r\n", g_lastUserMode, signalValue);
                }
            }
            g_lastUserMode = signalValue;
            if((signalValue == UsgMd_2_Comfortable) || (signalValue == UsgMd_3_NormalDriving) || (signalValue == UsgMd_4_AIPraking) || (signalValue == UsgMd_5_AIPilot))
            {
                nkiState = 1;
            }
        }
        
        /* 读取车辆模式 */
        if(Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue) == E_OK)
        {
            g_vehicleInfor.vehicleModeValid = signalValue;
        }
        if(Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue) == E_OK)
        {
            g_vehicleInfor.vehicleMode = signalValue;
        }

        /* 读取系统电源模式 */
        if(Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysPwrMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &signalValue) == E_OK)
        {
            if((signalValue == 2) || (signalValue == 3))
            {
                nkiState = 1;
            }
        }
    }

    /* 发送NKI状态 */
    Com_SendSignal(IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &nkiState);
    /* 打印车辆信息 */
    TboxVehicleInforPrintPeriodic();

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
    g_vehicleInforPrintCnt = 0;
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


