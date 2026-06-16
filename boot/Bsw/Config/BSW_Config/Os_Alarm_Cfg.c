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
 * @file              : Os_Alarm_Cfg.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:05
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Alarm.h"
#include "Os_Appl.h"
#include "Os.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
static void AlarmCallback_OsAlarm_0(void);
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
static void AlarmCallback_OsAlarm_0(void)
{
    (void)ActivateTaskAsyn(OsTask_0);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"


#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1531 ++ */ /* VL_QAC_OneRefSymbol */
const Os_AlarmCfgType Os_AlarmCfg[CFG_ALARM_MAX] =
/* PRQA S 1531 -- */
{
    {
        NULL_PTR,                           /*osAlarmAutostartRef*/
        &AlarmCallback_OsAlarm_0,            /*osAlarmCallback*/
        OS_CORE_ID_0,
        SystemTimer_Core_0,         /*osAlarmCounter*/
    },
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_ACBType Os_ACB_OsAlarm_0;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1531 ++ */ /* VL_QAC_OneRefSymbol */
Os_ACBType* const Os_ACB[CFG_ALARM_MAX] =
/* PRQA S 1531 -- */
{
    /* Core0 */
    &Os_ACB_OsAlarm_0,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++*/  /* VL_QAC_OneRefSymbol */
const Os_AlarmIndexType Os_AlarmIdRange[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
    /* Core0 */
    {CFG_ALARM_ID_CORE0_BEGIN, CFG_ALARM_ID_CORE0_END},
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

/* PRQA S 6520 EOF */ /* VL_MTR_Os_STVAR */
