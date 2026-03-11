#include <string.h>
#include "mpuHal.h"
#include "logHal.h"
#include "mcuMpuSyncTask.h"
#include "firmwareUpdateSdk.h" // 引入固件升级头文件

static uint16_t g_cycleTime = 5;                     
static int16_t g_mpuHandle = -1;                      
static uint8_t g_dataBuffer[1024] = {0};
static MpuHalDataPack_t  g_dataPack;
static uint8_t g_recvDataBuffer[1024] = {0};

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

    // 接收数据
    ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
    if(ret == MPU_HAL_STATUS_OK)
    {
        TBOX_PRINT("sync: aid %d, mid 0x%02X, subcommond %d\r\n", g_dataPack.aid, g_dataPack.mid, (g_dataPack.subcommand & 0x7F));
        
        // 【关键修改】如果 AID 属于升级指令类（如 0x05，请根据实际协议宏调整），则交由升级模块处理
        if(g_dataPack.aid == 0x05) 
        {
            FirmwareUpdateSdkCycleProcess(&g_dataPack);
        }
        else if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x02) // 同步时间
        {
            // 处理时间同步
        }
        // ... 保持你原有的其他状态同步判断
    }
    
    // 升级周期性超时监控（如重启等）
    FirmwareUpdateSdkTimerCallback(); 
    
    MpuHalUartPrintErrState(5);
}