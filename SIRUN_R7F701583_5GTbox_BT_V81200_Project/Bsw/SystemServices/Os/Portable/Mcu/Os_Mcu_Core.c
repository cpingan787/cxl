/* PRQA S 3108++ */
/**
 * Copyright (C) 2024 Isoft Infrastructure Software Co., Ltd.
 * SPDX-License-Identifier: LGPL-2.1-only-with-exception OR  LicenseRef-Commercial-License
 *
 * This library is free software; you can redistribute it and/or modify it under the terms of the
 * GNU Lesser General Public License as published by the Free Software Foundation; version 2.1.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License along with this library;
 * if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 * or see <https://www.gnu.org/licenses/>.
 *
 * Alternatively, this file may be used under the terms of the Isoft Infrastructure Software Co., Ltd.
 * Commercial License, in which case the provisions of the Isoft Infrastructure Software Co., Ltd.
 * Commercial License shall apply instead of those of the GNU Lesser General Public License.
 *
 * You should have received a copy of the Isoft Infrastructure Software Co., Ltd.  Commercial License
 * along with this program. If not, please find it at <https://EasyXMen.com/xy/reference/permissions.html>
 *
 ********************************************************************************
 **                                                                            **
 **  FILENAME    : Os_Mcu_Core.c                                               **
 **                                                                            **
 **  Created on  :                                                             **
 **  Author      : i-soft-os                                                   **
 **  Vendor      :                                                             **
 **  DESCRIPTION : MCU dependence                                              **
 **                                                                            **
 **  SPECIFICATION(S) :   AUTOSAR classic Platform r19                         **
 **  Version :   AUTOSAR classic Platform R19--Function Safety                 **
 **                                                                            **
 *******************************************************************************/
/* PRQA S 3108-- */

/*=======[I N C L U D E S]====================================================*/
#include "Os_Arch_Processor.h"
#include "Os_Core_Cfg.h"
#include "Os_Task_Cfg.h"
#include "Os_Interrupt_CfgData.h"
#include "Os_Core_Cfg.h"
#include "Os_Core_CfgData.h"
#include "Os_Task_CfgData.h"
/*=======[M A C R O S]========================================================*/

/*=======[E X T E R N A L   D A T A]==========================================*/

/*=======[I N T E R N A L   D A T A]==========================================*/
#if (TRUE == CFG_CORE0_AUTOSAROS_ENABLE)
/* PRQA S 3218++ */ /* VL_Os_3218 */
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
/*Save the task context stack pointer address.*/
static Os_TaskCBExtType Os_TaskCBExtCore0[CFG_TASK_MAX_CORE0];
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
/*Save the ISR2 context stack pointer address of core0.*/
static uint32 Os_IsrNestStackCore0[CFG_ISR_MAX_CORE0];
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
/*Save the ISR1context stack pointer address of core0.*/
static uint32 Os_ISR1SPCore0[OS_ISR1_MAX_NESTED_DEPTH];
#define OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 3218-- */
#endif /* TRUE == CFG_CORE0_AUTOSAROS_ENABLE */

#if (TRUE == CFG_MEMORY_PROTECTION_ENABLE)
/* Address space of kernel view. */
#define OS_START_SEC_CONST_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 0306, 1531 ++*/ /* VL_Os_0306,VL_QAC_OneRefSymbol */
const Os_MemProtKnCfgType Os_MemProtKnAddrCfg = {{
    /*Data*/
    (uint8*)OS_ARCH_RAM_ADDR_START,
    (uint8*)OS_ARCH_RAM_ADDR_END,

    (uint8*)OS_ARCH_PERIPH_ADDR_START,
    (uint8*)OS_ARCH_PERIPH_ADDR_END,

    (uint8*)OS_ARCH_FLASH_ADDR_START,
    (uint8*)OS_ARCH_FLASH_ADDR_END,
}};
/* PRQA S 0306, 1531 --*/
#define OS_STOP_SEC_CONST_UNSPECIFIED
#include "Os_MemMap.h"
#endif
/*=======[F U N C T I O N   I M P L E M E N T A T I O N S]====================*/
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Initialize the multicore processor.>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * @param[in]           <ipl>
 * @param[out]          <None>
 * @param[in/out]       <None>
 * @return              <void>
 * PreCondition         <None>
 * CallByAPI            <>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_MultiCoreInit(Os_CoreIdType sysCore)
