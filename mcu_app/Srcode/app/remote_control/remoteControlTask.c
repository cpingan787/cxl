#include "stdio.h"
#include "remoteControlTask.h"
#include "taskVehicleDataToCpu.h"
#include "mpuHal.h"
// #include "logHal.h"
#include "peripheralHal.h"

#include "Com.h"
#include "NVM.h"
#include "NvM_Inter.h"

#define NOT_JUDGE_PRECONDITION              0x01    // 0x01 - 不判断前置条件,test only
#define MCU_SIMULATE_REMOTE_CMD             0x01    // 0x01 - MCU 模拟远控指令,test only

#define REMOTE_CONTROL_AID                  0x31
#define REMOTE_CONTROL_MID                  0x01
#define REMOTE_CONTROL_SUBCOMMAND_ACK       0x6E
#define REMOTE_CONTROL_SUBCOMMAND_RESULT    0x6F
#define REMOTE_CONTROL_SUBCOMMAND_CMD       0x01

#define REMOTE_CONTROL_DELAY_PRECONDITION_TIME_OUT     1500    // 延迟1.5S再判断前置条件
#define REMOTE_CONTROL_DEFAULT_GET_RESULT_TIME_OUT     10000   // 默认超时时间

static int16_t g_mpuHandle = -1;                      //MPU通信句柄
static uint8_t g_remoteControlRecvDataBuffer[200] = {0};

static uint16_t g_cycleTime = 5; //单位ms

static uint8_t g_sendDataBuffer[100] = {0};
static MpuHalDataPack_t g_dataPack;

static RemoteControlState_t g_remoteControlState = {0};

static int16_t RemoteControlGenealPrecondition(uint8_t *cmdData)
{
#if(NOT_JUDGE_PRECONDITION == 1)
    return 0;
#endif
    uint8 appEnableConfig[8] = {0};
    NvM_RequestResultType nvmStatus = NVM_REQ_PENDING;
    uint32 nvmReadTime = 0;
    uint32_t voltage = 0;
    VehicleInfor_t *vehicleInfor = NULL;
    
    NvM_ReadBlock(NvMBlock_DIDC30C, appEnableConfig);   // NvMBlockRamBuffer41
    do
    {
        nvmReadTime++;
        // Fee_MainFunction();
        // Fls_MainFunction();
        // NvM_MainFunction();
        NvM_GetErrorStatus(NvMBlock_DIDC30C, &nvmStatus);
        if (nvmReadTime == 5000)
            break;
    }while(nvmStatus != NVM_REQ_OK);
    if(nvmStatus != NVM_REQ_OK)
    {
        // NVM读取失败，默认远控功能使能
        appEnableConfig[1] |= 0x04;
    }
    if((appEnableConfig[1] & 0x04) == 0)
    {
        return E_REMOTE_CTRL_RESULT_ERR_FUNC_NOT_ENABLE;
    }

    PeripheralHalAdGet(AD0_CHANNEL_KL30, &voltage);
    if((voltage < 8500) && (voltage > 16500))
    {
        return E_REMOTE_CTRL_RESULT_ERR_VOLTAGE_ABNORMAL;
    }

    GetVehicleInfor(&vehicleInfor);
    // return E_REMOTE_CTRL_RESULT_ERR_ICC_NODE_LOST   // TODO guanyuan
    switch(vehicleInfor->userMode)
    {
        case UsgMd_0_Sleep:
        case UsgMd_1_Standby:
            break;
        case UsgMd_2_Comfortable:
            if((cmdData[0] == E_REMOTE_CONTROL_CMD_FIND_VEHICLE) || (cmdData[0] == E_REMOTE_CONTROL_CMD_BATTERY_HEATING) || (cmdData[0] == E_REMOTE_CONTROL_CMD_AIR_CONDITIONER) || (cmdData[0] == E_REMOTE_CONTROL_CMD_REAR_WINDOW_DEFROST))
            {
                return E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID;
            }
            break;
        case UsgMd_3_NormalDriving:
        case UsgMd_4_AIPraking:
        case UsgMd_5_AIPilot:
        case UsgMd_6_XOTA:
            return E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID;
            break;
        default:
            return E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID;
            break;
    }
    if(vehicleInfor->vehicleMode == VehMd_8_Engineering)
    {
        return E_REMOTE_CTRL_RESULT_ERR_VEHICLE_MODE_INVALID;
    }

    return 0;
}

