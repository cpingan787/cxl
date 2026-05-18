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
 *  @file               : SecOC_Callout.h
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:27
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef SECOC_CALLOUT_H
#define SECOC_CALLOUT_H

#include "SecOC.h"
#if (SECOC_CFUNC == SECOC_QUERY_FRESHNESS_VALUE)
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Declaration                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/

/******************************************************************************/
/*
 * Brief               This interface is used by the SecOC to obtain the current
 *                     freshness value.
 * ServiceId           0x4f
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      SecOCFreshnessValueID: Holds the identifier of the
 *                                            freshness value.
 *                     SecOCTruncatedFreshnessValue: Holds the truncated
 *                                  freshness value that was contained in the
 *                                  Secured I-PDU.
 *                     SecOCTruncatedFreshnessValueLength: Holds the length in
 *                                  bits of the truncated freshness value.
 *                     SecOCAuthVerifyAttempts:Hold the number of authentication
 *                                  verify attempts of this PDU since the last
 *                                  reception.
 * Param-Name[out]     SecOCFreshnessValue: Holds the freshness value to be used
 *                                  for the calculation of the authenticator.
 * Param-Name[in/out]  SecOCFreshnessValueLength: Holds the length in bits of
 *                                                the freshness value.
 * Return              E_OK: request successful.
 *                     E_NOT_OK: request failed, a freshness value cannot be
 *                               provided due to general issues for freshness orx
 *                               this FreshnessValueId.
 *                     E_BUSY: The freshness information can temporarily not be
 *                             provided.
 */
/******************************************************************************/
FUNC(Std_ReturnType, SECOC_CODE)
SecOC_GetRxFreshness(
    uint16 SecOCFreshnessValueID,
    P2CONST(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength);

/******************************************************************************/
/*
 * Brief               This interface is used by the SecOC to obtain the current
 *                     freshness value.
 * ServiceId           0x4e
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      SecOCFreshnessValueID: Holds the identifier of the
 *                                            freshness value.
 *                     SecOCTruncatedFreshnessValue: Holds the truncated
 *                                  freshness value that was contained in the
 *                                  Secured I-PDU.
 *                     SecOCTruncatedFreshnessValueLength: Holds the length in
 *                                  bits of the truncated freshness value.
 *                     SecOCAuthDataFreshnessValue: The parameter holds a part
 *                                  of the received, not yet authenticated PDU.
 *                     SecOCAuthDataFreshnessValueLength: This is the length
 *                                  value in bits that holds the freshness from
 *                                  the authentic PDU.
 *                     SecOCAuthVerifyAttempts: Holds the number of
 *                                  authentication verify attempts of this PDU
 *                                  since the last reception.
 * Param-Name[out]     SecOCFreshnessValue: Holds the freshness value to be used
 *                                  for the calculation of the authenticator.
 * Param-Name[in/out]  SecOCFreshnessValueLength: Holds the length in bits of
 *                                                the freshness value.
 * Return              E_OK: request successful.
 *                     E_NOT_OK: request failed, a freshness value cannot be
 *                               provided due to general issues for freshness orx
 *                               this FreshnessValueId.
 *                     E_BUSY: The freshness information can temporarily not be
 *                             provided.
 */
/******************************************************************************/
FUNC(Std_ReturnType, SECOC_CODE)
SecOC_GetRxFreshnessAuthData(
    uint16 SecOCFreshnessValueID,
    P2CONST(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    P2CONST(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCAuthDataFreshnessValue,
    uint16 SecOCAuthDataFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength);

/******************************************************************************/
/*
 * Brief               This API returns the freshness value from the Most
 *                     Significant Bits in the first byte in the array
 *                     (SecOCFreshnessValue), in big endian format.
 * ServiceId           0x52
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      SecOCFreshnessValueID: Holds the identifier of the
 *                                            freshness value.
 * Param-Name[out]     SecOCFreshnessValue: Holds the freshness value to be used
 *                                     for the calculation of the authenticator.
 * Param-Name[in/out]  SecOCFreshnessValueLength: Holds the length in bits of
 *                                                the freshness value.
 * Return              E_OK: request successful.
 *                     E_NOT_OK: request failed, a freshness value cannot be
 *                               provided due to general issues for freshness orx
 *                               this FreshnessValueId.
 *                     E_BUSY: The freshness information can temporarily not be
 *                             provided.
 */
/******************************************************************************/
FUNC(Std_ReturnType, SECOC_CODE)
SecOC_GetTxFreshness(
    uint16 SecOCFreshnessValueID,
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength);

/******************************************************************************/
/*
 * Brief               This interface is used by the SecOC to obtain the current
 *                     freshness value. The interface function provides also the
 *                     truncated freshness transmitted in the secured I-PDU.
 * ServiceId           0x51
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      SecOCFreshnessValueID: Holds the identifier of the
 *                                            freshness value.
 * Param-Name[out]     SecOCFreshnessValue: Holds the current freshness value.
 *                     SecOCTruncatedFreshnessValue: Holds the truncated
 *                              freshness to be included into the Secured I-PDU.
 * Param-Name[in/out]  SecOCFreshnessValueLength: Holds the length in bits of
 *                                                the freshness value.
 *                     SecOCTruncatedFreshnessValueLength: Provides the
 *                              truncated freshness length configured for this
 *                              freshness.
 * Return              E_OK: request successful.
 *                     E_NOT_OK: request failed, a freshness value cannot be
 *                               provided due to general issues for freshness orx
 *                               this FreshnessValueId.
 *                     E_BUSY: The freshness information can temporarily not be
 *                             provided.
 */
/******************************************************************************/
FUNC(Std_ReturnType, SECOC_CODE)
SecOC_GetTxFreshnessTruncData(
    uint16 SecOCFreshnessValueID,
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength,
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCTruncatedFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCTruncatedFreshnessValueLength);

/******************************************************************************/
/*
 * Brief               This interface is used by the SecOC to indicate that the
 *                     Secured I-PDU has been initiated for transmission.
 * ServiceId           0x4d
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      SecOCFreshnessValueID: Holds the identifier of the
 *                                            freshness value.
 * Param-Name[out]     None
 * Param-Name[in/out]  None
 * Return              None
 */
/******************************************************************************/
FUNC(Std_ReturnType, SECOC_CODE) SecOC_SPduTxConfirmation(uint16 SecOCFreshnessValueID);

#endif /* SECOC_CFUNC == SECOC_QUERY_FRESHNESS_VALUE */

#endif /* SECOC_CALLOUT_H */

