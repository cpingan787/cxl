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
 * @MCU               : R7F7015813
 * @file              : Os_Resource_CfgData.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-06-18 17:22:56
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_RESOURCE_CFGDATA_H
#define OS_RESOURCE_CFGDATA_H

/* =================================================== inclusions =================================================== */
#include "Os_Types.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
extern const Os_ResourceCfgType Os_ResourceCfg[CFG_STD_RESOURCE_MAX];
extern const uint16 Os_CfgStdResourceMax_Inf[OS_AUTOSAR_CORES];
extern Os_RCBType* const Os_RCB[CFG_STD_RESOURCE_MAX];
extern const Os_ResourceRangeType Os_StdResIdRange[OS_AUTOSAR_CORES];
extern const uint16* const Os_TaskResourceAccessMask[CFG_TASK_MAX];
extern const uint16* const Os_IsrResourceAccessMask[CFG_ISR_MAX];
extern Os_ResourceType Os_ICBisrC2ResourceStack[CFG_ISR2_MAX][CFG_STD_RESOURCE_MAX];
extern Os_ResourceType Os_TCBTaskResourceStack[CFG_TASK_MAX][CFG_STD_RESOURCE_MAX];
extern const Os_ResourceType Os_ResScheduler_Inf[OS_AUTOSAR_CORES];
#endif /* OS_RESOURCE_CFGDATA_H */

