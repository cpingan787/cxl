/****************************** include ***************************************/
#include "alarmSdk.h"
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "queue.h"
#include "semphr.h"
#include "logHal.h"
#include "ecallHal.h"
#include "taskEcallProcess.h"
#include "timerHal.h"
/****************************** Macro Definitions ******************************/
#define ECALL_HANG_ON_TIME_MS   (90U)
#define ECALL_OVER_TIME_MS      (2000U)
/****************************** Type Definitions ******************************/

/****************************** Global Variables ******************************/
static int16_t g_mpuHandle = 0;           
static uint8_t g_dataBuffer[200] = {0};
static MpuHalDataPack_t  g_dataPack;
static uint8_t g_recvDataBuffer[200] = {0};
static uint8_t g_packData[64] = {0};
static MpuHalDataPack_t g_alarmPack;          
static McuSelfcheckMsg_t g_mcuSelfCheckStatus = { 0 };
static MpuSelfcheckMsg_t g_mpuSelfCheckStatus = { 0 };
SelfcheckRunState_e g_selfcheckRunState = E_SELFCHECK_RUN_INIT;
static uint8_t g_ecallTriggerType = 0U;
static uint8_t g_bcallTriggerType = 0U;
static uint8_t g_ecallCallState = 0U;
static uint8_t g_bcallCallState = 0U;
static int16_t ebcallTimeHandle = -1;
/****************************** Function Declarations *************************/
static void AlarmSdkSetEcallCallState(uint8_t state);
static void AlarmSdkSetBcallCallState(uint8_t state);

/****************************** Public Function Implementations ***************/
int16_t AlarmSdkEcallTriger(uint8_t type)
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
    AlarmSdkSetEcallCallState(1U);

    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack, MPU_HAL_UART_MODE);
    LogHalUpLoadLog("Ec sed type = %d",type);
    return 0;
}

int16_t AlarmSdkBcallTriger(uint8_t type)
{
    if(g_mpuHandle < 0)
    {
        return -1;
    }
    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x14;
    g_alarmPack.subcommand = 0x01;

    memset(g_packData,0,sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);
    
    g_packData[0] = type;
    g_bcallTriggerType = type + 1;
    AlarmSdkSetBcallCallState(1U);

    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack, MPU_HAL_UART_MODE);
    LogHalUpLoadLog("Bc sed type = %d",type);

    return 0;
}

int16_t AlarmSdkEcallClose(uint8_t type)
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
    AlarmSdkSetEcallCallState(0U);

    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack, MPU_HAL_UART_MODE);
    LogHalUpLoadLog("Ec cls type = %d",type);
    return 0;
}

int16_t AlarmSdkBcallClose(uint8_t type)
{
    if(g_mpuHandle < 0)
    {
        return -1;
    }
    g_alarmPack.aid = 0x04;
    g_alarmPack.mid = 0x14;
    g_alarmPack.subcommand = 0x01;

    memset(g_packData,0,sizeof(g_packData));

    g_alarmPack.dataBufferSize = sizeof(g_packData);
    
    g_packData[0] = type;
    g_bcallTriggerType = type + 1;
    AlarmSdkSetBcallCallState(0U);

    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack, MPU_HAL_UART_MODE);
    LogHalUpLoadLog("Bc cls type = %d",type);
    return 0;
}

