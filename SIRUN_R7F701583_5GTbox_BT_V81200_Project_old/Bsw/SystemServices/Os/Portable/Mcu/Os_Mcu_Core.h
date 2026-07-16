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
 **  FILENAME    : Os_Mcu_Core.h                                               **
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
#ifndef OS_MCU_CORE_H__
#define OS_MCU_CORE_H__

/*=======[I N C L U D E S]====================================================*/
#include "Os_Types.h"
#include "Os_Cfg_S.h"
/*=======[M A C R O S]========================================================*/
#define CHAR_BIT (3U) /* PRQA S 4600 */ /* VL_Os_4600 */

#define OS_PID_REG_VALUE (0x50003A1UL)
/* Flash address area */
#define OS_ARCH_FLASH_ADDR_START (0UL) /*  RH850/F1KM-S1 for 512KB, 768KB, 1MB */
#if defined(RH850_F1KM_S1_512KB)
    #define OS_ARCH_FLASH_ADDR_END (0x7FFFFUL) /*  RH850/F1KM-S1 for 512KB */
#elif defined(RH850_F1KM_S1_768KB)
    #define OS_ARCH_FLASH_ADDR_END (0xBFFFFUL) /*  RH850/F1KM-S1 for 768KB */
#elif defined(RH850_F1KM_S1_1MB)
    #define OS_ARCH_FLASH_ADDR_END (0xFFFFFUL) /*  RH850/F1KM-S1 for 1MB */
#elif defined(RH850_F1KM_S1_2MB)
    #define OS_ARCH_FLASH_ADDR_END (0x1FFFFFUL) /*  RH850/F1KM-S1 for 2MB */
#elif defined(RH850_F1KM_S4_4MB)
    #define OS_ARCH_FLASH_ADDR_END (0x3FFFFFU) /*  RH850/F1KM-S4 for 4MB */
#else
    #error "The current platform does not have the memory layout for the F1X\
 series predefined in the settings. Please refer to the manual/.ld and predefined\
 configurations from other platforms."
#endif

/* RAM address area, include
1. Local RAM(CPU area),
2. Retention RAM(CPU area),
3. Local RAM(self area),
4. Retention RAM(CPU area),
5. Data Flash
*/
#if defined(RH850_F1KM_S1_512KB)
    #define OS_ARCH_RAM_ADDR_START (0xFEBF0000UL) /*  RH850/F1KM-S1 for 512KB */
#elif defined(RH850_F1KM_S1_768KB)
    #define OS_ARCH_RAM_ADDR_START (0xFEBF8000UL) /*  RH850/F1KM-S1 for 768KB */
#elif defined(RH850_F1KM_S1_1MB)
    #define OS_ARCH_RAM_ADDR_START (0xFEBE0000UL) /*  RH850/F1KM-S1 for 1MB */
#elif defined(RH850_F1KM_S1_2MB)
    #define OS_ARCH_RAM_ADDR_START (0xFEBD0000UL) /*  RH850/F1KM-S1 for 2MB */
#elif defined(RH850_F1KM_S4_4MB)
    #define OS_ARCH_RAM_ADDR_START (0xFEBC0000U) /*  RH850/F1KM-S4 for 4MB */
#endif
#define OS_ARCH_RAM_ADDR_END (0xFF20FFFFUL) /*  RH850/F1KM-S1 for 512KB, 768KB, 1MB */

/* Peripheral address area */
#define OS_ARCH_PERIPH_ADDR_START (0xFFA00000UL) /*  RH850/F1KM-S1 for 512KB, 768KB, 1MB */
#define OS_ARCH_PERIPH_ADDR_END   (0xFFFFFFFFUL) /*  RH850/F1KM-S1 for 512KB, 768KB, 1MB */
/* Provided for external use */
#define PERIPHERAL_START (uint8*)OS_ARCH_PERIPH_ADDR_START
#define PERIPHERAL_END   (uint8*)OS_ARCH_PERIPH_ADDR_END

#define RODATA_START (uint8*)OS_ARCH_RAM_ADDR_START
#define RODATA_END   (uint8*)OS_ARCH_FLASH_ADDR_END

