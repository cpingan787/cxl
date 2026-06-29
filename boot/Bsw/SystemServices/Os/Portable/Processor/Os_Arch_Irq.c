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
 **  FILENAME    : Os_Arch_Irq.c                                               **
 **                                                                            **
 **  Created on  :                                                             **
 **  Author      : i-soft-os                                                   **
 **  Vendor      :                                                             **
 **  DESCRIPTION : Deal with operations related to processor interrupts        **
 **                                                                            **
 **  SPECIFICATION(S) :   AUTOSAR classic Platform r19                         **
 **  Version :   AUTOSAR classic Platform R19--Function Safety                 **
 **                                                                            **
 *******************************************************************************/
/* PRQA S 3108-- */
/*=======[I N C L U D E S]====================================================*/
#include "Os_Arch_Processor.h"
#include "Os_Interrupt_CfgData.h"
/*=======[M A C R O S]========================================================*/

/*=======[E X T E R N A L   D A T A]==========================================*/
#define OS_START_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/*Holds the entry address of an FE interrupt.*/
Os_isrhnd Os_FE_Handler[OS_ARCH_FE_INTR_NUM];
#define OS_STOP_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/*Holds the entry address of an EI interrupt.*/
Os_isrhnd Os_Vector_Handler[OS_ARCH_EI_INTR_NUM];
/*The top of the stack that holds the FE level interrupt.*/
#define OS_STOP_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"

/* PRQA S 0791 ++ */ /* MISRA Rule 5.4 */
#define OS_START_SEC_VAR_CLONE_32
#include "Os_MemMap.h"
/* PRQA S 1751, 1502 ++ */ /* VL_QAC_OneRefSymbol, VL_Os_1502 */
/*The level of the system call when a type of ISR1 is triggered.*/
Os_CallLevelType Os_SaveLevelISR1;
/* PRQA S 1751, 1502 -- */
#define OS_STOP_SEC_VAR_CLONE_32
#include "Os_MemMap.h"

/* PRQA S 3432 ++ */ /* MISRA Rule 20.7 */
#define OS_START_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/**When an interrupt occurs, the stacked SP is stored in Os_ArchTempSp, 
 * and Os_ArchTempSp is stored in this parameter.
 */
uint32* Os_IsrNestStack;
#define OS_STOP_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/*Isr1 stack top.*/
uint32* Os_ISR1SP; /* PRQA S 1533 */ /* VL_QAC_OneRefSymbol */
#define OS_STOP_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/* PRQA S 3432 -- */ /* MISRA Rule 20.7 */
/*=======[I N T E R N A L   D A T A]==========================================*/
#define OS_START_SEC_VAR_CLONE_32
#include "Os_MemMap.h"
static volatile uint32 Os_IsrPriority;
/* PRQA S 3218,3229 */ /* MISRA Rule 8.9 CWE-14 */ /* PRQA S 3207 */ /* VL_Os_3207 */
#define OS_STOP_SEC_VAR_CLONE_32
#include "Os_MemMap.h"

