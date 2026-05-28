 #include "alarmSdk.h"

// #include <string.h>
// #include "FreeRTOS.h"
// #include "task.h"
// #include "timers.h"
// #include "queue.h"
// #include "semphr.h"

#include "logHal.h"
#include "ecallHal.h"
#include "taskEcallProcess.h"
#include "osHal.h"

/* ========================= 内部配置常量 ========================= */
#define ECALL_DEFAULT_RETRY_INTERVAL_MS    5000U
#define ECALL_DEFAULT_COOLDOWN_MS          5000U

/* ========================= 状态机核心结构体 ========================= */
typedef struct {
    EcallCoreState_e state;
    uint8_t          triggerType;          // 原始枚举值 (EcallTriggerType_e)
    uint32_t         enterStateTick;       // 进入当前状态的时间戳
    uint32_t         lastTriggerTick;      // 上次触发时间戳 (用于冷却限制)
    uint32_t         lastRetryTime;        // 上次重发时间戳
    uint32_t         globalStartTick;      // 全局超时起点
    EcallCoreConfig_t cfg;

    // 回调函数指针
    void (*ledCtrl)(SosLledState_e);
    void (*logReport)(uint8_t*, uint16_t);

    // 通信句柄
    int16_t mpuHandle;

    // 自检状态
    SelfcheckRunState_e selfcheckState;
    McuSelfcheckMsg_t mcuSelfCheck;
} EcallCore_t;

/* ========================= 内部函数声明 ========================= */
static void EcallCore_ProcessEvent(EcallCore_t *core, const EcallEvent_t *evt);
static void EcallCore_CheckTimeout(EcallCore_t *core);
static void EcallCore_SendTrigger(EcallCore_t *core, uint8_t type);
static void EcallCore_ReSendTrigger(EcallCore_t *core);
static void EcallCore_TransitionTo(EcallCore_t *core, EcallCoreState_e newState);
static uint8_t IsEndState(uint8_t ecallState);
/* ========================= 全局变量 ========================= */
//static uint16_t g_processCycleTime = 0;
static EcallCore_t g_ecallCore;                     // 状态机实例
static uint8_t g_dataBuffer[200] = {0};         // 接收数据缓冲区
static MpuHalDataPack_t g_dataPack;             // 接收数据包
static uint8_t g_recvDataBuffer[200] = {0};
static SemaphoreHandle_t g_mutexHandle = NULL;

static uint8_t g_packData[64] = {0};
static MpuHalDataPack_t g_alarmPack;

/* 保留原有全局状态变量（用于外部查询兼容） */
static uint8_t g_ecallStatus = 0;
static uint8_t g_ecallState = 0;
static uint8_t g_ecallSendCount = 0;                // 用于日志
#if 0
static McuSelfcheckMsg_t g_mcuSelfCheckStatus = { 0 };
static MpuSelfcheckMsg_t g_mpuSelfCheckStatus = { 0 };
#endif
static McuSelfcheckMsg_t g_mcuSelfCheckStatus = {0};

SelfcheckRunState_e g_selfcheckRunState = E_SELFCHECK_RUN_INIT;
static uint8_t g_ecallTriggerType = 0;
static uint8_t g_ecallTriggerFlag = 0;
static uint32_t g_ecallTriggerTimeCount = 0;

int16_t EcallSatausResponse(uint8_t status);
uint8_t GetEcallState()
{
    return g_ecallState;
}
/* ========================= 回调函数实现 ========================= */
static void LedCtrlCallback(SosLledState_e state) {
    EcallHalSosLedControlSend(state);
}

