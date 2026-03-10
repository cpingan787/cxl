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
 *  @file               : Rte_Csm_Type.h
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:25
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef RTE_CSM_TYPE_H
#define RTE_CSM_TYPE_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Rte_Type.h"

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/*Enumeration which operation shall be performed. This enumeration is constructed
 * from a bit mask, where the first bit indicates "Start", the second "Update"
 * and the third "Finish".*/
typedef enum
{

    CRYPTO_OPERATIONMODE_START           = 0x01u, /*Operation Mode is "Start".*/
    CRYPTO_OPERATIONMODE_UPDATE          = 0x02u, /*Operation Mode is "Update".*/
    CRYPTO_OPERATIONMODE_STREAMSTART     = 0x03u, /*Operation Mode is "Stream Start".*/
    CRYPTO_OPERATIONMODE_FINISH          = 0x04u, /*Operation Mode is "Finish".*/
    CRYPTO_OPERATIONMODE_SINGLECALL      = 0x07u, /*Operation Mode is "Single Call".*/
    CRYPTO_OPERATIONMODE_SAVE_CONTEXT    = 0x08u, /*Operation mode is "Save workspace context".*/
    CRYPTO_OPERATIONMODE_RESTORE_CONTEXT = 0x10u  /*Operation mode is "Restore workspace context".*/
} Crypto_OperationModeType;

/*Enumeration for key status.*/
typedef enum
{
    CRYPTO_KEYSTATUS_INVALID                = 0x00u,  /*The status of the key is invalid*/
    CRYPTO_KEYSTATUS_VALID                  = 0x01u,  /*The status of the key is valid*/
    CRYPTO_KEYSTATUS_UPDATE_IN_PROGRESS     = 0x02u   /*Indicates that the NV RAM Block that is assigned to this key are currently being updated*/
} Crypto_KeyStatusType;

/*Enumeration of the result type of verification operations.*/
typedef uint8 Crypto_VerifyResultType;

/*The result of the verification is "true".*/
#define CRYPTO_E_VER_OK ((Std_ReturnType)0x00u)
/*The result of the verification is "false".*/
#define CRYPTO_E_VER_NOT_OK ((Std_ReturnType)0x01u)

typedef uint32* Csm_LengthPtr;
typedef Crypto_VerifyResultType* Csm_VerifyResultPtr;

/*Return for Std_ReturnType for Cryptostack.*/
typedef uint8 Crypto_ResultType;

/*The service request failed because the service is still busy*/
#define CRYPTO_E_BUSY                          ((Std_ReturnType)0x02u)
/*The service request failed because the entropy of the random number generator is exhausted*/
#define CRYPTO_E_ENTROPY_EXHAUSTION            ((Std_ReturnType)0x04u)
/*The service request failed because read access was denied*/
#define CRYPTO_E_KEY_READ_FAIL                 ((Std_ReturnType)0x06u)
/*The service request failed because the writing access failed*/
#define CRYPTO_E_KEY_WRITE_FAIL                ((Std_ReturnType)0x07u)
/*The service request failed because the key is not available*/
#define CRYPTO_E_KEY_NOT_AVAILABLE             ((Std_ReturnType)0x08u)
/*The service request failed because the key is invalid.*/
#define CRYPTO_E_KEY_NOT_VALID                 ((Std_ReturnType)0x09u)
/*The service request failed because the key size does not match.*/
#define CRYPTO_E_KEY_SIZE_MISMATCH             ((Std_ReturnType)0x0Au)
/*The service request failed because the Job has been canceled.*/
#define CRYPTO_E_JOB_CANCELED                  ((Std_ReturnType)0x0Cu)
/*The service request failed because of uninitialized source key element.*/
#define CRYPTO_E_KEY_EMPTY                     ((Std_ReturnType)0x0Du)

