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
 **  FILENAME    : Os_Mcu_Timer.h                                              **
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
#ifndef OS_MCU_TIMER_H
#define OS_MCU_TIMER_H

#include "Os_Types.h"

/* OSTM0 register */
#define OS_OSTM0_BASE_ADDR (0xFFD70000U)
#define OS_OSTM0_CMP       (*(uint32 volatile*)(OS_OSTM0_BASE_ADDR + 0x00000000U))
#define OS_OSTM0_CNT       (*(uint32 volatile*)(OS_OSTM0_BASE_ADDR + 0x00000004U))
#define OS_OSTM0_TE        (*(uint8 volatile*)(OS_OSTM0_BASE_ADDR + 0x00000010U))
#define OS_OSTM0_TS        (*(uint8 volatile*)(OS_OSTM0_BASE_ADDR + 0x00000014U))
#define OS_OSTM0_TT        (*(uint8 volatile*)(OS_OSTM0_BASE_ADDR + 0x00000018U))
#define OS_OSTM0_CTL       (*(uint8 volatile*)(OS_OSTM0_BASE_ADDR + 0x00000020U))
#define OS_OSTM0_EMU       (*(uint8 volatile*)(OS_OSTM0_BASE_ADDR + 0x00000024U))
/* OSTM1 register */
#define OS_OSTM1_BASE_ADDR 0xFFD70100U
#define OS_OSTM1_CMP       (*(uint32 volatile*)(OS_OSTM1_BASE_ADDR + 0x00000000U))
#define OS_OSTM1_CNT       (*(uint32 volatile*)(OS_OSTM1_BASE_ADDR + 0x00000004U))
#define OS_OSTM1_TE        (*(uint8 volatile*)(OS_OSTM1_BASE_ADDR + 0x00000010U))
#define OS_OSTM1_TS        (*(uint8 volatile*)(OS_OSTM1_BASE_ADDR + 0x00000014U))
#define OS_OSTM1_TT        (*(uint8 volatile*)(OS_OSTM1_BASE_ADDR + 0x00000018U))
#define OS_OSTM1_CTL       (*(uint8 volatile*)(OS_OSTM1_BASE_ADDR + 0x00000020U))
#define OS_OSTM1_EMU       (*(uint8 volatile*)(OS_OSTM1_BASE_ADDR + 0x00000024U))
/* OSTM2 register */
#define OS_OSTM2_BASE_ADDR 0xFFD70200U
#define OS_OSTM2_CMP       (*(uint32 volatile*)(OS_OSTM2_BASE_ADDR + 0x00000000U))
#define OS_OSTM2_CNT       (*(uint32 volatile*)(OS_OSTM2_BASE_ADDR + 0x00000004U))
#define OS_OSTM2_TE        (*(uint8 volatile*)(OS_OSTM2_BASE_ADDR + 0x00000010U))
#define OS_OSTM2_TS        (*(uint8 volatile*)(OS_OSTM2_BASE_ADDR + 0x00000014U))
#define OS_OSTM2_TT        (*(uint8 volatile*)(OS_OSTM2_BASE_ADDR + 0x00000018U))
#define OS_OSTM2_CTL       (*(uint8 volatile*)(OS_OSTM2_BASE_ADDR + 0x00000020U))
#define OS_OSTM2_EMU       (*(uint8 volatile*)(OS_OSTM2_BASE_ADDR + 0x00000024U))
/* OSTM3 register */
#define OS_OSTM3_BASE_ADDR 0xFFD70300U
#define OS_OSTM3_CMP       (*(uint32 volatile*)(OS_OSTM3_BASE_ADDR + 0x00000000U))
#define OS_OSTM3_CNT       (*(uint32 volatile*)(OS_OSTM3_BASE_ADDR + 0x00000004U))
#define OS_OSTM3_TE        (*(uint8 volatile*)(OS_OSTM3_BASE_ADDR + 0x00000010U))
#define OS_OSTM3_TS        (*(uint8 volatile*)(OS_OSTM3_BASE_ADDR + 0x00000014U))
#define OS_OSTM3_TT        (*(uint8 volatile*)(OS_OSTM3_BASE_ADDR + 0x00000018U))
#define OS_OSTM3_CTL       (*(uint8 volatile*)(OS_OSTM3_BASE_ADDR + 0x00000020U))
#define OS_OSTM3_EMU       (*(uint8 volatile*)(OS_OSTM3_BASE_ADDR + 0x00000024U))

#define OS_OSTM0_CTL_FREERUN_ENABLE (0x03U)
/* TAUB register */
#define TAUB_BASE_ADDR(n) ((0xFFE30000U) + ((n) * 1000U))
/* PRQA S 3472 ++*/ /* VL_Os_3472 */
#define TAUB_TPS(n)    (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x240U))
#define TAUB_CDR(n, m) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + (4U * (m)) + 0x0U))
/* PRQA S 3472 --*/
#define TAUB_CNT(n, m)  (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + (4U * (m)) + 0x80U))
#define TAUB_CMOR(n, m) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + (4U * (m)) + 0x200U))
#define TAUB_CMUR(n, m) (*(uint8 volatile*)(TAUB_BASE_ADDR(n) + (4U * (m)) + 0xC0U))
#define TAUB_CSR(n, m)  (*(uint8 volatile*)(TAUB_BASE_ADDR(n) + (4U * (m)) + 0x140U))
#define TAUB_CSC(n, m)  (*(uint8 volatile*)(TAUB_BASE_ADDR(n) + (4U * (m)) + 0x180U))
#define TAUB_TS(n)      (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x1C4U))
#define TAUB_TE(n)      (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x1C0U))
#define TAUB_TT(n)      (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x1C8U))