static void LogReportCallback(uint8_t *data, uint16_t len) {
    AlarmSdkLogReport(data, len);
}
int16_t AlarmSdkSelfchackPeriSend(void)
{
    EcallCore_t *core = &g_ecallCore;
    if (core->mpuHandle < 0) return -1;

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x04;
    memset(g_packData, 0, sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);

    g_packData[0] = g_mcuSelfCheckStatus.selfCheck;
    g_packData[1] = (g_mcuSelfCheckStatus.antMainFault << 4) + g_mcuSelfCheckStatus.antDivFault;
    g_packData[2] = (g_mcuSelfCheckStatus.mimo3Fault << 4) + g_mcuSelfCheckStatus.mimo4Fault;
    g_packData[3] = (g_mcuSelfCheckStatus.antGnssFault << 4) + g_mcuSelfCheckStatus.batteryFault;
    g_packData[4] = (g_mcuSelfCheckStatus.speakerFault << 4) + g_mcuSelfCheckStatus.micFault;
    
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 5;
    
    MpuHalTransmit(core->mpuHandle, &g_alarmPack);

    return 0;
}
/* ========================= 日志上报 ========================= */
int16_t AlarmSdkLogReport(uint8_t *data, uint16_t length)
{
    EcallCore_t *core = &g_ecallCore;
    if (core->mpuHandle < 0) return -1;

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x01;
    g_alarmPack.subcommand = 0x01;
    memset(g_packData, 0, sizeof(g_packData));
    g_alarmPack.dataBufferSize = sizeof(g_packData);
    for (uint16_t i = 0; i < length && i < sizeof(g_packData); i++) {
        g_packData[i] = data[i];
    }
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = length;
    MpuHalTransmit(core->mpuHandle, &g_alarmPack);
    return 0;
}
/* ========================= ECALL状态请求/响应 ========================= */
int16_t EcallSatausRequest(void)
{
    EcallCore_t *core = &g_ecallCore;
    if (core->mpuHandle < 0) return -1;

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x02;
    memset(g_packData, 0, sizeof(g_packData));
    g_alarmPack.dataBufferSize = sizeof(g_packData);
    g_packData[0] = 0x04;
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    MpuHalTransmit(core->mpuHandle, &g_alarmPack);
    return 0;
}

int16_t EcallSatausResponse(uint8_t status)
{
    EcallCore_t *core = &g_ecallCore;
    if (core->mpuHandle < 0) return -1;

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x02;
    memset(g_packData, 0, sizeof(g_packData));
    g_alarmPack.dataBufferSize = sizeof(g_packData);
    g_packData[0] = 0x03;
    g_packData[1] = status;
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 2;
    MpuHalTransmit(core->mpuHandle, &g_alarmPack);
    return 0;
}


/*************************************************
  Function:       AlarmSdkInit
  Description:    报警模块的初始化接口
  Input:          mpuHandle：mpu通信句柄
                  cycleTime：模块周期调用接口调用周期，>0
  Output:         无
  Return:         0:执行成功
                  -1：执行失败
  Others:         
*************************************************/
int16_t AlarmSdkInit(uint16_t cycleTime)
{
    if (cycleTime == 0) return -1;
    EcallCore_t *core = &g_ecallCore;

    // 核心状态机初始化 - 必须在 MpuHalOpen 之前清零
    memset(core, 0, sizeof(EcallCore_t));
    core->state = ECALL_CORE_IDLE;
    core->cfg.timeoutTriggerMs    = 120000;
    core->cfg.timeoutAwaitStateMs = 90000;
    core->cfg.timeoutGlobalMs     = (90*60*1000);// 90分钟
    core->cfg.retryIntervalMs     = ECALL_DEFAULT_RETRY_INTERVAL_MS;
    core->cfg.cooldownMs          = ECALL_DEFAULT_COOLDOWN_MS;
    core->cfg.cycleTimeMs         = cycleTime;

    core->ledCtrl   = LedCtrlCallback;
    core->logReport = LogReportCallback;
    core->selfcheckState = E_SELFCHECK_RUN_INIT;

    // 初始化全局发送包（原 core->alarmPack 的初始化）
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataBufferSize = sizeof(g_packData);

    // MPU句柄初始化 - 必须在 memset 之后
    core->mpuHandle = MpuHalOpen();
    MpuHalFilter_t filter;
    filter.aid = 0x04;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(core->mpuHandle, &filter);
    MpuHalSetRxBuffer(core->mpuHandle, g_recvDataBuffer, sizeof(g_recvDataBuffer));

    g_mutexHandle = xSemaphoreCreateMutex();

    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);

    return 0;
}