/*[SWS_Csm_01022]key element id*/
/*MAC*/
#define CRYPTO_KE_MAC_KEY                                        ((uint32)1U)
#define CRYPTO_KE_MAC_PROOF                                      ((uint32)2U)
#define CRYPTO_KE_KEYGENERATE_SEED                               ((uint32)16U)
/*Signature*/
#define CRYPTO_KE_SIGNATURE_KEY                                  ((uint32)1U)
/*Random*/
#define CRYPTO_KE_RANDOM_SEED_STATE                              ((uint32)3U)
#define CRYPTO_KE_RANDOM_ALGORITHM                               ((uint32)4U)
/*Cipher/AEAD*/
#define CRYPTO_KE_CIPHER_KEY                                     ((uint32)1U)
#define CRYPTO_KE_CIPHER_IV                                      ((uint32)5U)
#define CRYPTO_KE_CIPHER_PROOF                                   ((uint32)6U)
#define CRYPTO_KE_CIPHER_2NDKEY                                  ((uint32)7U)
/*Key Exchange*/
#define CRYPTO_KE_KEYEXCHANGE_BASE                               ((uint32)8U)
#define CRYPTO_KE_KEYEXCHANGE_PRIVKEY                            ((uint32)9U)
#define CRYPTO_KE_KEYEXCHANGE_OWNPUBKEY                          ((uint32)10U)
#define CYRPTO_KE_KEYEXCHANGE_SHAREDVALUE                        ((uint32)1U)
#define CRYPTO_KE_KEYEXCHANGE_ALGORITHM                          ((uint32)12U)
#define CRYPTO_KE_KEYEXCHANGE_CURVETYPE                          ((uint32)29U)
/*Key Derivation*/
#define CRYPTO_KE_KEYDERIVATION_PASSWORD                         ((uint32)1U)
#define CRYPTO_KE_KEYDERIVATION_SALT                             ((uint32)13U)
#define CRYPTO_KE_KEYDERIVATION_ITERATIONS                       ((uint32)14U)
#define CRYPTO_KE_KEYDERIVATION_ALGORITHM                        ((uint32)15U)
#define CRYPTO_KE_KEYDERIVATION_CURVETYPE                        ((uint32)29U)
/*Key Generate*/
#define CRYPTO_KE_KEYGENERATE_KEY                                ((uint32)1U)
#define CRYPTO_KE_KEYGENERATE_SEED                               ((uint32)16U)
#define CRYPTO_KE_KEYGENERATE_ALGORITHM                          ((uint32)17U)
#define CRYPTO_KE_KEYGENERATE_CURVETYPE                          ((uint32)29U)
/*Certificate Parsing*/
#define CRYPTO_KE_CERTIFICATE_DATA                               ((uint32)0)
#define CRYPTO_KE_CERTIFICATE_PARSING_FORMAT                     ((uint32)18U)
#define CRYPTO_KE_CERTIFICATE_CURRENT_TIME                       ((uint32)19U)
#define CRYPTO_KE_CERTIFICATE_VERSION                            ((uint32)20U)
#define CRYPTO_KE_CERTIFICATE_SERIALNUMBER                       ((uint32)21U)
#define CRYPTO_KE_CERTIFICATE_SIGNATURE_ALGORITHM                ((uint32)22U)
#define CRYPTO_KE_CERTIFICATE_ISSUER                             ((uint32)23U)
#define CRYPTO_KE_CERTIFICATE_VALIDITY_NOT_BEFORE                ((uint32)24U)
#define CRYPTO_KE_CERTIFICATE_VALIDITY_NOT_AFTER                 ((uint32)25U)
#define CRYPTO_KE_CERTIFICATE_SUBJECT                            ((uint32)26U)
#define CRYPTO_KE_CERTIFICATE_SUBJECT_PUBLIC_KEY                 ((uint32)1U)
#define CRYPTO_KE_CERTIFICATE_EXTENSIONS                         ((uint32)27U)
#define CRYPTO_KE_CERTIFICATE_SIGNATURE                          ((uint32)28U)
/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/

#endif /* RTE_CSM_TYPE_H */