/* PRQA S 1532 -- */
{
#if (TRUE == CFG_CORE0_AUTOSAROS_ENABLE)
    Os_TaskCBExt       = Os_TaskCBExtCore0;
    Os_IsrNestStack = Os_IsrNestStackCore0;
#if (TRUE == CFG_MEMORY_PROTECTION_ENABLE)
    Os_IsrDAddr  = Os_Isr_DAddr_Core0;
    Os_TaskDAddr = Os_Task_DAddr_Core0;
#endif /* TRUE == CFG_MEMORY_PROTECTION_ENABLE */
    Os_ISR1SP = Os_ISR1SPCore0;
#endif /* TRUE == CFG_CORE0_AUTOSAROS_ENABLE */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Initialization of the CPU in the OS.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Non Reentrant>
 * Param-Name[in]       <None>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <void>
 * PreCondition         <None>
 * CallByAPI            <StartOS>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_InitCPU(void)
/* PRQA S 1532 -- */
{
    uint16                   i;
    uint16                   vCoreId = Os_Hal_GetCoreID();
    const Os_IsrCfgType*     pIsrCfg;
    const Os_IntInstallType* pIntInstall;

    /*Platform specific interrupt controller initialization*/
    Os_InterruptInit();
    /* PRQA S 0303++ */ /* VL_Os_0303 */
    OS_SELB_INTC1 = (uint16)0x00U;
    OS_SELB_INTC2 = (uint16)0x00U;
    /* PRQA S 0303-- */

    for (i = 0u; i < (uint16)Os_CfgIsrMax_Inf[vCoreId]; i++)
    {
        pIsrCfg     = &(Os_IsrCfg[i]);
        pIntInstall = &(Os_IntInstall[i]);
        Os_InterruptInstall(pIsrCfg, pIntInstall);
    }
/*Initialize system timer for system counter */
#if (TRUE == CFG_SYSTEM_TIMER_ENABLE)
    Os_ArchInitSystemTimer();
    /*notes: the code of start system timer must be lightweight, otherwise the
     * previous step 'synchronization' will not make sense*/
    OS_ARCH_ENABLE_SYSTIMER(); /* PRQA S 0303, 3442 */ /* VL_Os_0303, VL_Os_3442 */
#endif

/*Initialize system timer for time protection */
#if (TRUE == CFG_TIMING_PROTECTION_ENABLE)
    Os_ArchInitTimingProtTimer();
#endif
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Os_Hal_StartCore>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-coreId[in]     <selects the core which to start>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <StartCore>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_StartCore(Os_CoreIdType coreId)
/* PRQA S 1532 -- */
{
    (void)coreId;
    return;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Get the Core Mode>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-core[in]       <selects the core which to get mode>
 * Return               <Os_CoreModeType,the core mode>
 * PreCondition         <None>
 * CallByAPI            <Os_Hal_SetCoreMode>
 */
/******************************************************************************/
/* PRQA S 1503 ++ */                                                     /* VL_QAC_NoUsedApi */
Os_CoreModeType Os_Hal_GetCoreMode(Os_CoreIdType core) /* PRQA S 1532 */ /* VL_Os_1532 */
/* PRQA S 1503 -- */
{
    (void)core;
    Os_CoreModeType coreMode = OS_CORE_MODE_UNKNOWN;
    return coreMode;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Set the Core Mode>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-core[in]       <Selects the core which mode is set>
 * Return               <boolean,the result of setting>
 * PreCondition         <None>
 * CallByAPI            <ControlIdle>
 */
/******************************************************************************/
/* PRQA S 1532, 3006 ++ */ /* VL_QAC_OneFunRef, VL_Os_3006 */
boolean Os_Hal_SetCoreMode(Os_CoreIdType core, Os_CoreModeType coreMode)
/* PRQA S 1532, 3006 -- */
{
    boolean Os_Ret = TRUE;

    (void)core;
    /* PRQA S 1006++ */ /* VL_Os_1006*/
    switch (coreMode)
    {
    case OS_CORE_MODE_HALT:
        __halt();
        __nop();
        break;

    case OS_CORE_MODE_IDLE:
        __halt();
        __nop();
        break;
    /* PRQA S 1006-- */
    case OS_CORE_MODE_RUN:
        /*When an exception, such as an interrupt or a TRAP for scheduling, occurs,
        the CPU exits the Halt mode automatically, without requiring additional setup. */
        break;

    default:
        Os_Ret = FALSE;
        break;
    }

    return Os_Ret;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/*****************************************************************************/
/*
 * Brief                <Os_Hal_GetCoreID>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Return               <CoreId>
 * PreCondition         <None>
 * CallByAPI            <GetCoreID>
 */
/*****************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
Os_CoreIdType Os_Hal_GetCoreID(void)
/* PRQA S 1532 -- */
{
    /* RH850F1K just have only one core */
    return 0u;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <The function returns a unique logical Core ID.>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-phyCoreId[in]  <A valid physical Core ID defined by the AUTOSAR OS.>
 * return               <CoreIdType, The return value is the unique logical
 *                       CoreID map to the input physical core.>
 * PreCondition         <None>
 * CallByAPI            <StartCore>
 * REQ ID               <DD_1_0779, DD_1_0780, DD_1_1543, DD_1_1544>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
CoreIdType Os_ArchGetCoreLogID(CoreIdType phyCoreId)
/* PRQA S 1532 -- */
{
    CoreIdType logCoreId;

    switch (phyCoreId)
    {
#if (TRUE == CFG_CORE0_AUTOSAROS_ENABLE)
    case OS_PHYSICAL_CORE_0:
        logCoreId = OS_CORE_ID_0;
        break;
#endif /* CFG_CORE0_AUTOSAROS_ENABLE */

    default:
        logCoreId = OS_CORE_INVALID;
        break;
    }

    return logCoreId;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <The function returns a unique physical Core ID.>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-logCoreId[in]  <A valid logical Core ID from GetCoreID,Os_ArchGetCoreLogID.>
 * return               <CoreIdType, The return value is the unique physical
 *                       CoreID map to the input logical core.>
 * PreCondition         <None>
 * CallByAPI            <Os_InitSystem>
 * REQ ID               <DD_1_0781, DD_1_0782>
 */
/******************************************************************************/
/* PRQA S 1503 ++ */ /* VL_QAC_NoUsedApi */
CoreIdType Os_ArchGetCorePhyID(CoreIdType logCoreId)
/* PRQA S 1503 -- */
{
    CoreIdType phyCoreId;

    switch (logCoreId)
    {
#if (TRUE == CFG_CORE0_AUTOSAROS_ENABLE)
    case OS_CORE_ID_0:
        phyCoreId = OS_PHYSICAL_CORE_0;
        break;
#endif /* TRUE == CFG_CORE0_AUTOSAROS_ENABLE */

    default:
        phyCoreId = OS_CORE_INVALID;
        break;
    }

    return phyCoreId;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/********************************************************************/
/*
 * Brief                <Check whether CPU information is correct.>
 * Service ID           <none>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-eventId[in]    <None>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * return               <None>
 * PreCondition         <None>
 * REQ ID               <None>
 */
/********************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_CheckCPUInformation(void)
/* PRQA S 1532 -- */
{
    /* Processor ID Register */
    while (OS_PID_REG_VALUE != OS_ARCH_REG_READ(OS_PID_NUM))
    {
        /* Check failed */
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#if (CFG_TASK_MAX_CORE0 > 0U)
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <The free task entry for core 0.>
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * @param[in]           <None>
 * @param[out]          <None>
 * @param[in/out]       <None>
 * @return              <the priority value>
 * PreCondition         <None>
 * CallByAPI            <GetResource and so on >
 * REQ ID               <DD_1_0838, DD_1_1217, DD_1_0839>
 */
/******************************************************************************/
/* PRQA S 2870, 2740, 3408, 1503 ++ */ /* VL_Os_2870, VL_Os_2740, VL_Os_3408, VL_QAC_NoUsedApi*/
void Os_TaskEntry_IdleCore0(void)
{
    while (1)
    {
        IdleHook_Core0();
    }
}
/* PRQA S 2870, 2740, 3408,1503 -- */

#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#endif /* CFG_TASK_MAX_CORE0 > 0U */
/*=======[E N D   O F   F I L E]==============================================*/
