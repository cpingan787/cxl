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
 * @file              : Os_Counter_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 10:40:28
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_COUNTER_CFG_H
#define OS_COUNTER_CFG_H

/* =================================================== inclusions =================================================== */

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
#define     CFG_COUNTER_MAX							(1U)
/* Core0*/
#define     CFG_COUNTER_MAX_CORE0  					(1U)
/* PRQA S 3472 ++ */ /* VL_Os_3472 */
#define     OS_TICKS2NS_SystemTimer_Core0(ticks)	((ticks)*1000*1000)
#define     OS_TICKS2US_SystemTimer_Core0(ticks)	((ticks)*1000)
#define     OS_TICKS2MS_SystemTimer_Core0(ticks)	((ticks)*1000/1000)
#define     OS_TICKS2SEC_SystemTimer_Core0(ticks)	((ticks)*1000/1000000)
#define     OS_NS2TICKS_SystemTimer_Core0(ns)		((ns)/1000/1000)
#define     OS_US2TICKS_SystemTimer_Core0(us)		((us)/1000)
#define     OS_MS2TICKS_SystemTimer_Core0(ms)		((ms)*1000/1000)
#define     OS_SEC2TICKS_SystemTimer_Core0(sec)		((sec)*1000000/1000)
/* PRQA S 3472 --*/

/* PRQA S 0722, 0724, 1271, 1434, 0723 ++ *//* VL_Os_0722, VL_Os_0724, VL_Os_1271, VL_Os_1434, VL_Os_0723 */
/*! Counter identifiers. */
typedef enum
{
    /* Core0 */
    CFG_COUNTER_ID_CORE0_BEGIN = 0,
    SystemTimer_Core_0 = CFG_COUNTER_ID_CORE0_BEGIN,
    CFG_COUNTER_ID_CORE0_END,

    INVALID_COUNTER = 0xFFFFU,
} Os_CounterType;
/* PRQA S 0722, 0724, 1271, 1434, 0723 -- */

#endif /* OS_COUNTER_CFG_H */
