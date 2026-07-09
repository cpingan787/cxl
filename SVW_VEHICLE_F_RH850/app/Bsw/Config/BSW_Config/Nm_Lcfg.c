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
 *  @file               : Nm_Lcfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-19 18:22:53
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Nm.h"
#include "ComM_Cfg.h"
#include "Com_Cfg.h"
#include "CanNm.h"
#include "SchM_Nm.h"
/*******************************************************************************
**                       Version  Check                                       **
*******************************************************************************/
/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/
/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/

#define NM_START_SEC_CONST_UNSPECIFIED
#include "Nm_MemMap.h"
static const Nm_SpecificLowLayerApiType Nm_CanNmSpecificApi =
{
    CanNm_NetworkRequest,
    CanNm_NetworkRelease,
    CanNm_PassiveStartUp,
    CanNm_DisableCommunication,
    CanNm_EnableCommunication,
    CanNm_GetPduData,
    CanNm_RepeatMessageRequest,
    CanNm_GetNodeIdentifier,
    CanNm_GetLocalNodeIdentifier,
    CanNm_GetState,
};
#define NM_STOP_SEC_CONST_UNSPECIFIED
#include "Nm_MemMap.h"

#define NM_START_SEC_CONST_UNSPECIFIED
#include "Nm_MemMap.h"
const Nm_ChannelLConfigType Nm_ChLConfig[NM_NUMBER_OF_CHANNELS] =
{
    {
        NM_BUSNM_CANNM,    /* NmStandardBusType */
        {
            0,        /* NmComMChannelRef */
        },
        &Nm_CanNmSpecificApi,     /*busNmApi */
        TRUE, /*NmStateReportEnabled*/
        {
            IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx
        },
    },
};
#define NM_STOP_SEC_CONST_UNSPECIFIED
#include "Nm_MemMap.h"

