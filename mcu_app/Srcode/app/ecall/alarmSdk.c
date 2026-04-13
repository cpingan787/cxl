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

static uint16_t g_processCycleTime = 0;          //保存AlarmSdkCycleProcess接口调用周期，单位 ms
static int16_t g_mpuHandle = 0;                  //保存同步任务的CPU通信句柄

static uint8_t g_dataBuffer[200] = {0};
static MpuHalDataPack_t  g_dataPack;
static uint8_t g_recvDataBuffer[200] = {0};

static uint8_t g_packData[64] = {0};
static MpuHalDataPack_t g_alarmPack;         //mpu通信数据包

static SemaphoreHandle_t g_mutexHandle = NULL;   //互斥锁句柄

static uint8_t g_ecallStatus = 0;
#if 0
static McuSelfcheckMsg_t g_mcuSelfCheckStatus = { 0 };
static MpuSelfcheckMsg_t g_mpuSelfCheckStatus = { 0 };
#endif
static McuSelfcheckMsg_t g_mcuSelfCheckStatus = {0};

SelfcheckRunState_e g_selfcheckRunState = E_SELFCHECK_RUN_INIT;
static uint8_t g_ecallTriggerType = 0;
static uint8_t g_ecallTriggerFlag = 0;
static uint32_t g_ecallTriggerTimeCount = 0;
static uint8_t  g_ecallState = 0;

uint8_t GetEcallState()
{
    return g_ecallState;
}

#define ECALL_COOLDOWN_MS   5000U   // 冷却时间 5 秒
int16_t AlarmSdkEcallTriger(uint8_t type)
{
    static uint32_t lastEcallTime = 0;
    uint32_t now = xTaskGetTickCount();
    static uint8_t SendECALLCount =0x0;

    if(g_mpuHandle < 0)
    {
        return -1;
    }
    
    if (osElapsedTimeGet(now, lastEcallTime) < ECALL_COOLDOWN_MS)
    {
        TBOX_PRINT("----Ecall CoolDown----\r\n");
        return -2;
    }

    lastEcallTime = now;

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x01;

    memset(g_packData,0,sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);
    
    g_packData[0] = type;
    g_ecallTriggerType = type + 1;

    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack);

    TBOX_PRINT("----Send Ecall----\r\n");
    if(g_ecallTriggerFlag == 0)
    {
        g_ecallTriggerFlag = 1;
        g_ecallTriggerTimeCount = 0;
    }
    if(SendECALLCount == 0xFF)
    {
        SendECALLCount=0;
    }
    SendECALLCount++;
    EcallLogReport(2,&SendECALLCount,1);

    return 0;
}
int16_t AlarmSdkEcallReSend(uint8_t type)
{
    if(g_mpuHandle < 0)
    {
        return -1;
    }

    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x01;

    memset(g_packData,0,sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);
    
    g_packData[0] = type;
    g_ecallTriggerType = type + 1;

    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack);

    TBOX_PRINT("----ReSend Ecall----\r\n");
    return 0;
}

static int16_t AlarmSdkSetAmpGainResponse(uint8_t result)
{
    if(g_mpuHandle < 0)
    {
        return -1;
    }
    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x03;

    memset(g_packData,0,sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);

    g_packData[0] = result;
    
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack);

    for (uint8_t i = 0; i < g_alarmPack.dataLength; i++)
    {
        TBOX_PRINT("%02x ", g_alarmPack.pDataBuffer[i]);
    }
    TBOX_PRINT("]\r\n");

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
    if(cycleTime == 0)
    {
        return -1;
    }

    MpuHalFilter_t filter;

    g_mpuHandle = MpuHalOpen();
    filter.aid = 0x04;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));

    g_processCycleTime = cycleTime;
    
// //    g_powerManageHandle = PowerManageSdkOpenHandle(modulName);
    
