/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: firmwareUpdateSdk.h
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
/****************************** Type Definitions ******************************/
/****************************** Public Function Implementations ***************/
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
