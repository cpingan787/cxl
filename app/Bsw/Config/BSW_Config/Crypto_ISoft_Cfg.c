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
 *  @file               : Crypto_ISoft_Cfg.c
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
#include "Crypto_ISoft_Cfg.h"
#include "Crypto_ISoft_Types.h"

#define CRYPTO_ISOFT_START_SEC_VAR_INIT_8
#include "Crypto_ISoft_MemMap.h"

static uint8 CryptoKeyElementValue_0_0[16U] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

static uint8 CryptoKeyElementValue_0_1[16U] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

#define CRYPTO_ISOFT_STOP_SEC_VAR_INIT_8
#include "Crypto_ISoft_MemMap.h"

#define CRYPTO_ISOFT_START_SEC_VAR_INIT_32
#include "Crypto_ISoft_MemMap.h"
static uint32 Crypto_KeyElementLength[CRYPTO_ISOFT_MAXKEYELEMENT_CONFIGURED] = {0,0};
#define CRYPTO_ISOFT_STOP_SEC_VAR_INIT_32
#include "Crypto_ISoft_MemMap.h"

#define CRYPTO_ISOFT_START_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"
static CONST(Crypto_KeyElementCfgType,CRYPTO_APPL_CONST) CryptoKeyElement_0[2]=
{
    {
        FALSE,/*CryptoKeyElementAllowPartialAccess*/
        CRYPTO_KE_FORMAT_BIN_OCTET,/* Key family */
        1U,/* Key element Id */
        CryptoKeyElementValue_0_0,      /* Key init value Id */
        FALSE,/* Key persistence Id */
        CRYPTO_RA_ALLOWED,/* Read access */
        16U, /* Max size of key */
        CRYPTO_WA_ALLOWED,/*CryptoKeyElementWriteAccess*/
        &Crypto_KeyElementLength[0]    /*Crypto_KeyElementLength*/
    },
    {
        FALSE,/*CryptoKeyElementAllowPartialAccess*/
        CRYPTO_KE_FORMAT_BIN_OCTET,/* Key family */
        5U,/* Key element Id */
        CryptoKeyElementValue_0_1,      /* Key init value Id */
        FALSE,/* Key persistence Id */
        CRYPTO_RA_ALLOWED,/* Read access */
        16U, /* Max size of key */
        CRYPTO_WA_ALLOWED,/*CryptoKeyElementWriteAccess*/
        &Crypto_KeyElementLength[1]    /*Crypto_KeyElementLength*/
    },
};
#define CRYPTO_ISOFT_STOP_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"

#define CRYPTO_ISOFT_START_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"
static CONST(Crypto_KeyTypeCfgType, CRYPTO_CONST) Crypto_Isoft_KeyType[CRYPTO_ISOFT_MAXKEY_CONFIGURED] =
{
    {
        2,
        CryptoKeyElement_0
    },
};
#define CRYPTO_ISOFT_STOP_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"

#define CRYPTO_ISOFT_START_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"
/* Store KeyElements used by the keys configured */
CONST(Crypto_KeyCfgType, CRYPTO_CONST) Crypto_Key[CRYPTO_ISOFT_MAXKEY_CONFIGURED]= /* PRQA S 3408 */ /* VL_QAC_Crypto */
{
    {
        0,
        &Crypto_Isoft_KeyType[0]
    },
};
#define CRYPTO_ISOFT_STOP_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"

#define CRYPTO_ISOFT_START_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"
/* List of DriverObject configured */
CONST(Crypto_DriverObjectCfgType, CRYPTO_CONST) Crypto_DriverObjects[CRYPTO_MAX_DRIVER_OBJECT] = /* PRQA S 3408,1502 */ /* VL_QAC_Crypto */
{
    {
        0U, /* CryptoDriverObjectId */
        5U, /* CryptoQueueSize */
        0U, /* CryptoDefaultRandomKeyRef */
        0U, /* CryptoDefaultRandomPrimitiveRef */
        0U, /* CryptoDriverObjectEcucPartitionRef */
        0U /* CryptoPrimitiveRef */
    },
};
#define CRYPTO_ISOFT_STOP_SEC_CONST_UNSPECIFIED
#include "Crypto_ISoft_MemMap.h"
