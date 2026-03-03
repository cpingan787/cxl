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
 *  @file               : Rte_SecOC_Type.h
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:27
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*  <VERSION>    <DATE>      <AUTHOR>    <REVISION LOG>
 *  V1.0.0       2020-08-18  HuRongbo    R19_11 SecOC initial version.
 *  V2.0.0       2021-06-17  HuRongbo    Fix bug find in Test.
 */

 #ifndef RTE_SECOC_TYPES_H
#define RTE_SECOC_TYPES_H

#include "SecOC_Cfg.h"

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/* @req SWS_SecOC_91012 */
typedef uint8 SecOC_FreshnessArrayType[SECOC_MAX_FRESHNESS_SIZE];

/* @req SWS_SecOC_00149 */
/* Enumeration to indicate verification results. */
typedef enum
{
    SECOC_VERIFICATIONSUCCESS,
    SECOC_VERIFICATIONFAILURE,
    SECOC_FRESHNESSFAILURE,
    SECOC_AUTHENTICATIONBUILDFAILURE,
    SECOC_NO_VERIFICATION,
    SECOC_VERIFICATIONFAILURE_OVERWRITTEN
} SecOC_VerificationResultType;

/* @req SWS_SecOC_00160 */
/*
 * Data structure to bundle the status of a verification attempt for a specific
 * Freshness Value and Data ID.
 */
typedef struct
{
    uint16 freshnessValueID;
    SecOC_VerificationResultType verificationStatus;
    uint16 secOCDataId;
} SecOC_VerificationStatusType;

/* @req SWS_SecOC_00991 */
/* Defines possibilities to override the verification status. */
typedef enum
{
    SECOC_OVERRIDE_DROP_UNTIL_NOTICE = 0x00,
    SECOC_OVERRIDE_DROP_UNTIL_LIMIT = 0x01,
    SECOC_OVERRIDE_CANCEL = 0x02,
    SECOC_OVERRIDE_PASS_UNTIL_NOTICE = 0x40,
    SECOC_OVERRIDE_SKIP_UNTIL_LIMIT = 0x41,
    SECOC_OVERRIDE_PASS_UNTIL_LIMIT = 0x42,
    SECOC_OVERRIDE_SKIP_UNTIL_NOTICE = 0x43
} SecOC_OverrideStatusType;

#endif /* SECOC_TYPES_H */

