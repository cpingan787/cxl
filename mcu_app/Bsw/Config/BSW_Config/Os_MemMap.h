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
 * @file              : Os_MemMap.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-05 10:51:09
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 
 **********************************************************************************************************************/

/* PRQA S 0883,0791,0793,3116 ++ */ /* VL_QAC_include,VL_QAC_identifier,VL_QAC_MacroLength,VL_MemMap_3116 */

#define MEMMAP_ERROR

/* Total section items: 23 */
#if defined(START_WITH_IF)
#undef MEMMAP_ERROR

/*Index:0  Section name : CODE*/
#elif defined OS_START_SEC_CODE
#undef OS_START_SEC_CODE
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_CODE_NO_MATCH
//#pragma section "CODE.GLOBAL.OS.UNSPECIFIED" ax 4

#elif defined OS_STOP_SEC_CODE
#undef OS_STOP_SEC_CODE
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_CODE_NO_MATCH
#undef OS_START_SEC_CODE_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:1  Section name : CODE_FAST*/
#elif defined OS_START_SEC_CODE_FAST
#undef OS_START_SEC_CODE_FAST
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_CODE_FAST_NO_MATCH
//#pragma section "CODE_FAST.GLOBAL.OS.UNSPECIFIED" ax 4

#elif defined OS_STOP_SEC_CODE_FAST
#undef OS_STOP_SEC_CODE_FAST
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_CODE_FAST_NO_MATCH
#undef OS_START_SEC_CODE_FAST_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:2  Section name : CONST_UNSPECIFIED*/
#elif defined OS_START_SEC_CONST_UNSPECIFIED
#undef OS_START_SEC_CONST_UNSPECIFIED
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_CONST_UNSPECIFIED_NO_MATCH
//#pragma section "CONST.GLOBAL.OS.UNSPECIFIED" a 4

#elif defined OS_STOP_SEC_CONST_UNSPECIFIED
#undef OS_STOP_SEC_CONST_UNSPECIFIED
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_CONST_UNSPECIFIED_NO_MATCH
#undef OS_START_SEC_CONST_UNSPECIFIED_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:3  Section name : CONFIG_DATA_UNSPECIFIED*/
#elif defined OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#undef OS_START_SEC_CONFIG_DATA_UNSPECIFIED
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_CONFIG_DATA_UNSPECIFIED_NO_MATCH
//#pragma section "CONFIG_DATA.GLOBAL.OS.UNSPECIFIED" a 4

#elif defined OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#undef OS_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_CONFIG_DATA_UNSPECIFIED_NO_MATCH
#undef OS_START_SEC_CONFIG_DATA_UNSPECIFIED_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:4  Section name : VAR_CLONE_16*/
#elif defined OS_START_SEC_VAR_CLONE_16
#undef OS_START_SEC_VAR_CLONE_16
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLONE_16_NO_MATCH
//#pragma section "VAR_CLONE.GLOBAL.OS.UNSPECIFIED" aw 4

#elif defined OS_STOP_SEC_VAR_CLONE_16
#undef OS_STOP_SEC_VAR_CLONE_16
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLONE_16_NO_MATCH
#undef OS_START_SEC_VAR_CLONE_16_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:5  Section name : VAR_CLONE_32*/
#elif defined OS_START_SEC_VAR_CLONE_32
#undef OS_START_SEC_VAR_CLONE_32
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLONE_32_NO_MATCH
//#pragma section "VAR_CLONE.GLOBAL.OS.UNSPECIFIED" aw 4

#elif defined OS_STOP_SEC_VAR_CLONE_32
#undef OS_STOP_SEC_VAR_CLONE_32
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLONE_32_NO_MATCH
#undef OS_START_SEC_VAR_CLONE_32_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:6  Section name : VAR_CLONE_8*/
#elif defined OS_START_SEC_VAR_CLONE_8
#undef OS_START_SEC_VAR_CLONE_8
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLONE_8_NO_MATCH
//#pragma section "VAR_CLONE.GLOBAL.OS.UNSPECIFIED" aw 4

