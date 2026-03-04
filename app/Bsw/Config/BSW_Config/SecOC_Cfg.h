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
 *  @file               : SecOC_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-02-03 10:30:02
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef SECOC_CFG_H_
#define SECOC_CFG_H_

#define SECOC_DEFAULT_AUTHENTICATION_INFORMATION_PATTERN 0x0

/*SecOCDevErrorDetect Range: true or false */
#define SECOC_DEV_ERROR_DETECT                STD_ON

#define SECOC_ENABLE_FORCED_PASS_OVERRIDE     STD_OFF

#define SECOC_MAINFUNCTION_PERIOD_RX          50u

#define SECOC_MAINFUNCTION_PERIOD_TX          50u

#define SECOC_OVERRIDE_STATUS_WITH_DATA_ID    STD_OFF

#define SECOC_QUERY_FRESHNESS_VALUE           SECOC_CFUNC

#define SECOC_VERSIONINFO_API                 STD_OFF

#define SECOC_CSMMAC_ENABLED                  STD_ON

#define SECOC_CSMSIGNATRUE_ENABLED            STD_OFF

/* Number of Rx Pdu */
#define SECOC_RX_PDU_NUM                      1u
/* Number of Rx IF Pdu */ 
#define SECOC_RX_IF_PDU_NUM                   1u
/* Number of Rx TP Pdu */
#define SECOC_RX_TP_PDU_NUM                   0u

#define SECOC_RX_SEC_PDU_NUM                  1u

#define SECOC_RX_SEC_IF_PDU_NUM               1u

#define SECOC_RX_SEC_TP_PDU_NUM               0u

/* Number of Tx Pdu */
#define SECOC_TX_PDU_NUM                      4u
/* Number of Tx IF Pdu */
#define SECOC_TX_IF_PDU_NUM                   4u
/* Number of Tx TP Pdu */
#define SECOC_TX_TP_PDU_NUM                   0u

#define SECOC_TX_SEC_PDU_NUM                  4u

#define SECOC_TX_SEC_IF_PDU_NUM               4u

#define SECOC_TX_SEC_TP_PDU_NUM               0u

/* The length of buffer that used to save DataToAuthenticator */
#define SECOC_DATA_TO_AUTHENTICATOR_LENGTH    58u

/* Number of configured VerificationStatusCallout function */
#define SECOC_VERIFICATION_STATUS_CALLOUT_NUM 1u

/* The total length of buffer that used to save Authentic Pdu */
#define SECOC_AUTHENTIC_PDU_BUFFER_LENGTH     125u
/* The total length of buffer that used to save secured Pdu */
#define SECOC_SECURED_PDU_BUFFER_LENGTH       144u
/* The total length of buffer that used to save PduCollection Authentic Pdu */
#define SECOC_COL_AUTHENTIC_PDU_BUFFER_LENGTH 0u
/* The total length of buffer that used to save PduCollection Cryptographic Pdu */
#define SECOC_CRYPTOGRAPHIC_PDU_BUFFER_LENGTH 0u
/* The total length of buffer that used to queue */
#define SECOC_RECEPTION_QUEUE_BUFFER_LENGTH   8u

/* Number of configured Samebuffer */
#define SECOC_SAMEBUFFER_NUM                  0u

/* Max message link length in bytes */
#define SECOC_MAX_MSG_LINK_LEN                0u

#define SECOC_MAX_FRESHNESS_SIZE              8u

/* Indicate the ID of PDU in SecOC module */
#define SECOC_RXAUTH_CAN0_Rx_SecOC_SyncMsg_0x56F_SecOC_Authentic            0
#define SECOC_RXSECU_CAN0_Rx_SecOC_SyncMsg_0x56F_SecOC_Secured            0

#define SECOC_TXAUTH_SecOC_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_TxAuthentic            0
#define SECOC_TXAUTH_SecOC_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_TxAuthentic            1
#define SECOC_TXAUTH_SecOC_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_TxAuthentic            2
#define SECOC_TXAUTH_SecOC_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_TxAuthentic            3
#define SECOC_TXSECU_SecOC_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_TxSecured            0
#define SECOC_TXSECU_SecOC_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_TxSecured            1
#define SECOC_TXSECU_SecOC_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_TxSecured            2
#define SECOC_TXSECU_SecOC_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_TxSecured            3

#endif /* _SECOC_H_ */