/* Provided for external use */
#if (TRUE == CFG_MEMORY_PROTECTION_ENABLE)
/* PRQA S 3472 ++*/ /* VL_Os_3472 */
#define OS_HAL_ADDRESS_IS_IN_ALL_RAM(Address, Size)                    \
    (((uint32)Os_MemProtKnAddrCfg.OsKernelAddr.pRamStart <= (Address)) \
     && ((uint32)Os_MemProtKnAddrCfg.OsKernelAddr.pRamEnd >= ((Address) + (Size))))

/* Provided for external use */
#define OS_HAL_ADDRESS_IS_NOT_IN_OTHER_APP(Address, Size, coreId, appsuborID)                  \
    ((((uint32)Os_MemProtKnAddrCfg.OsKernelAddr.pRamStart <= (Address))                        \
      && ((uint32)Os_Core_App_DAddr[coreId].AppAddrStart >= ((Address) + (Size))))             \
     || (((uint32)Os_Core_App_DAddr[coreId].AppAddrEnd <= (Address))                           \
         && ((uint32)Os_MemProtKnAddrCfg.OsKernelAddr.pPeripheralEnd >= ((Address) + (Size)))) \
     || (((uint32)Os_App_DAddr[appsuborID].AppAddrStart <= (Address))                          \
         && ((uint32)Os_App_DAddr[appsuborID].AppAddrEnd >= ((Address) + (Size)))))
#endif
/* PRQA S 3472 --*/ /* TRUE == CFG_MEMORY_PROTECTION_ENABLE */

/*=======[T Y P E   D E F I N I T I O N S]====================================*/
/* Core Mode */
typedef enum
{
    OS_CORE_MODE_HALT    = 0,
    OS_CORE_MODE_RUN     = 1,
    OS_CORE_MODE_IDLE    = 2,
    OS_CORE_MODE_SLEEP   = 3,
    OS_CORE_MODE_STANDBY = 4,
    OS_CORE_MODE_UNKNOWN = 5
} Os_CoreModeType;

typedef struct
{
    uint8* pRamStart; /* RAM */
    uint8* pRamEnd;

    uint8* pPeripheralStart; /* PERIPHERAL */
    uint8* pPeripheralEnd;

    uint8* pRomStart; /* PFLASH */
    uint8* pRomEnd;
} Os_MemProtKnAddr;

/* Type of memory protection Kernel */
/* Provided for external use */
typedef struct
{
    const Os_MemProtKnAddr OsKernelAddr;
} Os_MemProtKnCfgType;

/*=======[E X T E R N A L   D A T A]==========================================*/
#if (TRUE == CFG_MEMORY_PROTECTION_ENABLE)
extern const Os_MemProtKnCfgType Os_MemProtKnAddrCfg;
#endif

/*=======[E X T E R N A L   F U N C T I O N   D E C L A R A T I O N S]========*/
extern void            Os_Hal_MultiCoreInit(Os_CoreIdType sysCore);
extern void            Os_Hal_InitCPU(void);
extern void            Os_Hal_StartCore(Os_CoreIdType coreId);
extern Os_CoreModeType Os_Hal_GetCoreMode(Os_CoreIdType core);
extern boolean         Os_Hal_SetCoreMode(Os_CoreIdType core, Os_CoreModeType coreMode);
extern Os_CoreIdType   Os_Hal_GetCoreID(void);
extern CoreIdType      Os_ArchGetCoreLogID(CoreIdType phyCoreId);
extern CoreIdType      Os_ArchGetCorePhyID(CoreIdType logCoreId);
extern void            Os_Hal_CheckCPUInformation(void);

OS_LOCAL_INLINE OS_ALWAYS_INLINE Os_CoreIdType Os_GetCoreID(void)
{
#if (OS_AUTOSAR_CORES == 1)
    return (Os_CoreIdType)(0u);
#else
    return Os_ArchGetCoreLogID(Os_Hal_GetCoreID());
#endif
}

#endif /* ARCH_MCU_H__ */
/*=======[E N D   O F   F I L E]==============================================*/