#elif defined OS_STOP_SEC_VAR_CLONE_8
#undef OS_STOP_SEC_VAR_CLONE_8
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLONE_8_NO_MATCH
#undef OS_START_SEC_VAR_CLONE_8_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:7  Section name : VAR_CLONE_PTR*/
#elif defined OS_START_SEC_VAR_CLONE_PTR
#undef OS_START_SEC_VAR_CLONE_PTR
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLONE_PTR_NO_MATCH
//#pragma section "VAR_CLONE.GLOBAL.OS.UNSPECIFIED" aw 4

#elif defined OS_STOP_SEC_VAR_CLONE_PTR
#undef OS_STOP_SEC_VAR_CLONE_PTR
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLONE_PTR_NO_MATCH
#undef OS_START_SEC_VAR_CLONE_PTR_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:8  Section name : VAR_CLONE_UNSPECIFIED*/
#elif defined OS_START_SEC_VAR_CLONE_UNSPECIFIED
#undef OS_START_SEC_VAR_CLONE_UNSPECIFIED
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLONE_UNSPECIFIED_NO_MATCH
//#pragma section "VAR_CLONE.GLOBAL.OS.UNSPECIFIED" aw 4

#elif defined OS_STOP_SEC_VAR_CLONE_UNSPECIFIED
#undef OS_STOP_SEC_VAR_CLONE_UNSPECIFIED
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLONE_UNSPECIFIED_NO_MATCH
#undef OS_START_SEC_VAR_CLONE_UNSPECIFIED_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:9  Section name : VAR_CLEARED_CORE0_32*/
#elif defined OS_START_SEC_VAR_CLEARED_CORE0_32
#undef OS_START_SEC_VAR_CLEARED_CORE0_32
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLEARED_CORE0_32_NO_MATCH
//#pragma section "VAR_CLEARED.CORE0.OS.32" aw 4

#elif defined OS_STOP_SEC_VAR_CLEARED_CORE0_32
#undef OS_STOP_SEC_VAR_CLEARED_CORE0_32
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLEARED_CORE0_32_NO_MATCH
#undef OS_START_SEC_VAR_CLEARED_CORE0_32_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:10  Section name : VAR_CLEARED_CORE0_UNSPECIFIED*/
#elif defined OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#undef OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED_NO_MATCH
//#pragma section "VAR_CLEARED.CORE0.OS.UNSPECIFIED" aw 4

#elif defined OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#undef OS_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED_NO_MATCH
#undef OS_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:21  Section name : VAR_CLEARED_GLOBAL_32*/
#elif defined OS_START_SEC_VAR_CLEARED_GLOBAL_32
#undef OS_START_SEC_VAR_CLEARED_GLOBAL_32
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLEARED_GLOBAL_32_NO_MATCH
//#pragma section "VAR_CLEARED.GLOBAL.OS.32" aw 4

#elif defined OS_STOP_SEC_VAR_CLEARED_GLOBAL_32
#undef OS_STOP_SEC_VAR_CLEARED_GLOBAL_32
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLEARED_GLOBAL_32_NO_MATCH
#undef OS_START_SEC_VAR_CLEARED_GLOBAL_32_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section

/*Index:22  Section name : VAR_CLEARED_GLOBAL_UNSPECIFIED*/
#elif defined OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#undef OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#undef MEMMAP_ERROR
#ifndef MEMMAP_ERROR_SEC_NO_MATCH
#define MEMMAP_ERROR_SEC_NO_MATCH
#else
#error "Os_MemMap.h, section is used consecutively many times."
#endif
#define OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED_NO_MATCH
//#pragma section "VAR_CLEARED.GLOBAL.OS.UNSPECIFIED" aw 4

#elif defined OS_STOP_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#undef OS_STOP_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED
#undef MEMMAP_ERROR
#ifdef OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED_NO_MATCH
#undef OS_START_SEC_VAR_CLEARED_GLOBAL_UNSPECIFIED_NO_MATCH
#else
#error "Os_MemMap.h, no matching section was used."
#endif
#ifdef MEMMAP_ERROR_SEC_NO_MATCH
#undef MEMMAP_ERROR_SEC_NO_MATCH
#endif
//#pragma section


#endif /* START_WITH_IF */


#if defined MEMMAP_ERROR
#error "Os_MemMap.h, wrong pragma command"
#endif

/* PRQA S 0883,0791,0793,3116 -- */
