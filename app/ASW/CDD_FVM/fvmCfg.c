/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: fvmCfg.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "fvmCfg.h"
#include "NvM.h"
#include "Dem.h"
#include "taskPowerManage.h"
#include "logHal.h"
/****************************** Macro Definitions ******************************/
/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static const SecocSdkMsg_t g_txSecocMsgConfigList[] = 
{
	[0] = {.canId = 0x12a, .authStartByte = 8}, // 举例, 实际安全报文配置待替换
	[1] = {.canId = 0xb3, .authStartByte = 8},
    [2] = {.canId = 0x9f, .authStartByte = 8}, 
	[3] = {.canId = 0x7d, .authStartByte = 8},
};


static const SecocSdkMsg_t g_rxSecocMsgConfigList[] = 
{
	[0] = {.canId = 0x56f, .authStartByte = 8}, // 举例, 实际安全报文配置待替换
};

static Fvm_FreshnessValue_t g_txSecocMsgBuffer[sizeof(g_txSecocMsgConfigList)/sizeof(g_txSecocMsgConfigList[0])];
static Fvm_FreshnessValue_t g_rxSecocMsgBuffer[sizeof(g_rxSecocMsgConfigList)/sizeof(g_rxSecocMsgConfigList[0])];

const Fvm_ConfigType g_fvmConfig = 
{
    .Fvm_SaveTripCounter = SecocSaveTripCount,
    .Fvm_ReadTripCounter = SecocReadTripCount,
    .Fvm_ErrorNotification = SecocErrorNotificationCallBack,
    .pTxSecocMsgConfig = g_txSecocMsgConfigList,
    .pRxSecocMsgConfig = g_rxSecocMsgConfigList,
    .pTxMsgBuffer = g_txSecocMsgBuffer,
    .pRxMsgBuffer = g_rxSecocMsgBuffer,
    .txSecocMsgNum = sizeof(g_txSecocMsgConfigList)/sizeof(g_txSecocMsgConfigList[0]),
    .rxSecocMsgNum = sizeof(g_rxSecocMsgConfigList)/sizeof(g_rxSecocMsgConfigList[0]),
};

/****************************** Function Declarations *************************/
/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: Fvm_InitConfig
 Description: FVM模块初始化配置
 Input: pConfig FVM配置结构体指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_InitConfig(void)
{
    return Fvm_Init(&g_fvmConfig);
}

/*************************************************
 Function: SecocSaveTripCount
 Description: 行程计数器存储接口
 Input: value 行程计数器值
 Output: None
 Return: void
 Others:
*************************************************/
static void SecocSaveTripCount(uint32_t value)
{
    ILib_memcpy(
                (const uint8*)NvM_BlockDescriptor[NvMBlock_SecOc_count - 1]
                .NvmRamBlockDataAddress,
                &value,
            FVM_TRIP_COUNTER_VALUE_NVMBLOCK_LEN);
    NvM_WriteBlock(NvMBlock_SecOc_count,NULL_PTR);
}

/*************************************************
 Function: SecocReadTripCount
 Description: 行程计数器读取接口
 Input: pValue 行程计数器值
 Output: None
 Return: void
 Others:
*************************************************/
static void SecocReadTripCount(uint32_t* pValue)
{
    // nvm接口待适配
    NvM_RequestResultType RequestResultPtr = NVM_REQ_PENDING;
    (void)NvM_GetErrorStatus(NvMBlock_SecOc_count, &RequestResultPtr);
    if (NVM_REQ_OK == RequestResultPtr)
    {
        ILib_memcpy(
                pValue,
                (const uint8*)NvM_BlockDescriptor[NvMBlock_SecOc_count - 1u]
                .NvmRamBlockDataAddress,
            FVM_TRIP_COUNTER_VALUE_NVMBLOCK_LEN);
    }
}


static uint8 TripCntIsFaultStatus(NvM_RequestResultType requestResult)          //判断SecOc_count是否属于故障状态
{
    if ((requestResult == NVM_REQ_NOT_OK) ||                                    
        (requestResult == NVM_REQ_INTEGRITY_FAILED) ||                          
        (requestResult == NVM_REQ_REDUNDANCY_FAILED) ||                         
        (requestResult == NVM_REQ_NV_INVALIDATED) ||                            
        (requestResult == NVM_REQ_CANCELED))                                    
    {
        return 1;                                                              //返回1表示故障状态
    }

    return 0;                                                                  
}


void SecocTripCntDtcMonitor_200ms(void)                                         //200ms周期监控SecOc_count这个block当前状态
{
    NvM_RequestResultType requestResult = NVM_REQ_PENDING;                      
    uint8 isEnable = GetTripCounterDetectEnable();                              //监测使能条件是否满足

    if (isEnable == 0)                                                         
    {
        return;                                                                
    }

    NvM_GetErrorStatus(NvMBlock_SecOc_count, &requestResult);             

    if (requestResult == NVM_REQ_OK)                                            
    {
        Dem_SetEventStatus(EventParameter_0xE00444, DEM_EVENT_STATUS_PASSED);   
    }
    else if (TripCntIsFaultStatus(requestResult) != 0)                         
    {
        Dem_SetEventStatus(EventParameter_0xE00444, DEM_EVENT_STATUS_FAILED);   
    }
}

/*************************************************
 Function: SecocErrorNotificationCallBack
 Description: FVM错误通知回调
 Input: error 错误类型
 Output: None
 Return: void
 Others:
*************************************************/
static void SecocErrorNotificationCallBack(Fvm_ErrorType error)
{
    SECOC_LOG_SEND(LOG_LEVEL_ERROR, LOG_EVT_FV_RST_FAIL, "error=%d", (uint8_t)error);

}