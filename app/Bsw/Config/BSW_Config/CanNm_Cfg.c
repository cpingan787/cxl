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
 *  @file               : CanNm_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-19 18:22:51
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "CanNm.h"
#include "CanIf_PBcfg.h"
#include "ComM_Cfg.h"
#include "PduR_Cfg.h"

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/

#define CANNM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanNm_MemMap.h"

static CONST(CanNm_RxPduType, CANNM_CONST) CanNm_RxPduData[CANNM_RX_PDU_NUMBER] =
{
    {
        0u,                     /* RxPduId */
    },
};

static CONST(CanNm_TxPduType, CANNM_CONST) CanNm_TxPduData[CANNM_TX_PDU_NUMBER] =
{
    {
        0u,                      /* TxConfirmationPduId*/
        CANIF_TXPDU_CANIF_IAM_CONNCANFD_NM_IAM_NM_TxPdu,                     /* CanNmTxPduRef */
        FALSE                    /*TxPduIsTriggerTrans*/
    },
};

static CONST(CanNm_UserDataTxPduType, CANNM_CONST) CanNM_UserDataTxPdu[CANNM_USERDATA_TX_PDU_NUM] =
{
    {
         0u,                     /* CanNmTxUserDataPduId */
         PDUR_DESTPDU_CanNm_UserDataPdu_IAM,                    /* CanNmTxUserDataPduRef */
    },
};

static CONST(CanNm_ChannelConfigType, CANNM_CONST)
CanNm_ChannelCfgData[CANNM_NUMBER_OF_CHANNEL]=
{
    {
        TRUE,                   /* CanNmActiveWakeupBitEnabled */
        2u,                   /* CanNmImmediateNmCycleTime */
        20u,                    /* CanNmImmediateNmTransmissions */
        0u,                   /* CanNmMsgCycleOffset */
        20u,                  /* CanNmMsgCycleTime */
        0u,                   /* CanNmMsgTimeoutTime */
        TRUE,                   /* CanNmNodeDetectionEnabled */
        TRUE,                   /* CanNmNodeIdEnabled */
        131u,                     /* CanNmNodeId */
        CANNM_PDU_BYTE_1,       /* CanNmPduCbvPosition */
        CANNM_PDU_BYTE_0,       /* CanNmPduNidPosition */
        210u,                  /* CanNmRepeatMessageTime */
        TRUE,                  /* CanNmRepeatMsgIndEnabled */
        FALSE,                  /* CanNmStayInPbsEnabled */
        1000u,                  /* CanNmTimeoutTime */
        200u,                 /* CanNmWaitBusSleepTime */
        ComMChannel_0,                     /* CanNmComMNetworkHandleRef */
        &CanNm_RxPduData[0],    /* CanNmRxPdu */
        1u,                     /* RxPduNum */
        &CanNm_TxPduData[0],    /* CanNmTxPdu */
        6u,  /* UserDataLength */
        2u,  /* UserDataOffset */
        &CanNM_UserDataTxPdu[0],/* CanNmUserDataTxPdu */
    },

};

/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/
const CanNm_ConfigType CanNm_Config =
{
    0x5u,                         /*MainFunctionPeriod*/
    CanNm_ChannelCfgData,       /* CanNmChannelConfig */
};

#define CANNM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanNm_MemMap.h"
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

