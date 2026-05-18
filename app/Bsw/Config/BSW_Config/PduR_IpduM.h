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
 *  @file               : PduR_IpduM.h
 *  @author             : iSoft
 *  @date               : 2026-01-21 14:38:14
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef  PDUR_IPDUM_H
#define  PDUR_IPDUM_H
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
#define PduR_IpduMRxIndication            PduR_IfRxIndication
#define PduR_IpduMTransmit            PduR_Transmit
#define PduR_IpduMTriggerTransmit            PduR_IfTriggerTransmit
#define PduR_IpduMTxConfirmation            PduR_IfTxConfirmation

#endif

