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
 *  @file               : SecOC_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:27
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#include "SecOC_Cfg.h"
#include "SecOC_Types.h"
#include "PduR_Cfg.h"
#include "Rte_SecOC.h"

#define SECOC_START_SEC_VAR_INIT_UNSPECIFIED
#include "SecOC_MemMap.h"
static VAR(uint8, SECOC_CFG_VAR) SecOC_AuthenticPduBuffer[SECOC_AUTHENTIC_PDU_BUFFER_LENGTH] = {0};
static VAR(uint8, SECOC_CFG_VAR) SecOC_SecuredPduBuffer[SECOC_SECURED_PDU_BUFFER_LENGTH] = {0};
static VAR(uint8, SECOC_CFG_VAR) SecOC_ReceptionQueueData[SECOC_RECEPTION_QUEUE_BUFFER_LENGTH] = {0};
static VAR(boolean, SECOC_CFG_VAR) SecOC_IgnoreVerificationResultIsEnabled = FALSE;

#define SECOC_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "SecOC_MemMap.h"

#define SECOC_START_SEC_CONST_UNSPECIFIED
#include "SecOC_MemMap.h"

static CONST(SecOC_CsmJobType, SECOC_CONST) SecOC_CsmJobData[] =
{
    {
        1u,                                 /* SecOCJobId */
        SECOC_CRYPTO_PROCESSING_SYNC,       /* SecOCCryptoProcessingType */
        SECOC_CSMMAC                        /* SecOCCsmPrimitives */
    },
    {
        0u,                                 /* SecOCJobId */
        SECOC_CRYPTO_PROCESSING_SYNC,      /* SecOCCryptoProcessingType */
        SECOC_CSMMAC                       /* SecOCCsmPrimitives */
    },
    {
        0u,                                 /* SecOCJobId */
        SECOC_CRYPTO_PROCESSING_SYNC,      /* SecOCCryptoProcessingType */
        SECOC_CSMMAC                       /* SecOCCsmPrimitives */
    },
    {
        0u,                                 /* SecOCJobId */
        SECOC_CRYPTO_PROCESSING_SYNC,       /* SecOCCryptoProcessingType */
        SECOC_CSMMAC                        /* SecOCCsmPrimitives */
    },
    {
        0u,                                 /* SecOCJobId */
        SECOC_CRYPTO_PROCESSING_SYNC,      /* SecOCCryptoProcessingType */
        SECOC_CSMMAC                       /* SecOCCsmPrimitives */
    },
};

static CONST(SecOC_RxAuthenticPduLayerType, SECOC_CONST) SecOC_RxAuthenticPduLayerData[SECOC_RX_PDU_NUM] =
{
    {
        PDUR_SRCPDU_CAN0_Rx_SecOC_SyncMsg_0x56F_SecOC_Authentic,             /* SecOCRxPduRAsUpLayerId */
        SECOC_IFPDU,     /* SecOCPduType */
        5u             /* SecOCPduLength */
    }
};

static CONST(SecOC_RxSecuredPduType, SECOC_CONST) SecOC_RxSecuredPduData[] =
{
    {
        0u,                             /* SecOCAuthPduHeaderLength */
        SECOC_RXSECU_CAN0_Rx_SecOC_SyncMsg_0x56F_SecOC_Secured,   /* SecOCRxSecuredLayerPduId */
        PDUR_DESTPDU_CAN0_Rx_SecOC_SyncMsg_0x56F_SecOC_Secured,                            /* SecOCRxPduRAsLowerLayerPduId */
        TRUE,                           /* SecOCSecuredRxPduVerification */
        FALSE,                          /* SecOCDynamicLength */
        8u,                            /* SecOCPduLength */
        8u,                            /* SecOCRxSecuredPduBuffLength */
        &SecOC_SecuredPduBuffer[0u]    /* SecOCRxSecuredPduBufferRef */
    }
};

static CONST(SecOC_RxSecuredPduLayerType, SECOC_CONST) SecOC_RxSecuredPduLayerData[] =
{
    {
        &SecOC_RxSecuredPduData[0u],         /* SecOCRxSecuredPdu */
        NULL_PTR, /* SecOCRxSecuredPduCollection */
    }
};