#if AMP_ENABLE == 1
static int16_t AlarmSdkSetAmpGainResponse(uint8_t result,uint8_t id)
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
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack, MPU_HAL_UART_MODE);

    INFO_PRINT("resp set gain: aid = %d, mid = %d, subcmd = %d, service data = [ ", g_alarmPack.aid, g_alarmPack.mid, g_alarmPack.subcommand);   // TODO guanyuan test only
    for (uint8_t i = 0; i < g_alarmPack.dataLength; i++)
    {
        PURE_PRINT("%02x ", g_alarmPack.pDataBuffer[i]);
    }
    PURE_PRINT("]\r\n");

    return 0;
}
#endif

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

    g_packData[0] = g_mcuSelfCheckStatus.self_test;
    g_packData[1] = (g_mcuSelfCheckStatus.kl30_fault << 4) + g_mcuSelfCheckStatus.mic_fault;
    g_packData[2] = (g_mcuSelfCheckStatus.sos_fault << 4) + g_mcuSelfCheckStatus.can_fault;
    g_packData[3] = (g_mcuSelfCheckStatus.abm_fault << 4) + g_mcuSelfCheckStatus.speaker_fault;
    g_packData[4] = (g_mcuSelfCheckStatus.battery_fault << 4) + g_mcuSelfCheckStatus.nad_fault;
    
    g_alarmPack.pDataBuffer = g_packData;
    g_alarmPack.dataLength = 5;
    
    MpuHalTransmit(g_mpuHandle, &g_alarmPack, MPU_HAL_UART_MODE);

    INFO_PRINT("selfcheck status send: aid = %d, mid = %d, subcmd = %d, service data = [ ", g_alarmPack.aid, g_alarmPack.mid, g_alarmPack.subcommand);   // TODO guanyuan test only
    for (uint8_t i = 0; i < g_alarmPack.dataLength; i++)
    {
        PURE_PRINT("%02x ", g_alarmPack.pDataBuffer[i]);
    }
    PURE_PRINT("]\r\n");

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
int16_t AlarmSdkInit(void)
{
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();
    filter.aid = 0x04;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer); 
    ebcallTimeHandle = TimerHalOpen();
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
    uint8_t ret = 0U;
    ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
    if(ret == MPU_HAL_STATUS_OK)    
    {
        TBOX_PRINT("ecall alarm resp : aid %02x ,mid %02x, subcommond %02x\r\n",g_dataPack.aid,g_dataPack.mid,(g_dataPack.subcommand & 0x7F));
        if((g_dataPack.aid == 0x04 && g_dataPack.mid == 0x10) || (g_dataPack.aid == 0x04 && g_dataPack.mid == 0x14))
        {
            if((g_dataPack.subcommand&0x7F) == 0x02)
            {
                if(g_dataPack.pDataBuffer[0] == 1)
                {
                    if((g_dataPack.mid == 0x10)&&(AlarmSdkGetEcallCallState() != 0))
                    {
                        XCallSetTelemataticsMode(TELEMATICS_MODE_ECALL);
                        LogHalUpLoadLog("Ec tri suc");
                    }
                    else if((g_dataPack.mid == 0x14)&&(AlarmSdkGetBcallCallState() != 0))
                    {
                        XCallSetTelemataticsMode(TELEMATICS_MODE_BCALL);
                        LogHalUpLoadLog("Bc tri suc");
                    }
                    else if((g_dataPack.mid == 0x10)&&(AlarmSdkGetEcallCallState() == 0))
                    {
                        XCallSetTelemataticsMode(TELEMATICS_MODE_NOT_ACTIVE);
                        XCallSetPhoneCallState(E_ECALL_STATE_HANG_UP);
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_END); 
                        LogHalUpLoadLog("Ec cs suc");
                    }
                    else if((g_dataPack.mid == 0x14)&&(AlarmSdkGetBcallCallState() == 0))
                    {
                        XCallSetTelemataticsMode(TELEMATICS_MODE_NOT_ACTIVE);
                        XCallSetPhoneCallState(E_ECALL_STATE_HANG_UP);
                        EcallHalSosLedControlSend(E_SOS_LED_STATE_END); 
                        LogHalUpLoadLog("Bc cls suc");
                    }
                }
                else if(g_dataPack.pDataBuffer[0] == 2)
                {
                    LogHalUpLoadLog("Xc state=%d", g_dataPack.pDataBuffer[1]);
                    switch (g_dataPack.pDataBuffer[1])
                    {
                        case E_ECALL_STATE_NO_ECALL:
                            if((g_dataPack.mid == 0x10) && (g_ecallTriggerType != 0))
                            {
                                EcallHalSetVehicleMute(0);
                                AlarmSdkSetEcallCallState(0U);
                                EcallHalSosLedControlSend(E_SOS_LED_STATE_INIT);
                                XCallSetTelemataticsMode(TELEMATICS_MODE_NOT_ACTIVE);
                                XCallSetPhoneCallState(E_ECALL_STATE_NOT_ACTIVE);
                                g_ecallTriggerType = 0;
                            }
                            if((g_dataPack.mid == 0x14) && (g_bcallTriggerType != 0) && (AlarmSdkGetEcallCallState() == 0))     //no ecall,bcall close
                            {
                                EcallHalSetVehicleMute(0);
                                AlarmSdkSetBcallCallState(0U);
                                EcallHalSosLedControlSend(E_SOS_LED_STATE_INIT);
                                XCallSetTelemataticsMode(TELEMATICS_MODE_NOT_ACTIVE);
                                XCallSetPhoneCallState(E_ECALL_STATE_NOT_ACTIVE);
                                g_bcallTriggerType = 0;
                            }
                            break;

                        case E_ECALL_STATE_IN_CALL:
                            XCallSetPhoneCallState(E_ECALL_STATE_CONNECTING);
                            EcallHalSosLedControlSend(E_SOS_LED_STATE_RING);        /*ECALL拨号中LED状态指示灯 100ms开100ms关*/
                            break;

                        case E_ECALL_STATE_DURING_CALL:
                            XCallSetPhoneCallState(E_ECALL_STATE_ON_THE_PHONE);
                            EcallHalSosLedControlSend(E_SOS_LED_STATE_CALL);        /*ECALL正在通话中LED状态指示灯常亮*/
                            break;

                        case E_ECALL_STATE_END_CALL:
                            XCallSetPhoneCallState(E_ECALL_STATE_HANG_UP);
                            EcallHalSosLedControlSend(E_SOS_LED_STATE_END);        /*ECALL通话结束LED状态指示灯关*/
                            TimerHalStartTime(ebcallTimeHandle, ECALL_HANG_ON_TIME_MS);
                            break;

                        case E_ECALL_STATE_END_CALL_ABNORM:
                            XCallSetPhoneCallState(E_ECALL_STATE_HANG_UP);
                            EcallHalSosLedControlSend(E_SOS_LED_STATE_END);        /*ECALL通话异常结束LED状态指示灯关*/
                            TimerHalStartTime(ebcallTimeHandle, ECALL_HANG_ON_TIME_MS);
                            break;

                        case E_ECALL_STATE_WAIT_PSPA_CALLBACK:
                            XCallSetPhoneCallState(E_ECALL_STATE_CALL_OVER);
                            EcallHalSosLedControlSend(E_SOS_LED_STATE_END);         /*ECALL客服挂断*/
                            break;

                        default:
                            break;
                    }
                }
            }
            else if((g_dataPack.subcommand&0x7F) == 0x03)
            {
                #if AMP_ENABLE == 1
                ret = EcallHalSetAmpControlStatus(g_dataPack.pDataBuffer[0]);
                AlarmSdkSetAmpGainResponse(ret,g_dataPack.mid);
                #endif
            }
            else
            {
                // nothing
            }
        }
    }
    if(TimerHalIsTimeout(ebcallTimeHandle) == 0)
    {
        LogHalUpLoadLog("Xc hang on time out");
        XCallSetPhoneCallState(E_ECALL_STATE_CALL_OVER);
        TimerHalStopTime(ebcallTimeHandle);
    }
}

