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
 *  @file               : IpduM_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-02-02 09:24:28
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/* PRQA S 0791 EOF */ /* VL_QAC_identifier */
#ifndef IPDUM_CFG_H_
#define IPDUM_CFG_H_
/******************************************************************************
**                      Includes                                              *
******************************************************************************/
#include "Std_Types.h"
/******************************************************************************
**                      Global Symbols                                       **
******************************************************************************/
/* Headers inside a IPDUM_RXIND_TYPE_CONTAINER I-PDU 
shall be ordered big endian. */
#define IPDUM_BIG_ENDIAN                                    0u
/* Headers inside a IPDUM_RXIND_TYPE_CONTAINER I-PDU
 shall be ordered little endian */
#define IPDUM_LITTLE_ENDIAN                                 1u
/**********************
    IpduMGeneral
***********************/

/* Switches the Default Error Tracer (Det) detection and notification ON or OFF */
#define IPDUM_DEV_ERROR_DETECT                              STD_OFF

/* This parameter defines the ByteOrder of the headers inside a 
IPDUM_RXIND_TYPE_CONTAINER I-PDU */
#define IPDUM_HEADER_BYTE_ORDER                             IPDUM_BIG_ENDIAN

/* This is to allow optimizations in the case the IpduM will never be used with
a static part. */
#define IPDUM_STATIC_PART_EXISTS                            STD_ON

/* Active/Deactivate the version information API */
#define IPDUM_VERSION_INFO_API                              STD_OFF

/* IpduMPublishedInformation */
#define IPDUM_RX_DIRECT_COM_INVOCATION                      STD_OFF

#define IPDUM_MULTIPLE_PARTITION_USED                       STD_OFF

/* Maximum total size of all TX/RX buffers */
#define  IPDUM_MAX_BUFFER_SIZE                           19200u

/* Maximum number of transmitted IPdus */
#define IPDUM_TX_UP_PDU_MAX                         12u

/* maximum number of IPDUM_TRANSMIT_TYPE_CONTAINED TX */
#define IPDUM_CONTAINED_TX_NUMBER_MAX               12u

#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x377_Pdu06     0u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x377_Pdu07     1u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x377_Pdu08     2u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x36A_Pdu13     3u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x36A_Pdu34     4u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x36A_Pdu35     5u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x36A_Pdu39     6u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x36A_Pdu40     7u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x3A2_Pdu03     8u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x3A2_Pdu04     9u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x3A2_Pdu41     10u
#define CONTAINED_TX_PDU_IpduM_Contained_Tx_0x3A2_Pdu57     11u

/* maximum number of TX Part IPdus */
#define IPDUM_TX_PART_PDU_MAX                       0u

/* Maximum number of received IPdus */
#define IPDUM_RX_PDU_MAX                                    0u

/* maximum number of IPDUM_RXIND_TYPE_CONTAINER RX */
#define IPDUM_CONTAINER_RX_NUMBER_MAX                       0u

/* maximum number of IpduMRxPathway */
#define IPDUM_RX_INDICA_NUMBER_MAX                         0u

/* maximum number of IPDUM_TRANSMIT_TYPE_CONTAINED RX */
#define IPDUM_CONTAINED_RX_NUMBER_MAX                       0u
/* maximum number of RX Part IPdus */
#define IPDUM_RX_PART_PDU_MAX                               0u

/* Maximum number of Transmit IPdus */
#define IPDUM_TX_PDU_NUMBER_MAX                             3u

/* maximum number of IPDUM_RXIND_TYPE_CONTAINER TX */
#define IPDUM_CONTAINER_TX_NUMBER_MAX                       3u
#define CONTAINER_TX_PDU_IpduM_Contained_Tx_Pdu_0x377       0u /* IpduMMainFunctionTx */
#define CONTAINER_TX_PDU_IpduM_Contained_Tx_Pdu_0x36A       1u /* IpduMMainFunctionTx */
#define CONTAINER_TX_PDU_IpduM_Contained_Tx_Pdu_0x3A2       2u /* IpduMMainFunctionTx */

/*maximum number of TX request */
#define IPDUM_TX_REQUEST_NUMBER_MAX                         0u

/* call PduR_IpduMTriggerTransmit need buf to store pdu data,
this size shall be more than Tx static/dynamic part or contained pdu length */
#define IPDUM_MAX_PDU_BUF_SIZE                             64u

/* maximum number of ipdum tx container queue IpduMContainerQueueSize */
#define IPDUM_CONTAINER_TX_QUEUE_NUM_MAX                   300u

/* maximum number of module support tx contained */
#define IPDUM_SUPPORT_TX_CONTAINED_NUM_MAX                    1500u

/* maximum number of ipdum rx container queue IpduMContainerQueueSize */
#define IPDUM_CONTAINER_RX_QUEUE_NUM_MAX                   0u

#define IPDUM_MAINFUNCTION_RX_NUM_MAX                   0u

#define IPDUM_MAINFUNCTION_TX_NUM_MAX                   1u

#endif/* IPDUM_CFG_H_ */