static CONST(SecOC_RxPduProcessingType, SECOC_CONST) SecOC_RxPduProcessingData[SECOC_RX_PDU_NUM] =
{
    {
        0u,             /* SecOCAuthDataFreshnessLen */
        0u,             /* SecOCAuthDataFreshnessStartPosition */
        0u,             /* SecOCAuthenticationBuildAttempts */
        0u,             /* SecOCAuthenticationVerifyAttempts */
        24u,             /* SecOCAuthInfoTruncLength */
        1391u,            /* SecOCDataId */
        1391u,             /* SecOCFreshnessValueId */
        0u,             /* SecOCFreshnessValueLength */
        0u,             /* SecOCFreshnessValueTruncLength */
        SECOC_QUEUE,    /* SecOCReceptionOverflowStrategy */
        8u,            /* SecOCReceptionQueueSize */
        &SecOC_ReceptionQueueData[0u],   /* SecOCReceptionQueueRef */
        FALSE,           /* SecOCUseAuthDataFreshness */
        SECOC_FAILURE_ONLY,     /* SecOCVerificationStatusPropagationMode */
        &SecOC_CsmJobData[0u], /* SecOCRxAuthServiceConfigRef */
        NULL_PTR,  /* SecOCSameBufferPduRef */
        &SecOC_RxAuthenticPduLayerData[0u], /* SecOCRxAuthenticPduLayer */
        NULL_PTR,    /* SecOCRxPduSecuredArea */
        &SecOC_RxSecuredPduLayerData[0u],    /* SecOCRxSecuredPduLayer */
        5u,             /* SecOCAuthenticPduBuffLength */
        &SecOC_AuthenticPduBuffer[0u],       /* SecOCAuthenticPduBufferRef */
        3u              /* SecOCAuthFrsInfoLength */
    }
};

static CONST(SecOC_TxAuthenticPduLayerType, SECOC_CONST) SecOC_TxAuthenticPduLayerData[SECOC_TX_PDU_NUM] =
{
    {
        SECOC_IFPDU,        /* SecOCPduType */
        SECOC_TXAUTH_SecOC_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_TxAuthentic,  /* SecOCTxAuthenticLayerPduId */
        PDUR_DESTPDU_SecOC_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_TxAuthentic                 /* SecOCTxPduRAsUpLayerId */
    },
    {
        SECOC_IFPDU,        /* SecOCPduType */
        SECOC_TXAUTH_SecOC_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_TxAuthentic,  /* SecOCTxAuthenticLayerPduId */
        PDUR_DESTPDU_SecOC_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_TxAuthentic                 /* SecOCTxPduRAsUpLayerId */
    },
    {
        SECOC_IFPDU,        /* SecOCPduType */
        SECOC_TXAUTH_SecOC_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_TxAuthentic,  /* SecOCTxAuthenticLayerPduId */
        PDUR_DESTPDU_SecOC_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_TxAuthentic                 /* SecOCTxPduRAsUpLayerId */
    },
    {
        SECOC_IFPDU,        /* SecOCPduType */
        SECOC_TXAUTH_SecOC_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_TxAuthentic,  /* SecOCTxAuthenticLayerPduId */
        PDUR_DESTPDU_SecOC_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_TxAuthentic                 /* SecOCTxPduRAsUpLayerId */
    }
};

