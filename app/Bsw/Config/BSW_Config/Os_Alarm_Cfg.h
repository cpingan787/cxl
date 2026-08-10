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
 * @file              : Os_Alarm_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-06-18 17:22:56
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_ALARM_CFG_H
#define OS_ALARM_CFG_H

/* =================================================== inclusions =================================================== */

/* ===================================================== macros ===================================================== */
#define     CFG_ALARM_MAX                   		(5U)
#define     CFG_AUTO_ALARM_MAX              		(0U)
/* Core0*/
#define     CFG_ALARM_MAX_CORE0                   	(5U)
#define     CFG_AUTO_ALARM_MAX_CORE0              	(0U)

/* PRQA S 0722, 0724, 1271, 1434, 0723 ++ *//* VL_Os_0722, VL_Os_0724, VL_Os_1271, VL_Os_1434, VL_Os_0723 */
 /*! Alarm identifiers. */
typedef enum
{
    /* Core0 */
    CFG_ALARM_ID_CORE0_BEGIN = 0,
    OsAlarm_1ms = CFG_ALARM_ID_CORE0_BEGIN,
    OsAlarm_5ms,
    OsAlarm_10ms,
    OsAlarm_50ms,
    OsAlarm_100ms,
    CFG_ALARM_ID_CORE0_END,

    INVALID_ALARM = 0xFFFFU,
} Os_AlarmType;
/* PRQA S 0722, 0724, 1271, 1434, 0723 -- */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

#endif /* OS_ALARM_CFG_H */
