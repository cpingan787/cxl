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
 * @MCU               : R7F7015833
 * @file              : Os_Tprot_Cfg.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 10:40:28
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Tprot.h"
#include "Os_Counter.h"
#include "Os_Resource.h"
#include "Os_Task.h"
#include "Os_Interrupt.h"
#include "Os_Core.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */


#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533, 1502 ++ */ /* VL_QAC_OneRefSymbol */
/* PRQA S 3678, 3408 ++ */ /* VL_Os_3678, VL_Os_3408 */
uint32* const Os_RCBTmProtResBgtTask_Inf = NULL_PTR;
/* PRQA S 3678, 3408 -- */
/* PRQA S 1533, 1502 -- */
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"
/* PRQA S 1533, 1502 ++ */ /* VL_QAC_OneRefSymbol */
/* PRQA S 3678, 3408 ++ */ /* VL_Os_3678, VL_Os_3408 */
uint32* const Os_RCBTmProtResBgtIsr_Inf = NULL_PTR;
/* PRQA S 3678, 3408 -- */
/* PRQA S 1533, 1502 -- */
#define OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Os_MemMap.h"

/* PRQA S 6610 EOF */ /* VL_MTR_Os_STCDN */
