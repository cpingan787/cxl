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
 **  FILENAME    : Os_Arch_Mpu.c                                               **
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

/*=======[I N C L U D E S]====================================================*/
#include "Os_Arch_Processor.h"
#include "Os_Kernel2Port.h"
#include "Os_Appl_CfgData.h"
#include "Os_Interrupt_CfgData.h"
#include "Os_Task_CfgData.h"
#if (TRUE == CFG_MEMORY_PROTECTION_ENABLE)
/*=======[E X T E R N A L   D A T A]==========================================*/
#define OS_START_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/*The address of the interrupt data.*/
const Os_IsrAddrType* Os_IsrDAddr;
#define OS_STOP_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/*The address of the task data.*/
const Os_TaskAddrType* Os_TaskDAddr;
#define OS_STOP_SEC_VAR_CLONE_PTR
#include "Os_MemMap.h"
/*=======[I N T E R N A L   D A T A]==========================================*/
#define OS_START_SEC_VAR_CLONE_32
#include "Os_MemMap.h"
static Os_ApplicationType Os_MpuCurrentAppId;
#define OS_STOP_SEC_VAR_CLONE_32
#include "Os_MemMap.h"

#if (OS_MPROT_REGION_CFG_ENABLE == TRUE)
#define OS_START_SEC_VAR_CLONE_8
#include "Os_MemMap.h"
static uint8 Os_MpuRWEUsedRegionNum; /* Code and Peripheral MPU memory region used by kernel and core */
#define OS_STOP_SEC_VAR_CLONE_8
#include "Os_MemMap.h"

#define OS_START_SEC_VAR_CLONE_32
#include "Os_MemMap.h"
static uint32 Os_MpuCoreRWEAccess;
#define OS_STOP_SEC_VAR_CLONE_32
#include "Os_MemMap.h"
#endif

/*=======[I N T E R N A L   F U N C T I O N   D E C L A R A T I O N S]========*/
static void Os_MpuIsrSwitch(ISRType IsrId, ApplicationType HostAppId);

static void Os_MpuTaskSwitch(TaskType TaskId, ApplicationType HostAppId);