//     g_wakeUpSource.setFlag = 0;
    
    g_mutexHandle = xSemaphoreCreateMutex();

    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
    
    return 0;
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
    uint8_t ret;
    //接收数据
    ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
    if(ret == MPU_HAL_STATUS_OK)    //接收到数据
    {
        TBOX_PRINT("ecall alarm resp : aid %02x ,mid %02x, subcommond %02x,ecall %d\r\n",g_dataPack.aid,g_dataPack.mid,(g_dataPack.subcommand & 0x7F),g_dataPack.pDataBuffer[1]);
        if(g_dataPack.aid == 0x04 && g_dataPack.mid == 0x10)
        {
            if((g_dataPack.subcommand&0x7F) == 0x02)
            {
                if(g_dataPack.pDataBuffer[0] == 1)
                {
                    if(g_dataPack.pDataBuffer[1] == ECALL_TRIGGER_RESULT_SUCC)
                    {
                        TBOX_PRINT("ecall trigger success\r\n");
                    }
                    else
                    {
                        TBOX_PRINT("ecall trigger fail\r\n");
                    }
                    g_ecallTriggerFlag = 0;
                    g_ecallTriggerTimeCount = 0;
                }
                else if(g_dataPack.pDataBuffer[0] == 2)
                {
                    g_ecallStatus = g_dataPack.pDataBuffer[1];
                    TBOX_PRINT("===ecall state = %d\r\n", g_dataPack.pDataBuffer[1]);
                    switch (g_dataPack.pDataBuffer[1])
                    {
                    case E_ECALL_STATE_NO_ECALL:
                        if(g_ecallTriggerType != 0)
                        {
                            //EcallHalSetVehicleMute(0);
                            g_ecallTriggerType = 0;
                            //SetECALLWorkingState(0);
                            EcallHalSosLedControlSend(E_SOS_LED_STATE_NO_ECALL);
                        }
                        g_ecallState = 0;
                        break;
                    case E_ECALL_STATE_INCOMING_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_INCOMMING);
                        //EcallHalSetVehicleMute(1);
                        g_ecallState = 1;
                        break;
                    case E_ECALL_STATE_IN_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_IN_CALL);
                        g_ecallState = 1;
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,1);
                        //EcallHalSetVehicleMute(1);
                        break;
                    case E_ECALL_STATE_DURING_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_DURING_CALL);
                        g_ecallState = 1;
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,1);
                        //EcallHalSetVehicleMute(1);//只要通话中，就静音
                        break;
                    case E_ECALL_STATE_END_CALL:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_END_CALL);
                        //EcallHalSetVehicleMute(0);
                        g_ecallState = 0;
                        SetEcallSendSignal(E_EMGC_CALL_TRIGD,0);
                        SetEcallSendSignal(E_ECALL_SYS_STATUS,0);
                        //SetECALLWorkingState(0);
                        break;
                    case E_ECALL_STATE_END_CALL_ABNORM:
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_END_CALL_ABNORM);
                        //EcallHalSetVehicleMute(0);
                        g_ecallState = 0;
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
                        g_ecallState = 0;
                        //SetECALLWorkingState(0);
                        break;
                    case E_ECALL_STATE_DIAL_DURATION:// =13,//重播开始
                    //    EcallHalSosLedControlSend(E_SOS_LED_STATE_END_CALL_ABNORM);
                        //EcallHalSetVehicleMute(1);
                        g_ecallState = 1;
                    default:
                        break;
                    }
                }
            }
            else if((g_dataPack.subcommand&0x7F) == 0x03)
            {
                //ret = EcallHalSetAmpControlStatus(g_dataPack.pDataBuffer[0]);
                //AlarmSdkSetAmpGainResponse(ret);
            }
            else
            {
				// nothing
            }
        }
    }
    if(g_ecallTriggerFlag == 1)
    {
        g_ecallTriggerTimeCount++;
        if((g_ecallTriggerTimeCount%100) == 0)
        {
            AlarmSdkEcallReSend(g_ecallTriggerType-1);
            TBOX_PRINT("----Ecall Trigging----\r\n");
        }
        if(g_ecallTriggerTimeCount >= (2*60*1000))
        {
            g_ecallTriggerFlag = 0;
            g_ecallTriggerTimeCount = 0;
            TBOX_PRINT("----stop Ecall----\r\n");
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
    { &g_mcuSelfCheckStatus.batteryFault,  {0, 1, 2, 0} },  
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
int16_t AlarmSdkSelfchackPeriSend(void)
{
    if(g_mpuHandle < 0)
    {
        return -1;
    }
    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x10;
    g_alarmPack.subcommand = 0x04;

    memset(g_packData,0,sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);

    g_packData[0] = g_mcuSelfCheckStatus.selfCheck;
    g_packData[1] = (g_mcuSelfCheckStatus.antMainFault << 4) + g_mcuSelfCheckStatus.antDivFault;
    g_packData[2] = (g_mcuSelfCheckStatus.mimo3Fault << 4) + g_mcuSelfCheckStatus.mimo4Fault;
    g_packData[3] = (g_mcuSelfCheckStatus.antGnssFault << 4) + g_mcuSelfCheckStatus.batteryFault;
    g_packData[4] = (g_mcuSelfCheckStatus.speakerFault << 4) + g_mcuSelfCheckStatus.micFault;
    
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 5;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack);

    return 0;
}

int16_t AlarmSdkLogReport(uint8_t *data,uint16_t lenth)
{
  uint16_t i = 0;
    if(g_mpuHandle < 0)
    {
        return -1;
    }
    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x01;
    g_alarmPack.subcommand = 0x01;

    memset(g_packData,0,sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);

    for(i = 0;i < lenth;i++)
    {
      g_packData[i] = data[i];
    }
    
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = lenth;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack);

    //TBOX_PRINT("selfcheck status send: aid = %d, mid = %d, subcmd = %d, service data = [ ", g_alarmPack.aid, g_alarmPack.mid, g_alarmPack.subcommand);   // TODO guanyuan test only
    //for (uint8_t i = 0; i < g_alarmPack.dataLength; i++)
    //{
    //    TBOX_PRINT("%02x ", g_alarmPack.pDataBuffer[i]);
    //}
    //TBOX_PRINT("]\r\n");

    return 0;
}

int16_t EcallSatausRequest()
{
    uint16_t i = 0;
    static MpuHalDataPack_t ecallStatusRequestPack;
    uint8_t packData = 0;

    if(g_mpuHandle < 0)
    {
        return -1;
    }

    ecallStatusRequestPack.aid = 0x04;
    ecallStatusRequestPack.mid = 0x20;
    ecallStatusRequestPack.subcommand = 0x01;

    ecallStatusRequestPack.dataBufferSize = sizeof(packData);

    packData = 0x01;
    
    ecallStatusRequestPack.pDataBuffer = &packData;
    ecallStatusRequestPack.dataLength = 0x1;
    
    MpuHalTransmit(g_mpuHandle, &ecallStatusRequestPack);

    return 0;
}