/* ========================= 状态转移 ========================= */
static void EcallCore_TransitionTo(EcallCore_t *core, EcallCoreState_e newState)
{
    core->state = newState;
    core->enterStateTick = xTaskGetTickCount();
}

static uint8_t IsEndState(uint8_t ecallState)
{
    return (ecallState == E_ECALL_STATE_END_CALL ||
            ecallState == E_ECALL_STATE_END_CALL_ABNORM ||
            ecallState == E_ECALL_STATE_INTERVAL_TIMEOUT);
}

/* ========================= 事件处理 ========================= */
static void EcallCore_ProcessEvent(EcallCore_t *core, const EcallEvent_t *evt)
{
    switch (core->state) {
    case ECALL_CORE_IDLE:
        if (evt->event == ECALL_EVT_TRIGGER_REQ) {
            core->triggerType = evt->param;
            core->lastTriggerTick = xTaskGetTickCount();
            core->globalStartTick = core->lastTriggerTick;
            core->lastRetryTime = core->lastTriggerTick;  // 初始化重试时间，避免立即触发重试
            EcallCore_TransitionTo(core, ECALL_CORE_TRIGGERING);
            EcallCore_SendTrigger(core, core->triggerType);
            core->ledCtrl(E_SOS_LED_STATE_SEND_MSD);
            g_ecallSendCount = 1;   // 首次发送计数
            // 日志上报
            uint8_t logData = g_ecallSendCount;
            core->logReport(&logData, 1);
        }
        break;

    case ECALL_CORE_TRIGGERING:
        if (evt->event == ECALL_EVT_MPU_ACK_SUCCESS) {
            // 收到成功ACK，进入等待状态阶段
            EcallCore_TransitionTo(core, ECALL_CORE_AWAIT_STATE);
        } else if (evt->event == ECALL_EVT_MPU_ACK_FAIL ||
                   evt->event == ECALL_EVT_TIMEOUT) {
            EcallCore_TransitionTo(core, ECALL_CORE_FAILED);
        }
        // 注意：在 TRIGGERING 状态下忽略 NO_ECALL 消息
        // 因为 MPU 重启后会发送 NO_ECALL，此时应继续重发等待 MPU 恢复
        // 重发机制会持续发送直到超时(timeoutTriggerMs)或收到 ACK
        break;
    case ECALL_CORE_MPU_ACTIVE:
        // MPU主动触发后，等待ACK确认（ACK先于状态更新到达，时序固定）
        if (evt->event == ECALL_EVT_MPU_ACK_SUCCESS) {
            // 收到成功ACK，进入等待状态阶段（与MCU触发流程一致）
            EcallCore_TransitionTo(core, ECALL_CORE_AWAIT_STATE);
        }
        else if (evt->event == ECALL_EVT_MPU_ACK_FAIL ||
                   evt->event == ECALL_EVT_TIMEOUT) {
            // ACK失败或90秒超时，进入失败状态
            EcallCore_TransitionTo(core, ECALL_CORE_FAILED);
        }
        break;
    case ECALL_CORE_AWAIT_STATE:
        if (evt->event == ECALL_EVT_MPU_STATE_UPDATE) {
            if (evt->param == E_ECALL_STATE_NO_ECALL || IsEndState(evt->param)) {
                // 正常结束，LED 已由 switch 控制，这里只做状态跳转
                core->triggerType = 0;
                EcallCore_TransitionTo(core, ECALL_CORE_IDLE);
            } else {
                EcallCore_TransitionTo(core, ECALL_CORE_IN_CALL);
            }
        } else if (evt->event == ECALL_EVT_TIMEOUT) {
            // 异常超时才强制恢复 LED
            core->ledCtrl(E_SOS_LED_STATE_NO_ECALL);
            core->triggerType = 0;
            EcallCore_TransitionTo(core, ECALL_CORE_IDLE);
        }
        break;

    case ECALL_CORE_IN_CALL:
        if (evt->event == ECALL_EVT_MPU_STATE_UPDATE) {
            if (evt->param == E_ECALL_STATE_NO_ECALL || IsEndState(evt->param)) {
                core->triggerType = 0;
                EcallCore_TransitionTo(core, ECALL_CORE_IDLE);
            }
            // 其他状态不做任何事，保持在 IN_CALL
        } else if (evt->event == ECALL_EVT_TIMEOUT) {
            core->ledCtrl(E_SOS_LED_STATE_NO_ECALL);
            core->triggerType = 0;
            EcallCore_TransitionTo(core, ECALL_CORE_IDLE);
        }
        break;

    case ECALL_CORE_FAILED:
        if (evt->event == ECALL_EVT_TIMEOUT) {
            core->ledCtrl(E_SOS_LED_STATE_NO_ECALL);
            core->triggerType = 0;
            EcallCore_TransitionTo(core, ECALL_CORE_IDLE);
        }
        break;

    default:
        break;
    }
}

