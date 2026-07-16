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
 **  FILENAME    : Os_Mcu_Irq.c                                                **
 **                                                                            **
 **  Created on  :                                                             **
 **  Author      : i-soft-os                                                   **
 **  Vendor      :                                                             **
 **  DESCRIPTION : Interrupt driver                                            **
 **                                                                            **
 **  SPECIFICATION(S) :   AUTOSAR classic Platform r19                         **
 **  Version :   AUTOSAR classic Platform R19--Function Safety                 **
 **                                                                            **
 *******************************************************************************/
/* PRQA S 3108-- */

/*=======[I N C L U D E S]====================================================*/
#include "Os_Arch_Processor.h"
#include "Os_Interrupt_CfgData.h"
/*=======[E X T E R N A L   D A T A]==========================================*/

/*=======[I N T E R N A L   F U N C T I O N   D E C L A R A T I O N S]========*/

/*=======[F U N C T I O N   I M P L E M E N T A T I O N S]====================*/
/* OS447: Disable all interrupts in os_app during TerminateApplication. */
#if (TRUE == CFG_TIMING_PROTECTION_ENABLE)
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Disable All interrupt But Timing Protect interrupt>
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
void Os_Hal_DisableAllInt_ButTimingProtInt(Os_CoreIdType CoreId)
/* PRQA S 1532 -- */
{
    uint16               i;
    const Os_IsrCfgType* pIsrCfg;
    uint16               idStartRange = (uint16)Os_IsrIdRange[CoreId].AllIsr.IsrStart;
    uint16               idEndRange   = (uint16)Os_IsrIdRange[CoreId].AllIsr.IsrEnd;

    for (i = idStartRange; i < idEndRange; i++)
    {
        pIsrCfg        = &Os_IsrCfg[i];
        uint32 srcAddr = pIsrCfg->IsrSrc;
        if (OS_ISR_OSTM0_IRQ != srcAddr) /* PRQA S 1252 */ /* VL_Os_1252 */
        {
            Os_Hal_DisableInterruptSource(srcAddr, 0); /* PRQA S 0303,3442,3345 */ /* MISRA Rule 11.4 CWE-398 CWE-398 */
        }
    }
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"

#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Enable All interrupt But Timing Protect interrupt>
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
void Os_Hal_EnableAllInt_ButTimingProtInt(Os_CoreIdType CoreId)
{
    uint16               i;
    const Os_IsrCfgType* pIsrCfg;
    uint16               idStartRange = (uint16)Os_IsrIdRange[CoreId].AllIsr.IsrStart;
    uint16               idEndRange   = (uint16)Os_IsrIdRange[CoreId].AllIsr.IsrEnd;

    for (i = idStartRange; i < idEndRange; i++)
    {
        pIsrCfg        = &Os_IsrCfg[i];
        uint32 srcAddr = pIsrCfg->IsrSrc;
        if (OS_ISR_OSTM0_IRQ != srcAddr) /* PRQA S 1252 */ /* VL_Os_1252 */
        {
            Os_Hal_EnableInterruptSource(srcAddr, 0); /* PRQA S 0303,3442,3345 */ /* MISRA Rule 11.4 CWE-398 CWE-398 */
        }
    }
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#endif
