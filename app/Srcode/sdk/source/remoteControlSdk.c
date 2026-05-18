#include "stdio.h"
#include "mpuHal.h"
#include "remoteControlSdk.h"
#include "logHal.h"


#define NOT_JUDGE_PRECONDITION              0x00    // 0x01 - 不判断前置条件,test only
#define MCU_SIMULATE_REMOTE_CMD             0x00    // 0x01 - MCU 模拟远控指令,test only
#define DOUBLE_GAIN_TIMEOUT_ENABLE          0x01    // 0x01 - 获取结果超时时间,test only

#define REMOTE_CONTROL_AID                  0x31
#define REMOTE_CONTROL_MID                  0x05
#define REMOTE_CONTROL_SUBCOMMAND_ACK       0x6E
#define REMOTE_CONTROL_SUBCOMMAND_RESULT    0x6F
#define REMOTE_CONTROL_SUBCOMMAND_CMD       0x01

// static uint16_t g_processCycleTime = 0;
static int16_t g_mpuHandle = 0;
static uint8_t g_mpuDataBuffer[64] = {0};
static MpuHalDataPack_t g_mpuRespPack;

int16_t RemoteControlSdkInit(int16_t mpuHandle,uint16_t cycleTime)
{
    if(mpuHandle < 0 || cycleTime == 0)
    {
        return -1;
    }

    g_mpuHandle = mpuHandle;
    // g_processCycleTime = cycleTime;
    // g_mutexHandle = xSemaphoreCreateMutex();
    
    return 0;
}

int16_t RemoteControlSendAck(uint8_t controlCmd)
{
    g_mpuRespPack.aid = REMOTE_CONTROL_AID;
    g_mpuRespPack.mid = REMOTE_CONTROL_MID;
    
    g_mpuRespPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_ACK;
    
    g_mpuRespPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = controlCmd;
    g_mpuRespPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuRespPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle, &g_mpuRespPack);
    RM_DEBUG_PRINT("remote: RemoteControlSendAck - ");
    for(uint8_t i = 0; i < g_mpuRespPack.dataLength; i++)
    {
        RM_DEBUG_PRINT(" %02X", g_mpuRespPack.pDataBuffer[i]);
    }
    RM_DEBUG_PRINT("\r\n");
    return 0;
}

int16_t RemoteControlSendResult(uint8_t controlCmd, uint8_t* cmdData, uint16_t result, uint8_t vehicleResp, uint8_t type)
{
    uint8_t dataLen = 0;

    if (0 == type)
    {
        g_mpuRespPack.aid = REMOTE_CONTROL_AID;
        g_mpuRespPack.mid = REMOTE_CONTROL_MID;
        
        g_mpuRespPack.subcommand = REMOTE_CONTROL_SUBCOMMAND_RESULT;
        
        g_mpuRespPack.dataBufferSize = sizeof(g_mpuDataBuffer);
        g_mpuDataBuffer[dataLen++] = controlCmd;
        g_mpuDataBuffer[dataLen++] = result >> 8;
        g_mpuDataBuffer[dataLen++] = result & 0x00FF;
        g_mpuDataBuffer[dataLen++] = vehicleResp;
        // g_mpuDataBuffer[dataLen++] = cmdData[0];
        // g_mpuDataBuffer[dataLen++] = cmdData[1];
        // g_mpuDataBuffer[dataLen++] = cmdData[2];
        // g_mpuDataBuffer[dataLen++] = cmdData[3];
        // g_mpuDataBuffer[dataLen++] = cmdData[4];
        // g_mpuDataBuffer[dataLen++] = cmdData[5];

        g_mpuRespPack.pDataBuffer = g_mpuDataBuffer;
        g_mpuRespPack.dataLength = dataLen;
        
        MpuHalTransmit(g_mpuHandle, &g_mpuRespPack);

        RM_DEBUG_PRINT("remote: RemoteControlSendResult - ");
        for(uint8_t i = 0; i < g_mpuRespPack.dataLength; i++)
        {
            RM_DEBUG_PRINT(" %02X", g_mpuRespPack.pDataBuffer[i]);
        }
        RM_DEBUG_PRINT("\r\n");
    }
    else
    {
        // setBleControlVehicleResult(controlCmd, cmdData, result);
        // RM_DEBUG_PRINT("remote: RemoteControlSendResult - %02X %02X %02X\r\n", controlCmd, cmdData[0], result);
    }

    return 0;
}