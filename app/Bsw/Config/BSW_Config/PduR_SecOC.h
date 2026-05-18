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
 *  @file               : PduR_SecOC.h
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:27
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef  PDUR_SECOC_H
#define  PDUR_SECOC_H
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "PduR.h"
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define PDUR_CFG_H_AR_RELEASE_MAJOR_VERSION    4u
#define PDUR_CFG_H_AR_RELEASE_MINOR_VERSION    5u
#define PDUR_CFG_H_AR_RELEASE_REVISION_VERSION 0u
#define PDUR_CFG_H_SW_MAJOR_VERSION            2u
#define PDUR_CFG_H_SW_MINOR_VERSION            3u
#define PDUR_CFG_H_SW_PATCH_VERSION            1u

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/
#define PduR_SecOCCancelReceive            PduR_CancelReceive
#define PduR_SecOCCancelTransmit            PduR_CancelTransmit
#define PduR_SecOCTpCopyRxData            PduR_TpCopyRxData
#define PduR_SecOCTpCopyTxData            PduR_TpCopyTxData
#define PduR_SecOCIfRxIndication            PduR_IfRxIndication
#define PduR_SecOCTpStartOfReception            PduR_TpStartOfReception
#define PduR_SecOCTpRxIndication            PduR_TpRxIndication
#define PduR_SecOCTpTxConfirmation            PduR_TpTxConfirmation
#define PduR_SecOCTransmit            PduR_Transmit
#define PduR_SecOCIfTxConfirmation            PduR_IfTxConfirmation

#endif

