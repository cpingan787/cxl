#include <string.h>
// #include "FreeRTOS.h"
// #include "task.h"
#include "mpuHal.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "parameterSyncSdk.h"
#include "stateSyncSdk.h"
#include "timeSyncSdk.h"
#include "mpuPowerSyncSdk.h"
#include "mcuMpuSyncTask.h"

/* 参数同步支持参数 */
static uint8_t g_syncParamList[]={
    E_PARAMID_ICCID,
    E_PARAMID_IMEI,
    E_PARAMID_SN,
    E_PARAMID_VIN,
    E_PARAMID_TSPAddr,
    E_PARAMID_TSPPort,
    E_PARAMID_ECallNumber,
    E_PARAMID_SW_Version,
    E_PARAMID_HW_Version,
    E_PARAMID_CustomSW_Version,
    E_PARAMID_ParatNumber,
};

static uint16_t g_cycleTime = 5;                     //ms
static int16_t g_mpuHandle = -1;                      //MPU通信句柄
static uint8_t g_dataBuffer[1024];
static MpuHalDataPack_t  g_dataPack;
static uint8_t g_recvDataBuffer[1024];

static int16_t g_mpuHandleFault = -1;                      //MPU通信句柄
static uint8_t g_dataBufferFault[100] = {0};
static MpuHalDataPack_t  g_dataPackFault;
static uint8_t g_recvDataBufferFault[100] = {0};

static uint8_t g_upDateBuffer[1024] = {0};

void McuMpuSyncTaskInit(void)
{
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = 0x01;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));

    g_mpuHandleFault = MpuHalOpen();
    filter.aid = 0x30;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandleFault,&filter);
    MpuHalSetRxBuffer(g_mpuHandleFault,g_recvDataBufferFault,sizeof(g_recvDataBufferFault));   
    g_dataPackFault.pDataBuffer = g_dataBufferFault;
    g_dataPackFault.dataBufferSize = sizeof(g_dataBufferFault);
    
    //参数同步初始化
    ParameterSyncSdkInit(g_mpuHandle,McuParameterRead,McuParameterWrite,g_cycleTime,g_syncParamList,sizeof(g_syncParamList));
    //状态同步初始化
    StateSyncSdkInit(g_mpuHandle,g_cycleTime);
    // //升级初始化
    FirmwareUpdateSdkInit();
    //时间同步初始化
    TimeSyncSdkInit(g_mpuHandle,g_cycleTime);
    //电源状态同步初始化
    MpuPowerSyncSdkInit(g_mpuHandle,g_cycleTime);

    //mcu->mpu 故障状态同步初始化
    McuSendCpuFaultSyncInit(g_mpuHandle,g_cycleTime); 
    
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
    MpuHalDataPack_t  *dtcSyncPack;

    {
        timeSyncPack  = NULL;
        powerSyncPack = NULL;
        stateSyncPack = NULL;
        paramSyncPack = NULL;
        dtcSyncPack = NULL; 

        //接收数据
        ret = MpuHalReceive(g_mpuHandle, &g_dataPack, 0);
        if(ret == MPU_HAL_STATUS_OK)    //接收到数据？
        {
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
            else if(g_dataPack.aid == 0x30 && g_dataPack.mid == 0x01)//DTC故障码同步
            {
                dtcSyncPack = &g_dataPack;
            }
        }

        ret = MpuHalReceive(g_mpuHandleFault,&g_dataPackFault,0);
        if(ret == MPU_HAL_STATUS_OK)
        {
            TBOX_PRINT("sync: aid 0x%02X, mid 0x%02X, subcommond 0x%02X\r\n", g_dataPackFault.aid, g_dataPackFault.mid, (g_dataPackFault.subcommand & 0x7F));

            if(g_dataPackFault.aid == 0x30 && g_dataPackFault.mid == 0x01)
            {
                dtcSyncPack = &g_dataPackFault;
            }
        }
        
        //参数同步周期调用
        ParameterSyncSdkCycleProcess(paramSyncPack);
        //状态同步周期调用
        StateSyncSdkCycleProcess(stateSyncPack);
        //时间同步周期调用
        TimeSyncSdkCycleProcess(timeSyncPack);
        //电源状态同步周期调用
        MpuPowerSyncSdkCycleProcess(powerSyncPack);
        //DTC故障码同步周期调用
        MpuDtcSyncSdkCycleProcess(dtcSyncPack);
        //mcu->mpu 故障状态同步周期调用
        McuSendCpuFaultSyncCycleProcess(); 
    
        MpuHalUartPrintErrState(5);

        /* 升级周期调用 */
        FirmwareUpdateSdkCycleProcess(&g_dataPack); // 2026年3月20日, 新增其他周期调用的处理请放在升级周期调用之前
    }
}
