#include <string.h>
#include "mpuHal.h"
#include "logHal.h"
#include "mcuMpuSyncTask.h"
#include "firmwareUpdateSdk.h" // 引入固件升级头文件

static uint16_t g_cycleTime = 5;                     
int16_t g_mpuHandle = -1;                      
static uint8_t g_dataBuffer[1024] = {0};
static MpuHalDataPack_t  g_dataPack;
static uint8_t g_recvDataBuffer[1024] = {0};

//static uint8_t g_recvDataBuffer[600];                  //cpu????????????buf;
/*************************************************
  Function:       FirmwareUpdateSdkInit
  Description:    ?????????
  Input:          mpuHandle:mpu?????
                  cycleTime:??????????,??ms
  Output:         ?
  Return:         0:??
                  -1:??
  Others:         
*************************************************/
int16_t FirmwareUpdateSdkInit(uint16_t cycleTime)
{
    MpuHalFilter_t filter;

    filter.aid = 0x03;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;

    if(cycleTime == 0)
    {
        return -1;
    }

//    g_cycleTime = cycleTime;

    g_mpuHandle = MpuHalOpen();
    if(g_mpuHandle < 0)
    {
        return -1;
    }

    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));
    return 0;
}


void McuMpuSyncTaskInit(void)
{
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = 0x01;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));
    
    // 初始化升级模块
    FirmwareUpdateSdkInit(g_cycleTime);
    
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
}

void McuMpuSyncTaskMain(void)
{
    int16_t ret = -1;

    ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
    if(ret == MPU_HAL_STATUS_OK)
    {
        TBOX_PRINT("sync: aid %d, mid 0x%02X, subcommond %d\r\n", g_dataPack.aid, g_dataPack.mid, (g_dataPack.subcommand & 0x7F));
        
        
        if(g_dataPack.aid == 0x05) 
        {
            FirmwareUpdateSdkCycleProcess(g_dataPack.pDataBuffer, g_dataPack.dataBufferSize);
        }
        else if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x02)
        {

        }
    }
    
    FirmwareUpdateSdkTimerCallback(); 
    
    MpuHalUartPrintErrState(5);
}