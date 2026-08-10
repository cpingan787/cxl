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
 * @file              : Os_Hook_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-06-18 17:22:56
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_HOOK_CFG_H
#define OS_HOOK_CFG_H

/* =================================================== inclusions =================================================== */

/* ===================================================== macros ===================================================== */
/* Hooks */
#define     CFG_ERRORHOOK                   		FALSE
#define     CFG_PRETASKHOOK                 		FALSE
#define     CFG_POSTTASKHOOK                		FALSE
#define     CFG_STARTUPHOOK                 		FALSE
#define     CFG_SHUTDOWNHOOK                		TRUE
#define     CFG_USEGETSERVICEID             		FALSE
#define     CFG_USEPARAMETERACCESS          		FALSE

#define 	CFG_APPL_STARTUPHOOK					FALSE
#define 	CFG_APPL_ERRORHOOK              		FALSE
#define 	CFG_APPL_SHUTDOWNHOOK           		FALSE
/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

#endif /* OS_HOOK_CFG_H */
