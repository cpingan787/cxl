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
#include "mpuHal.h"

#define PROTOCOL_AID_FWUPD       (0x03U)


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
  Input:          void
  Output:         无
  Return:         void
  Others:         
*************************************************/
void FirmwareUpdateSdkInit(void);

/*************************************************
 Function: FirmwareUpdateSdkCycleProcess
 Description: 串口升级周期任务处理函数
 Input: pRxMsg 接收数据结构体指针
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdateSdkCycleProcess(MpuHalDataPack_t *pRxMsg);


#endif
