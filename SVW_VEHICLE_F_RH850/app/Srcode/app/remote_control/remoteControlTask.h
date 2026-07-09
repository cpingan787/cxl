#ifndef _REMOTE_CONTROL_TASK_H_
#define _REMOTE_CONTROL_TASK_H_

#include "remoteControlSdk.h"

#define REMOTE_CONTROL_MAX_CMD_NUMBER   25  //支持最大远控命令数量

typedef enum
{
    E_REMOTE_CONTROL_STATE_IDLE,          // 空闲
    E_REMOTE_CONTROL_STATE_PRECONDITION,  // 判断前置条件
    E_REMOTE_CONTROL_STATE_EXECTUE_CMD,   // 下发执行指令
    E_REMOTE_CONTROL_STATE_WAIT_RESULT,   // 获取执行结果
}RemoteControlState_e;

typedef enum
{
    E_REMOTE_CONTROL_RESULT_SUCCESS,    // 执行成功
    E_REMOTE_CONTROL_RESULT_FAILURE,    // 执行失败
    E_REMOTE_CONTROL_RESULT_PENDING,    // 未知状态，等待结果中
}RemoteControlResult_e;

typedef struct
{
    uint8_t validFlag;
    RemoteControlCmd_e uartRecvCmd;
    uint8_t  controlType;
    uint32_t timeout;
    uint8_t  cmdData[6];
    uint8_t  failReason;
} RemoteControlReceiveCmd_t;

typedef struct
{
    RemoteControlState_e state;
    uint32_t tick;
    uint32_t Timeout;
    uint8_t receiveCmdNumber;   // 收到的远控命令数量
    uint8_t exeCmdIndex;        // 正在执行的远控命令索引
    uint8_t saveCmdIndex;       // 保存的远控命令索引
    RemoteControlReceiveCmd_t receiveCmd[REMOTE_CONTROL_MAX_CMD_NUMBER];    // 缓存的远控命令
} RemoteControlState_t;

typedef int16_t ( *pRemoteControlPrecondition )( uint8_t *data);                // 远控前置条件判断
typedef int16_t ( *pRemoteControlExectue )( uint8_t *data);                     // 远控执行函数
typedef int16_t ( *pRemoteControlGetResult )(uint8_t *data, uint8_t result);    // 远控获取执行结果

typedef struct 
{
    pRemoteControlPrecondition pPreconditionFunction;
    pRemoteControlExectue      pExectueFunction;
    pRemoteControlGetResult    pGetResultFunction;
}RemoteControlFunction_t;

int16_t RemoteControlTaskInit(void);
void RemoteControlTask(void);

#endif