/* ========================= 超时检查 ========================= */
static void EcallCore_CheckTimeout(EcallCore_t *core)
{
    uint32_t now = xTaskGetTickCount();
    uint32_t elapsed = osElapsedTimeGet(now, core->enterStateTick);

    switch (core->state) {
    case ECALL_CORE_TRIGGERING:
        if (elapsed >= core->cfg.timeoutTriggerMs) {
            EcallEvent_t evt = { .event = ECALL_EVT_TIMEOUT };
            EcallCore_ProcessEvent(core, &evt);
        }
        break;
    case ECALL_CORE_AWAIT_STATE:
        if (elapsed >= core->cfg.timeoutAwaitStateMs) {
            EcallEvent_t evt = { .event = ECALL_EVT_TIMEOUT };
            EcallCore_ProcessEvent(core, &evt);
        }
        break;
    case ECALL_CORE_MPU_ACTIVE:
        if (osElapsedTimeGet(now, core->globalStartTick) >= core->cfg.timeoutAwaitStateMs) {
            EcallEvent_t evt = { .event = ECALL_EVT_TIMEOUT };
            EcallCore_ProcessEvent(core, &evt);
        }
        break;
    case ECALL_CORE_IN_CALL:
        if (osElapsedTimeGet(now, core->globalStartTick) >= core->cfg.timeoutGlobalMs) {
            EcallEvent_t evt = { .event = ECALL_EVT_TIMEOUT };
            EcallCore_ProcessEvent(core, &evt);
        }
        break;
    case ECALL_CORE_FAILED:
        // 失败状态停留1秒后超时
        if (elapsed >= 1000) {
            EcallEvent_t evt = { .event = ECALL_EVT_TIMEOUT };
            EcallCore_ProcessEvent(core, &evt);
        }
        break;
    default:
        break;
    }
}
/* ========================= 发送与重发 ========================= */
static void EcallCore_SendTrigger(EcallCore_t *core, uint8_t type)
{
    if (core->mpuHandle < 0) return;

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x01;
    memset(g_packData, 0, sizeof(g_packData));
    g_packData[0] = type;
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    MpuHalTransmit(core->mpuHandle, &g_alarmPack);
}

static void EcallCore_ReSendTrigger(EcallCore_t *core)
{
    if (core->triggerType > 4) return;  // 安全检查
    EcallCore_SendTrigger(core, core->triggerType);
}

/* ========================= 对外触发接口 ========================= */
int16_t AlarmSdkEcallTriger(uint8_t type)
{
    EcallCore_t *core = &g_ecallCore;
    uint32_t now = xTaskGetTickCount();

    if (core->mpuHandle < 0) return -1;
    if (core->state != ECALL_CORE_IDLE) {
        TBOX_PRINT("----Ecall busy, reject----\r\n");
        return -2;
    }
    if (osElapsedTimeGet(now, core->lastTriggerTick) < core->cfg.cooldownMs) {
        TBOX_PRINT("----Ecall CoolDown----\r\n");
        return -2;
    }

    EcallEvent_t evt = { .event = ECALL_EVT_TRIGGER_REQ, .param = type };
    EcallCore_ProcessEvent(core, &evt);
    return 0;
}

