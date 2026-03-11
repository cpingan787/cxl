/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       tfirmwareUpdateSdk
  Author:          lei.wang
  Created Time:    2024
  Description:     upgradation module
   Others:      // 其它说明
*************************************************/
#ifndef _FIRMWARE_UPDATE_SDK_H_
#define _FIRMWARE_UPDATE_SDK_H_
#include "stdint.h"

#define FOTA_TIMEOUT_CNT    (10000U)  
typedef enum
{
    E_FlashState_Idle,
    E_FlashState_FlashIn,
    E_FlashState_FlashUnlock,
    E_FlashState_FlashErase,
    E_FlashState_FlashData,
    E_FlashState_FlashFinish,
    E_FlashState_Reset,
    E_FlashState_Error,
}FlashState_e;

typedef enum
{
    E_FirmwareUpdateSdkCmd_Default                = 0u,  
    E_FirmwareUpdateSdkCmd_GetMcuVersion          = 1u,
    E_FirmwareUpdateSdkCmd_GetMcuSeed             = 2u,
    E_FirmwareUpdateSdkCmd_UnlockMcuFlash         = 3u,
    E_FirmwareUpdateSdkCmd_EnterDownloadMode      = 4u,
    E_FirmwareUpdateSdkCmd_EraseMcuMemory         = 5u,
    E_FirmwareUpdateSdkCmd_DownloadMcuMemory      = 6u,
    E_FirmwareUpdateSdkCmd_VirifyMcuMemory        = 7u,
    E_FirmwareUpdateSdkCmd_SoftwareResetMcu       = 8u,
    E_FirmwareUpdateSdkCmd_GetMcuBankId           = 9u,
}FirmwareUpdateSdkCmd_e;
/*************************************************
  Function:       FirmwareUpdateSdkInit
  Description:    升级模块初始化接口
  Input:          cycleTime:周期调用接口调用周期
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t FirmwareUpdateSdkInit(uint16_t cycleTime);

/*************************************************
  Function:       FirmwareUpdateSdkCycleProcess
  Description:    升级模块周期调用接口
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void FirmwareUpdateSdkCycleProcess(MpuHalDataPack_t *pack);
static void FirmwareUpdateSdkResetTimer(void);
void FirmwareUpdateSdkTimerCallback(void);
#endif