/*************************************************
Function: RemoteControlLockUnlockPrecondition
Description: 解锁/闭锁前置条件判断
Input: 无
Output: 无
Return: 0：成功  其他  ：失败
Others: 其它说明
*************************************************/
static int16_t RemoteControlLockUnlockPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x02)
    {
        return -1;
    }
    
    return 0;   
}

/*************************************************
Function: RemoteControlLockUnlockExecute
Description: 执行解锁
Input:  无
Output: 无
Return:  0
Others: 其它说明
*************************************************/
static int16_t RemoteControlLockUnlockExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);

    return 0;
}

/*************************************************
Function: RemoteControlLockUnlockGetResult
Description: 获取解锁执行结果
Input:  无
Output: 无
Return:  0：执行成功  -1：执行失败   -2：未返回执行结果
Others: 其它说明
*************************************************/
static int16_t RemoteControlLockUnlockGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;
    if(signalData == 0xF)
    {
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    }
    else if(signalData != 0x0)
    {
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    }
    else
    {
        return E_REMOTE_CONTROL_RESULT_PENDING;
    }
}

/*************************************************
Function: RemoteControlFindVehiclePrecondition
Description: 寻车前置条件判断
Input: 无
Output: 无
Return: 0：成功  其他  ：失败
Others: 其它说明
*************************************************/
static int16_t RemoteControlFindVehiclePrecondition(uint8_t *cmdData)
{
    

    return 0;   
}

/*************************************************
Function: RemoteControlFindVehicleExecute
Description: 执行寻车
Input:  无
Output: 无
Return:  0
Others: 其它说明
*************************************************/
static int16_t RemoteControlFindVehicleExecute(uint8_t *cmdData)
{
    uint8_t signalData = 0;

    switch (cmdData[0])
    {
        case 0x01:  // 闪灯
            signalData = 3;
            Com_SendSignal(IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &signalData);
            Com_SendSignal(IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx, &cmdData[1]);
            break;
        case 0x02:  // 鸣笛
            signalData = 4;
            Com_SendSignal(IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &signalData);
            Com_SendSignal(IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx, &cmdData[1]);
            break;
        case 0x03:  // 闪灯+鸣笛
            signalData = 1;
            Com_SendSignal(IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &signalData);
            Com_SendSignal(IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx, &cmdData[1]);
            break;
        case 0x11:
        case 0x12:
        case 0x13:
            signalData = 2;
            Com_SendSignal(IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &signalData);
            break;
        default:
            return -1;
            break;
    }
    
    return 0;
}

/*************************************************
Function: RemoteControlFindVehicleGetResult
Description: 获取寻车执行结果
Input:  无
Output: 无
Return:  0：成功  其他  ：失败
Others: 其它说明
*************************************************/
static int16_t RemoteControlFindVehicleGetResult(uint8_t *cmdData, uint8_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx, &signalData);
    if(signalData == 0x01)
    {
        Com_ReceiveSignal(IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx, &signalData);
        *result = signalData;
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    }
    else if(signalData == 0x02)
    {
        Com_ReceiveSignal(IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx, &signalData);
        *result = signalData;
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    }
    else
    {
        return E_REMOTE_CONTROL_RESULT_PENDING;
    }
}

static int16_t RemoteControlWindowPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x04)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlWindowExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    if(cmdData[0] == 0x04)
    {
        Com_SendSignal(IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[1]);
    }
    return 0;
}

static int16_t RemoteControlWindowGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlTailgatePrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x03)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlTailgateExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    if(cmdData[0] == 0x03)
    {
        Com_SendSignal(IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[1]);
    }
    return 0;
}

static int16_t RemoteControlTailgateGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlRemoteStartPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 1)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteStartExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    Com_SendSignal(IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[1]);
    return 0;
}

static int16_t RemoteControlRemoteStartGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x0D)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlRemoteStartStopPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 1)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteStartStopExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRemoteStartStopGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlSeatHeatPrecondition(uint8_t *cmdData)
{
    if((cmdData[0] > 4) || (cmdData[0] > 9))
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlSeatHeatExecute(uint8_t *cmdData)
{
    switch (cmdData[1])
    {
    case 0x1:
        Com_SendSignal(IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x2:
        Com_SendSignal(IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x3:
        Com_SendSignal(IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_SendSignal(IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x6:
        Com_SendSignal(IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_SendSignal(IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x9:
        Com_SendSignal(IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    default:
        break;
    }
    
    return 0;
}

static int16_t RemoteControlSeatHeatGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    switch (cmdData[1])
    {
    case 0x1:
        Com_ReceiveSignal(IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x2:
        Com_ReceiveSignal(IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x3:
        Com_ReceiveSignal(IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_ReceiveSignal(IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x6:
        Com_ReceiveSignal(IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_ReceiveSignal(IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x9:
        Com_ReceiveSignal(IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    default:
        break;
    }

    *result = signalData;
    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlSeatVentPrecondition(uint8_t *cmdData)
{
    if((cmdData[0] > 4) || (cmdData[0] > 9))
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlSeatVentExecute(uint8_t *cmdData)
{
    switch (cmdData[1])
    {
    case 0x1:
        Com_SendSignal(IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x2:
        Com_SendSignal(IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x3:
        Com_SendSignal(IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_SendSignal(IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x6:
        Com_SendSignal(IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_SendSignal(IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
        break;
    case 0x9:
        break;
    default:
        break;
    }
    
    return 0;
}

static int16_t RemoteControlSeatVentGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    switch (cmdData[1])
    {
    case 0x1:
        Com_ReceiveSignal(IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x2:
        Com_ReceiveSignal(IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x3:
        Com_ReceiveSignal(IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x4:
        break;
    case 0x5:
        Com_ReceiveSignal(IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x6:
        Com_ReceiveSignal(IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x7:
        break;
    case 0x8:
        Com_ReceiveSignal(IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
        break;
    case 0x9:
        break;
    default:
        break;
    }

    *result = signalData;
    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlAirConditionerPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 7)
    {
        return -1;
    }
    return 0;
}

static int16_t RemoteControlAirConditionerExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    Com_SendSignal(IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[1]);
    Com_SendSignal(IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[2]);
    Com_SendSignal(IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[3]);
    Com_SendSignal(IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[4]);
    Com_SendSignal(IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[5]);

    return 0;
}

static int16_t RemoteControlAirConditionerGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static int16_t RemoteControlBatteryHeatingPrecondition(uint8_t *cmdData)
{
    return 0;
}

static int16_t RemoteControlBatteryHeatingExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlBatteryHeatingGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程电池控制-远程充电：
static int16_t RemoteControlRemoteChargePrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x03)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteChargeExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRemoteChargeGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程电池控制-远程充电电流设置：
static int16_t RemoteControlChargeCurrentSetPrecondition(uint8_t *cmdData)
{

    return 0;
}

static int16_t RemoteControlChargeCurrentSetExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlChargeCurrentSetGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程电池控制-远程充电截止电量：
static int16_t RemoteControlChargeSocLimitPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 100)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlChargeSocLimitExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlChargeSocLimitGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程电池控制-远程预约充电：
static int16_t RemoteControlScheduleChargePrecondition(uint8_t *cmdData)
{
    if((cmdData[0] > 0x03) || (cmdData[1] > 23) || (cmdData[2] > 59) || (cmdData[3] > 23) || (cmdData[4] > 59))
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlScheduleChargeExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);

    Com_SendSignal(IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[1]);
    Com_SendSignal(IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[2]);

    Com_SendSignal(IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[3]);
    Com_SendSignal(IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[4]);

    return 0;
}

static int16_t RemoteControlScheduleChargeGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程电池控制-远程放电：
static int16_t RemoteControlRemoteDischargePrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 0x03)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlRemoteDischargeExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRemoteDischargeGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx, &signalData);

    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x00)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程冰箱-冰箱开关
static int16_t RemoteControlFridgeSwitchPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 4)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlFridgeSwitchExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    Com_SendSignal(IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[1]);
    Com_SendSignal(IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[2]);
    return 0;
}

static int16_t RemoteControlFridgeSwitchGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程冰箱-冰箱离车恒温功能：
static int16_t RemoteControlFridgeKeepTempPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 2)
    {
        return -1;
    }

    return 0;
}

static int16_t RemoteControlFridgeKeepTempExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    Com_SendSignal(IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[1]);
    Com_SendSignal(IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[2]);
    return 0;
}

static int16_t RemoteControlFridgeKeepTempGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

// 远程后风窗加热：
static int16_t RemoteControlRearDefrostPrecondition(uint8_t *cmdData)
{
    if(cmdData[0] > 2)
    {
        return -1;
    }
    return 0;
}

static int16_t RemoteControlRearDefrostExecute(uint8_t *cmdData)
{
    Com_SendSignal(IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, &cmdData[0]);
    return 0;
}

static int16_t RemoteControlRearDefrostGetResult(uint8_t *cmdData, uint16_t *result)
{
    uint8_t signalData = 0;

    Com_ReceiveSignal(IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx, &signalData);
    *result = signalData;

    if(signalData == 0x01)
        return E_REMOTE_CONTROL_RESULT_SUCCESS;
    else if(signalData != 0x0)
        return E_REMOTE_CONTROL_RESULT_FAILURE;
    else
        return E_REMOTE_CONTROL_RESULT_PENDING;
}

static const RemoteControlFunction_t g_remoteControlTable[E_REMOTE_CONTROL_CMD_MAX] =
{
    [E_REMOTE_CONTROL_CMD_LOCK_UNLOCK] =
    {
        RemoteControlLockUnlockPrecondition,
        RemoteControlLockUnlockExecute,
        RemoteControlLockUnlockGetResult
    },

    [E_REMOTE_CONTROL_CMD_FIND_VEHICLE] =
    {
        RemoteControlFindVehiclePrecondition,
        RemoteControlFindVehicleExecute,
        RemoteControlFindVehicleGetResult
    },

    [E_REMOTE_CONTROL_CMD_WINDOW] =
    {
        RemoteControlWindowPrecondition,
        RemoteControlWindowExecute,
        RemoteControlWindowGetResult
    },

    [E_REMOTE_CONTROL_CMD_POWER_TAILGATE] =
    {
        RemoteControlTailgatePrecondition,
        RemoteControlTailgateExecute,
        RemoteControlTailgateGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_START] =
    {
        RemoteControlRemoteStartPrecondition,
        RemoteControlRemoteStartExecute,
        RemoteControlRemoteStartGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_START_STOP] =
    {
        RemoteControlRemoteStartStopPrecondition,
        RemoteControlRemoteStartStopExecute,
        RemoteControlRemoteStartStopGetResult
    },

    [E_REMOTE_CONTROL_CMD_SEAT_HEAT] =
    {
        RemoteControlSeatHeatPrecondition,
        RemoteControlSeatHeatExecute,
        RemoteControlSeatHeatGetResult
    },

    [E_REMOTE_CONTROL_CMD_SEAT_VENT] =
    {
        RemoteControlSeatVentPrecondition,
        RemoteControlSeatVentExecute,
        RemoteControlSeatVentGetResult
    },

    [E_REMOTE_CONTROL_CMD_AIR_CONDITIONER] =
    {
        RemoteControlAirConditionerPrecondition,
        RemoteControlAirConditionerExecute,
        RemoteControlAirConditionerGetResult
    },

    [E_REMOTE_CONTROL_CMD_BATTERY_HEATING] =
    {
        RemoteControlBatteryHeatingPrecondition,
        RemoteControlBatteryHeatingExecute,
        RemoteControlBatteryHeatingGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_CHARGE] =
    {
        RemoteControlRemoteChargePrecondition,
        RemoteControlRemoteChargeExecute,
        RemoteControlRemoteChargeGetResult
    },

    [E_REMOTE_CONTROL_CMD_CHARGE_CURRENT_SET] =
    {
        RemoteControlChargeCurrentSetPrecondition,
        RemoteControlChargeCurrentSetExecute,
        RemoteControlChargeCurrentSetGetResult
    },

    [E_REMOTE_CONTROL_CMD_CHARGE_SOC_LIMIT] =
    {
        RemoteControlChargeSocLimitPrecondition,
        RemoteControlChargeSocLimitExecute,
        RemoteControlChargeSocLimitGetResult
    },

    [E_REMOTE_CONTROL_CMD_SCHEDULE_CHARGE] =
    {
        RemoteControlScheduleChargePrecondition,
        RemoteControlScheduleChargeExecute,
        RemoteControlScheduleChargeGetResult
    },

    [E_REMOTE_CONTROL_CMD_REMOTE_DISCHARGE] =
    {
        RemoteControlRemoteDischargePrecondition,
        RemoteControlRemoteDischargeExecute,
        RemoteControlRemoteDischargeGetResult
    },

    [E_REMOTE_CONTROL_CMD_FRIDGE_SWITCH] =
    {
        RemoteControlFridgeSwitchPrecondition,
        RemoteControlFridgeSwitchExecute,
        RemoteControlFridgeSwitchGetResult
    },

    [E_REMOTE_CONTROL_CMD_FRIDGE_KEEP_TEMP] =
    {
        RemoteControlFridgeKeepTempPrecondition,
        RemoteControlFridgeKeepTempExecute,
        RemoteControlFridgeKeepTempGetResult
    },

    [E_REMOTE_CONTROL_CMD_REAR_WINDOW_DEFROST] =
    {
        RemoteControlRearDefrostPrecondition,
        RemoteControlRearDefrostExecute,
        RemoteControlRearDefrostGetResult
    }
};

/***********************************************************************************************
*函数名 RemoteControlSetCmdParam
*函数功能描述 ：设置远控命令
*函数参数 ：receiveData  收到的远控数据
            type ： 0：普通远控   1：蓝牙远控
*函数返回值 ：无
*修改原因 ：暂无
***********************************************************************************************/
int16_t RemoteControlSetCmdParam(uint8_t* receiveData, uint8_t type)
{
    int8_t ret = 0;
    RemoteControlReceiveCmd_t *pReceiveCmd = NULL;

    if (g_remoteControlState.receiveCmdNumber >= REMOTE_CONTROL_MAX_CMD_NUMBER) // 缓存指令超过最大数量
    {
        RemoteControlSendResult(receiveData[0], &receiveData[1], E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL, 0, 0);
        return -1;
    }
    else if(g_remoteControlState.state != E_REMOTE_CONTROL_STATE_IDLE)
    {
        pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
        if(receiveData[0] == pReceiveCmd->uartRecvCmd)
        {
            RemoteControlSendResult(receiveData[0], &receiveData[1], E_REMOTE_CTRL_RESULT_ERR_EXECUTING, 0, 0);
            return -1;
        }
    }

    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.saveCmdIndex];
    pReceiveCmd->validFlag = 1;
    pReceiveCmd->controlType = type;

    pReceiveCmd->uartRecvCmd = (RemoteControlCmd_e)receiveData[0];
    pReceiveCmd->timeout = (receiveData[1] << 8) | receiveData[2];
    pReceiveCmd->cmdData[0] = receiveData[3];   
    pReceiveCmd->cmdData[1] = receiveData[4];
    pReceiveCmd->cmdData[2] = receiveData[5];
    pReceiveCmd->cmdData[3] = receiveData[6];
    pReceiveCmd->cmdData[4] = receiveData[7];
    pReceiveCmd->cmdData[5] = receiveData[8];
    g_remoteControlState.saveCmdIndex++;
    if(g_remoteControlState.saveCmdIndex >= REMOTE_CONTROL_MAX_CMD_NUMBER)
    {
        g_remoteControlState.saveCmdIndex = 0;
    }
    g_remoteControlState.receiveCmdNumber++;

    return 0;
}

void RemoteControlUartCommandProcess(void)
{
    int16_t ret = -1;

    ret = MpuHalReceive(g_mpuHandle, &g_dataPack, 0);
#if(MCU_SIMULATE_REMOTE_CMD == 1)
    static uint8_t lastSignalValue = 0;
    uint8_t signalValue = 0;
    uint8_t index = 0;
    
    Com_ReceiveSignal(IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, &signalValue);
    if(signalValue != lastSignalValue)
    {
        lastSignalValue = signalValue;
        RM_DEBUG_PRINT("remote simulate cmd: %d\r\n", signalValue);
        g_dataPack.aid = REMOTE_CONTROL_AID;
        g_dataPack.mid = REMOTE_CONTROL_MID;
        g_dataPack.subcommand = 0x81;
        switch (signalValue)
        {
        case 0x01:
            g_dataPack.pDataBuffer[index++] = 0x01;         // 0x1: 解闭锁
            g_dataPack.pDataBuffer[index++] = 5000 >> 8;    // 超时时间
            g_dataPack.pDataBuffer[index++] = 5000 & 0x00FF;
            g_dataPack.pDataBuffer[index++] = 0x01;         // 0x1: 闭锁  0x2: 解锁
            g_dataPack.dataLength = index;
            ret = MPU_HAL_STATUS_OK;
            break;
        default:
            break;
        }
    }
#endif
    if(ret == MPU_HAL_STATUS_OK)    //接收到数据
    {
        RM_DEBUG_PRINT("remote: recv cpu data\r\n");
        if(g_dataPack.aid == REMOTE_CONTROL_AID && g_dataPack.mid == REMOTE_CONTROL_MID) //远控命令
        {
            if ((g_dataPack.subcommand & 0x7F) == 0x01)
            {
                RM_DEBUG_PRINT("remote: parse cmd - ");
                for(uint8_t i = 0; i < g_dataPack.dataLength; i++)
                {
                    RM_DEBUG_PRINT(" %02X", g_dataPack.pDataBuffer[i]);
                }
                RM_DEBUG_PRINT("\r\n");
                RemoteControlSendAck(g_dataPack.pDataBuffer[0]);
                RemoteControlSetCmdParam(g_dataPack.pDataBuffer, 0);
            }
            else
            {
                // do nothing
            }
        }
    }
}

/*************************************************
Function: RemoteControlCmdExecuteOver
Description: 
Input:  无
Output: 无
Return: 无
Others: 
*************************************************/
static void RemoteControlCmdExecuteOver(void)
{
    memset(&g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex], 0, sizeof(g_remoteControlState.receiveCmd[0]));
    if(g_remoteControlState.receiveCmdNumber > 0)
    {
        g_remoteControlState.receiveCmdNumber--;
    }
    g_remoteControlState.exeCmdIndex++;
    if(g_remoteControlState.exeCmdIndex >= REMOTE_CONTROL_MAX_CMD_NUMBER)
    {
        g_remoteControlState.exeCmdIndex = 0;
    }
    g_remoteControlState.state = E_REMOTE_CONTROL_STATE_IDLE;
    // g_remoteControlState.tick = 0;
    // g_remoteControlState.Timeout = 0;
}

/*************************************************
Function: vehicleRemoteControlStateIdle
Description: 远控空闲状态处理
Input:  无
Output: 无
Return: 无
Others: 
*************************************************/
static void vehicleRemoteControlStateIdle(void)
{
    uint8_t i;

    if(g_remoteControlState.receiveCmdNumber > 0)
    {
        if(g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex].validFlag != 0)
        {
            // PowerMangeDriverHalTrigerWakeUpState();  // TODO guanyuan
            // PowerManageSetDelayTime(60 * 1000);
            g_remoteControlState.state = E_REMOTE_CONTROL_STATE_PRECONDITION;
            // g_remoteControlState.tick = 0;
            // g_remoteControlState.Timeout = REMOTE_CONTROL_DELAY_PRECONDITION_TIME_OUT;
        }
        else
        {
            RemoteControlCmdExecuteOver();
        }
    }
}

/*************************************************
Function: vehicleRemoteControlStatePrecondition
Description: 远控开始执行状态处理
Input:  
Output: 无
Return: 无
Others: 需要判断远控命令是否冲突，远控前置条件是否满足
*************************************************/
static void vehicleRemoteControlStatePrecondition(void)
{
    int16_t ret = -1;
    RemoteControlReceiveCmd_t *pReceiveCmd = NULL;
    
    // g_remoteControlState.tick++;
    // if (g_remoteControlState.tick <= (g_remoteControlState.Timeout / g_cycleTime))//前置条件判断时间为1.5S
    // {
    //     return;
    // }
    RM_DEBUG_PRINT("remote: vehicleRemoteControlStatePrecondition\r\n");

    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
#if(0)
    if (g_remoteControlTable[pReceiveCmd->uartRecvCmd].pPreconditionFunction != NULL)
    {
        ret = g_remoteControlTable[pReceiveCmd->uartRecvCmd].pPreconditionFunction(pReceiveCmd->cmdData);
    }
    else    //没有前置条件函数，默认前置条件满足
    {
        ret = 0;
    }
#else
    ret = RemoteControlGenealPrecondition(pReceiveCmd->cmdData);
#endif

    if (ret == 0)
    {
        g_remoteControlState.state = E_REMOTE_CONTROL_STATE_EXECTUE_CMD;
    }
    else
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, ret, 0, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
    }
}

static void vehicleRemoteControlStateExectueCmd(void)
{
    int16_t ret = -1;
    RemoteControlReceiveCmd_t *pReceiveCmd = NULL;

    RM_DEBUG_PRINT("remote: vehicleRemoteControlStateExectueCmd\r\n");

    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
    if (g_remoteControlTable[pReceiveCmd->uartRecvCmd].pExectueFunction != NULL)
    {
        ret = g_remoteControlTable[pReceiveCmd->uartRecvCmd].pExectueFunction(pReceiveCmd->cmdData);
    }
    else
    {
        ret = 0;
    }

    if (ret == 0)
    {
        g_remoteControlState.state = E_REMOTE_CONTROL_STATE_WAIT_RESULT;
        g_remoteControlState.tick = 0;
        g_remoteControlState.Timeout = pReceiveCmd->timeout;
    }
    else
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL, 0, 0);
        RemoteControlCmdExecuteOver();
    }
}

/*************************************************
Function: vehicleRemoteControlStateWaitResult
Description: 远控等待执行结果状态切换处理
Input: 
Output: 无
Return: 无
Others: 需要等待执行的结果，远控超时判断
*************************************************/
static void vehicleRemoteControlStateWaitResult(void)
{
    int16_t ret = -1;
    RemoteControlReceiveCmd_t *pReceiveCmd = NULL;

    g_remoteControlState.tick++;
    pReceiveCmd = &g_remoteControlState.receiveCmd[g_remoteControlState.exeCmdIndex];
    if(g_remoteControlTable[pReceiveCmd->uartRecvCmd].pGetResultFunction != NULL)
    {
        ret = g_remoteControlTable[pReceiveCmd->uartRecvCmd].pGetResultFunction(pReceiveCmd->cmdData, &pReceiveCmd->failReason);
    }
    else
    {
        ret = E_REMOTE_CONTROL_RESULT_SUCCESS;
    }

    if(ret == E_REMOTE_CONTROL_RESULT_SUCCESS)
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_SUCCESS, 0, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
        return;
    }
    else if(ret == E_REMOTE_CONTROL_RESULT_FAILURE)
    {
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL, pReceiveCmd->failReason, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
        return;
    }

    if (g_remoteControlState.tick >= (g_remoteControlState.Timeout / g_cycleTime))
    {
        RM_DEBUG_PRINT("remote: vehicleRemoteControlStateWaitResult timeout\r\n");
        RemoteControlSendResult(pReceiveCmd->uartRecvCmd, pReceiveCmd->cmdData, E_REMOTE_CTRL_RESULT_ERR_RESP_TIMEOUT, 0, pReceiveCmd->controlType);
        RemoteControlCmdExecuteOver();
    }
}

//远控命令状态处理：主要用于触发远控下发和远控计时等逻辑操作
void RemoteControlStateProcess(void)
{
    switch (g_remoteControlState.state)
    {
    case E_REMOTE_CONTROL_STATE_IDLE:
        vehicleRemoteControlStateIdle();
        break;
    case E_REMOTE_CONTROL_STATE_PRECONDITION:
        vehicleRemoteControlStatePrecondition();
        break;
    case E_REMOTE_CONTROL_STATE_EXECTUE_CMD:
        vehicleRemoteControlStateExectueCmd();
        break;
    case E_REMOTE_CONTROL_STATE_WAIT_RESULT:
        vehicleRemoteControlStateWaitResult();
        break;
    default:
        g_remoteControlState.state = E_REMOTE_CONTROL_STATE_IDLE;
        break;
    }
}

int16_t RemoteControlTaskInit(void)
{
    MpuHalFilter_t filter;

    // if(cycleTime == 0)
    // {
    //     return -1;
    // }
    // g_cycleTime = cycleTime;

    //创建MPU通信句柄，收发远控相关命令
    g_mpuHandle = MpuHalOpen();
    filter.aid = REMOTE_CONTROL_AID;
    filter.midMin = REMOTE_CONTROL_MID;
    filter.midMax = REMOTE_CONTROL_MID;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_remoteControlRecvDataBuffer,sizeof(g_remoteControlRecvDataBuffer));

    g_dataPack.pDataBuffer = g_sendDataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_sendDataBuffer);
    
    // memset(&g_remoteControlState, 0, sizeof(RemoteControlState_t));
    RemoteControlSdkInit(g_mpuHandle, g_cycleTime);

    return 0;
}

void RemoteControlTask(void)
{
    // 串口命令处理
    RemoteControlUartCommandProcess();
    // 远控执行流程
    RemoteControlStateProcess();
}
