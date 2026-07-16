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
 * @file              : Os_Interrupt_Cfg.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 13:41:51
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Arch_Processor.h"
#include "Os_Arch_Irq.h"
#include "Os_Interrupt.h"
#include "Os_Counter.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */




/*
 * Private data, be accessed by own core.
 */
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_IsrType Os_SysIsrNestQueueCore0[CFG_ISR_MAX_CORE0];
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_ICBType Os_ICB_SYS_TIMER_CORE0;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_ICBType Os_ICB_RCAN0ERR_IRQ;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_ICBType Os_ICB_RCAN0TRX_IRQ;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_ICBType Os_ICB_RCANGRECC0_IRQ;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
static Os_ICBType Os_ICB_WDTA1_IRQ;
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
Os_ICBType* const Os_ICB[CFG_ISR_MAX] =
{
    &Os_ICB_SYS_TIMER_CORE0,
    &Os_ICB_RCAN0ERR_IRQ,
    &Os_ICB_RCAN0TRX_IRQ,
    &Os_ICB_RCANGRECC0_IRQ,
    &Os_ICB_WDTA1_IRQ,
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
Os_IsrType* const Os_SysIsrNestQueue_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	Os_SysIsrNestQueueCore0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"


#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_SysTimer_Stack_Core0[128];/*system timer*/
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"


#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_RCAN0ERR_IRQ_Stack_Core0[128];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_RCAN0TRX_IRQ_Stack_Core0[128];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_RCANGRECC0_IRQ_Stack_Core0[512];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
#define OS_START_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"
/* PRQA S 3132 ++ */ /* VL_QAC_MagicNum */
static Os_StackDataType Os_WDTA1_IRQ_Stack_Core0[128];
/* PRQA S 3132 -- */
#define OS_STOP_SEC_VAR_CLEARED_CORE0_32
#include "Os_MemMap.h"


#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
const Os_StackType Os_ISR2Stack[CFG_ISR_MAX] =
{
    /* PRQA S 0488 ++ */ /* VL_Os_0488 */
    /* Core0 */
	{OS_STACK_TOP(Os_SysTimer_Stack_Core0), OS_STACK_BOTTOM(Os_SysTimer_Stack_Core0)},/*system timer*/
	{OS_STACK_TOP(Os_RCAN0ERR_IRQ_Stack_Core0), OS_STACK_BOTTOM(Os_RCAN0ERR_IRQ_Stack_Core0)},
	{OS_STACK_TOP(Os_RCAN0TRX_IRQ_Stack_Core0), OS_STACK_BOTTOM(Os_RCAN0TRX_IRQ_Stack_Core0)},
	{OS_STACK_TOP(Os_RCANGRECC0_IRQ_Stack_Core0), OS_STACK_BOTTOM(Os_RCANGRECC0_IRQ_Stack_Core0)},
	{OS_STACK_TOP(Os_WDTA1_IRQ_Stack_Core0), OS_STACK_BOTTOM(Os_WDTA1_IRQ_Stack_Core0)},
    /* PRQA S 0488 -- */
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"



#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
const Os_IsrCfgType Os_IsrCfg[CFG_ISR_MAX] =
{
    {
        OS_ISR_TAUB0I0_IRQ,	/*OsIsrSrc*/
		OS_ARCH_INT_CPU0,	/*OsIsrSrcType*/
        OS_CORE_ID_0,
        OS_ISR_CATEGORY2,	/*OsIsrCatType*/
        FALSE,	/*OsNestedEnable*/
    },
    {
        OS_ISR_RCAN0ERR_IRQ,/*OsIsrSrc*/
        OS_ARCH_INT_CPU0,	/*OsIsrSrcType*/
        OS_CORE_ID_0,
        OS_ISR_CATEGORY2,	/*OsIsrCatType*/
        TRUE,				/*OsNestedEnable*/
    },
    {
        OS_ISR_RCAN0TRX_IRQ,/*OsIsrSrc*/
        OS_ARCH_INT_CPU0,	/*OsIsrSrcType*/
        OS_CORE_ID_0,
        OS_ISR_CATEGORY2,	/*OsIsrCatType*/
        TRUE,				/*OsNestedEnable*/
    },
    {
        OS_ISR_RCANGRECC0_IRQ,/*OsIsrSrc*/
        OS_ARCH_INT_CPU0,	/*OsIsrSrcType*/
        OS_CORE_ID_0,
        OS_ISR_CATEGORY2,	/*OsIsrCatType*/
        TRUE,				/*OsNestedEnable*/
    },
    {
        OS_ISR_WDTA1_IRQ,/*OsIsrSrc*/
        OS_ARCH_INT_CPU0,	/*OsIsrSrcType*/
        OS_CORE_ID_0,
        OS_ISR_CATEGORY2,	/*OsIsrCatType*/
        TRUE,				/*OsNestedEnable*/
    },
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
const uint16 Os_CfgIsrMax_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	CFG_ISR_MAX_CORE0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
const uint16 Os_CfgIsr2Max_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	CFG_ISR2_MAX_CORE0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
const Os_IPLType Os_CfgIsr2ExcludeTplMax_Inf[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
	/* Core0 */
	CFG_ISR2_IPL_MAX_CORE0
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533 ++ */  /* VL_QAC_OneRefSymbol */
const Os_IsrPropertyType Os_IsrIdRange[OS_AUTOSAR_CORES] =
/* PRQA S 1533 -- */
{
    /* Core0 */
    {
        {CFG_ISR2_ID_CORE0_BEGIN, CFG_ISR2_ID_CORE0_END},    /* All Isr */
        {INVALID_ISR, INVALID_ISR},    /* Isr1 */
        {CFG_ISR2_ID_CORE0_BEGIN, CFG_ISR2_ID_CORE0_END},    /* Isr2 */
    },
};
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 6610, 6620, 6520 EOF */ /* VL_MTR_Os_STCDN, VL_MTR_Os_STSCT, VL_MTR_Os_STVAR */
