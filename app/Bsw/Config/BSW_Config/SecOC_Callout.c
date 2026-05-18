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
 *  @file               : SecOC_Callout.c
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:27
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"
#include "SecOC.h"
#include "fvm.h"
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK User Includes>
 */
/*User defined header file*/
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */

#if (SECOC_CFUNC == SECOC_QUERY_FRESHNESS_VALUE)
/*******************************************************************************
**                       Version  Check                                       **
*******************************************************************************/

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/
typedef struct
{
    uint32 FvmFreshnessId; /* Defines the freshness management ID from the SecOCFreshnessValueId configuration item */
    uint32 CanId; /* Used to record the position in the relevant configuration */
} SecOC_FVM_FreshnessIdMapConfigType;

/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
SecOC_FVM_FreshnessIdMapConfigType SecOC_FVM_TxFreshnessIdMap[SECOC_TX_SEC_PDU_NUM] = {
    {0x12au,  0x12au},
    {0xB3u,  0xB3u},
    {0x9fu,  0x9fu},
    {0x7du,  0x7du},

};

SecOC_FVM_FreshnessIdMapConfigType SecOC_FVM_RxFreshnessIdMap[SECOC_RX_SEC_PDU_NUM] = {
    {1391u, 1391u},
};

/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/
#define SECOC_START_SEC_CALLOUT_CODE
#include "SecOC_MemMap.h"
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
/* PRQA S 6040 ++ */ /* VL_MTR_SecOC_STPAR */
FUNC(Std_ReturnType, SECOC_CODE)
SecOC_GetRxFreshness(
    uint16 SecOCFreshnessValueID,
    P2CONST(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
    /* PRQA S 3673 ++*/ /* VL_QAC_3673 */
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength
    /* PRQA S 3673 --*/ /* VL_QAC_3673 */
)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK SecOC_GetRxFreshness>
     */

    /* custom code.... */
    Std_ReturnType result = E_NOT_OK;

    uint8  RxFreshnessValue[8];

    uint8 SecOCTruncatedFreshness_MsgCntOut =((uint8) *SecOCTruncatedFreshnessValue) >> 2;       /* 本地Message counter 计数器的低6位 */
    uint8 SecOCTruncatedFreshness_RstCntL =((uint8) *SecOCTruncatedFreshnessValue) & 0x03; ;          /* 本地复位计数器的低2位 */

    uint16 index;
    uint32 Fvm_ModelCanID = 0u;

    for (index = 0u; index < SECOC_RX_SEC_PDU_NUM; index++)
    {
        if (SecOC_FVM_RxFreshnessIdMap[index].FvmFreshnessId == SecOCFreshnessValueID)
        {
            Fvm_ModelCanID = SecOC_FVM_RxFreshnessIdMap[index].CanId;
            break;
        }
    }

    if (Fvm_ModelCanID == 0x56f)
    {
        return E_OK;
    }


    result = Fvm_VerifyFreshnessValue(Fvm_ModelCanID,SecOCTruncatedFreshness_MsgCntOut,SecOCTruncatedFreshness_RstCntL,&RxFreshnessValue[0]);
    
    (void)ILib_memcpy(SecOCFreshnessValue, RxFreshnessValue, (*SecOCFreshnessValueLength)/8);
    (void)ILib_memcpy(SecOCTruncatedFreshnessValue, &RxFreshnessValue[7], (SecOCTruncatedFreshnessValueLength)/8);
    return result;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
/* PRQA S 6040 -- */ /* VL_MTR_SecOC_STPAR */

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
/* PRQA S 6040 ++ */ /* VL_MTR_SecOC_STPAR */
FUNC(Std_ReturnType, SECOC_CODE)
SecOC_GetRxFreshnessAuthData(
    uint16 SecOCFreshnessValueID,
    P2CONST(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    P2CONST(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCAuthDataFreshnessValue,
    uint16 SecOCAuthDataFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
    /* PRQA S 3673 ++*/ /* VL_QAC_3673 */
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength
    /* PRQA S 3673 --*/ /* VL_QAC_3673 */
)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK SecOC_GetRxFreshnessAuthData>
     */

    /* custom code.... */
    (void)(SecOCFreshnessValueID);
    (void)(SecOCTruncatedFreshnessValue);
    (void)(SecOCTruncatedFreshnessValueLength);
    (void)(SecOCAuthDataFreshnessValue);
    (void)(SecOCAuthDataFreshnessValueLength);
    (void)(SecOCAuthVerifyAttempts);
    (void)(SecOCFreshnessValue);
    (void)(SecOCFreshnessValueLength);
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
/* PRQA S 6040 -- */ /* VL_MTR_SecOC_STPAR */

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
    /* PRQA S 3673 ++*/ /* VL_QAC_3673 */
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength
    /* PRQA S 3673 --*/ /* VL_QAC_3673 */
)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK SecOC_GetTxFreshness>
     */

    /* custom code.... */
    (void)(SecOCFreshnessValueID);
    (void)(SecOCFreshnessValue);
    (void)(SecOCFreshnessValueLength);
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

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
    /* PRQA S 3673 ++*/ /* VL_QAC_3673 */
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCFreshnessValueLength,
    P2VAR(uint8, AUTOMATIC, SECOC_APPL_CONST) SecOCTruncatedFreshnessValue,
    P2VAR(uint32, AUTOMATIC, SECOC_APPL_DATA) SecOCTruncatedFreshnessValueLength
    /* PRQA S 3673 --*/ /* VL_QAC_3673 */
)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK SecOC_GetTxFreshnessTruncData>
     */
    Std_ReturnType result = E_NOT_OK;
    /* custom code.... */

    uint8  TxFreshnessValue[8];

    uint16 index;
    uint32 Fvm_ModelCanID = 0u;

    for (index = 0u; index < SECOC_TX_SEC_PDU_NUM; index++)
    {
        if (SecOC_FVM_TxFreshnessIdMap[index].FvmFreshnessId == SecOCFreshnessValueID)
        {
            Fvm_ModelCanID = SecOC_FVM_TxFreshnessIdMap[index].CanId;
            break;
        }
    }
    
    result = Fvm_GetFreshnessValue(Fvm_ModelCanID,TxFreshnessValue);
    (void)ILib_memcpy(SecOCFreshnessValue, TxFreshnessValue, (*SecOCFreshnessValueLength)/8);
    (void)ILib_memcpy(SecOCTruncatedFreshnessValue, &TxFreshnessValue[7], (*SecOCTruncatedFreshnessValueLength)/8);

    return result;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

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
FUNC(Std_ReturnType, SECOC_CODE) SecOC_SPduTxConfirmation(uint16 SecOCFreshnessValueID)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK SecOC_SPduTxConfirmation>
     */

    /* custom code.... */
    (void)(SecOCFreshnessValueID);
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK SecOC Code Other>
 */
/* custom code.... */
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */

#define SECOC_STOP_SEC_CALLOUT_CODE
#include "SecOC_MemMap.h"

/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
/* PRQA S 6610 EOF */ /* VL_MTR_SecOC_STCDN */
#endif /* SECOC_CFUNC == SECOC_QUERY_FRESHNESS_VALUE */

