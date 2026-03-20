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
 *  @file               : Nm_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-01-19 18:22:53
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef NM_CFG_H_
#define NM_CFG_H_

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* NmGlobalConstants */

#define NM_MULTIPLE_PARTITION_USED                                      STD_OFF

#define NM_NUMBER_OF_CHANNELS                                           (1u)

#define NM_NUMBER_OF_CLUSTERS                                           (0u)

/* NmGlobalProperties */

/* Switches the Default Error Tracer (Det) detection and notification ON or
OFF */
#define NM_DEV_ERROR_DETECT                         STD_OFF

/* Pre-processor switch for enabling Version Info API support. */
#define NM_VERSION_INFO_API                        STD_OFF

/* NmGlobalFeatures */

/* Pre-processor switch for enabling support of Passive Mode of the <BusNm>s. */
#define NM_PASSIVE_MODE_ENABLED                                         STD_OFF

/* Pre-processor switch for enabling Remote Sleep Indication support. */
/* dependency: It must not be enabled if NM_PASSIVE_MODE_ENABLED is enabled. */
#define NM_REMOTE_SLEEP_IND_ENABLED                                      STD_OFF

/* Pre-processor switch for enabling NM Coordinator support. */
/* dependency: Only valid if NM_REMOTE_SLEEP_IND_ENABLED AND*/
#define NM_COORDINATOR_SUPPORT_ENABLED                                 STD_OFF

/* Pre-processor switch for enabling bus synchronization support of the
<BusNm>s. This feature is required for NM Coordinator nodes only. */
/* dependency: This parameter must be enabled if
NM_COORDINATOR_SUPPORT_ENABLED is enabled. */
#define NM_BUS_SYNCHRONIZATION_ENABLED                                 STD_OFF

/* link time */
/* Enables or disables CWU detection. */
#define NM_CAR_WAKE_UP_RX_ENABLED                                    STD_OFF

/* Pre-processor switch for enabling the Communication Control support. */
#define NM_COM_CONTROL_ENABLED                                      STD_ON

/* Enable/Disable setting of NMUserData via SW-C. */
#define NM_COM_USER_DATA_SUPPORT                                    STD_ON

/* link time */
/* Enables/disables the coordinator synchronisation support. */
/* dependency: NmCoordinatorSyncSupport shall only be valid if*/
#define NM_COORDINATOR_SYNC_SUPPORT                                  STD_OFF

#define NM_PARTIAL_NETWORK_SUPPORT_ENABLED                              STD_OFF

/* Pre-processor switch for enabling the PDU Rx Indication */
#define NM_PDU_RX_INDICATION_ENABLED                               STD_ON

/* Pre-processor switch for enabling the Network Management state
change notification. */
#define NM_STATE_CHANGE_IND_ENABLED                                  STD_ON

/* Pre-processor switch for enabling User Data support. */
#define NM_USER_DATA_ENABLED                                           STD_OFF

/* nm support com api Com_SendSignal */
#define NM_SUPPORT_COM_SENDSIGNAL                                       STD_ON

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/

#endif/* NM_CFG_H_ */