int16_t AlarmSdkEcallStop(void)
{
    EcallCore_t *core = &g_ecallCore;
    if (core->mpuHandle < 0) return -1;

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x11;
    memset(g_packData, 0, sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);

    g_packData[0] = 0x01;
    
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(core->mpuHandle, &g_alarmPack);

    return 0;
}

/* ========================= MPU消息解析 ========================= */
static void EcallCore_ParseMpuMsg(EcallCore_t *core, MpuHalDataPack_t *pack)
{
    if (pack->aid == 0x04 && pack->mid == 0x10) {
        TBOX_PRINT("aid:%x mid:%x sub:%x data:%x,%x\r\n", pack->aid, pack->mid, pack->subcommand, pack->pDataBuffer[0], pack->pDataBuffer[1]);
        if ((pack->subcommand & 0x7F) == 0x02) 
        {
            if (pack->pDataBuffer[0] == 1) 
            {   // ACK
                // 先检查MPU主动触发标识：pDataBuffer[1]==1(SUCCESS)且pDataBuffer[2]==0x03
                // 需要确保数据长度足够（至少3字节）
                if (pack->pDataBuffer[1] == ECALL_TRIGGER_RESULT_SUCC &&
                    pack->dataLength >= 3 &&
                    pack->pDataBuffer[2] == ECALL_TRIGGER_SOURCE_MPU) {
                    // MPU主动触发ECALL，先进入MPU_ACTIVE状态
                    if (core->state == ECALL_CORE_IDLE) {
                        core->globalStartTick = xTaskGetTickCount();
                        core->triggerType = 0;  // 标记为MPU触发
                        EcallCore_TransitionTo(core, ECALL_CORE_MPU_ACTIVE);
                        TBOX_PRINT("MPU active ECALL detected, enter MPU_ACTIVE state\r\n");
                    }
                }
                
                // 然后发送ACK事件，让状态机处理（MPU_ACTIVE状态下会跳转到AWAIT_STATE）
                EcallEvent_t evt;
                evt.event = (pack->pDataBuffer[1] == ECALL_TRIGGER_RESULT_SUCC) ?
                             ECALL_EVT_MPU_ACK_SUCCESS : ECALL_EVT_MPU_ACK_FAIL;
                EcallCore_ProcessEvent(core, &evt);
            } 
            else if (pack->pDataBuffer[0] == 2) 
            { // 状态更新
                g_ecallStatus = pack->pDataBuffer[1];
                g_ecallState = g_ecallStatus;        // 兼容 GetEcallState()
                EcallEvent_t evt = {
                    .event = ECALL_EVT_MPU_STATE_UPDATE,
                    .param = pack->pDataBuffer[1]
                };

                switch (evt.param)
                    {
                    case E_ECALL_STATE_NO_ECALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_NO_ECALL);
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,0);
                        SetEcallSendSignal(E_ECALL_SYS_STATUS,0);
                        break;
                    case E_ECALL_STATE_INCOMING_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_INCOMMING);
                        //EcallHalSetVehicleMute(1);
                        break;
                    case E_ECALL_STATE_IN_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_IN_CALL);
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,1);
                        //EcallHalSetVehicleMute(1);
                        break;
                    case E_ECALL_STATE_DURING_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_DURING_CALL);
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,1);
                        //EcallHalSetVehicleMute(1);//只要通话中，就静音
                        break;
                    case E_ECALL_STATE_END_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_END_CALL);
                        //EcallHalSetVehicleMute(0);
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,0);
                        SetEcallSendSignal(E_ECALL_SYS_STATUS,0);
                        //SetECALLWorkingState(0);
                        break;
                    case E_ECALL_STATE_END_CALL_ABNORM:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_END_CALL_ABNORM);
                        //EcallHalSetVehicleMute(0);
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,0);
                        SetEcallSendSignal(E_ECALL_SYS_STATUS,0);
                        //SetECALLWorkingState(0);
                        break;
                    case E_ECALL_STATE_WAIT_PSPA_CALLBACK:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_SEND_MSD);//(E_SOS_LED_STATE_WAIT_BACK);
                        break;
                    case E_ECALL_STATE_SEND_MSD:
                        //EcallHalSosLedControlSend(E_SOS_LED_STATE_SEND_MSD);
                        break;
                    // case E_ECALL_STATE_PUSH_MSD:
                    //     break;
                    // case E_ECALL_STATE_UPDATE_MSD:
                    //     break;
                    case E_ECALL_STATE_SEND_MSD_SUCC:
                        //EcallHalSosLedControlSend(E_SOS_LED_STATE_SEND_MSD_SUCC);
                        break;
                    case E_ECALL_STATE_SEND_MSD_FAIL:
                        //EcallHalSosLedControlSend(E_SOS_LED_STATE_SEND_MSD_FAIL);
                        break;
                    case E_ECALL_STATE_INTERVAL_TIMEOUT:// = 12,//超时结束
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_NO_ECALL);
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,0);
                        SetEcallSendSignal(E_ECALL_SYS_STATUS,0);
                        //EcallHalSetVehicleMute(0);
                        break;
                    case E_ECALL_STATE_DIAL_DURATION:// =13,//重播开始
                    //    EcallHalSosLedControlSend(E_SOS_LED_STATE_END_CALL_ABNORM);
                        //EcallHalSetVehicleMute(1);
                    default:
                        break;
                    }
                EcallCore_ProcessEvent(core, &evt);

                // 调用原有回复和LED控制（保持外部表现不变）
                EcallSatausResponse(pack->pDataBuffer[1]);
            }
        }
    }
}
/*************************************************
  Function:       AlarmSdkCycleProcess
  Description:    模块周期调用接口
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void AlarmSdkCycleProcess(void)
{
    EcallCore_t *core = &g_ecallCore;
    // 接收MPU数据
    if (MpuHalReceive(core->mpuHandle, &g_dataPack, 0) == MPU_HAL_STATUS_OK) {
        EcallCore_ParseMpuMsg(core, &g_dataPack);
    }

    // 超时检查
    EcallCore_CheckTimeout(core);

    //重发逻辑 (仅在触发阶段)  重发次数记得要限制
    if (core->state == ECALL_CORE_TRIGGERING) {
        uint32_t now = xTaskGetTickCount();
        if (osElapsedTimeGet(now, core->lastRetryTime) >= core->cfg.retryIntervalMs) {
            EcallCore_ReSendTrigger(core);
            core->lastRetryTime = now;
            if (g_ecallSendCount < 255) {
                g_ecallSendCount++;
            } else {
                g_ecallSendCount = 1;
            }
            // 日志上报发送计数
            //core->logReport(&g_ecallSendCount, 1);
            TBOX_PRINT("----Ecall Trigging retry----\r\n");
        }
    }
}

uint8_t AlarmSdkGetEcallState(void)
{
    return g_ecallStatus;
}

void AlarmSdkSetSelfcheckState(SelfcheckRunState_e state)
{
    g_selfcheckRunState = state;
}

SelfcheckRunState_e AlarmSdkGetSelfcheckState(void)
{
    return g_selfcheckRunState;
}

void AlarmSdkSetMcuSelfcheckResult(McuSelfcheckItem_e item, uint8_t result)
{
    switch (item)
    {
        case E_NAD_FAULT:
        {
            g_mcuSelfCheckStatus.nadFault = result;
            break;
        }
        case E_BATTERY_FAULT:
        {
            g_mcuSelfCheckStatus.batteryFault = result;
            break;
        }
        case E_SPEAKER_FAULT:
        {
            g_mcuSelfCheckStatus.speakerFault = result;
            break;
        }
        case E_ANT_MAIN_FAULT:
        {
            g_mcuSelfCheckStatus.antMainFault = result;
            break;
        }
        case E_ANT_DIV_FAULT:
        {
            g_mcuSelfCheckStatus.antDivFault = result;
            break;
        }
        case E_MIMO3_FAULT:
        {
            g_mcuSelfCheckStatus.mimo3Fault = result;
            break;
        }
        case E_MIMO4_FAULT:
        {
            g_mcuSelfCheckStatus.mimo4Fault = result;
            break;
        }
        case E_SOS_FAULT:
        {
            g_mcuSelfCheckStatus.sosFault = result;
            break;
        }
        case E_MIC_FAULT:
        {
            g_mcuSelfCheckStatus.micFault = result;
            break;
        }
        case E_ANT_GNSS_FAULT:
        {
            g_mcuSelfCheckStatus.antGnssFault = result;
            break;
        }
        case E_SIM_CARD_FAULT:
        {
            g_mcuSelfCheckStatus.simcardFault = result;
        }
        default:
        {
            break;
        }
    }
}

McuSelfcheckMsg_t* AlarmSdkGetMcuSelfcheckResult(void)
{
    return &g_mcuSelfCheckStatus;
}

// 映射表项结构
typedef struct {
    uint8_t *ptr;          // 指向故障状态变量
    const uint8_t map[4];  // 原始值->严重等级映射
} FaultMapping;

// 定义各故障项的映射（示例）
static const FaultMapping faultMappings[] = {
    { &g_mcuSelfCheckStatus.nadFault,      {0, 2, 0, 0} },  
    { &g_mcuSelfCheckStatus.batteryFault,  {0, 1, 1, 1} },  
    { &g_mcuSelfCheckStatus.speakerFault,  {0, 2, 0, 0} },
    { &g_mcuSelfCheckStatus.antMainFault,  {0, 2, 1, 0} },
    { &g_mcuSelfCheckStatus.antDivFault,   {0, 2, 1, 0} },
    { &g_mcuSelfCheckStatus.mimo3Fault,    {0, 2, 1, 0} },
    { &g_mcuSelfCheckStatus.mimo4Fault,    {0, 2, 1, 0} },
    { &g_mcuSelfCheckStatus.sosFault,      {0, 0, 2, 0} },
    { &g_mcuSelfCheckStatus.micFault,      {0, 2, 2, 2} },
    { &g_mcuSelfCheckStatus.antGnssFault,  {0, 1, 1, 0} },
    { &g_mcuSelfCheckStatus.simcardFault,  {0, 2, 2, 0} }
};
#define NUM_FAULTS (sizeof(faultMappings) / sizeof(faultMappings[0]))

uint8_t AlarmSdkGetMcuSelfcheckLevel(void)
{
    uint8_t maxLevel = 0;
    for (int i = 0; i < NUM_FAULTS; ++i) 
    {
        uint8_t raw = *faultMappings[i].ptr;
        uint8_t level = faultMappings[i].map[raw]; // 转换为严重等级
        if (level > maxLevel) 
        {
            maxLevel = level;
            if (maxLevel == 2) {  // 已达最高等级，提前退出
                break;
            }
        }
    }
    g_mcuSelfCheckStatus.selfCheck = maxLevel;
    return maxLevel;
}
#if 0
void AlarmSdkSetMpuSelfcheckResult(uint8_t item, uint8_t result)
{
    switch (item)
    {
        case E_GSM_MAIN_ANT_FAULT:
        {
            g_mpuSelfCheckStatus.gsmMainAnt_fault = result;
            break;
        }
        case E_GSM_SEC_ANT_FAULT:
        {
            g_mpuSelfCheckStatus.gsmSecAnt_fault = result;
            break;
        }
        case E_GPS_ANT_FAULT:
        {
            g_mpuSelfCheckStatus.gpsAnt_fault = result;
            break;
        }
        case E_SIM_CARD_FAULT:
        {
            g_mpuSelfCheckStatus.simCard_fault = result;
            break;
        }
        case E_MPU_FAULT_STATUS:
        {
            g_mpuSelfCheckStatus.fault_st = result;
            break;
        }
        default:
        {
            break;
        }
    }
}

MpuSelfcheckMsg_t* AlarmSdkGetMpuSelfcheckResult(void)
{
    return &g_mpuSelfCheckStatus;
}
#endif
uint8_t AlarmSdkGetEcallTriggerType(void)
{
    return g_ecallTriggerType;
}





