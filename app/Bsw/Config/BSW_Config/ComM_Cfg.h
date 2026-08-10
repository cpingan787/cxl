/*==============================================================================*/
/**
 *
 * Copyright (C) iSOFT   (2023)
 *
 * All rights reserved.
 *
 * This document contains proprietary information belonging to iSOFT.
 * Passing on and copying of this document, and communication
 * of its contents is not permitted without prior written authorization.
 * 
 ********************************************************************************
 * 
 *  @MCU                : R7F7015813
 *  @file               : ComM_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:42
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef COMM_CFG_H_
#define COMM_CFG_H_

/*------------------------------------------[generate version information]------------------------------------------- */
#if defined(COMM_CFG_MAJOR_VERSION)
#error COMM_CFG_MAJOR_VERSION already defined
#else
/** \brief AUTOSAR comm configuration major version */
#define COMM_CFG_MAJOR_VERSION                  2u
#endif /* defined(COMM_CFG_MAJOR_VERSION) */

#if defined(COMM_CFG_MINOR_VERSION)
#error COMM_CFG_MINOR_VERSION already defined
#else
/** \brief AUTOSAR comm configuration minor version */
#define COMM_CFG_MINOR_VERSION                  1u
#endif /* defined(COMM_SW_MINOR_VERSION) */

#if defined(COMM_CFG_PATCH_VERSION)
#error COMM_CFG_PATCH_VERSION already defined
#else
/** \brief AUTOSAR comm configuration patch version */
#define COMM_CFG_PATCH_VERSION                  10u
#endif /* defined(COMM_CFG_PATCH_VERSION) */

/*--------------------------------------------[normal configure]----------------------------------------------------- */
#define COMM_MULTIPLE_PARTITION_ENABLED         STD_OFF

/** \brief avoids sending of 0-PNC-Vectors */
#define COMM_0PNC_VECTOR_AVOIDANCE              STD_OFF

/** \brief Enable/disable development error detection */
#define COMM_DEV_ERROR_DETECT                   STD_OFF

/** \brief automatically user mapping */
#define COMM_DIRECT_USER_MAPPING                STD_ON

/** \brief partial networking */
#define COMM_PNC_SUPPORT                        STD_OFF

/** \brief mode inhibition affects the ECU or not */
#define COMM_ECU_GROUP_CLASSIFICATION           3u

/** \brief mode limitation functionality */
#define COMM_MODE_LIMITATION_ENABLED            STD_OFF

/** \brief ComM shall perform a reset after entering "No Communication" mode because of an active mode limitation
 *  to "No Communication" mode. */
#define COMM_RESET_AFTER_FORCING_NOCOMM         STD_OFF

/** \brief Wake up of one channel shall lead to a wake up of all channels if true */
#define COMM_SYNC_WAKEUP                        STD_OFF

/** \brief Enable/disable the version info API */
#define COMM_VERSION_INFO_API                   STD_OFF

/** \brief ComMWakeupInhibitionEnabled */
#define COMM_WAKEUP_INHIBITION_ENABLED          STD_OFF

/** \brief Reference to NVRAM block containing the none volatile data */

/** \brief user mode switch Notification Rte configured */
#define COMM_USER_MODESWITCH_NOTIFY    STD_OFF
/** \brief channel full com request notify */
#define COMM_FULL_COMM_REQUEST_NOTIFY   STD_OFF
/* -------------------------------------associated to generate--------------------------------------------------------*/

#define COMM_USED_MODULE_NM                     STD_ON

#define COMM_DCM_INDICATION                     STD_ON

#define COMM_ECUM_ENABLE                       STD_ON

#define COMM_BSWM_ENABLE                       STD_ON

#define COMM_USED_MODULE_BUSSM                  STD_ON

#define COMM_NM_VARIANT_LIGHT_SUPPORT           STD_OFF

#define COMM_MANAGED_CHANNEL_SUPPORT            STD_OFF

/* calculate form post build */
#define COMM_CHANNEL_NUMBER                     1u

#define COMM_PNC_NUMBER                         0u

#define COMM_USER_NUMBER                        1u

#define ComMChannel_0                        0u

#define ComMUser_0                        0u

#endif /* COMM_CFG_H_ */

