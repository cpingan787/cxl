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
 * @file              : Os_Task_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:07
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/

#ifndef OS_TASK_CFG_H
#define OS_TASK_CFG_H

/* =================================================== inclusions =================================================== */

/* ===================================================== macros ===================================================== */
/* Scheduling policy: full preemptive, no preemptive, mixed preemptive */
#define     CFG_SCHED_POLICY                		OS_PREEMPTIVE_FULL
/* number of task and resource priority in system */
#define     CFG_PRIORITY_MAX_CORE0					(2U)

/* All of the tasks */
#define		CFG_TASK_MAX							(2U)
#define		CFG_EXTENDED_TASK_MAX					(0U)
/* Core0 */
#define     CFG_TASK_MAX_CORE0              		(2U)
#define     CFG_EXTENDED_TASK_MAX_CORE0     		(0U)

/* ================================================ type definitions ================================================ */
/* PRQA S 0722, 0724, 1271, 1434, 0723, 0784 ++ *//* VL_Os_0722, VL_Os_0724, VL_Os_1271, VL_Os_1434, VL_Os_0723, VL_Os_0784 */
/* Task identifiers. */
typedef enum
{
    /* Basic Task */
    CFG_BASIC_TASK_ID_CORE0_BEGIN = 0,
    OsTask_0 = CFG_BASIC_TASK_ID_CORE0_BEGIN,
    CFG_BASIC_TASK_ID_CORE0_END,
    /* Core0 Idle Task */
    OS_TASK_IDLE_CORE0 = CFG_BASIC_TASK_ID_CORE0_END,

    INVALID_TASK = 0xFFFFU,
} Os_TaskType;
/* PRQA S 0722, 0724, 1271, 1434, 0723, 0784 -- */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

#endif /* OS_TASK_CFG_H */
