#include <string.h>
// #include "FreeRTOS.h"
// #include "task.h"
#include "mpuHal.h"
#include "logHal.h"
// #include "firmwareUpdateSdk.h"
// #include "parameterSyncSdk.h"
#include "stateSyncSdk.h"
#include "timeSyncSdk.h"
#include "mpuPowerSyncSdk.h"
#include "mcuMpuSyncTask.h"

// static uint8_t g_syncParamList[]={
//     E_ParamId_ICCID,
//     E_ParamId_IMEI,
//     E_ParamId_IMSI,
//     E_ParamId_SN,
//     E_ParamId_VIN,
//     E_ParamId_TSPAddr,
//     E_ParamId_TSPPort,
//     E_ParamId_GB32960Addr,
//     E_ParamId_GB329060Port,
//     E_ParamId_HJ1239Addr,
//     E_ParamId_HJ1239Port,
//     E_ParamId_ECallNumber,
//     E_ParamId_BCallNumber,
//     E_ParamId_ICallNumber
// };

static uint16_t g_cycleTime = 5;                     //ms
static int16_t g_mpuHandle = -1;                      //MPU通信句柄
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
    
    // //参数同步初始化
    // ParameterSyncSdkInit(g_mpuHandle,McuParameterRead,McuParameterWrite,g_cycleTime,g_syncParamList,sizeof(g_syncParamList));
    //状态同步初始化
    StateSyncSdkInit(g_mpuHandle,g_cycleTime);
    // //升级初始化
    // FirmwareUpdateSdkInit(g_cycleTime);
    //时间同步初始化
    TimeSyncSdkInit(g_mpuHandle,g_cycleTime);
    //电源状态同步初始化
    MpuPowerSyncSdkInit(g_mpuHandle,g_cycleTime);
    
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
}

void McuMpuSyncTaskMain(void)
{
    int16_t ret = -1;

    MpuHalDataPack_t  *timeSyncPack;
    MpuHalDataPack_t  *powerSyncPack;
    MpuHalDataPack_t  *stateSyncPack;
    MpuHalDataPack_t  *paramSyncPack;
#if(0)    
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = 0x01;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));
    
    //参数同步初始化
    ParameterSyncSdkInit(g_mpuHandle,McuParameterRead,McuParameterWrite,g_cycleTime,g_syncParamList,sizeof(g_syncParamList));
    //状态同步初始化
    StateSyncSdkInit(g_mpuHandle,g_cycleTime);
    //升级初始化
    FirmwareUpdateSdkInit(g_cycleTime);
    时间同步初始化
    TimeSyncSdkInit(g_mpuHandle,g_cycleTime);
    //电源状态同步初始化
    MpuPowerSyncSdkInit(g_mpuHandle,g_cycleTime);
    
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
#endif
    // while(1)
    {
        timeSyncPack  = NULL;
        powerSyncPack = NULL;
        stateSyncPack = NULL;
        paramSyncPack = NULL;
        //接收数据
        ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
        if(ret == MPU_HAL_STATUS_OK)    //接收到数据？
        {
            TBOX_PRINT("sync: aid %d, mid %d, subcommond %d\r\n", g_dataPack.aid, g_dataPack.mid, (g_dataPack.subcommand & 0x7F));
            if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x02) //同步时间
            {
                timeSyncPack = &g_dataPack;
            }
            else if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x03)//参数同步
            {
                paramSyncPack = &g_dataPack;
            }
            else if(g_dataPack.aid == 0x01 && (g_dataPack.mid == 0x10 || g_dataPack.mid == 0x11 || g_dataPack.mid == 0x16 || g_dataPack.mid == 0x17))//状态同步
            {
                stateSyncPack = &g_dataPack;
            }
            else if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x04)//电源状态同步
            {
                powerSyncPack = &g_dataPack;
            }
        }
        
        // //参数同步周期调用
        // ParameterSyncSdkCycleProcess(paramSyncPack);
        //状态同步周期调用
        StateSyncSdkCycleProcess(stateSyncPack);
        // //升级周期调用
        // FirmwareUpdateSdkCycleProcess();
        //时间同步周期调用
        TimeSyncSdkCycleProcess(timeSyncPack);
        //电源状态同步周期调用
        MpuPowerSyncSdkCycleProcess(powerSyncPack);
    
        MpuHalUartPrintErrState(5);
        // //延时100ms
        // vTaskDelay(10);//pdMS_TO_TICKS(100));
    }
    
}
