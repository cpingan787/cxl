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
 *  @file               : Csm_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:25
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef CSM_CFG_H
#define CSM_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define CSM_DEV_ERROR_DETECT                                STD_ON

#define CSM_GET_VERSION_INFO                                STD_OFF

#define CSM_HASH_SUPPORT                                    STD_OFF

#define CSM_MAC_SUPPORT                                     STD_ON

#define CSM_ENCRYPT_SUPPORT                                 STD_OFF

#define CSM_AEADENCRYPT_SUPPORT                             STD_OFF

#define CSM_SIGNATURE_SUPPORT                               STD_ON

#define CSM_RANDOM_SUPPORT                                  STD_OFF

#define CSM_JOB_NUM                                        2U
#define CsmJob_MacGenSyn                                  0U
#define CsmJob_MacVerifySyn                                  1U

#define CSM_KEY_NUM                                        1U
#define CsmKey_SecOC_Key                                  0U

#define CSM_QUEUE_NUM                                      1U
#define CSM_QUEUE_TOTAL_SIZE                               5U

#define CSM_CBKFUNCS_NUM                                   0U
/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/

#endif /* CSM_CFG_H */

