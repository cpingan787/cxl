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
 **  FILENAME    : Os_Arch_Define.h                                            **
 **                                                                            **
 **  Created on  :                                                             **
 **  Author      : i-soft-os                                                   **
 **  Vendor      :                                                             **
 **  DESCRIPTION : Variable definition                                         **
 **                                                                            **
 **  SPECIFICATION(S) :   AUTOSAR classic Platform r19                         **
 **  Version :   AUTOSAR classic Platform R19--Function Safety                 **
 **                                                                            **
 *******************************************************************************/
/* PRQA S 3108-- */
#ifndef ARCH_DEFINE_H
#define ARCH_DEFINE_H

/*=======[I N C L U D E S]====================================================*/
#include "Std_Types.h"

/*=======[M A C R O S]========================================================*/
#if defined(COMPILER_GREENHILLS_RH850_COMP716_SUPPORTED)
    #define ASM __asm__ volatile
#elif defined(COMPILER_CSPLUS_RH850_CCRH_SUPPORTED)

#else
#error "Unsupported compiler"
#endif

#ifndef OS_LOCAL_INLINE
#define OS_LOCAL_INLINE static inline
#endif
#ifndef OS_LOCAL
#define OS_LOCAL static /* PRQA S 3414 */ /* VL_Os_3414 */
#endif
#ifndef OS_ALWAYS_INLINE
#define OS_ALWAYS_INLINE
#endif
#define CHECK_STACK_USAGE (1U)
/* Basic system register */
#define OS_EIPC_NUM   (0U), (0U)  /* SR0,0 */
#define OS_EIPSW_NUM  (1U), (0U)  /* SR1,0 */
#define OS_FEPC_NUM   (2U), (0U)  /* SR2,0 */
#define OS_FEPSW_NUM  (3U), (0U)  /* SR3,0 */
#define OS_PSW_NUM    (5U), (0U)  /* SR5,0 */
#define OS_FPSR_NUM   (6U), (0U)  /* SR6,0 */
#define OS_FPEPC_NUM  (7U), (0U)  /* SR7,0 */
#define OS_FPST_NUM   (8U), (0U)  /* SR8,0 */
#define OS_FPCC_NUM   (9U), (0U)  /* SR9,0 */
#define OS_FPCFG_NUM  (10U), (0U) /* SR10,0 */
#define OS_FPEC_NUM   (11U), (0U) /* SR11,0 */
#define OS_EIIC_NUM   (13U), (0U) /* SR13,0 */
#define OS_FEIC_NUM   (14U), (0U) /* SR14,0 */
#define OS_CTPC_NUM   (16U), (0U) /* SR16,0 */
#define OS_CTPSW_NUM  (17U), (0U) /* SR17,0 */
#define OS_CTBP_NUM   (20U), (0U) /* SR20,0 */
#define OS_EIWR_NUM   (28U), (0U) /* SR28,0 */
#define OS_FEWR_NUM   (29U), (0U) /* SR29,0 */
#define OS_MCFG0_NUM  (0U), (1U)  /* SR0,1 */
#define OS_RBASE_NUM  (2U), (1U)  /* SR2,1 */
#define OS_EBASE_NUM  (3U), (1U)  /* SR3,1 */
#define OS_INTBP_NUM  (4U), (1U)  /* SR4,1 */
#define OS_MCTL_NUM   (5U), (1U)  /* SR5,1 */
#define OS_PID_NUM    (6U), (1U)  /* SR6,1 */
#define OS_SCCFG_NUM  (11U), (1U) /* SR11,1 */
#define OS_SCBP_NUM   (12U), (1U) /* SR12,1 */
#define OS_HTCFG0_NUM (0U), (2U)  /* SR0,2 */
#define OS_EMA_NUM    (6U), (2U)  /* SR6,2 */
#define OS_ASID_NUM   (7U), (2U)  /* SR7,2 */
#define OS_MEI_NUM    (8U), (2U)  /* SR8,2 */

