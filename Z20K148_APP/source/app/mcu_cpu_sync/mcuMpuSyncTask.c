#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "mpuHal.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "parameterSyncSdk.h"
#include "stateSyncSdk.h"
#include "timeSyncSdk.h"
#include "mpuPowerSyncSdk.h"
#include "mcuMpuSyncTask.h"

static uint8_t g_syncParamList[] = {
    E_ParamId_ICCID, // 0111_cxl
    E_ParamId_IMEI,  //   010E_cxl
    E_ParamId_IMSI,  //   010F_cxl
    E_ParamId_SN,
    E_ParamId_VIN,
    E_ParamId_TSPAddr,
    E_ParamId_TSPPort,
    E_ParamId_GB32960Addr,
    E_ParamId_GB329060Port,
    E_ParamId_HJ1239Addr,
    E_ParamId_HJ1239Port,
    E_ParamId_ECallNumber,
    E_ParamId_BCallNumber,
    E_ParamId_ICallNumber,
    E_ParamId_SW_Version, // 
    E_ParamId_HW_Version, // 
    E_ParamId_CustomSW_Version,
    E_ParamId_CarVersion,
    E_ParamId_ManufactureData,
    E_ParamId_ParatNumber,
    E_ParamId_SupIdentifier,
    // E_ParamId_APN1,               // 0x011B_cxl
    // E_ParamId_IP1_ADDR,           // 0x011C_cxl
    // E_ParamId_TSPPort1,           // 0x011D_cxl
    // E_ParamId_TspTimeout,         // 0xB209_cxl
    // E_ParamId_ECallNumber1,       // 0x011F_cxl
    // E_ParamId_BCallNumber1,       // 0x0124_cxl
    // E_ParamId_OfficialServiceNum, // 0xB20A_cxl
    // E_ParamId_EmergencyAsNum,     // 0xB20B_cxl
    // E_ParamId_TboxPhoneNum,       // 0x0129_cxl
    // E_ParamId_Apn2,               // 0x013C_cxl
    // E_ParamId_Ip2Addr,            // 0xB20E_cxl
    // E_ParamId_Port2,              // 0xB20F_cxl
    // E_ParamId_Ip3Addr,            // 0x105F_cxl
    // E_ParamId_LongConnCycle,      // 0xB211_cxl
    // E_ParamId_NormalUploadPeriod, // 0xB229_cxl
    // E_ParamId_AlarmUploadPeriod,  // 0xB22A_cxl
    // E_ParamId_TspDomainLen,       // 0xB22B_cxl
    // E_ParamId_TspDomain,          // 0xB22C_cxl
    // E_ParamId_TspPortNumeric,     // 0xB22D_cxl
    // E_ParamId_PublicTspDomain,    // 公网TSP域名 0x1014_cxl
    // E_ParamId_Apn1Type,           // APN1类型 0xB247_cxl
    // E_ParamId_Apn2Type,           // APN2类型 0xB248_cxl
    // E_ParamId_TspConnectSetting,  // TSP连接设置 0xB258_cxl
    // E_ParamId_PkiApplyRequest,    // 0xB261_cxl
    // E_ParamId_Apn3,               // 0x1061_cxl
    // E_ParamId_TspDomain1,         // 031C_cxl
    // E_ParamId_OtaPort,            // 0xB2CC_cxl
    // E_ParamId_PkiPort,            // 0x1052_Cxl
    // E_ParamId_TspPort3,           // 0x1053_Cxl
    // // E_ParamId_DtcSettingControl            //0x0120_cxl
    // E_ParamId_TransportMode,   // 0xB2B4_cxl
    // E_ParamId_ManufactoryMode, // 0x0110_cxl
    // E_ParamId_4gResetCount,    // 0xB260_cxl
    // E_ParamId_SW_Version,

    // E_ParamId_OtaDomainName, // 0xB2CB_cxl 0x104F_cxl
    // E_ParamId_PkiDomainName, // 0x1052_cxl
};

static uint16_t g_cycleTime = 10; // ms
static int16_t g_mpuHandle = -1;  // MPU通信句柄
static uint8_t g_dataBuffer[1024] = {0};
static MpuHalDataPack_t g_dataPack;
static uint8_t g_recvDataBuffer[1024] = {0};

void McuMpuSyncTaskMain(void *pvParameters)
{
    int16_t ret = -1;

    MpuHalDataPack_t *timeSyncPack;
    MpuHalDataPack_t *powerSyncPack;
    MpuHalDataPack_t *stateSyncPack;
    MpuHalDataPack_t *paramSyncPack;

    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = 0x01;
    filter.midMin = 0x01;
    filter.midMax = 0x17;
    MpuHalSetRxFilter(g_mpuHandle, &filter);
    MpuHalSetRxBuffer(g_mpuHandle, g_recvDataBuffer, sizeof(g_recvDataBuffer));

    // 参数同步初始化
    ParameterSyncSdkInit(g_mpuHandle, McuParameterRead, McuParameterWrite, g_cycleTime, g_syncParamList, sizeof(g_syncParamList));
    // 状态同步初始化
    StateSyncSdkInit(g_mpuHandle, g_cycleTime);
    //     //升级初始化
    FirmwareUpdateSdkInit(g_cycleTime);
    // 时间同步初始化
    TimeSyncSdkInit(g_mpuHandle, g_cycleTime);
    // 电源状态同步初始化
    MpuPowerSyncSdkInit(g_mpuHandle, g_cycleTime);

    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
    while (1)
    {
        timeSyncPack = NULL;
        powerSyncPack = NULL;
        stateSyncPack = NULL;
        paramSyncPack = NULL;
        // 接收数据
        ret = MpuHalReceive(g_mpuHandle, &g_dataPack, 0);
        if (ret == MPU_HAL_STATUS_OK) // 接收到数据？
        {
            // TBOX_PRINT("McuMpuSyncTaskMain recv aid:0x%02X mid:0x%02X subcmd:0x%02X len:%d\r\n", g_dataPack.aid, g_dataPack.mid, g_dataPack.subcommand, g_dataPack.dataLength);
            if (g_dataPack.aid == 0x01 && g_dataPack.mid == 0x02) // 同步时间
            {
                timeSyncPack = &g_dataPack;
            }
            else if (g_dataPack.aid == 0x01 && g_dataPack.mid == 0x03) // 参数同步
            {
                paramSyncPack = &g_dataPack;
            }
            else if (g_dataPack.aid == 0x01 && (g_dataPack.mid == 0x10 || g_dataPack.mid == 0x08 || g_dataPack.mid == 0x11 || g_dataPack.mid == 0x16 || g_dataPack.mid == 0x17)) // 状态同步
            {
                stateSyncPack = &g_dataPack;
            }
            else if (g_dataPack.aid == 0x01 && g_dataPack.mid == 0x04) // 电源状态同步
            {
                powerSyncPack = &g_dataPack;
            }
        }

        // 参数同步周期调用
        ParameterSyncSdkCycleProcess(paramSyncPack);
        // 状态同步周期调用
        StateSyncSdkCycleProcess(stateSyncPack);
        // 升级周期调用
        FirmwareUpdateSdkCycleProcess();
        // 时间同步周期调用
        //TimeSyncSdkCycleProcess(timeSyncPack);
        // 电源状态同步周期调用
        MpuPowerSyncSdkCycleProcess(powerSyncPack);

        // 延时100ms
        vTaskDelay(10); // pdMS_TO_TICKS(100));
    }
}
