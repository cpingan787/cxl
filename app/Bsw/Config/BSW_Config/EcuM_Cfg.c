/*==============================================================================*/
/**
 *
 * Copyright (C) iSOFT   (2023)
 *
 * All rights reserved.
 *
 * This document contains proprietary information belonging to iSOFT.
 * Passing on and copying of this document, and communication
 * of its contents is not permitted without prior written authorization.
 * 
 ********************************************************************************
 * 
 *  @MCU                : R7F7015813
 *  @file               : EcuM_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:22:51
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "EcuM_Internal.h"
/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/
#define ECUM_START_SEC_CONFIG_DATA_16
#include "EcuM_MemMap.h"
CONST(ResourceType, ECUM_CONST)EcuM_OSResource = RES_SCHEDULER_CORE0;
#define ECUM_STOP_SEC_CONFIG_DATA_16
#include "EcuM_MemMap.h"
#define ECUM_START_SEC_CONFIG_DATA_8
#include "EcuM_MemMap.h"
static CONST(uint8, ECUM_CONST) Ecum_WkSources_0[2]={0, 1};
#define ECUM_STOP_SEC_CONFIG_DATA_8
#include "EcuM_MemMap.h"

#define ECUM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "EcuM_MemMap.h"
/*Containers:EcuMSleepMode*/
CONST(EcuM_SleepModeCfgType, ECUM_CONST) EcuM_SleepModeCfgs[ECUM_MAX_SLEEP_MODE_NUM]=
{
    /*EcuMSleepMode*/
    {
        TRUE,    /*sleepSuspend*/
        0xff,        /*mcuMode(sleep)*/
        2,    /*numberOfWakeSource*/
        &Ecum_WkSources_0[0],/*wkSrcIdx*/
        EcuMWakeupSource_CAN|EcuMWakeupSource_Local/*wkMask*/
    }
};
#define ECUM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "EcuM_MemMap.h"
#define ECUM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "EcuM_MemMap.h"
static CONST(NetworkHandleType, ECUM_CONST) EcuM_WkSource0RefComMCh =
{
    ComMChannel_0
};

/*Containers:EcuMWakeupSource*/
CONST(EcuM_WakeupSourceCfgType, ECUM_CONST) EcuM_WkSourceCfgs[ECUM_MAX_WAKE_UP_SOURCE_NUM]=
{
    /*EcuMWakeupSource_CAN*/
    {
        0,    /*checkWkupTimeout*/
        3000,    /*validationTimeout*/
        EcuMWakeupSource_CAN,/*wkSource*/
        FALSE,    /*isPolling*/
        &EcuM_WkSource0RefComMCh,       /*comMChnl*/
        0u,    /*resetResasonNum*/
        NULL_PTR,    /*resetResasonPtr*/
    },
    /*EcuMWakeupSource_Local*/
    {
        0,    /*checkWkupTimeout*/
        3000,    /*validationTimeout*/
        EcuMWakeupSource_Local,/*wkSource*/
        FALSE,    /*isPolling*/
        NULL_PTR,/*comMChnl*/
        0u,    /*resetResasonNum*/
        NULL_PTR,    /*resetResasonPtr*/
    },
    /*EcuMWakeupSource_Time*/
    {
        0,    /*checkWkupTimeout*/
        3000,    /*validationTimeout*/
        EcuMWakeupSource_Time,/*wkSource*/
        FALSE,    /*isPolling*/
        NULL_PTR,/*comMChnl*/
        0u,    /*resetResasonNum*/
        NULL_PTR,    /*resetResasonPtr*/
    }
};
#define ECUM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "EcuM_MemMap.h"
#define ECUM_START_SEC_CONFIG_DATA_8
#include "EcuM_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
CONST(Mcu_ModeType, ECUM_CONST)EcuM_NormalMcuModeCfg = ECUM_DAFULT_MCU_NORMAL_MODE;    /* EcuMNormalMcuModeRef*/
/* PRQA S 1533 -- */ /* VL_QAC_OneRefSymbol */
#define ECUM_STOP_SEC_CONFIG_DATA_8
#include "EcuM_MemMap.h"

#define ECUM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "EcuM_MemMap.h"
/*Containers:EcuMFlexUserConfig*/
CONST(EcuM_UserCfgType, ECUM_CONST) EcuM_UserCfgs[ECUM_MAX_USER_NUM]=
{
    /*EcuMFlexUserConfig*/
    {
        TRUE,    /*goDownAllowed*/
        0     /*usrId*/
    }
};
#define ECUM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "EcuM_MemMap.h"