/* MPU Function System Register */
#define OS_MPM_NUM    (0U), (5U)  /* SR0,5 */
#define OS_MPRC_NUM   (1U), (5U)  /* SR1,5 */
#define OS_MPBRGN_NUM (4U), (5U)  /* SR4,5 */
#define OS_MPTRGN_NUM (5U), (5U)  /* SR5,5 */
#define OS_MCA_NUM    (8U), (5U)  /* SR8,5 */
#define OS_MCS_NUM    (9U), (5U)  /* SR9,5 */
#define OS_MCC_NUM    (10U), (5U) /* SR10,5 */
#define OS_MCR_NUM    (11U), (5U) /* SR11,5 */
#define OS_MPLA0_NUM  (0U), (6U)  /* SR0,6 */
#define OS_MPUA0_NUM  (1U), (6U)  /* SR1,6 */
#define OS_MPAT0_NUM  (2U), (6U)  /* SR2,6 */
#define OS_MPLA1_NUM  (4U), (6U)  /* SR4,6 */
#define OS_MPUA1_NUM  (5U), (6U)  /* SR5,6 */
#define OS_MPAT1_NUM  (6U), (6U)  /* SR6,6 */
#define OS_MPLA2_NUM  (8U), (6U)  /* SR8,6 */
#define OS_MPUA2_NUM  (9U), (6U)  /* SR9,6 */
#define OS_MPAT2_NUM  (10U), (6U) /* SR10,6 */
#define OS_MPLA3_NUM  (12U), (6U) /* SR12,6 */
#define OS_MPUA3_NUM  (13U), (6U) /* SR13,6 */
#define OS_MPAT3_NUM  (14U), (6U) /* SR14,6 */
#define OS_MPLA4_NUM  (16U), (6U) /* SR16,6 */
#define OS_MPUA4_NUM  (17U), (6U) /* SR17,6 */
#define OS_MPAT4_NUM  (18U), (6U) /* SR18,6 */
#define OS_MPLA5_NUM  (20U), (6U) /* SR20,6 */
#define OS_MPUA5_NUM  (21U), (6U) /* SR21,6 */
#define OS_MPAT5_NUM  (22U), (6U) /* SR22,6 */
#define OS_MPLA6_NUM  (24U), (6U) /* SR24,6 */
#define OS_MPUA6_NUM  (25U), (6U) /* SR25,6 */
#define OS_MPAT6_NUM  (26U), (6U) /* SR26,6 */
#define OS_MPLA7_NUM  (28U), (6U) /* SR28,6 */
#define OS_MPUA7_NUM  (29U), (6U) /* SR29,6 */
#define OS_MPAT7_NUM  (30U), (6U) /* SR30,6 */
#define OS_MPLA8_NUM  (0U), (7U)  /* SR0,7 */
#define OS_MPUA8_NUM  (1U), (7U)  /* SR1,7 */
#define OS_MPAT8_NUM  (2U), (7U)  /* SR2,7 */
#define OS_MPLA9_NUM  (4U), (7U)  /* SR4,7 */
#define OS_MPUA9_NUM  (5U), (7U)  /* SR5,7 */
#define OS_MPAT9_NUM  (6U), (7U)  /* SR6,7 */
#define OS_MPLA10_NUM (8U), (7U)  /* SR8,7 */
#define OS_MPUA10_NUM (9U), (7U)  /* SR9,7 */
#define OS_MPAT10_NUM (10U), (7U) /* SR10,7 */
#define OS_MPLA11_NUM (12U), (7U) /* SR12,7 */
#define OS_MPUA11_NUM (13U), (7U) /* SR13,7 */
#define OS_MPAT11_NUM (14U), (7U) /* SR14,7 */
#define OS_MPLA12_NUM (16U), (7U) /* SR16,7 */
#define OS_MPUA12_NUM (17U), (7U) /* SR17,7 */
#define OS_MPAT12_NUM (18U), (7U) /* SR18,7 */
#define OS_MPLA13_NUM (20U), (7U) /* SR20,7 */
#define OS_MPUA13_NUM (21U), (7U) /* SR21,7 */
#define OS_MPAT13_NUM (22U), (7U) /* SR22,7 */
#define OS_MPLA14_NUM (24U), (7U) /* SR24,7 */
#define OS_MPUA14_NUM (25U), (7U) /* SR25,7 */
#define OS_MPAT14_NUM (26U), (7U) /* SR26,7 */
#define OS_MPLA15_NUM (28U), (7U) /* SR28,7 */
#define OS_MPUA15_NUM (29U), (7U) /* SR29,7 */
#define OS_MPAT15_NUM (30U), (7U) /* SR30,7 */

/* Interrupt Function Register */
#define OS_FPIPR_NUM  (7U), (1U)  /* SR7,1 */
#define OS_ISPR_NUM   (10U), (2U) /* SR10,2 */
#define OS_PMR_NUM    (11U), (2U) /* SR11,2 */
#define OS_ICSR_NUM   (12U), (2U) /* SR12,2 */
#define OS_INTCFG_NUM (13U), (2U) /* SR13,2 */

/* Interrupt mode---Direct&Table */
#define OS_ARCH_INT_DIRECT ((uint16)0x0000U)
#define OS_ARCH_INT_TABLE  ((uint16)0x0040U)

/*=======[T Y P E   D E F I N I T I O N S]====================================*/
/* type of an Interrupt Service Routine (ISR) */
typedef uint32  Os_ArchMsrType;
typedef uint32* Os_ArchMsrRefType; /* PRQA S 5004 */ /* VL_Os_5004 */
typedef uint32  Os_TaskCBExtType;
typedef void (*Os_isrhnd)(void); /* PRQA S 5004 */ /* VL_Os_5004 */
/*=======[E X T E R N A L   D A T A]==========================================*/

/*=======[F U N C T I O N   I M P L E M E N T A T I O N S]====================*/
/* Base Register Read and Write */
/* PRQA S 3206,3008,6008++ */ /* VL_Os_3206, VL_Os_3008, VL_Os_6008*/
#if defined(COMPILER_GREENHILLS_RH850_COMP716_SUPPORTED)
static inline void OS_ARCH_REG_WRITE(uint32 regId, uint32 selId, uint32 val)
{
    ASM("LDSR %2, %0 , %1" ::"%"(regId), "%"(selId), "r"(val) : "memory"); /* PRQA S 1006*/ /* VL_Os_1006*/
}

static inline uint32 OS_ARCH_REG_READ(uint32 regId, uint32 selId)
{
    uint32 val;
    ASM("STSR %1, %0, %2" : "=r"(val) : "%"(regId), "%"(selId) : "memory"); /* PRQA S 1006*/ /* VL_Os_1006*/
    return val;
}
#elif defined(COMPILER_CSPLUS_RH850_CCRH_SUPPORTED)
#define OS_ARCH_REG_WRITE(regId_selId, val) __ldsr_rh(regId_selId, val)
#define OS_ARCH_REG_READ(regId_selId) __stsr_rh(regId_selId)
#else
#error "Unsupported compiler"
#endif

/* PRQA S 3206,3008,6008-- */

#endif /* ARCH_DEFINE_H */
/*=======[E N D   O F   F I L E]==============================================*/
