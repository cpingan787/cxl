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
 *  @file               : StbM_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-07-12 16:13:14
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef STBM_CFG_H
#define STBM_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/* Switches the development error detection and notification on or off. */
#define STBM_DEV_ERROR_DETECT                                   STD_ON

/* Schedule period of the main function StbM_MainFunction. */
#define STBM_MAIN_FUNCTION_PERIOD                               10000000U

/* Enables/Disables the usage of the recording functionality for Synchronized
and Offset timebases for Global Time precision measurement purpose. */
#define STBM_TIME_RECORDING_SUPPORT                             STD_OFF

/* This interval defines, when a GPT Timer shall be started for Time Notification
* Customers for which the corresponding Customer Timer is running */
#define STBM_TIMER_START_THRESHOLD                              0U

/* Activate/Deactivate the version information API */
#define STBM_VERSION_INFO_API                                   STD_OFF

#define STBM_STATUS_NOTIFICATIONS_ENABLED STD_OFF

/* This represents an optional sub-container in case any Time Notification Customer is configured.
The designated GPT timer has to be configured to have a tick duration of one micro second. */
#define STBM_GPT_TIMER_REF                                      0U
#define STBM_GPT_TIMER_FREQUENCY                                1000000000

#define STBM_IS_SYSTEM_WIDE_GLOBAL_TIME_MASTER   STD_OFF

/* The number of triggered customer */
#define STBM_TRIGGERED_CUSTOMER_NUM                             0U

/* The number of synchronized time base */
#define STBM_SYNCHRONIZED_TIME_BASE_NUM                         1U

/* The number of Notification Customer */
#define STBM_NOTIFICATION_CUSTOMER_NUM                          0U

#define STBM_TIME_CORRECTION_SUPPORT                            STD_ON

#define STBM_ETHIF_TIMESTAMP_SUPPORT                            STD_OFF

#define STBM_GPT_TIMESTAMP_SUPPORT                              STD_ON

#define STBM_OS_TIMESTAMP_SUPPORT                               STD_OFF

/* The Maximum StbMRateCorrectionsPerMeasurementDuration */
#define STBM_MAX_PER_MEASUREMENT_DURATION                       1U

/* The Maximum StbMSyncTimeRecordTableBlockCount */
#define STBM_MAX_SYNC_TIMERECORDTABLE_BLOCK_COUNT               0U

/* The Maximum StbMOffsetTimeRecordTableBlockCount */
#define STBM_MAX_OFFSET_TIMERECORDTABLE_BLOCK_COUNT             0U

#define StbMConf_StbMSynchronizedTimeBase_StbMSynchronizedTimeBase_Slave        0U

#endif /* STBM_CFG_H */