/*=======[F U N C T I O N   I M P L E M E N T A T I O N S]====================*/
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
static void Os_IntHandler(void)
{
    /* Just ignore this interrupt.  */
    while (1) /* PRQA S 2870, 2740 */ /* VL_Os_2870, VL_Os_2740 */
    {
        /* Nothing to do. */
    }
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Initialize interrupts>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * param[in]            <None>
 * param[out]           <None>
 * param[in/out]        <None>
 * return               <None>
 * CallByAPI            <Os_Hal_InitCPU>
 * REQ ID               <DD_1_0902, DD_1_1298>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_InterruptInit(void)
/* PRQA S 1532 -- */
{
    uint32 isrNum;

    /* Set exception handler vector address */
    OS_ARCH_REG_WRITE(OS_EBASE_NUM, (uint32)&Os_ExceptionTable); /* PRQA S 0305,0428 */ /* VL_Os_0305, VL_Os_0428 */
    OS_ARCH_REG_WRITE(OS_PSW_NUM, OS_ARCH_REG_READ(OS_PSW_NUM) | (1UL << OS_PSW_EBV_BIT));

    /*Initialize the interrupt handlers.*/
    for (isrNum = 0U; isrNum < OS_ARCH_EI_INTR_NUM; ++isrNum)
    {
        Os_Vector_Handler[isrNum] = (Os_isrhnd)&Os_IntHandler;
    }

    for (isrNum = 0U; isrNum < OS_ARCH_FE_INTR_NUM; ++isrNum)
    {
        Os_FE_Handler[isrNum] = &Os_FEIntHandler;
    }
    
    /* masked all FE interrupt */
    OS_FEINTFMSK(0) = OS_FEINTFMSK_MASK;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Interrupt installation.>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Reentrant>
 * param[in]            <irq,srcAddr,prio,isrProc,intc2SelectionBit>
 * param[out]           <None>
 * param[in/out]        <None>
 * return               <None>
 * CallByAPI            <None>
 * REQ ID               <DD_1_0762>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_InterruptInstall(const Os_IsrCfgType* IsrCfg, const Os_IntInstallType* IntInstall)
/* PRQA S 1532 -- */
{
    uint32          isrNum;
    uint32          isrSrc     = IsrCfg->IsrSrc;
    uint16          isrPrio    = IntInstall->IntPrio;
    const Os_isrhnd isrHandler = IntInstall->IntHandler;

    if (0U != (isrSrc & OS_EIINT_TYPE))
    {
        isrNum                      = OS_EIINTSRC_2_NUM(isrSrc);
        OS_INTC_EICn(isrNum).bit.P  = (uint16)INT_PRIORITY_LOG_TO_PHY(isrPrio);
        OS_INTC_EICn(isrNum).bit.TB = 0U;
        OS_INTC_EICn(isrNum).bit.MK = 0U;
        Os_Vector_Handler[isrNum]   = isrHandler;
    }
    else
    {
        isrNum = OS_FEINTSRC_2_NUM(isrSrc);
        OS_FEINTFMSK(0) &= ~(uint32)(1U << isrNum);
        Os_FE_Handler[isrNum] = isrHandler;
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Set the priority of the current CPU. >
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * @param[in]           <ipl,isrdesc>
 * @param[out]          <None>
 * @param[in/out]       <None>
 * @return              <None>
 * PreCondition         <None>
 * CallByAPI            <ResumeOSInterrupts and so on>
 */
/******************************************************************************/
void Os_Hal_SetIpl(Os_IPLType ipl, Os_IsrDescriptionType isrdesc)
{
    (void)isrdesc;
    Os_IPLType cpuPrio;

    /* PRQA S 4397 ++ */ /* MISRA Rule CWE-704 */
    cpuPrio = (0U != ipl) ? ((((Os_IPLType)1U << ipl) - 1U) << (INT_PRIORITY_MAX - ipl)) : 0U;
    /* PRQA S 4397 -- */ /* MISRA Rule CWE-704 */
    /*All interrupts with priority Numbers greater than or equal to
     * 'PMR' are turned off*/
    OS_ARCH_REG_WRITE(OS_PMR_NUM, cpuPrio);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Get the priority of the current CPU. >
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * @param[in]           <None>
 * @param[out]          <None>
 * @param[in/out]       <None>
 * @return              <Os_IPLType>
 * PreCondition         <None>
 * CallByAPI            <SuspendOSInterrupts and so on>
 */
/******************************************************************************/
Os_IPLType Os_Hal_GetIpl(void)
{
    Os_IPLType result = 0U;

    uint32 prio = OS_ARCH_REG_READ(OS_PMR_NUM); /* read interrupt priority masking */
    if (0UL != prio)
    {
        while (0U == (prio & 0x01U))
        {
            result++;
            prio >>= 1;
        }
    }
    else
    {
        result = INT_PRIORITY_MAX;
    }
    result = INT_PRIORITY_PHY_TO_LOG(result); /* PRQA S 3469 */ /* MISRA Rule 4.9 */

    return (result);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Save the status register and disable maskable interrupts.>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * @param[in]           <None>
 * @param[out]          <Os_ArchMsrType>
 * @param[in/out]       <None>
 * @return              <None>
 * PreCondition         <None>
 * CallByAPI            <SuspendAllInterrupts>
 */
/******************************************************************************/
Os_ArchMsrType Os_Hal_SuspendInt(void)
{
    uint32 psw = OS_ARCH_REG_READ(OS_PSW_NUM);
    Os_ArchMsrType id  = psw & OS_PSW_GET_ID_BIT;
    if (0UL == id)
    {
        Os_Hal_DisableInt(); /* PRQA S 3469 */ /* MISRA Rule 4.9 */
    }
    return id;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Resume the variables that hold the status register.>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * @param[in]           <msr>
 * @param[out]          <None>
 * @param[in/out]       <None>
 * @return              <None>
 * PreCondition         <None>
 * CallByAPI            <ResumeAllInterrupts>
 */
/******************************************************************************/
void Os_Hal_RestoreInt(Os_ArchMsrType msr)
{
    if (0UL == msr)
    {
        Os_Hal_EnableInt(); /* PRQA S 3469 */ /* MISRA Rule 4.9 */
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Enable the interrupt source.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Param-Name[in]       <vIsrSrc,vIsrSrcType>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_EnableInterruptSource(uint32 vIsrSrc, uint32 vIsrSrcType)
/* PRQA S 1532 -- */
{
    Os_ArchMsrType state;

    state = Os_Hal_SuspendInt();
    if (0 != (vIsrSrc & OS_EIINT_TYPE))
    {
        OS_INTC_EICn(OS_EIINTSRC_2_NUM(vIsrSrc)).bit.MK = 0U;
    }
    else
    {
        OS_FEINTFMSK(vIsrSrcType) &= ~(uint32)(1U << OS_FEINTSRC_2_NUM(vIsrSrc));
    }
    Os_Hal_RestoreInt(state);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Disable the interrupt source.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Param-Name[in]       <vIsrSrc,vIsrSrcType>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_DisableInterruptSource(uint32 vIsrSrc, uint32 vIsrSrcType)
/* PRQA S 1532 -- */
{
    Os_ArchMsrType state;

    state = Os_Hal_SuspendInt();
    if (0 != (vIsrSrc & OS_EIINT_TYPE))
    {
        OS_INTC_EICn(OS_EIINTSRC_2_NUM(vIsrSrc)).bit.MK = 1U;
    }
    else
    {
        OS_FEINTFMSK(vIsrSrcType) |= (uint32)(1U << OS_FEINTSRC_2_NUM(vIsrSrc));
    }
    Os_Hal_RestoreInt(state);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Clear software interrupt source.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Param-Name[in]       <vIsrSrc,vIsrSrcType>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
void Os_Hal_ClearPendingInterrupt(uint32 vIsrSrc, uint32 vIsrSrcType)
/* PRQA S 1532 -- */
{
    Os_ArchMsrType state;

    state = Os_Hal_SuspendInt();
    if (0 != (vIsrSrc & OS_EIINT_TYPE))
    {
        OS_INTC_EICn(OS_EIINTSRC_2_NUM(vIsrSrc)).bit.RF = 0U;
    }
    else
    {
        OS_FEINTFC(vIsrSrcType) |= (uint32)(1U << OS_FEINTSRC_2_NUM(vIsrSrc));
    }
    Os_Hal_RestoreInt(state);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Set software interrupt source.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Param-Name[in]       <vIsrSrc,vIsrSrcType>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <None>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
void Os_Hal_SetPendingInterrupt(uint32 vIsrSrc, uint32 vIsrSrcType)
{
    (void)vIsrSrcType;
    Os_ArchMsrType state;

    state = Os_Hal_SuspendInt();
    if (0 != (vIsrSrc & OS_EIINT_TYPE))
    {
        OS_INTC_EICn(OS_EIINTSRC_2_NUM(vIsrSrc)).bit.RF = 1U;
    }
    Os_Hal_RestoreInt(state);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Get software interrupt state.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Param-Name[in]       <vIsrSrc,vIsrSrcType>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <Os_IsrStateType>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
Os_IsrStateType Os_Hal_GetIsrSourceState(uint32 vIsrSrc, uint32 vIsrSrcType)
/* PRQA S 1532 -- */
{
    Os_IsrStateType isrSourceState = OS_ISR_DISABLED;

    if (0 != (vIsrSrc & OS_EIINT_TYPE))
    {
        if (0U == OS_INTC_EICn(OS_EIINTSRC_2_NUM(vIsrSrc)).bit.MK)
        {
            isrSourceState = OS_ISR_ENABLED;
        }
    }
    else
    {
        if (0U == (OS_FEINTFMSK(vIsrSrcType) & (uint32)(1U << OS_FEINTSRC_2_NUM(vIsrSrc))))
        {
            isrSourceState = OS_ISR_ENABLED;
        }
    }
    return isrSourceState;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Get the current running IRQ.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Param-Name[in]       <vIsrSrc,vIsrSrcType>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <Os_IsrStateType>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1532 ++ */ /* VL_QAC_OneFunRef */
uint32 Os_Hal_GetCurrentIrq(void)
/* PRQA S 1532 -- */
{
    uint32 eiic = OS_ARCH_REG_READ(OS_EIIC_NUM);
    return (eiic & OS_EIIC_GET_FEILD);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Get the current running Exception.>
 * ServiceId            <None>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * Param-Name[in]       <vIsrSrc,vIsrSrcType>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * Return               <Os_IsrStateType>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
/* PRQA S 1503 ++ */                                /* VL_QAC_NoUsedApi */
uint32 Os_Hal_GetCurrentExc(void) /* PRQA S 1532 */ /* VL_Os_1532 */
/* PRQA S 1503 -- */
{
    uint32 eiic = OS_ARCH_REG_READ(OS_FEIC_NUM);
    return (eiic & OS_FEIC_GET_FEILD);
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#if ((OS_SC2 == CFG_SC) || (OS_SC3 == CFG_SC) || (OS_SC4 == CFG_SC))
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/* PRQA S 3006 ++ */ /* MISRA Dir 4.3 */
/******************************************************************************/
/*
 * Brief                <>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * param[in]            <isrId>
 * param[out]           <None>
 * param[in/out]        <None>
 * return               <void>
 * CallByAPI            <>
 * REQ ID               <>
 */
/******************************************************************************/
void Os_ArchReclaimIsrCsasTermApp(uint32 isrId)
{
    uint32 isrNum  = OS_EIINTSRC_2_NUM(Os_IsrCfg[isrId].IsrSrc);
    Os_IsrPriority = OS_INTC_EICn(isrNum).bit.P;
    /* PRQA S 0303,3442,3345-- */ /* MISRA Rule 11.4 CWE-398 CWE-398 */
    /* PRQA S 1006++ */           /* VL_Os_1006*/
    ASM("pushsp r6-r10");

    ASM("mov _Os_IsrPriority, r10");
    ASM("ld.w 0[r10], r9");
    ASM("mov 1, r8");
    ASM("shl r9, r8");
    ASM("not r8, r8");
    ASM("stsr ispr, r7");
    ASM("and r7, r8");

    /* INTCFG.Bit0(ISPC) = 1 */
    ASM("mov 0x01, r7");
    ASM("stsr intcfg, r6");
    ASM("or r7, r6");
    ASM("ldsr r6, intcfg");

    ASM("ldsr r8, ispr");

    /* INTCFG.Bit0(ISPC) = 0 */
    ASM("mov 0xFFFFFFFE, r7");
    ASM("stsr intcfg, r6");
    ASM("and r7, r6");
    ASM("ldsr r6, intcfg");

    ASM("popsp r6-r10");
    /* PRQA S 1006 --*/
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/* PRQA S 3006 -- */ /* MISRA Dir 4.3 */
#endif
/*=======[E N D   O F   F I L E]==============================================*/