#if (OS_MPROT_REGION_CFG_ENABLE == TRUE)
static void Os_Hal_SetConfigCoreMemoryRegionAccess(void);
static void Os_Hal_SetConfigObjMemoryRegionAccess(ApplicationType appId, ObjectTypeType objType, ObjectType objId);
#else
static void Os_Hal_SetConfigKernelMemoryRegionAccess(void);
#endif
/*=======[F U N C T I O N   I M P L E M E N T A T I O N S]====================*/
#if (OS_MPROT_REGION_CFG_ENABLE == TRUE)
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
static void Os_Set_Mpu_APR(uint8 i, uint32 value)
{
    switch (i)
    {
    case 0:
        OS_ARCH_REG_WRITE(OS_MPLA0_NUM, value);
        break; // reserve for kernel
    case 1:
        OS_ARCH_REG_WRITE(OS_MPUA0_NUM, value);
        break; // reserve for kernel
    case 2:
        OS_ARCH_REG_WRITE(OS_MPLA1_NUM, value);
        break; // reserve for kernel
    case 3:
        OS_ARCH_REG_WRITE(OS_MPUA1_NUM, value);
        break; // reserve for kernel
    case 4:
        OS_ARCH_REG_WRITE(OS_MPLA2_NUM, value);
        break;
    case 5:
        OS_ARCH_REG_WRITE(OS_MPUA2_NUM, value);
        break;
    case 6:
        OS_ARCH_REG_WRITE(OS_MPLA3_NUM, value);
        break;
    case 7:
        OS_ARCH_REG_WRITE(OS_MPUA3_NUM, value);
        break;
    case 8:
        OS_ARCH_REG_WRITE(OS_MPLA4_NUM, value);
        break;
    case 9:
        OS_ARCH_REG_WRITE(OS_MPUA4_NUM, value);
        break;
    case 10:
        OS_ARCH_REG_WRITE(OS_MPLA5_NUM, value);
        break;
    case 11:
        OS_ARCH_REG_WRITE(OS_MPUA5_NUM, value);
        break;
    case 12:
        OS_ARCH_REG_WRITE(OS_MPLA6_NUM, value);
        break;
    case 13:
        OS_ARCH_REG_WRITE(OS_MPUA6_NUM, value);
        break;
    case 14:
        OS_ARCH_REG_WRITE(OS_MPLA7_NUM, value);
        break;
    case 15:
        OS_ARCH_REG_WRITE(OS_MPUA7_NUM, value);
        break;
    case 16:
        OS_ARCH_REG_WRITE(OS_MPLA8_NUM, value);
        break;
    case 17:
        OS_ARCH_REG_WRITE(OS_MPUA8_NUM, value);
        break;
    case 18:
        OS_ARCH_REG_WRITE(OS_MPLA9_NUM, value);
        break;
    case 19:
        OS_ARCH_REG_WRITE(OS_MPUA9_NUM, value);
        break;
    case 20:
        OS_ARCH_REG_WRITE(OS_MPLA10_NUM, value);
        break;
    case 21:
        OS_ARCH_REG_WRITE(OS_MPUA10_NUM, value);
        break;
    case 22:
        OS_ARCH_REG_WRITE(OS_MPLA11_NUM, value);
        break;
    case 23:
        OS_ARCH_REG_WRITE(OS_MPUA11_NUM, value);
        break;
    case 24:
        OS_ARCH_REG_WRITE(OS_MPLA12_NUM, value);
        break;
    case 25:
        OS_ARCH_REG_WRITE(OS_MPUA12_NUM, value);
        break;
    case 26:
        OS_ARCH_REG_WRITE(OS_MPLA13_NUM, value);
        break;
    case 27:
        OS_ARCH_REG_WRITE(OS_MPUA13_NUM, value);
        break;
    case 28:
        OS_ARCH_REG_WRITE(OS_MPLA14_NUM, value);
        break;
    case 29:
        OS_ARCH_REG_WRITE(OS_MPUA14_NUM, value);
        break;
    case 30:
        OS_ARCH_REG_WRITE(OS_MPLA15_NUM, value);
        break;
    case 31:
        OS_ARCH_REG_WRITE(OS_MPUA15_NUM, value);
        break;
    default:
        while (1)
            ;
        break;
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
static void Os_Set_Mpu_APM(uint8 i, uint32 value)
{
    switch (i)
    {
    case 0:
        OS_ARCH_REG_WRITE(OS_MPAT0_NUM, value);
        break;
    case 1:
        OS_ARCH_REG_WRITE(OS_MPAT1_NUM, value);
        break;
    case 2:
        OS_ARCH_REG_WRITE(OS_MPAT2_NUM, value);
        break;
    case 3:
        OS_ARCH_REG_WRITE(OS_MPAT3_NUM, value);
        break;
    case 4:
        OS_ARCH_REG_WRITE(OS_MPAT4_NUM, value);
        break;
    case 5:
        OS_ARCH_REG_WRITE(OS_MPAT5_NUM, value);
        break;
    case 6:
        OS_ARCH_REG_WRITE(OS_MPAT6_NUM, value);
        break;
    case 7:
        OS_ARCH_REG_WRITE(OS_MPAT7_NUM, value);
        break;
    case 8:
        OS_ARCH_REG_WRITE(OS_MPAT8_NUM, value);
        break;
    case 9:
        OS_ARCH_REG_WRITE(OS_MPAT9_NUM, value);
        break;
    case 10:
        OS_ARCH_REG_WRITE(OS_MPAT10_NUM, value);
        break;
    case 11:
        OS_ARCH_REG_WRITE(OS_MPAT11_NUM, value);
        break;
    case 12:
        OS_ARCH_REG_WRITE(OS_MPAT12_NUM, value);
        break;
    case 13:
        OS_ARCH_REG_WRITE(OS_MPAT13_NUM, value);
        break;
    case 14:
        OS_ARCH_REG_WRITE(OS_MPAT14_NUM, value);
        break;
    case 15:
        OS_ARCH_REG_WRITE(OS_MPAT15_NUM, value);
        break;
    default:
        while (1)
            ;
        break;
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
static void Os_Hal_SetConfigCoreMemoryRegionAccess(void)
{
    /* Region 0/1 is reserved for kernel */
    Os_MpuRWEUsedRegionNum                      = 2;
    Os_CoreIdType                 coreId        = Os_Hal_GetCoreID();
    const Os_MemoryRegionObjType* coreMemRegion = &Os_Memory_Region_Core_Inf[coreId];

    /*fixed region 0-1 */
    /* RX*/
    OS_ARCH_REG_WRITE(OS_MPLA0_NUM, (uint32)OS_ARCH_FLASH_ADDR_START);
    OS_ARCH_REG_WRITE(OS_MPUA0_NUM, (uint32)OS_ARCH_FLASH_ADDR_END);
    OS_ARCH_REG_WRITE(OS_MPAT0_NUM, (OS_MPU_SX | OS_MPU_SR | OS_MPU_UX | OS_MPU_UR));

    /* RW*/
    OS_ARCH_REG_WRITE(OS_MPLA1_NUM, (uint32)OS_ARCH_PERIPH_ADDR_START);
    OS_ARCH_REG_WRITE(OS_MPUA1_NUM, (uint32)OS_ARCH_PERIPH_ADDR_END);
    OS_ARCH_REG_WRITE(OS_MPAT1_NUM, OS_MPU_SR | OS_MPU_SW | OS_MPU_UR | OS_MPU_UW);

    if ((0 != coreMemRegion->regionsNum) && (NULL_PTR != coreMemRegion))
    {
        Os_MpuCoreRWEAccess = 0;
        for (uint8 i = 0; i < coreMemRegion->regionsNum; i++)
        {
            const Os_MemoryRegionAttrType* pRegion = coreMemRegion->regionsRef[i];
            if ((pRegion->access & (OS_READBIT | OS_WRITEBIT | OS_EXECUTBIT | OS_STACKSPACEBIT)) != 0)
            {
                Os_Set_Mpu_APR(Os_MpuRWEUsedRegionNum * 2, pRegion->startAddr);
                Os_Set_Mpu_APR(Os_MpuRWEUsedRegionNum * 2 + 1, pRegion->endAddr);

                if ((pRegion->access & (OS_READBIT | OS_STACKSPACEBIT)) != 0)
                {
                    Os_MpuCoreRWEAccess |=
                        OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, Os_MpuRWEUsedRegionNum) | OS_MPU_SR | OS_MPU_UR;
                }
                if ((pRegion->access & (OS_WRITEBIT | OS_STACKSPACEBIT)) != 0)
                {
                    Os_MpuCoreRWEAccess |=
                        OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, Os_MpuRWEUsedRegionNum) | OS_MPU_SW | OS_MPU_UW;
                }
                if ((pRegion->access & (OS_EXECUTBIT)) != 0)
                {
                    Os_MpuCoreRWEAccess |=
                        OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, Os_MpuRWEUsedRegionNum) | OS_MPU_SX | OS_MPU_UX;
                }
                Os_Set_Mpu_APM(Os_MpuRWEUsedRegionNum, Os_MpuCoreRWEAccess);
                Os_MpuRWEUsedRegionNum++;
            }
        }
        OS_ARCH_REG_WRITE(OS_MPRC_NUM, OS_MPRC_ENABLE_n(Os_MpuRWEUsedRegionNum));
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
static void Os_Hal_SetConfigObjMemoryRegionAccess(ApplicationType appId, ObjectTypeType objType, ObjectType objId)
{
    uint8                          i            = 0;
    uint32                         rwe          = 0;
    uint8                          OsAPRStart   = Os_MpuRWEUsedRegionNum;
    const Os_MemoryRegionObjType*  appMemRegion = &Os_Memory_Region_Application_Inf[appId];
    const Os_MemoryRegionObjType*  objMemRegion;
    const Os_MemoryRegionAttrType* pRegion;

    if ((NULL_PTR != appMemRegion) && (0 != appMemRegion->regionsNum))
    {
        for (i = 0; i < appMemRegion->regionsNum; i++)
        {
            pRegion = appMemRegion->regionsRef[i];
            if ((pRegion->access & (OS_READBIT | OS_WRITEBIT | OS_EXECUTBIT | OS_STACKSPACEBIT)) != 0)
            {
                Os_Set_Mpu_APR(OsAPRStart * 2, pRegion->startAddr);
                Os_Set_Mpu_APR(OsAPRStart * 2 + 1, pRegion->endAddr);
                if ((pRegion->access & (OS_READBIT | OS_STACKSPACEBIT)) != 0)
                {
                    rwe |= OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, OsAPRStart);
                }
                if ((pRegion->access & (OS_WRITEBIT | OS_STACKSPACEBIT)) != 0)
                {
                    rwe |= OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, OsAPRStart);
                }
                if ((pRegion->access & (OS_EXECUTBIT)) != 0)
                {
                    rwe |= OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, OsAPRStart);
                }
                OsAPRStart++;
            }
        }
    }

    if (objType == OS_OBJECT_ISR)
    {
        objMemRegion = &Os_Memory_Region_Isr_Inf[objId];
    }
    else
    {
        objMemRegion = &Os_Memory_Region_Task_Inf[objId];
    }

    if ((NULL_PTR != objMemRegion) && (0 != objMemRegion->regionsNum))
    {
        for (i = 0; i < objMemRegion->regionsNum; i++)
        {
            pRegion = objMemRegion->regionsRef[i];
            if ((pRegion->access & (OS_READBIT | OS_WRITEBIT | OS_EXECUTBIT | OS_STACKSPACEBIT)) != 0)
            {
                Os_Set_Mpu_APR(OsAPRStart * 2, pRegion->startAddr);
                Os_Set_Mpu_APR(OsAPRStart * 2 + 1, pRegion->endAddr);
                if ((pRegion->access & (OS_READBIT | OS_STACKSPACEBIT)) != 0)
                {
                    rwe |= OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, OsAPRStart);
                }
                if ((pRegion->access & (OS_WRITEBIT | OS_STACKSPACEBIT)) != 0)
                {
                    rwe |= OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, OsAPRStart);
                }
                if ((pRegion->access & (OS_EXECUTBIT)) != 0)
                {
                    rwe |= OS_ARCH_SET_MP_ACCESS_RIGHT(0x1U, OsAPRStart);
                }
                if (rwe != 0)
                {
                    rwe |= Os_MpuCoreRWEAccess;
                    Os_Set_Mpu_APM(OsAPRStart, rwe);
                }
                OsAPRStart++;
            }
        }
    }
    OS_ARCH_REG_WRITE(OS_MPRC_NUM, OS_MPRC_ENABLE_n(OsAPRStart));
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#endif

