/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: stateSyncSdk.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef _FAULT_SYNC_SDK_H_
#define _FAULT_SYNC_SDK_H_
/****************************** include ***************************************/
#include "stateSyncSdk.h"
#include "logHal.h"



/****************************** Function Declarations *************************/

int16_t StateSyncGetMpuFaultExtStatus(MpuFaultExtStatus_t *extStatus); // 获取协议中MPU故障同步新增的8个状态字段

int16_t McuSendCpuFaultSyncInit(int16_t mpuHandle, uint16_t cycleTime);   /* 初始化MCU->CPU故障同步模块 */

void McuSendCpuFaultSyncCycleProcess(void);                                /* 1Hz 周期发送MCU故障状态给CPU */

int16_t StateSyncGetBe80SnapshotInfo(Be80SnapshotInfo_t *snapshotInfo);    /* 读取BE80快照信息 */


#endif