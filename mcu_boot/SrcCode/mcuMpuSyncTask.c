/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: mcuMpuSyncTask.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#include <string.h>
#include "mpuHal.h"
#include "logHal.h"
#include "mcuMpuSyncTask.h"
#include "firmwareUpdateSdk.h"

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static uint16_t g_cycleTime = 5;                     
int16_t g_mpuHandle = -1;                      
static uint8_t g_dataBuffer[1024] = {0};
static MpuHalDataPack_t  g_dataPack;
static uint8_t g_recvDataBuffer[1024] = {0};


/*************************************************
 Function: FirmwareUpdateSdkInit
 Description: 初始化固件升级SDK
 Input: void
 Output: None
 Return: int16_t 0 成功 -1 失败
 Others:
*************************************************/
int16_t FirmwareUpdateSdkInit(void)
{
    MpuHalFilter_t filter;

    filter.aid = 0x03;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;

    g_mpuHandle = MpuHalOpen();
    if (g_mpuHandle < 0)
    {
        TBOX_PRINT("MpuHalOpen failed\r\n");
        return -1;
    }

    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));
    return 0;
}

/*************************************************
 Function: McuMpuSyncTaskInit
 Description: 初始化MPU同步任务
 Input: cycleTime 周期时间(ms)
 Output: None
 Return: void
 Others:
*************************************************/
void McuMpuSyncTaskInit(void)
{    
    FirmwareUpdateSdkInit();
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
}

/*************************************************
 Function: McuMpuSyncTaskMain
 Description: 主循环处理MPU同步任务
 Input: None
 Output: None
 Return: void
 Others:
*************************************************/
void McuMpuSyncTaskMain(void)
{
    int16_t ret = -1;

    ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
    if (ret == MPU_HAL_STATUS_OK)
    {
        TBOX_PRINT("sync: aid %d, mid 0x%02X, subcommond %d\r\n", g_dataPack.aid, g_dataPack.mid, (g_dataPack.subcommand & 0x7F));
        FirmwareUpdateSdkCycleProcess(g_mpuHandle, &g_dataPack);
    }
}