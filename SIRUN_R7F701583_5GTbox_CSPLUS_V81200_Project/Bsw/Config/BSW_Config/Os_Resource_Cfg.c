/**
 * COPYRIGHT
 * ---------------------------------------------------------------------------------------------------------------------
 * Copyright (c) iSOFT INFRASTRUCTURE SOFTWARE CO., LTD. This software is proprietary to
 * iSOFT INFRASTRUCTURE SOFTWARE CO., LTD., and all rights are reserved by iSOFT INFRASTRUCTURE SOFTWARE CO., LTD.
 * Without the express written permission of the company, no organization or individual may copy, install, trial,
 * distribute, or reverse engineer this software. For terms of use and further details, please refer to the End User
 * License Agreement (EULA) or contact us business@i-soft.com.cn for more assistance.
 *
 * This file contains code from iSoft, which is licensed under the LGPL-2.1. However, due to a special exception,
 * you are not required to comply with the provisions of section 6a of LGPL-2.1. Specifically, you may distribute
 * your software, including this file, under terms of your choice, including proprietary licenses, without needing to
 * provide the source code or object code as specified in section 6a. For more details, please refer to the project's
 * LICENSE and EXCEPTION files and the specific exception statement.
 * ---------------------------------------------------------------------------------------------------------------------
 * FILE DESCRIPTION
 * ---------------------------------------------------------------------------------------------------------------------
 * @MCU               : R7F7015833
 * @file              : Os_Resource_Cfg.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-02-03 11:19:43
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Resource.h"
#include "Os_Appl.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
#define OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
Os_ResourceType Os_ICBisrC2ResourceStack[CFG_ISR2_MAX][CFG_STD_RESOURCE_MAX];
/* PRQA S 1533 -- */
#define OS_STOP_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
Os_ResourceType Os_TCBTaskResourceStack[CFG_TASK_MAX][CFG_STD_RESOURCE_MAX];
/* PRQA S 1533 -- */
#define OS_STOP_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#include "Os_MemMap.h"




#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_OsTask_Init[1] =
/* PRQA S 4152, 3132 -- */
{
    0x1U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_OsTask_1ms[1] =
/* PRQA S 4152, 3132 -- */
{
    0x1U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_OsTask_5ms[1] =
/* PRQA S 4152, 3132 -- */
{
    0x1U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_OsTask_10ms[1] =
/* PRQA S 4152, 3132 -- */
{
    0x1U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_OsTask_50ms[1] =
/* PRQA S 4152, 3132 -- */
{
    0x1U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_OsTask_100ms[1] =
/* PRQA S 4152, 3132 -- */
{
    0x1U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"



#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
const uint16* const Os_TaskResourceAccessMask[CFG_TASK_MAX] =
/* PRQA S 1533 -- */
{
    Os_ResourceAccessMask_OsTask_Init,
    Os_ResourceAccessMask_OsTask_1ms,
    Os_ResourceAccessMask_OsTask_5ms,
    Os_ResourceAccessMask_OsTask_10ms,
    Os_ResourceAccessMask_OsTask_50ms,
    Os_ResourceAccessMask_OsTask_100ms,
	NULL_PTR, /* IdleTask_Core0 */
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_RCAN1ERR_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_RCAN1TRX_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_RCANGRECC0_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_ADCA0I1_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_ADCA1I1_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_TAUJ0I0_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_TAUD0I9_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152, 3132 ++ */ /* VL_Os_4152, VL_Os_3132 */
static const uint16 Os_ResourceAccessMask_TAUB0I12_IRQ[1] =
/* PRQA S 4152, 3132 -- */
{
    0U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"


#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
const uint16* const Os_IsrResourceAccessMask[CFG_ISR_MAX] =
/* PRQA S 1533 -- */
{
    NULL_PTR,   /* SystemTimerCore0 */
    Os_ResourceAccessMask_RCAN1ERR_IRQ,
    Os_ResourceAccessMask_RCAN1TRX_IRQ,
    Os_ResourceAccessMask_RCANGRECC0_IRQ,
    Os_ResourceAccessMask_ADCA0I1_IRQ,
    Os_ResourceAccessMask_ADCA1I1_IRQ,
    Os_ResourceAccessMask_TAUJ0I0_IRQ,
    Os_ResourceAccessMask_TAUD0I9_IRQ,
    Os_ResourceAccessMask_TAUB0I12_IRQ,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533, 1531 ++ */  /* VL_QAC_OneRefSymbol */
const Os_ResourceCfgType Os_ResourceCfg[CFG_STD_RESOURCE_MAX] =
/* PRQA S 1533, 1531 -- */
{
    {
        OS_CORE_ID_0,
        6U,	/*ceiling*/
        OS_RES_OCCUPIED_BY_TASK,	/*resourceOccupyType*/
    },
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"


#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
const Os_ResourceType Os_ResScheduler_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	RES_SCHEDULER_CORE0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
const uint16 Os_CfgStdResourceMax_Inf[OS_AUTOSAR_CORES] =
{
	/* Core0 */
	CFG_STD_RESOURCE_MAX_CORE0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_RCBType Os_RCB_RES_RESEDULER_CORE0;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"


#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1531 ++ */ /* VL_QAC_OneRefSymbol */
Os_RCBType* const Os_RCB[CFG_STD_RESOURCE_MAX] =
/* PRQA S 1531 -- */
{
    &Os_RCB_RES_RESEDULER_CORE0,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1531, 1533 ++ */ /* VL_QAC_OneRefSymbol */
const Os_ResourceRangeType Os_StdResIdRange[OS_AUTOSAR_CORES] =
/* PRQA S 1531, 1533 -- */
{
    /* Core0 */
    {CFG_STD_RESOURCE_ID_CORE0_BEGIN, CFG_STD_RESOURCE_ID_CORE0_END},
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 6520, 6620 EOF */ /* VL_MTR_Os_STVAR, VL_MTR_Os_STSCT */
