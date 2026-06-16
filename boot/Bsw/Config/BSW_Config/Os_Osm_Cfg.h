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
 * @file              : Os_Osm_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:08
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/
/*============================================================================*/
#ifndef OS_OSM_CFG_H
#define OS_OSM_CFG_H

/* =================================================== inclusions =================================================== */

/* ===================================================== macros ===================================================== */
/* OS Monitor */
#define    CFG_OS_MONITOR_ENABLE            FALSE
#define    CFG_LOAD_RATIO_CALC_ENABLE       FALSE
#define    CFG_TASK_RESPONSE_TIME_ENABLE    FALSE
#define CFG_SCHEDULE_COUNT_MONITOR          FALSE
/*  ++ Event Monitor ++  */
#define    CFG_EVENT_RESPONSE_TIME_MONITOR    FALSE
#define    CFG_EVENT_RESPONSE_TIME_HOOK    FALSE
#define    CFG_EVENT_RESPONSE_RATE_MONITOR    FALSE
#define    CFG_EVENT_RESPONSE_RATE_HOOK    FALSE

/*  -- Event Monitor --  */

/*  ++ Interrupt Monitor ++  */
#define    CFG_INTERRUPT_MONITOR_ENABLE    FALSE
/*  -- Interrupt Monitor --  */

#endif /* OS_OSM_CFG_H */