static CONST(SecOC_TxSecuredPduType, SECOC_CONST) SecOC_TxSecuredPduData[] =
{
    {
        0u,         /* SecOCAuthPduHeaderLength */
        SECOC_TXSECU_SecOC_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_TxSecured,   /* SecOCTxSecuredLayerPduId */
        PDUR_SRCPDU_SecOC_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_TxSecured,        /* SecOCTxPduRAsLowerLayerId */
        12u,        /* SecOCTxSecuredPduBuffLength */
        &SecOC_SecuredPduBuffer[8u]  /* SecOCTxAuthenticPduBufferRef */
    },
    {
        0u,         /* SecOCAuthPduHeaderLength */
        SECOC_TXSECU_SecOC_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_TxSecured,   /* SecOCTxSecuredLayerPduId */
        PDUR_SRCPDU_SecOC_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_TxSecured,        /* SecOCTxPduRAsLowerLayerId */
        52u,        /* SecOCTxSecuredPduBuffLength */
        &SecOC_SecuredPduBuffer[20u]  /* SecOCTxAuthenticPduBufferRef */
    },
    {
        0u,         /* SecOCAuthPduHeaderLength */
        SECOC_TXSECU_SecOC_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_TxSecured,   /* SecOCTxSecuredLayerPduId */
        PDUR_SRCPDU_SecOC_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_TxSecured,        /* SecOCTxPduRAsLowerLayerId */
        52u,        /* SecOCTxSecuredPduBuffLength */
        &SecOC_SecuredPduBuffer[72u]  /* SecOCTxAuthenticPduBufferRef */
    },
    {
        0u,         /* SecOCAuthPduHeaderLength */
        SECOC_TXSECU_SecOC_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_TxSecured,   /* SecOCTxSecuredLayerPduId */
        PDUR_SRCPDU_SecOC_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_TxSecured,        /* SecOCTxPduRAsLowerLayerId */
        20u,        /* SecOCTxSecuredPduBuffLength */
        &SecOC_SecuredPduBuffer[124u]  /* SecOCTxAuthenticPduBufferRef */
    }
};
static CONST(SecOC_TxSecuredPduLayerType, SECOC_CONST) SecOC_TxSecuredPduLayerData[SECOC_TX_PDU_NUM] =
{
    {
        &SecOC_TxSecuredPduData[0u],       /* SecOCTxSecuredPdu */
        NULL_PTR  /* SecOCTxSecuredPduCollection */
    },
    {
        &SecOC_TxSecuredPduData[1u],       /* SecOCTxSecuredPdu */
        NULL_PTR  /* SecOCTxSecuredPduCollection */
    },
    {
        &SecOC_TxSecuredPduData[2u],       /* SecOCTxSecuredPdu */
        NULL_PTR  /* SecOCTxSecuredPduCollection */
    },
    {
        &SecOC_TxSecuredPduData[3u],       /* SecOCTxSecuredPdu */
        NULL_PTR  /* SecOCTxSecuredPduCollection */
    }
};
static CONST(SecOC_TxPduProcessingType, SECOC_CONST) SecOC_TxPduProcessingData[SECOC_TX_PDU_NUM] =
{
    {
        3u,     /* SecOCAuthenticationBuildAttempts */
        24u,     /* SecOCAuthInfoTruncLength */
        298u,     /* SecOCDataId */
        298u,    /* SecOCFreshnessValueId */
        64u,    /* SecOCFreshnessValueLength */
        8u,     /* SecOCFreshnessValueTruncLength */
        TRUE,   /* SecOCProvideTxTruncatedFreshnessValue */
        TRUE,  /* SecOCUseTxConfirmation */
        NULL_PTR, /* SecOCSameBufferPduRef */
        &SecOC_CsmJobData[1u], /* SecOCTxAuthServiceConfigRef */
        &SecOC_TxAuthenticPduLayerData[0u], /* SecOCTxAuthenticPduLayer */
        NULL_PTR, /* SecOCTxPduSecuredArea */
        &SecOC_TxSecuredPduLayerData[0u],/* SecOCTxSecuredPduLayer */
        8u,     /* SecOCAuthenticPduBuffLength */
        &SecOC_AuthenticPduBuffer[5u], /* SecOCAuthenticPduBufferRef */
        4u      /* SecOCAuthFrsInfoLength */
    },
    {
        3u,     /* SecOCAuthenticationBuildAttempts */
        24u,     /* SecOCAuthInfoTruncLength */
        179u,     /* SecOCDataId */
        179u,    /* SecOCFreshnessValueId */
        64u,    /* SecOCFreshnessValueLength */
        8u,     /* SecOCFreshnessValueTruncLength */
        TRUE,   /* SecOCProvideTxTruncatedFreshnessValue */
        TRUE,  /* SecOCUseTxConfirmation */
        NULL_PTR, /* SecOCSameBufferPduRef */
        &SecOC_CsmJobData[2u], /* SecOCTxAuthServiceConfigRef */
        &SecOC_TxAuthenticPduLayerData[1u], /* SecOCTxAuthenticPduLayer */
        NULL_PTR, /* SecOCTxPduSecuredArea */
        &SecOC_TxSecuredPduLayerData[1u],/* SecOCTxSecuredPduLayer */
        48u,     /* SecOCAuthenticPduBuffLength */
        &SecOC_AuthenticPduBuffer[13u], /* SecOCAuthenticPduBufferRef */
        4u      /* SecOCAuthFrsInfoLength */
    },
    {
        3u,     /* SecOCAuthenticationBuildAttempts */
        24u,     /* SecOCAuthInfoTruncLength */
        159u,     /* SecOCDataId */
        159u,    /* SecOCFreshnessValueId */
        64u,    /* SecOCFreshnessValueLength */
        8u,     /* SecOCFreshnessValueTruncLength */
        TRUE,   /* SecOCProvideTxTruncatedFreshnessValue */
        TRUE,  /* SecOCUseTxConfirmation */
        NULL_PTR, /* SecOCSameBufferPduRef */
        &SecOC_CsmJobData[3u], /* SecOCTxAuthServiceConfigRef */
        &SecOC_TxAuthenticPduLayerData[2u], /* SecOCTxAuthenticPduLayer */
        NULL_PTR, /* SecOCTxPduSecuredArea */
        &SecOC_TxSecuredPduLayerData[2u],/* SecOCTxSecuredPduLayer */
        48u,     /* SecOCAuthenticPduBuffLength */
        &SecOC_AuthenticPduBuffer[61u], /* SecOCAuthenticPduBufferRef */
        4u      /* SecOCAuthFrsInfoLength */
    },
    {
        3u,     /* SecOCAuthenticationBuildAttempts */
        24u,     /* SecOCAuthInfoTruncLength */
        125u,     /* SecOCDataId */
        125u,    /* SecOCFreshnessValueId */
        64u,    /* SecOCFreshnessValueLength */
        8u,     /* SecOCFreshnessValueTruncLength */
        TRUE,   /* SecOCProvideTxTruncatedFreshnessValue */
        TRUE,  /* SecOCUseTxConfirmation */
        NULL_PTR, /* SecOCSameBufferPduRef */
        &SecOC_CsmJobData[4u], /* SecOCTxAuthServiceConfigRef */
        &SecOC_TxAuthenticPduLayerData[3u], /* SecOCTxAuthenticPduLayer */
        NULL_PTR, /* SecOCTxPduSecuredArea */
        &SecOC_TxSecuredPduLayerData[3u],/* SecOCTxSecuredPduLayer */
        16u,     /* SecOCAuthenticPduBuffLength */
        &SecOC_AuthenticPduBuffer[109u], /* SecOCAuthenticPduBufferRef */
        4u      /* SecOCAuthFrsInfoLength */
    }
};

CONST(SecOC_VerificationStatusCalloutType, SECOC_CONST) SecOC_VerificationStatusCalloutData[SECOC_VERIFICATION_STATUS_CALLOUT_NUM] =
{
    App_VerificationStatusCallout
};

CONST(SecOC_ConfigType, SECOC_CONST) SecOC_ConfigData = /* PRQA S 3408 */ /* VL_SecOC_3408 */
{
    &SecOC_RxPduProcessingData[0u],         /* SecOCRxPduProcessing */
    NULL_PTR, /* SecOCSameBufferPduCollection */
    &SecOC_TxPduProcessingData[0u],         /* SecOCTxPduProcessing */
    &SecOC_VerificationStatusCalloutData[0u],                                /* SecOCVerificationStatusCallout */
    &SecOC_IgnoreVerificationResultIsEnabled,                             /* SecOCIgnoreVerificationResult */
};
#define SECOC_STOP_SEC_CONST_UNSPECIFIED
#include "SecOC_MemMap.h"

