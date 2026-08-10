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
 *  @file               : Rte_StbM_Type.h
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:22:51
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef RTE_STBM_TYPE_H
#define RTE_STBM_TYPE_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Std_Types.h"
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/* Variables of this type are used to represent the kind of synchronized time-base. */
typedef uint16 StbM_SynchronizedTimeBaseType;
/* Variables of this type are used to express if and how a Local Time Base is
synchronized to the Global Time Master.  */

typedef uint8 StbM_TimeBaseStatusType;
#define STBM_TIMEBASE_STATUS_TIMEOUT          0x01u
#define STBM_TIMEBASE_STATUS_SYNC_TO_GATEWAY  0x04u
#define STBM_TIMEBASE_STATUS_GLOBAL_TIME_BASE 0x08u
#define STBM_TIMEBASE_STATUS_TIMELEAP_FUTURE  0x10u
#define STBM_TIMEBASE_STATUS_TIMELEAP_PAST    0x20u
#define StbM_TimeDiffType_LowerLimit   -2147483647
#define StbM_TimeDiffType_UpperLimit   2147483647

/* Variables of this type are used for expressing time stamps including relative time and
absolute calendar time. */
typedef struct
{
    StbM_TimeBaseStatusType timeBaseStatus;
    uint32 nanoseconds;
    uint32 seconds;
    uint16 secondsHi;
} StbM_TimeStampType;

/* Variables of this type are used to express time differences / offsets as signed values in in nanoseconds */
typedef sint32 StbM_TimeDiffType;
/* Variables of this type are used to express a rate deviation in ppm. */
typedef sint16 StbM_RateDeviationType;
/* Current user data of the Time Base */
typedef struct
{
    uint8 userDataLength;
    uint8 userByte0;
    uint8 userByte1;
    uint8 userByte2;
} StbM_UserDataType;
/* unique identifier of a notification customer */
typedef uint16 StbM_CustomerIdType;
/* Synchronized Time Base Record Table Header */
typedef struct
{
    uint8 SynchronizedTimeDomain;
    uint32 HWfrequency;
    uint32 HWprescaler;
} StbM_SyncRecordTableHeadType;
/* Offset Time Base Record Table Header */
typedef struct
{
    uint8 OffsetTimeDomain;
} StbM_OffsetRecordTableHeadType;
/* This type indicates if an ECU is configured for a system wide master for a given Time
Base is available or not. */
typedef enum
{
    STBM_SYSTEM_WIDE_MASTER_DISABLED = 0x00,
    STBM_SYSTEM_WIDE_MASTER_ENABLED = 0x01
} StbM_MasterConfigType;

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/

#endif /* RTE_STBM_TYPE_H */