#if (OS_MPROT_REGION_CFG_ENABLE == FALSE)
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
static void Os_Hal_SetConfigKernelMemoryRegionAccess(void)
{
    Os_MpuCurrentAppId = INVALID_OSAPPLICATION;

    OS_ARCH_REG_WRITE(OS_MPRC_NUM, (uint32)0x00);
    /* 1.All flash  */
    OS_ARCH_REG_WRITE(OS_MPLA0_NUM, (uint32)OS_ARCH_FLASH_ADDR_START);
    OS_ARCH_REG_WRITE(OS_MPUA0_NUM, (uint32)OS_ARCH_FLASH_ADDR_END);
    OS_ARCH_REG_WRITE(OS_MPAT0_NUM, (OS_MPU_E | OS_MPU_SX | OS_MPU_SR | OS_MPU_UX | OS_MPU_UR));

    /* 2.All peripheral */
    OS_ARCH_REG_WRITE(OS_MPLA1_NUM, (uint32)OS_ARCH_PERIPH_ADDR_START);
    OS_ARCH_REG_WRITE(OS_MPUA1_NUM, (uint32)OS_ARCH_PERIPH_ADDR_END);
    OS_ARCH_REG_WRITE(OS_MPAT1_NUM, (OS_MPU_E | OS_MPU_SW | OS_MPU_SR | OS_MPU_UW | OS_MPU_UR));

    /* 3.All RAM */
    OS_ARCH_REG_WRITE(OS_MPLA2_NUM, (uint32)OS_ARCH_RAM_ADDR_START);
    OS_ARCH_REG_WRITE(OS_MPUA2_NUM, (uint32)OS_ARCH_RAM_ADDR_END);
    OS_ARCH_REG_WRITE(OS_MPAT2_NUM, (OS_MPU_E | OS_MPU_SW | OS_MPU_SR | OS_MPU_UR));
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#endif

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Initialize the memory protection mapping for the os>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <xxx>
 * Reentrancy           <Non Reentrant>
 * param[in]            <xxx>
 * param[out]           <None>
 * param[in/out]        <None>
 * return               <None>
 * CallByAPI            <xxx>
 * REQ ID               <xxx>
 */
/******************************************************************************/
void Os_Hal_InitKnMemMap(void)
{
#if (OS_MPROT_REGION_CFG_ENABLE == FALSE)
    Os_Hal_SetConfigKernelMemoryRegionAccess();
#else
    Os_Hal_SetConfigCoreMemoryRegionAccess();
#endif
    return;
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <Cat2 MemMap for Memory Protection Settings Task>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * param-Name[in]       <None>
 * param-Name[out]      <None>
 * param-Name[in/out]   <None>
 * return               <None>
 * PreCondition         <None>
 * CallByAPI            <Os_SwitchTask>
 * REQ ID               <None>
 */
/******************************************************************************/
void Os_Hal_MemProtTaskMap(Os_TaskType taskId)
{
    ApplicationType HostAppId = Os_TaskCfg[taskId].ObjAppCfg->HostApp;

    if ((TRUE == Os_AppCfg[HostAppId].Trusted) && (TRUE != Os_AppCfg[HostAppId].TrustedAppWithProtection))
    {
#if (OS_MPROT_REGION_CFG_ENABLE == FALSE)
        /*Trusted APP and no memory protection*/
        Os_ArchSetTruReg();
#else
        OS_ARCH_REG_WRITE(OS_MPRC_NUM, OS_MPRC_ENABLE_n(Os_MpuRWEUsedRegionNum));
#endif
    }
    else
    {
        /*Non trusted apps or trusted apps protected by MPU*/
        Os_MpuTaskSwitch(taskId, HostAppId);
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <MemMap for Memory Protection Settings ISR>
 *
 * Service ID   :       <None>
 * Sync/Async   :       <Synchronous>
 * Reentrancy           <Non Reentrant>
 * param-Name[in]       <None>
 * param-Name[out]      <None>
 * param-Name[in/out]   <None>
 * return               <None>
 * PreCondition         <None>
 * CallByAPI            <Os_EnterISR2><Os_ExitISR2>
 * REQ ID               <None>
 */
/******************************************************************************/
void Os_Hal_MemProtIsrMap(Os_IsrType isrId)
{
    ApplicationType HostAppId = Os_IsrCfg[isrId].ObjAppCfg->HostApp;

    if ((TRUE == Os_AppCfg[HostAppId].Trusted) && (TRUE != Os_AppCfg[HostAppId].TrustedAppWithProtection))
    {
#if (OS_MPROT_REGION_CFG_ENABLE == FALSE)
        /*Trusted APP and no memory protection*/
        Os_ArchSetTruReg();
#else
        OS_ARCH_REG_WRITE(OS_MPRC_NUM, OS_MPRC_ENABLE_n(Os_MpuRWEUsedRegionNum));
#endif
    }
    else
    {
        /*Non trusted apps or trusted apps protected by MPU*/
        Os_MpuIsrSwitch(isrId, HostAppId);
    }
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <In MPU Trust Isr Configuration, All permissions are
 *               allowed in privilege mode ,but in user mode,it has some restrict>
 * Service ID           <Os_ArchMpTrustIsrThreadSwitch>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-Name[in]       <None>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * return               <None>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
static void Os_MpuIsrSwitch(ISRType IsrId, ApplicationType HostAppId)
{
#if (OS_MPROT_REGION_CFG_ENABLE == FALSE)
    if (Os_MpuCurrentAppId != HostAppId)
    {
        Os_MpuCurrentAppId = HostAppId;

        OS_ARCH_REG_WRITE(OS_MPLA3_NUM, (uint32)Os_AppPriDataAddr[HostAppId].AppAddrStart);
        OS_ARCH_REG_WRITE(OS_MPUA3_NUM, (uint32)Os_AppPriDataAddr[HostAppId].AppAddrEnd);
        /* PRQA S 0306-- */ /* MISRA Rule 11.4 */
        OS_ARCH_REG_WRITE(OS_MPAT3_NUM, (OS_MPU_E | OS_MPU_SW | OS_MPU_SR | OS_MPU_UR | OS_MPU_UW));
    }
    OS_ARCH_REG_WRITE(OS_MPLA4_NUM, (uint32)Os_IsrDAddr[IsrId].IsrAddrStart);
    OS_ARCH_REG_WRITE(OS_MPUA4_NUM, (uint32)Os_IsrDAddr[IsrId].IsrAddrEnd);
    /* PRQA S 0306-- */ /* MISRA Rule 11.4 */
    OS_ARCH_REG_WRITE(OS_MPAT4_NUM, (OS_MPU_E | OS_MPU_SW | OS_MPU_SR | OS_MPU_UR | OS_MPU_UW));

#else
    Os_Hal_SetConfigObjMemoryRegionAccess(HostAppId, OS_OBJECT_ISR, IsrId);
#endif
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
/******************************************************************************/
/*
 * Brief                <In MPU No Trust Task Configuration, All permissions are
 *                      allowed in privilege mode ,but in user mode,it has some restrict>
 * Service ID           <Os_ArchMpNonTrustTaskThreadSwitch>
 * Sync/Async           <Synchronous>
 * Reentrancy           <Reentrant>
 * param-Name[in]       <None>
 * Param-Name[out]      <None>
 * Param-Name[in/out]   <None>
 * return               <None>
 * PreCondition         <None>
 * CallByAPI            <None>
 * REQ ID               <None>
 */
/******************************************************************************/
static void Os_MpuTaskSwitch(TaskType TaskId, ApplicationType HostAppId)
{
#if (OS_MPROT_REGION_CFG_ENABLE == FALSE)
    if (Os_MpuCurrentAppId != HostAppId)
    {
        Os_MpuCurrentAppId = HostAppId;

        OS_ARCH_REG_WRITE(OS_MPLA3_NUM, (uint32)Os_AppPriDataAddr[HostAppId].AppAddrStart);
        OS_ARCH_REG_WRITE(OS_MPUA3_NUM, (uint32)Os_AppPriDataAddr[HostAppId].AppAddrEnd);
        /* PRQA S 0306-- */ /* MISRA Rule 11.4 */
        OS_ARCH_REG_WRITE(OS_MPAT3_NUM, (OS_MPU_E | OS_MPU_SW | OS_MPU_SR | OS_MPU_UW | OS_MPU_UR));
    }
    OS_ARCH_REG_WRITE(OS_MPLA4_NUM, (uint32)Os_TaskDAddr[TaskId].TaskAddrStart);
    OS_ARCH_REG_WRITE(OS_MPUA4_NUM, (uint32)Os_TaskDAddr[TaskId].TaskAddrEnd);
    /* PRQA S 0306-- */ /* MISRA Rule 11.4 */
    OS_ARCH_REG_WRITE(OS_MPAT4_NUM, (OS_MPU_E | OS_MPU_SW | OS_MPU_SR | OS_MPU_UW | OS_MPU_UR));
#else
    Os_Hal_SetConfigObjMemoryRegionAccess(HostAppId, OS_OBJECT_TASK, TaskId);
#endif
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#endif /* TRUE == CFG_MEMORY_PROTECTION_ENABLE */
/*=======[E N D   O F   F I L E]==============================================*/
