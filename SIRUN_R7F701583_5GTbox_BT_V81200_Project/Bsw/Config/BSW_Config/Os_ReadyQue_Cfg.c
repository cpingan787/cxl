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
 * @file              : Os_ReadyQue_Cfg.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:06
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Task.h"
#include "Os_ReadyQue.h"
#include "Os_Core.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_TaskType Os_ActivateQueue_Core0_0[1];
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_TaskType Os_ActivateQueue_Core0_1[2];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_TaskType Os_ActivateQueue_Core0_2[2];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_ReadyQueueType Os_ReadyQueueMark_Core0[CFG_PRIORITY_MAX_CORE0];
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
static Os_TaskType* const Os_ReadyQueue_Core0[CFG_PRIORITY_MAX_CORE0] =
{
    Os_ActivateQueue_Core0_0,
    Os_ActivateQueue_Core0_1,
    Os_ActivateQueue_Core0_2,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
static const uint32 Os_ActivateQueueSize_Core0[CFG_PRIORITY_MAX_CORE0] =
{
    1U,
    2U,
    2U,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_PriorityType Os_ReadyMap_Core0[READY_MAP_SIZE(CFG_PRIORITY_MAX_CORE0)];
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
static const Os_ReadyQueueManageType Os_ReadyQueMg_Core0 = 
{
    Os_ReadyQueueMark_Core0 ,
    Os_ActivateQueueSize_Core0 ,
    Os_ReadyQueue_Core0 ,
    Os_ReadyMap_Core0 ,
    CFG_PRIORITY_MAX_CORE0 ,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"


#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1531 ++ */ /* VL_QAC_OneRefSymbol */
const Os_ReadyQueueManageType * const Os_ReadyQueMg_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1531 -- */ 
{
    &Os_ReadyQueMg_Core0,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/*=======[E N D   O F   F I L E]==============================================*/
