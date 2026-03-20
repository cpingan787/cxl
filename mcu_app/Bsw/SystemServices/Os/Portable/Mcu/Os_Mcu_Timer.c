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
 **  FILENAME    : Os_Mcu_Timer.c                                              **
 **                                                                            **
 **  Created on  :                                                             **
 **  Author      : i-soft-os                                                   **
 **  Vendor      :                                                             **
 **  DESCRIPTION : Timer driver                                                **
 **                                                                            **
 **  SPECIFICATION(S) :   AUTOSAR classic Platform r19                         **
 **  Version :   AUTOSAR classic Platform R19--Function Safety                 **
 **                                                                            **
 *******************************************************************************/
/* PRQA S 3108-- */

/*=======[I N C L U D E S]====================================================*/
#include "Os_Arch_Processor.h"

#if (OS_AUTOSAR_CORES > 1U)
#define OS_TMPROT_POSITION 2
#else
#define OS_TMPROT_POSITION 1
#endif

/*=======[I N T E R N A L   D A T A]==========================================*/
#if (TRUE == CFG_TIMING_PROTECTION_ENABLE)
#define OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#include "Os_MemMap.h"
static volatile uint32 Os_ArchTpLastReadValue;
#define OS_STOP_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#include "Os_MemMap.h"
#endif

/*=======[F U N C T I O N   I M P L E M E N T A T I O N S]====================*/
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
#if (TRUE == CFG_SYSTEM_TIMER_ENABLE)
/******************************************************************************/
/*
 * Brief                <Os_ArchInitSystemTimer>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Non Reentrant>
 * Param-Name[in]       <None>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <Os_Hal_InitCPU>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_ArchInitSystemTimer(void)
/* PRQA S 1532 -- */
{
    /* PRQA S 0303++ */ /* VL_Os_0303 */
    /*1ms:E:20000u;D:10000U;C:5000U;B:2500U;A:1250U;9:625U;8:312.5;7:156;6:78;5:39;4:19.5;3:10;2:5*/
    TAUB_TPS(0U) &= ~OS_TAUB_TPS_PRS0_MASK;
    TAUB_TPS(0U) |= OS_TAUB_TPS_SET_PRS0; /* PRQA S 3442 */ /* VL_Os_3442 */
    /* CK0 = PCLK/2^2 = PCLK/4 = 10MHz */
    /* Interval timer mode:  The current value of TAUDnCDRm is written to TAUDnCNTm and the counter
     *starts to count down from this value to 0. */
    TAUB_CDR(0U, 0U) = (uint16)(CFG_REG_OSTIMER_VALUE_CORE0 - 1U); /* Data register for capture/compare values */
/* PRQA S 3442 ++ */                                               /* VL_Os_3442 */
#if (TRUE == CFG_LOAD_RATIO_CALC_ENABLE)
    OS_OSTM1_EMU = (uint8)0x00U;
    OS_OSTM1_CTL |= (uint8)0x02U; /* PRQA S 3120 */ /* VL_Os_3120 */
    OS_OSTM1_TS |= (uint8)0x01U;
#endif
    /* PRQA S 3442 -- */
    /* PRQA S 0303-- */
}
#endif

#if (TRUE == CFG_LOAD_RATIO_CALC_ENABLE)
/******************************************************************************/
/*
 * Brief                <Get current time in the OS.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Non Reentrant>
 * Param-Name[in]       <None>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <Os_GetCurrentTime>
 * REQ ID               <None>
 */
/******************************************************************************/
uint32 Os_Hal_GetTimeTicks(void)
{
    /* TIM1 as global base time(us) */
    return OS_OSTM1_CNT; /* PRQA S 0303 */ /* VL_Os_0303 */
}
#endif

#if (TRUE == CFG_TIMING_PROTECTION_ENABLE)
/******************************************************************************/
/*
 * Brief                <Os_ArchInitTimingProtTimer>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Non Reentrant>
 * Param-Name[in]       <None>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <Os_Hal_InitCPU>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_ArchInitTimingProtTimer(void)
/* PRQA S 1532 -- */
{
    /* PRQA S 0303,3442,3345 ++ */ /* VL_Os_0303, VL_Os_3442,VL_Os_3345 */
    OS_OSTM0_EMU = (uint8)0x00U;
    OS_OSTM0_CTL |= (uint8)OS_OSTM0_CTL_FREERUN_ENABLE;

    OS_OSTM0_TS |= (uint8)0x01U;
    Os_ArchTpLastReadValue = OS_OSTM0_CNT;
    OS_OSTM0_CMP           = Os_ArchTpLastReadValue + (uint32)OS_HAL_TP_MAX_INCREMENT_VALUE;
    /*Clear the interrupt signal generated by setting OS_OSTM0_TS.*/
    Os_Hal_ClearPendingInterrupt(OS_ISR_OSTM0_IRQ, 0); 
    /* PRQA S 0303,3442,3345 -- */
}
/******************************************************************************/
/*
 * Brief                <Time protection get time pass, since last read>
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * param[in]            <None>
 * param[out]           <None>
 * param[in/out]        <None>
 * return               <None>
 * CallByAPI            <Os_Hal_InitCPU>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
uint64 Os_Hal_TpGetTimePass(Os_CoreIdType coreId)
/* PRQA S 1532 -- */
{
    (void)coreId;
    uint64 TimePass;
    uint32 CounterTime = OS_OSTM0_CNT; /* PRQA S 0303 */ /* VL_Os_0303 */

    /* PRQA S 3442, 1258++ */ /* VL_Os_3442,VL_Os_1258 */
    if (CounterTime >= Os_ArchTpLastReadValue)
    {
        TimePass = (uint64)CounterTime - Os_ArchTpLastReadValue;
    }
    else
    {
        TimePass = (uint64)OS_SYSTEM_TIMER_MAX_TICK_VALUE - Os_ArchTpLastReadValue + CounterTime;
    }
    /* PRQA S 3442, 1258-- */

    Os_ArchTpLastReadValue = CounterTime;
    return TimePass;
}
/******************************************************************************/
/*
 * Brief                <Time protection set compare register>
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * param[in]            <None>
 * param[out]           <None>
 * param[in/out]        <None>
 * return               <None>
 * CallByAPI            <Os_Hal_InitCPU>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_TpSetCompare(Os_CoreIdType coreId, uint32 Increment)
/* PRQA S 1532 -- */
{
    (void)coreId;
    /* PRQA S 0303,3345,3442 ++ */ /* VL_Os_0303, VL_Os_3345,VL_Os_3442 */
    OS_OSTM0_CMP = OS_OSTM0_CNT + Increment;
    /* PRQA S 0303,3345,3442 -- */
}
/******************************************************************************/
/*
 * Brief                <Time protection for ISR fault handling>
 * Service ID           <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <None Reentrant>
 * param-Name[in]       <None>
 * param-Name[out]      <None>
 * param-Name[in/out]   <None>
 * return               <None>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_TmProtFaultProc(void)
/* PRQA S 1532 -- */
{
    if (OS_PROTECTION_TERMINATE_TPROT_ISR == Os_Kernel_GetAndComparTerminateObject(OS_PROTECTION_TERMINATE_TPROT_ISR))
    {
        Os_ArchReclaimIsrCsasTermApp(OS_TMPROT_POSITION);
    }
    else
    {
        /*Nothing to do*/
    }
}

#endif
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

/*=======[E N D   O F   F I L E]==============================================*/