void AlarmSdkSetSelfcheckState(SelfcheckRunState_e state)
{
    g_selfcheckRunState = state;
}

SelfcheckRunState_e AlarmSdkGetSelfcheckState(void)
{
    return g_selfcheckRunState;
}

void AlarmSdkSetMcuSelfcheckResult(uint8_t item, uint8_t result)
{
    switch (item)
    {
        case E_NAD_FAULT:
        {
            g_mcuSelfCheckStatus.nad_fault = result;
            break;
        }
        case E_BATTERY_FAULT:
        {
            g_mcuSelfCheckStatus.battery_fault = result;
            break;
        }
        case E_SPEAKER_FAULT:
        {
            g_mcuSelfCheckStatus.speaker_fault = result;
            break;
        }
        case E_ABM_FAULT:
        {
            g_mcuSelfCheckStatus.abm_fault = result;
            break;
        }
        case E_CAN_FAULT:
        {
            g_mcuSelfCheckStatus.can_fault = result;
            break;
        }
        case E_SOS_FAULT:
        {
            g_mcuSelfCheckStatus.sos_fault = result;
            break;
        }
        case E_MIC_FAULT:
        {
            g_mcuSelfCheckStatus.mic_fault = result;
            break;
        }
        case E_KL30_FAULT:
        {
            g_mcuSelfCheckStatus.kl30_fault = result;
            break;
        }
        case E_SELF_TEST_STATE:
        {
            g_mcuSelfCheckStatus.self_test = result;
            break;
        }
        case E_MCU_FAULT_STATUS:
        {
            g_mcuSelfCheckStatus.fault_st = result;
            break;
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

uint8_t AlarmSdkGetEcallTriggerType(void)
{
    return g_ecallTriggerType;
}

uint8_t AlarmSdkGetBcallTriggerType(void)
{
    return g_bcallTriggerType;
}

uint8_t AlarmSdkGetEcallCallState(void)
{
    return g_ecallCallState;
}

uint8_t AlarmSdkGetBcallCallState(void)
{
    return g_bcallCallState;
}

static void AlarmSdkSetEcallCallState(uint8_t state)
{
    g_ecallCallState = state;
}

static void AlarmSdkSetBcallCallState(uint8_t state)
{
    g_bcallCallState = state;
}