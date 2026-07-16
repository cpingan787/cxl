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
 * @file              : Os_Task_Cfg.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:07
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Task.h"

/* ===================================================== macros ===================================================== */
/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */
static void Os_TaskEntry_IdleCore0(void);
/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
/* PRQA S 6070 ++ */ /* VL_MTR_Os_STCAL */
/* PRQA S 4152 ++ */ /* VL_Os_4152 */

#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_SysStack_Core0[1024];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
static const Os_StackType Os_SystemStackCore0 =
{
    /* PRQA S 0488 ++ */ /* VL_Os_0488 */
    OS_STACK_TOP(Os_SysStack_Core0), OS_STACK_BOTTOM(Os_SysStack_Core0)
    /* PRQA S 0488 -- */
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_TaskStack_Idle_Core0[128];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_OsTask_Init_Stack[1024];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_OsTask_0_Stack[1024];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"

/* PRQA S 4152 -- */

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533, 1502 ++ */  /* VL_QAC_OneRefSymbol */
const Os_StackType Os_TaskStack[CFG_TASK_MAX] =
/* PRQA S 1533, 1502 -- */
{
    /* PRQA S 0488 ++ */ /* VL_Os_0488 */
    {OS_STACK_TOP(Os_OsTask_Init_Stack), OS_STACK_BOTTOM(Os_OsTask_Init_Stack)},
    {OS_STACK_TOP(Os_OsTask_0_Stack), OS_STACK_BOTTOM(Os_OsTask_0_Stack)},
    {OS_STACK_TOP(Os_TaskStack_Idle_Core0), OS_STACK_BOTTOM(Os_TaskStack_Idle_Core0)},
    /* PRQA S 0488 -- */
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"





#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
const Os_TaskCfgType Os_TaskCfg[CFG_TASK_MAX] =
{
    /* PRQA S 3120 ++ */ /* VL_QAC_MagicNum */

	{
        (Os_EventMaskType)0x0ULL,                     /*EventAccessMask*/
        &Os_TaskEntry_OsTask_Init,	/*osTaskEntry*/
        /* PRQA S 0488 ++ */ /* VL_Os_0488 */
        {OS_STACK_TOP(Os_OsTask_Init_Stack), OS_STACK_BOTTOM(Os_OsTask_Init_Stack)},
        /* PRQA S 0488 -- */
        1U,  /*osTaskActivation*/
        1U,  /*osTaskPriority*/
        OSDEFAULTAPPMODE,	/*osTaskAutoStartMode*/
        OS_PREEMPTIVE_NON,	/*osTaskSchedule*/
        0U,                    /*Rsv*/
        OS_CORE_ID_0,
    },
	{
        (Os_EventMaskType)0x0ULL,                     /*EventAccessMask*/
        &Os_TaskEntry_OsTask_0,	/*osTaskEntry*/
        /* PRQA S 0488 ++ */ /* VL_Os_0488 */
        {OS_STACK_TOP(Os_OsTask_0_Stack), OS_STACK_BOTTOM(Os_OsTask_0_Stack)},
        /* PRQA S 0488 -- */
        1U,  /*osTaskActivation*/
        2U,  /*osTaskPriority*/
        OS_NULL_APPMODE,	/*osTaskAutoStartMode*/
        OS_PREEMPTIVE_FULL,	/*osTaskSchedule*/
        0U,                    /*Rsv*/
        OS_CORE_ID_0,
    },
    {
        (Os_EventMaskType)0x0ULL,             /*EventAccessMask*/
       	&Os_TaskEntry_IdleCore0,			/*osTaskEntry*/
        /* PRQA S 0488 ++ */ /* VL_Os_0488 */
        {OS_STACK_TOP(Os_TaskStack_Idle_Core0), OS_STACK_BOTTOM(Os_TaskStack_Idle_Core0)},
		/* PRQA S 0488 -- */
        1U,									/*osTaskActivation*/
		0U,									/*osTaskPriority*/
		OS_ALL_APPMODE,						/*osTaskAutoStartMode*/
		OS_PREEMPTIVE_FULL,					/*osTaskSchedule*/
        0U,                                 /*Rsv*/
        OS_CORE_ID_0,
    }
    /* PRQA S 3120 -- */
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
const Os_StackType* const Os_SystemStack_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	/* Core0 */
	&Os_SystemStackCore0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
const Os_TaskType Os_TASK_IDLE_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	OS_TASK_IDLE_CORE0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
const uint16 Os_CfgPriorityMax_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	/* Core0 */
	CFG_PRIORITY_MAX_CORE0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

/* PRQA S 4152 ++ */ /* VL_Os_4152 */
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_TCBType Os_TCB_OsTask_Init;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_TCBType Os_TCB_OsTask_0;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_TCBType Os_TCB_OS_TASK_IDLE_CORE0;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 4152 -- */

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
Os_TCBType* const Os_TCB[CFG_TASK_MAX] =
{
    &Os_TCB_OsTask_Init,
    &Os_TCB_OsTask_0,
    &Os_TCB_OS_TASK_IDLE_CORE0,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
const Os_TaskPropertyType Os_TaskIdRange[OS_AUTOSAR_CORES] = 
{
    /* PRQA S 4521, 4342, 1461 ++ */ /* VL_Os_4521, VL_Os_4342, VL_Os_1461 */
    {
        {CFG_BASIC_TASK_ID_CORE0_BEGIN, (Os_TaskType)(OS_TASK_IDLE_CORE0 + 1U)},/* All Task */
        {INVALID_TASK, INVALID_TASK},/* Extended Task */
        {CFG_BASIC_TASK_ID_CORE0_BEGIN, CFG_BASIC_TASK_ID_CORE0_END},/* Basci Task */
    },
    /* PRQA S 4521, 4342, 1461 -- */ 
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <idle task>
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * @param[in]           <None>
 * @param[out]          <None>
 * @param[in/out]       <None>
 * @return              <the priority value>
 * PreCondition         <None>
 * CallByAPI            <GetResource and so on >
 * REQ ID               <None>
 */
/******************************************************************************/
static void Os_TaskEntry_IdleCore0(void)
{
    while (1) /* PRQA S 2740 */ /* VL_Os_2740 */
    {
        IdleHook_Core0();
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

/* PRQA S 6070 -- */
/* PRQA S 6520, 6540 EOF */ /* VL_MTR_Os_CONF, VL_MTR_Os_STTPP */
