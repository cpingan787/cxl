/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: fvmCfg.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef FVMCFG_H
#define FVMCFG_H
/****************************** include ***************************************/
#include "fvm.h"

/****************************** Macro Definitions ******************************/

#define FVM_TRIP_COUNTER_VALUE_NVMBLOCK_LEN   4
/****************************** Type Definitions ******************************/
/****************************** Function Declarations *************************/
/*************************************************
 Function: Fvm_InitConfig
 Description: FVM模块初始化配置
 Input: pConfig FVM配置结构体指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_InitConfig(void);

/*************************************************
 Function: SecocSaveTripCount
 Description: 行程计数器存储接口
 Input: value 行程计数器值
 Output: None
 Return: void
 Others:
*************************************************/
static void SecocSaveTripCount(uint32_t value);

/*************************************************
 Function: SecocReadTripCount
 Description: 行程计数器读取接口
 Input: pValue 行程计数器值
 Output: None
 Return: void
 Others:
*************************************************/
static void SecocReadTripCount(uint32_t* pValue);

/*************************************************
 Function: SecocErrorNotificationCallBack
 Description: FVM错误通知回调
 Input: error 错误类型
 Output: None
 Return: void
 Others:
*************************************************/
static void SecocErrorNotificationCallBack(Fvm_ErrorType error);

#endif /* FVM_H */
