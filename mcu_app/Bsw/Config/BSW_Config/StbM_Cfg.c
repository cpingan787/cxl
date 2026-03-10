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
 *  @MCU                : R7F7015833
 *  @file               : StbM_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-02-04 16:09:25
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "StbM.h"
#include "StbM_Cfg.h"

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

#define STBM_START_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"
CONST(StbMTimeCorrectionCfgType, STBM_CONST) StbMTimeCorrection[1U] =
{
    {
        TRUE,    /* StbMAllowMasterRateCorrection */
        0U,    /* StbMMasterRateDeviationMax */
        0U,    /* StbMOffsetCorrectionAdaptionInterval */
        0U,    /* StbMOffsetCorrectionJumpThreshold */
        0U,    /* StbMRateCorrectionMeasurementDuration */
        1U,    /* StbMRateCorrectionsPerMeasurementDuration */
    },
};
#define STBM_STOP_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"

#define STBM_START_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"
static CONST(StbM_LocalTimeClockCfgType, STBM_CONST) StbM_LocalTimeClockCfg[1U] =
{
    {
        16000000U, /* StbMClockFrequency */
        1U,  /* StbMClockPrescaler */
        3U,  /* StbMLocalTimeHardware */
        GPT_CHANNEL_CONFIGURATION,  /* StbMLocalTimeHardwareType */
        0x0000U  /* LocalTimeMax */
    },
};
#define STBM_STOP_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"

#define STBM_START_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"
static const StbM_SynchronizedTimeBaseCfgType StbM_SynchronizedTimeBase[STBM_SYNCHRONIZED_TIME_BASE_NUM] =
{
    {
        0U,  /* StbMClearTimeleapCount */
        FALSE,  /* StbMIsSystemWideGlobalTimeMaster */
        StbMConf_StbMSynchronizedTimeBase_StbMSynchronizedTimeBase_Slave,  /* StbMSynchronizedTimeBaseIdentifier */
        0U,  /* StbMSyncLossTimeout */
        0U,  /* StbMTimeLeapFutureThreshold */
        0U,  /* StbMTimeLeapPastThreshold */
        NULL_PTR,    /* StbMOffsetTimeBase */
        &StbMTimeCorrection[0U],  /* StbMTimeCorrection */
        &StbM_LocalTimeClockCfg[0U],  /* StbM_LocalTimeClock */
        0U,  /* StbMNotificationCustomerNum */
        NULL_PTR,  /* StbMNotificationCustomer */
        STBM_TBTYPE_SYNCHRONIZED,    /* StbMSynchronizedTimeBaseType */
        FALSE,    /* StbMisTimeGateway  */
    },
};
#define STBM_STOP_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"

#define STBM_START_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"
CONST(StbM_ConfigType, STBM_CONST) StbM_Config =
{
    StbM_SynchronizedTimeBase,
};
#define STBM_STOP_SEC_CONST_UNSPECIFIED
#include "StbM_MemMap.h"
