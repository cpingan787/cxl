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
 * @file              : Arti.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 10:40:28
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Arti.h"
#include "Os_Cfg.h"
/* ===================================================== macros ===================================================== */
#define OS_ARTI_LAUTERBACH_VENDOR_ID 0x009Du /* Lauterbach */
#define OS_ARTI_MODULE_ID 5u /* Arti */
#define OS_ARTI_MAJOR_VERSION 0x01u
/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

/**********************************************************************************************************************
 *  Infineon TriCore TC3xx OLDA Base Addresses(non_cached): 0xAFE00000
 *********************************************************************************************************************/

/**********************************************************************************************************************
 *  GLOBAL DATA TYPES AND STRUCTURES
 *********************************************************************************************************************/

#if (CFG_ARTI_ENABLE == TRUE)
/* PRQA S 1532,3408 ++ */ /* VL_QAC_OneFunRef,VL_Os_3408 */
volatile uint32 arti_os_trace; /* PRQA S 1512 */ /* VL_Os_1512 */
volatile uint32 arti_sc_trace; /* PRQA S 1512 */ /* VL_Os_1512 */
/* PRQA S 1532,3408 -- */

/* PRQA S 1532,1503 ++ */ /* VL_QAC_OneFunRef */
void Arti_Init(void)
/* PRQA S 1532,1503 -- */
{
}

/* PRQA S 1503 ++ */  /* VL_QAC_NoUsedApi */
void Arti_GetVersionInfo(Std_VersionInfoType* VersionInfoPtr)
/* PRQA S 1503 -- */
{
    VersionInfoPtr->vendorID         = OS_ARTI_LAUTERBACH_VENDOR_ID; /* Lauterbach */
    VersionInfoPtr->moduleID         = OS_ARTI_MODULE_ID;      /* Arti */
    VersionInfoPtr->sw_major_version = OS_ARTI_MAJOR_VERSION;
    VersionInfoPtr->sw_minor_version = 0u;
    VersionInfoPtr->sw_patch_version = 0u;
}
#endif

/* PRQA S 6610, 0553 EOF */ /* VL_MTR_Os_STCDN, VL_QAC_UnUsedFiles */
