#ifndef _REMOTE_CONTROL_SDK_H_
#define _REMOTE_CONTROL_SDK_H_

#include "stdint.h"
#include "logHal.h"

#define REMOTE_CONTROL_PRINT_ENABLE         0x01    // 0x01 - 打印

#if(REMOTE_CONTROL_PRINT_ENABLE == 0x01)
// #define RM_DEBUG_PRINT(var)     TBOX_PRINT(var)
#define RM_DEBUG_PRINT(...)     LogHalPrint(__VA_ARGS__)
#else
#define RM_DEBUG_PRINT(var)
#endif

typedef enum
{
    E_REMOTE_CONTROL_CMD_NONE                       = 0x00, // 无命令

    E_REMOTE_CONTROL_CMD_LOCK_UNLOCK                = 0x01, // 解闭锁
    E_REMOTE_CONTROL_CMD_FIND_VEHICLE               = 0x02, // 寻车
    E_REMOTE_CONTROL_CMD_WINDOW                     = 0x03, // 车窗
    E_REMOTE_CONTROL_CMD_POWER_TAILGATE             = 0x04, // 电动尾门
    E_REMOTE_CONTROL_CMD_REMOTE_START               = 0x05, // 远程启动
    E_REMOTE_CONTROL_CMD_REMOTE_START_STOP          = 0x06, // 远程启动关闭
    E_REMOTE_CONTROL_CMD_SEAT_HEAT                  = 0x07, // 座椅加热
    E_REMOTE_CONTROL_CMD_SEAT_VENT                  = 0x08, // 座椅通风
    E_REMOTE_CONTROL_CMD_AIR_CONDITIONER            = 0x09, // 空调

    E_REMOTE_CONTROL_CMD_BATTERY_HEATING            = 0x10, // 电池保温
    E_REMOTE_CONTROL_CMD_REMOTE_CHARGE              = 0x11, // 远程充电
    E_REMOTE_CONTROL_CMD_CHARGE_CURRENT_SET         = 0x12, // 远程充电电流设置
    E_REMOTE_CONTROL_CMD_CHARGE_SOC_LIMIT           = 0x13, // 远程充电截止电量
    E_REMOTE_CONTROL_CMD_SCHEDULE_CHARGE            = 0x14, // 远程预约充电
    E_REMOTE_CONTROL_CMD_REMOTE_DISCHARGE           = 0x15, // 远程放电

    E_REMOTE_CONTROL_CMD_FRIDGE_SWITCH              = 0x16, // 冰箱开关
    E_REMOTE_CONTROL_CMD_FRIDGE_KEEP_TEMP           = 0x17, // 冰箱离车恒温
    E_REMOTE_CONTROL_CMD_REAR_WINDOW_DEFROST        = 0x18, // 后风窗加热

    E_REMOTE_CONTROL_CMD_MAX
} RemoteControlCmd_e;



typedef enum
{
    E_REMOTE_CTRL_RESULT_SUCCESS                     = 0,      // IAM 收到执行成功的反馈

    E_REMOTE_CTRL_RESULT_ERR_RESP_TIMEOUT            = 10001,  // 执行器反馈超时
    E_REMOTE_CTRL_RESULT_ERR_EXECUTE_FAIL            = 10002,  // 执行器反馈执行失败
    E_REMOTE_CTRL_RESULT_ERR_EXECUTING               = 10003,  // 上一指令执行中
    E_REMOTE_CTRL_RESULT_ERR_ICC_NODE_LOST           = 10004,  // ICC 节点丢失
    E_REMOTE_CTRL_RESULT_ERR_NET_SLEEP               = 10005,  // IAM 因网络休眠被迫结束当前远控进程
    E_REMOTE_CTRL_RESULT_ERR_VOLTAGE_ABNORMAL        = 10006,  // 电压异常
    E_REMOTE_CTRL_RESULT_ERR_FUNC_NOT_ENABLE         = 10007,  // IAM 远控功能未使能
    E_REMOTE_CTRL_RESULT_ERR_VEHICLE_MODE_INVALID    = 10008,  // 车辆模式不满足
    E_REMOTE_CTRL_RESULT_ERR_USER_MODE_INVALID       = 10009,  // 用户模式不满足
    E_REMOTE_CTRL_RESULT_ERR_BACKUP_POWER_MODE       = 10010,  // IAM 处于备电模式
    E_REMOTE_CTRL_RESULT_ERR_ICC_ETH_DISCONNECT      = 10011,  // 与 ICC 失去以太网物理连接

    E_REMOTE_CTRL_RESULT_ERR_CMD_QUEUE_FULL          = 20001,  // 缓存指令超过最大数量
} RemoteCtrlResultCode_e;


int16_t RemoteControlSdkInit(int16_t mpuHandle, uint16_t cycleTime);
int16_t RemoteControlSendAck(uint8_t controlCmd);
int16_t RemoteControlSendResult(uint8_t controlCmd, uint8_t* cmdData, uint16_t result, uint8_t vehicleResp, uint8_t type);

#endif
