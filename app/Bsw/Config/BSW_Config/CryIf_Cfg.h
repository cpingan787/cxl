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
 *  @MCU                : R7F7015813
 *  @file               : CryIf_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:32
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef CRYIF_CFG_H_
#define CRYIF_CFG_H_
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*======================================================================================
*                                       DEFINES AND MACROS
======================================================================================*/
/**
* @brief Switches the Development Error functionality ON or OFF.
* @details Switches the Development Error Detection and Notification ON or OFF.
*/
#define CRYIF_DEV_ERROR_DETECT            (STD_ON)

/**
* @brief Switches the Version Information API functionality ON or OFF.
* @details Switches the Crypto_GetVersionInfo function ON or OFF.
*/
#define CRYIF_VERSION_INFO_API            (STD_OFF)

/**
* @brief Define number of crypto keys configured
* @details
*/
#define CRYIF_KEY_MAX_CONFIGURED           (1U)

/**
* @brief Define number of channels configured
* @details
*/
#define CRYIF_CHANNELS_MAX_CONFIGURED      (1U)
/**
* @brief Define number of crypto keys element configured
* @details
*/
#define CRYIF_KEYELEMENT_MAX_CONFIGURED      (2U)

#define CRYIF_MUL_DRIVER_SUPPORT            (STD_OFF)

#endif
/** @} */    
