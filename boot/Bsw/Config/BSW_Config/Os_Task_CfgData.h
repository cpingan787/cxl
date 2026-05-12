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
 * @file              : Os_Task_CfgData.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:07
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/

#ifndef OS_TASK_CFGDATA_H
#define OS_TASK_CFGDATA_H

/* =================================================== inclusions =================================================== */
#include "Os_Types.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */
extern const Os_StackType* const Os_SystemStack_Inf[OS_AUTOSAR_CORES];
extern Os_TCBType* const Os_TCB[CFG_TASK_MAX];
extern const Os_TaskType Os_TASK_IDLE_Inf[OS_AUTOSAR_CORES];
extern const uint16 Os_CfgPriorityMax_Inf[OS_AUTOSAR_CORES];
extern const Os_TaskPropertyType Os_TaskIdRange[OS_AUTOSAR_CORES];
extern const Os_TaskCfgType Os_TaskCfg[CFG_TASK_MAX];
extern const Os_StackType Os_TaskStack[CFG_TASK_MAX];

/* ========================================== external function definitions ========================================= */
/* PRQA S 4152, 1753, 1712 ++ */ /* VL_Os_4152, VL_Os_1753, VL_Os_1712 */
/*
 * DeclareTask
 */
DeclareTask(OsTask_Init);
DeclareTask(OsTask_0);
/* PRQA S 4152, 1753, 1712 -- */
/* PRQA S 1753 ++ */ /* VL_Os_1753 */
extern void IdleHook_Core0(void);
/* PRQA S 1753 -- */
/* ========================================== internal function definitions ========================================= */

#endif /* OS_TASK_CFGDATA_H */
