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
 *  @file               : Csm_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:32
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Csm_Internal.h"
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/

#define CSM_START_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
static CONST(Crypto_PrimitiveInfoType, CSM_CONST) Csm_MacGeneratePrimInfo_0 =
{
    3U,                           /*resultLength*/
    CRYPTO_MACGENERATE,                   /*service*/
    {                               /*algorithm*/
        CRYPTO_ALGOFAM_AES,       /*family*/
        CRYPTO_ALGOFAM_NOT_SET,       /*secondaryFamily*/
        16U,                       /*keyLength*/
        CRYPTO_ALGOMODE_CMAC,   /*mode*/
    }
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"

#define CSM_START_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
static CONST(Crypto_PrimitiveInfoType, CSM_CONST) Csm_MacVerifyPrimInfo_0 =
{
    0U,                           /*resultLength*/
    CRYPTO_MACVERIFY,                   /*service*/
    {                               /*algorithm*/
        CRYPTO_ALGOFAM_AES,       /*family*/
        CRYPTO_ALGOFAM_NOT_SET,       /*secondaryFamily*/
        16U,                       /*keyLength*/
        CRYPTO_ALGOMODE_CMAC,   /*mode*/
    }
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"

#define CSM_START_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
static CONST(Crypto_JobPrimitiveInfoType, CSM_CONST) Csm_JobPrimitiveInfo[CSM_JOB_NUM] =
{
    {

        CSM_INVALID_CBKID,/*callbackId*/
        &Csm_MacGeneratePrimInfo_0, /*primitiveInfo*/
        0U,  /*cryIfKeyId*/
        CRYPTO_PROCESSING_SYNC,  /*processingType*/
        FALSE /*callbackUpdateNotification*/
    },
    {

        CSM_INVALID_CBKID,/*callbackId*/
        &Csm_MacVerifyPrimInfo_0, /*primitiveInfo*/
        0U,  /*cryIfKeyId*/
        CRYPTO_PROCESSING_SYNC,  /*processingType*/
        FALSE /*callbackUpdateNotification*/
    },
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"

#define CSM_START_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
static CONST(Crypto_JobInfoType, CSM_CONST) Csm_JobInfo[CSM_JOB_NUM] =
{
    {
        CsmJob_MacGenSyn,        /*jobId*/
        2U                /*jobPriority*/
    },
    {
        CsmJob_MacVerifySyn,        /*jobId*/
        1U                /*jobPriority*/
    },
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/
#define CSM_START_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
CONST(Csm_JobsCfgType, CSM_CONST) Csm_JobCfg[CSM_JOB_NUM] =
{
    {
        &(Csm_JobPrimitiveInfo[CsmJob_MacGenSyn]),    /*jobPrimitiveInfo*/
        &(Csm_JobInfo[CsmJob_MacGenSyn]),            /*jobInfo*/
        NULL_PTR,                                /*inOutRedirtRef*/
        0U,    /*queRef*/
        FALSE                                    /*usePort*/
    },
    {
        &(Csm_JobPrimitiveInfo[CsmJob_MacVerifySyn]),    /*jobPrimitiveInfo*/
        &(Csm_JobInfo[CsmJob_MacVerifySyn]),            /*jobInfo*/
        NULL_PTR,                                /*inOutRedirtRef*/
        0U,    /*queRef*/
        FALSE                                    /*usePort*/
    },
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"

#define CSM_START_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
CONST(Csm_QueueCfgType, CSM_CONST) Csm_QueCfg[CSM_QUEUE_NUM] =
{
    {
        5U,    /*queueSize*/
        0U    /*cryIfChRef*/
    }
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"

#define CSM_START_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"
CONST(Csm_KeyCfgType, CSM_CONST) Csm_KeyCfg[CSM_KEY_NUM] =
{
    {
        0U,        /*cryIfKey*/
        FALSE/*usePort*/
    },
};
#define CSM_STOP_SEC_CONST_UNSPECIFIED
#include "Csm_MemMap.h"

