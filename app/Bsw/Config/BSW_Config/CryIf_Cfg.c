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
 *  @file               : CryIf_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:25
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "CryIf.h"
#include "Crypto_ISoft.h"
#define CRYIF_START_SEC_CONST_UNSPECIFIED
#include "CryIf_MemMap.h"
CONST(CryIf_KeyCfgType,CRYIF_APPL_DATA) CryIf_KeyCfg[CRYIF_KEY_MAX_CONFIGURED] =     /* PRQA S 1533 */ /* VL_QAC_OneRefSymbol */
{
    {
        0,    /*keyid*/
        0        /*reference CryptoKeyId*/
    },
};
#define CRYIF_STOP_SEC_CONST_UNSPECIFIED
#include "CryIf_MemMap.h"

#define CRYIF_START_SEC_CONST_UNSPECIFIED
#include "CryIf_MemMap.h"
CONST(CryIf_FuncNameConfigType,CRYIF_APPL_DATA) CryIf_DriverApi[CRYIF_CHANNELS_MAX_CONFIGURED] =
{
    {
        &Crypto_ISoft_ProcessJob,                  /*Crypto_<vi>_<ai>_ProcessJob*/
        &Crypto_ISoft_CancelJob,                    /*Crypto_<vi>_<ai>_CancelJob*/
        &Crypto_ISoft_KeyElementSet,                /*Crypto_<vi>_<ai>_KeyElementSet*/
        &Crypto_ISoft_KeySetValid,                    /*Crypto_<vi>_<ai>_KeySetValid*/
        &Crypto_ISoft_KeyElementGet,                /*Crypto_<vi>_<ai>_KeyElementGet*/
        &Crypto_ISoft_KeyElementCopy,                /*Crypto_<vi>_<ai>_KeyElementCopy*/
        &Crypto_ISoft_KeyElementCopyPartial,        /*Crypto_<vi>_<ai>_KeyElementCopyPartial*/
        &Crypto_ISoft_KeyCopy,                        /*Crypto_<vi>_<ai>_KeyCopy*/
        &Crypto_ISoft_RandomSeed,                    /*Crypto_<vi>_<ai>_RandomSeed*/
        &Crypto_ISoft_KeyGenerate,                    /*Crypto_<vi>_<ai>_KeyGenerate*/
        &Crypto_ISoft_KeyDerive,                    /*Crypto_<vi>_<ai>_KeyDerive*/
        &Crypto_ISoft_KeyExchangeCalcPubVal,        /*Crypto_<vi>_<ai>_KeyExchangeCalcPubVal*/
        &Crypto_ISoft_KeyExchangeCalcSecret,        /*Crypto_<vi>_<ai>_KeyExchangeCalcSecret*/
    },
};
#define CRYIF_STOP_SEC_CONST_UNSPECIFIED
#include "CryIf_MemMap.h"

