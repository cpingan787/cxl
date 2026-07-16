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
 * @file              : Os_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 10:40:27
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
/*============================================================================*/
#ifndef OS_CFG_H
#define OS_CFG_H

/* =================================================== inclusions =================================================== */
#include "Std_Types.h"
#include "Os_Marcos.h"
#include "Os_Alarm_Cfg.h"
#include "Os_Appl_Cfg.h"
#include "Os_Barrier_Cfg.h"
#include "Os_Counter_Cfg.h"
#include "Os_Event_Cfg.h"
#include "Os_Hook_Cfg.h"
#include "Os_Interrupt_Cfg.h"
#include "Os_Peripheral_Cfg.h"
#include "Os_ProtectHook_Cfg.h"
#include "Os_ReadyQue_Cfg.h"
#include "Os_Resource_Cfg.h"
#include "Os_ScheduleTable_Cfg.h"
#include "Os_Spinlock_Cfg.h"
#include "Os_Task_Cfg.h"
#include "Os_Tprot_Cfg.h"
#include "Os_TrustedFunc_Cfg.h"
#include "Os_Core_Cfg.h"
#include "Os_Mprot_Cfg.h"
#include "Os_Debug_Cfg.h"
#include "Os_Osm_Cfg.h"
/* ===================================================== macros ===================================================== */
/*=======[F I L E  V E R S I O N   I N F O R M A T I O N]===============================*/
#define     OS_CFG_H_AR_MAJOR_VERSION              23U
#define     OS_CFG_H_AR_MINOR_VERSION              11U
#define     OS_CFG_H_AR_PATCH_VERSION              0U
#define     OS_CFG_H_SW_MAJOR_VERSION              2U
#define     OS_CFG_H_SW_MINOR_VERSION              0U
#define     OS_CFG_H_SW_PATCH_VERSION              0U

#define     ENABLE_CLONE_TECH                      TRUE


/* Core Definition*/
#define		CFG_CORE_MAX							(1U)
#define		OS_CORE_ID_MASTER						((Os_CoreIdType)0U)
#define		OS_CORE_ID_0							((Os_CoreIdType)0U)

/* OsNumberOfCores: number of cores that are controlled by the AUTOSAR OS*/
#define		OS_AUTOSAR_CORES						(1U)

#define		CFG_CORE0_AUTOSAROS_ENABLE				TRUE
#define		CFG_CORE1_AUTOSAROS_ENABLE				FALSE
#define		CFG_CORE2_AUTOSAROS_ENABLE				FALSE
#define		CFG_CORE3_AUTOSAROS_ENABLE				FALSE
#define		CFG_CORE4_AUTOSAROS_ENABLE				FALSE
#define		CFG_CORE5_AUTOSAROS_ENABLE				FALSE

/* core start address. */
#define		CFG_CORE0_START_ADDRESS					(&_start)
#define		CFG_CORE1_START_ADDRESS					(&_start)
#define		CFG_CORE2_START_ADDRESS					(&_start)
#define		CFG_CORE3_START_ADDRESS					(&_start)
#define		CFG_CORE4_START_ADDRESS					(&_start)
#define		CFG_CORE5_START_ADDRESS					(&_start)


/* Scalability Class */
#define     CFG_SC                                  OS_SC1

/* Conformance  Class */
#define     CFG_CC                          		OS_ECC2

/* System Status: stardard, extended */
#define     CFG_STATUS                      		OS_STATUS_EXTENDED

/* App Mode Definition */
#define		DONOTCARE								((Os_AppModeType)0x0U)
#define     OSDEFAULTAPPMODE                            ((Os_AppModeType)0x1U)

/* system timer */
#define     CFG_SYSTEM_TIMER_ENABLE			    	TRUE


#define     CFG_SYSTEM_TIMER_ENABLE_CORE0			TRUE

/* System timer register value define */
#define     CFG_REG_OSTIMER_VALUE_CORE0				(10000U)

/* timing protection timer register value */
#define     CFG_REG_TP_TIMER_VALUE_CORE0			(60000U)

#define     CFG_SYSTEM_STACK_MAX            		(1U)

/* wether support trace function */
#define     CFG_RTI_ENABLE                          FALSE
#define     CFG_ARTI_ENABLE                         FALSE

/* Whether the floating-point context is automatically saved and restored during task switches. */
#define     CFG_FLOATING_POINT_CONTEXT_SAVE     	FALSE

/* wether check stack overflow */
#define     CFG_STACK_CHECK                 		TRUE
#define     CFG_GLOBAL_TASK_STACK_SHARING           FALSE

#define     CFG_CRITICAL_ZONE_MAX					1U

/*  whether shell the os service*/
#define     CFG_SRV_SHELLOS                 		FALSE

/* SC34: Service Protection. */
#define     CFG_SERVICE_PROTECTION_ENABLE   		FALSE

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */

#endif /*  OS_CFG_H */
