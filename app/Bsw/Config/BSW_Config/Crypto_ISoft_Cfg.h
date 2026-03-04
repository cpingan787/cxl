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
 *  @file               : Crypto_ISoft_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-02-02 16:17:25
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef CRY_CFG_H
#define CRY_CFG_H
/* Switches the development error detection and notification on or off. */
#define CRYPTO_DEV_ERROR_DETECT                                (STD_ON)

/* Instance ID of the crypto driver. This ID is used to discern several crypto
drivers in case more than one driver is used in the same ECU. */
#define CRYPTO_ISOFT_INSTANCE_ID                                    (0U)

/* Specifies the period of main function Crypto_MainFunction in seconds. */
#define CRYPTO_MAINFUNCTION_PERIOD                          (50000000U)

/* Pre-processor switch to enable and disable availability of the API Crypto_GetVersionInfo() */
#define CRYPTO_VERSION_INFO_API                                (STD_OFF)

/* Pre-processor switch to enable and disable availability of the API Crypto_GetVersionInfo() */
#define CRYPTO_MAX_QUEUE_SIZE                               (5U)

/* Number of configured keys */
#define CRYPTO_ISOFT_MAXKEY_CONFIGURED                            (1U)

/* Number of configured driver object */
#define CRYPTO_MAX_DRIVER_OBJECT                            (1U)

/* Number of configured key element */
#define CRYPTO_ISOFT_MAXKEYELEMENT_CONFIGURED                     (2U)

/* QUEUE function switch */
#define CRYPTO_ISOFT_JOB_QUEUING                                     (STD_ON)

/* Sha256 algorithm switch */
#define CRYPTO_ALGORITHM_HASH                                  (STD_ON)

/* CMAC algorithm switch */
#define CRYPTO_ALGORITHM_CMAC                                  (STD_ON)

/* AES algorithm switch */
#define CRYPTO_ALGORITHM_AES                                   (STD_ON)

/* CTRG algorithm switch */
#define CRYPTO_ALGORITHM_CTRG                                  (STD_ON)

/* RSA algorithm switch */
#define CRYPTO_ALGORITHM_RSA                                   (STD_OFF)

/* DH algorithm switch */
#define CRYPTO_ALGORITHM_DH                                    (STD_OFF)
#endif
