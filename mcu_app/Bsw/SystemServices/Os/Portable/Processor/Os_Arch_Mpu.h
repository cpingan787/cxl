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
 **  FILENAME    : Os_Arch_Mpu.h                                               **
 **                                                                            **
 **  Created on  :                                                             **
 **  Author      : i-soft-os                                                   **
 **  Vendor      :                                                             **
 **  DESCRIPTION : functions related to the Memory Protection Unit (MPU)       **
 **                                                                            **
 **  SPECIFICATION(S) :   AUTOSAR classic Platform r19                         **
 **  Version :   AUTOSAR classic Platform R19--Function Safety                 **
 **                                                                            **
 *******************************************************************************/
/* PRQA S 3108-- */
#ifndef ARCH_MPU_H
#define ARCH_MPU_H
/*=======[I N C L U D E S]=================================================*/
#include "Os_Arch_Define.h"
#include "Os_Mprot_CfgData.h"
/*=======[M A C R O S]=====================================================*/
#if (TRUE == CFG_MEMORY_PROTECTION_ENABLE)
/*
Bit25-Bit16: These bits indicate the ASID value to be used as the area match condition.
Bit7: E, Area n is enabled.
Bit6: G, If this bit is 0, MPATn.ASID = ASID.ASID is used as the area match condition.
         If this bit is 1, the values of MPATn.ASID and ASID.ASID are not used as the area match condition.
Bit5: Supervisor Execution
Bit4: Supervisor Write
Bit3: Supervisor Read
Bit2: User Execution
Bit1: User Write
Bit0: User Read
*/
#define OS_MPU_E  (0xC0U)
#define OS_MPU_SX (0x20U)
#define OS_MPU_SW (0x10U)
#define OS_MPU_SR (0x08U)
#define OS_MPU_UX (0x04U)
#define OS_MPU_UW (0x02U)
#define OS_MPU_UR (0x01U)
#define OS_MPU_N  (0x00U)

#define OS_MPRC_ENABLE_n(n) ((1UL << (n)) - 1UL)
/* Set access rights for memory protection. */
#define OS_ARCH_SET_MP_ACCESS_RIGHT(rights, offset) (((uint32)rights) << (offset)) /* PRQA S 3410 */ /* VL_Os_3410 */
/* Set memory protection map for trusted app */
#define Os_ArchSetTruReg()
#define Os_Hal_MemProtKernelMap()
/* PRQA S 3472 ++*/ /* VL_Os_3472 */
#define Os_Hal_MemProtEnable()                                                     \
    do                                                                             \
    {                                                                              \
        OS_ARCH_REG_WRITE(OS_MPM_NUM, OS_ARCH_REG_READ(OS_MPM_NUM) | 0x00000001U); \
    } while (0);

#define Os_ArchMemProtDisable()                                                    \
    do                                                                             \
    {                                                                              \
        OS_ARCH_REG_WRITE(OS_MPM_NUM, OS_ARCH_REG_READ(OS_MPM_NUM) & 0xFFFFFFFEU); \
    } while (0);

/* PRQA S 3472 --*/
#else
#define Os_Hal_MemProtEnable()
#define Os_ArchMemProtDisable()
#endif /* TRUE == CFG_MEMORY_PROTECTION_ENABLE */

/* Memory protection. */
#if (TRUE == CFG_MEMORY_PROTECTION_ENABLE)
extern const Os_IsrAddrType*  Os_IsrDAddr;
extern const Os_TaskAddrType* Os_TaskDAddr;

extern void Os_Hal_InitKnMemMap(void);
extern void Os_Hal_MemProtTaskMap(Os_TaskType taskId);
extern void Os_Hal_MemProtIsrMap(Os_IsrType isrId);
#endif /* TRUE == CFG_MEMORY_PROTECTION_ENABLE */

#endif
/*=======[E N D   O F   F I L E]==============================================*/
