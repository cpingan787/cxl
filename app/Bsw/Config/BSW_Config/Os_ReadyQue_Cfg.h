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
 * @file              : Os_ReadyQue_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-06-18 17:22:56
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_READYQUE_CFG_H
#define OS_READYQUE_CFG_H

/* =================================================== inclusions =================================================== */

/* ===================================================== macros ===================================================== */
/* PRQA S 3472 ++ */ /* VL_Os_3472 */
#define READY_MAP_SIZE(CFG_PRIORITY_MAX) ((((CFG_PRIORITY_MAX) - 1U) / (sizeof(Os_PriorityType) * 8U)) + 1U)
/* PRQA S 3472 -- */
/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

#endif /* S_READYQUE_CFG_H */
