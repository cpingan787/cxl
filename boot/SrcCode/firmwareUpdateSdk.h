/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: fvm.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef _FIRMWARE_UPDATE_SDK_H_
#define _FIRMWARE_UPDATE_SDK_H_
/****************************** include ***************************************/
#include "stdint.h"
#include "mpuHal.h"

/****************************** Macro Definitions ******************************/
#define FOTA_TIMEOUT_CNT    (10000U) 

/****************************** Type Definitions ******************************/
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

/****************************** Function Declarations *************************/
/*************************************************
 Function: FirmwareUpdateSdkInit
 Description: 初始化固件升级SDK
 Input: void
 Output: None
 Return: int16_t 0 成功 -1 失败
 Others:
*************************************************/
int16_t FirmwareUpdateSdkInit(void);

/*************************************************
 Function: FirmwareUpdateSdkCycleProcess
 Description: 串口升级周期任务处理函数
 Input: handle 串口句柄
        pRxMsg 接收数据结构体指针
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdateSdkCycleProcess(int16_t handle, MpuHalDataPack_t *pRxMsg);

/*************************************************
 Function: FirmwareUpdate_SetMpuOtaFlag
 Description: 设置MPU OTA标志位
 Input: flag OTA标志位
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdate_SetMpuOtaFlag(uint8_t flag);

/*************************************************
 Function: FirmwareUpdate_GetMpuOtaFlag
 Description: 获取MPU OTA标志位
 Input: None
 Output: None
 Return: uint8_t OTA标志位
 Others:
*************************************************/
uint8_t FirmwareUpdate_GetMpuOtaFlag(void);

/*************************************************
 Function: FirmwareUpdate_UnlockMcuFlashAck
 Description: 解锁MPU Flash响应
 Input: None
 Output: None
 Return: void
 Others:
*************************************************/
void FirmwareUpdate_UnlockMcuFlashAck(void);


#endif