#define TAUB_TOE(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x5CU))
#define TAUB_TO(n)  (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x58U))
#define TAUB_TOM(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x248U))

#define TAUB_TOC(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x24CU))
#define TAUB_TOL(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x40U))
#define TAUB_TDE(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x150U))
#define TAUB_TDL(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x54U))

#define TAUB_RDE(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x260U))
#define TAUB_RDM(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x264U))
#define TAUB_RDS(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x268U))
#define TAUB_RDC(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x26CU))
#define TAUB_RDT(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x44U))
#define TAUB_RSF(n) (*(uint16 volatile*)(TAUB_BASE_ADDR(n) + 0x48U))

#define OS_TAUB_TPS_SET_PRS0    (0x0002U)
#define OS_TAUB_TPS_PRS0_MASK   (0x000FU)

/* TAUD */
#define TAUD_BASE_ADDR(n) ((0xFFE20000U) + ((n) * 1000U))

/* TAUDn prescaler registers */
#define TAUD_TPS(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x240U))
#define TAUD_BRS(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x244U))

/* TAUDn control registers */
#define TAUD_CDR(n, m)  (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + (4U * (m)) + 0x0U))
#define TAUD_CNT(n, m)  (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + (4U * (m)) + 0x80U))
#define TAUD_CMOR(n, m) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + (4U * (m)) + 0x200U))
#define TAUD_CMUR(n, m) (*(uint8 volatile*)(TAUD_BASE_ADDR(n) + (4U * (m)) + 0xC0U))
#define TAUD_CSR(n, m)  (*(uint8 volatile*)(TAUD_BASE_ADDR(n) + (4U * (m)) + 0x140U))
#define TAUD_CSC(n, m)  (*(uint8 volatile*)(TAUD_BASE_ADDR(n) + (4U * (m)) + 0x180U))
#define TAUD_TS(n)      (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x1C4U))
#define TAUD_TE(n)      (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x1C0U))
#define TAUD_TT(n)      (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x1C8U))

/* TAUDn output registers */
#define TAUD_TOE(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x5CU))
#define TAUD_TO(n)  (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x58U))
#define TAUD_TOM(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x248U))
#define TAUD_TOC(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x24CU))
#define TAUD_TOL(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x40U))
#define TAUD_TDE(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x250U))
#define TAUD_TDM(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x254U))
#define TAUD_TDL(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x54U))
#define TAUD_TRO(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x4CU))
#define TAUD_TRE(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x258U))
#define TAUD_TRC(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x25CU))
#define TAUD_TME(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x50U))

/* TAUDn reload data registers */
#define TAUD_RDE(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x260U))
#define TAUD_RDM(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x264U))
#define TAUD_RDS(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x268U))
#define TAUD_RDC(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x26CU))
#define TAUD_RDT(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x44U))
#define TAUD_RSF(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x48U))

/* TAUDn emulation register */
#define TAUD_EMU(n) (*(uint16 volatile*)(TAUD_BASE_ADDR(n) + 0x290U))

#if (TRUE == CFG_SYSTEM_TIMER_ENABLE)
/* PRQA S 3409 ++ */ /* VL_Os_3409 */
#define OS_ARCH_ENABLE_SYSTIMER() TAUB_TS(0U) |= 0x01U
/* PRQA S 3409 -- */
#define Os_ArchUpdateTimer()
#define Os_McuClearSysTimer(coreID)
#endif

#if (TRUE == CFG_TIMING_PROTECTION_ENABLE || TRUE == CFG_LOAD_RATIO_CALC_ENABLE)
/* Set max increment value = (OS_SYSTEM_TIMER_MAX_TICK_VALUE + 1)/ 2 */
#define OS_HAL_TP_MAX_INCREMENT_VALUE (0x80000000UL)
#define Os_ClearTmProtTimer(coreID)
#define Os_Hal_LoadRatioInit()

#define OS_SYSTEM_TIMER_MAX_TICK_VALUE (0xFFFFFFFFUL)

#define OS_HAL_SYSTEM_TIMER_REG_PER_MS_VALUE CFG_REG_OSTIMER_VALUE_CORE0

#endif /* TRUE == CFG_LOAD_RATIO_CALC_ENABLE */
/*=======[T Y P E   D E F I N I T I O N S]==================================*/
typedef uint32 Os_Hal_TpType;
/*=======[E X T E R N A L   F U N C T I O N   D E C L A R A T I O N S]========*/
#if (TRUE == CFG_SYSTEM_TIMER_ENABLE)
extern void Os_ArchInitSystemTimer(void);
#endif /* TRUE == CFG_SYSTEM_TIMER_ENABLE */

#if (TRUE == CFG_LOAD_RATIO_CALC_ENABLE)
extern uint32 Os_Hal_GetTimeTicks(void);
#endif

#if (TRUE == CFG_TIMING_PROTECTION_ENABLE)
extern void   Os_ArchInitTimingProtTimer(void);
extern uint64 Os_Hal_TpGetTimePass(Os_CoreIdType coreId);
extern void   Os_Hal_TpSetCompare(Os_CoreIdType coreId, uint32 Increment);
extern void   Os_TmProtFaultProc(void);
#endif
#endif
/*=======[E N D   O F   F I L E]==============================================*/
