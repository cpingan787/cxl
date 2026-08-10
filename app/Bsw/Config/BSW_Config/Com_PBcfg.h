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
 *  @file               : Com_PBcfg.h
 *  @author             : iSoft
 *  @date               : 2026-07-15 10:10:12
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef  COM_PBCFG_H
#define  COM_PBCFG_H
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Published information                                 **
*******************************************************************************/
/* Published information */
#if !defined(COM_PUBLISHED_INFORMATION)
#define COM_PUBLISHED_INFORMATION
#define COM_MODULE_ID                   50u
#define COM_VENDOR_ID                   62u
#define COM_AR_RELEASE_MAJOR_VERSION    4u
#define COM_AR_RELEASE_MINOR_VERSION    5u
#define COM_AR_RELEASE_REVISION_VERSION 0u
#define COM_SW_MAJOR_VERSION            2u
#define COM_SW_MINOR_VERSION            1u
#define COM_SW_PATCH_VERSION            3u
#elif ((COM_SW_MAJOR_VERSION != 2u) || (COM_SW_MINOR_VERSION != 1u) || (COM_SW_PATCH_VERSION != 3u))
#error "Com: Mismatch in Software Version"
#endif

/***********************************************************************************************************************
**                                      Includes                                                                      **
***********************************************************************************************************************/
/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/

#define COM_RXIPDUBUFF_SIZE                        1164u
#define COM_TXIPDUBUFF_SIZE                        366u

#define COM_SIGNAL_BOOLBUFF_SIZE                   309u
#define COM_RXGROUPSIGNAL_BOOLBUFF_SIZE            192u
#define COM_SIGNAL_BOOL_INVALID_SIZE               0u
#define COM_SIGNAL_BOOL_SUBSTITUTE_SIZE            0u

#define COM_SIGNAL_8BITBUFF_SIZE                   723u
#define COM_RXGROUPSIGNAL_8BITBUFF_SIZE            371u
#define COM_SIGNAL_8BIT_INVALID_SIZE               0u
#define COM_SIGNAL_8BIT_SUBSTITUTE_SIZE            0u

#define COM_SIGNAL_16BITBUFF_SIZE                  106u
#define COM_RXGROUPSIGNAL_16BITBUFF_SIZE           49u
#define COM_SIGNAL_16BIT_INVALID_SIZE              0u
#define COM_SIGNAL_16BIT_SUBSTITUTE_SIZE           0u

#define COM_SIGNAL_32BITBUFF_SIZE                  7u
#define COM_RXGROUPSIGNAL_32BITBUFF_SIZE           2u
#define COM_SIGNAL_32BIT_INVALID_SIZE              0u
#define COM_SIGNAL_32BIT_SUBSTITUTE_SIZE           0u

#define COM_SIGNAL_64BITBUFF_SIZE                  21u
#define COM_RXGROUPSIGNAL_64BITBUFF_SIZE           0u
#define COM_SIGNAL_64BIT_INVALID_SIZE              0u
#define COM_SIGNAL_64BIT_SUBSTITUTE_SIZE           0u

#define COM_GWSIGNAL_BOOLBUFF_SIZE                 0u
#define COM_GWSIGNAL_8BITBUFF_SIZE                 0u
#define COM_GWSIGNAL_16BITBUFF_SIZE                0u
#define COM_GWSIGNAL_32BITBUFF_SIZE                0u
#define COM_GWSIGNAL_64BITBUFF_SIZE                0u

#define COM_GWMAPPING_NUMBER                       0u
#define COM_GW_SOURCE_DESCRIPTION_NUMBER                    0u
#define COM_GW_DESTINATION_DESCRIPTION_NUMBER                      0u

#define COM_TXTPPDU_SUPPORT                        STD_OFF
#define COM_RXTPPDU_SUPPORT                        STD_OFF

#define COM_TMS_ENABLE    STD_OFF

#define COM_MDT_ENABLE  STD_OFF

#define COM_TX_IPDU_COUNTER_ENABLE  STD_OFF

#define COM_RX_IPDU_COUNTER_ENABLE  STD_OFF

#define COM_IPDU_REPLICATION_ENABLE      STD_OFF

#define COM_TX_SIGNAL_NOTIFICATION_ENABLE   STD_ON

#define COM_RX_SIGNAL_NOTIFICATION_ENABLE   STD_OFF

#define COM_RX_SIGNAL_TIMEOUT_ENABLE    STD_OFF

#define COM_TX_SIGNAL_TIMEOUT_ENABLE    STD_OFF

#define COM_RX_SIGNAL_TIMEOUT_NOTIFICATION_ENABLE      STD_OFF

#define COM_TX_SIGNAL_TIMEOUT_NOTIFICATION_ENABLE     STD_OFF

#define COM_RX_SIGNAL_UPDATE_BIT_ENABLE     STD_OFF

#define COM_TX_SIGNAL_UPDATE_BIT_ENABLE     STD_OFF

#define COM_RX_SIGNAL_INVALID_DATA_ENABLE   STD_OFF

#define COM_TX_SIGNAL_INVALID_DATA_ENABLE   STD_OFF

#define COM_RX_SIGNAL_INVALID_DATA_ACTION_NOTIFY_ENABLE     STD_OFF

#define COM_TX_SIG_PROP_TRIGGERED_ENABLE    STD_OFF

#define COM_TX_SIG_PROP_TRIGGERED_ON_CHANGE_ENABLE  STD_OFF

#define COM_TX_SIG_PROP_TRIG_ON_CH_NO_REPETITION_ENABLE     STD_OFF

#define COM_TX_SIG_PROP_TRIG_NO_REPETITION_ENABLE   STD_OFF

#define COM_TX_SIGNAL_ERROR_NOTIFICATION_ENABLE     STD_OFF

#define COM_TX_SIGNAL_TYPE_UINT8_DYN_ENABLE     STD_OFF

#define COM_TX_GRP_SIGNAL_TYPE_UINT8_N_ENABLE     STD_OFF

#define COM_RX_SIGNAL_TYPE_UINT8_DYN_ENABLE     STD_OFF

#define COM_RX_SIGNAL_TYPE_UINT8_N_ENABLE   STD_OFF

#define COM_TX_SIG_GROUP_NOTIFICATION_ENABLE    STD_ON

#define COM_RX_SIG_GROUP_NOTIFICATION_ENABLE    STD_OFF

#define COM_RX_SIG_GROUP_TIMEOUT_ENABLE     STD_OFF

#define COM_TX_SIG_GROUP_TIMEOUT_ENABLE     STD_OFF

#define COM_RX_SIG_GROUP_TIMEOUT_NOTIFICATION_ENABLE    STD_OFF

#define COM_TX_SIG_GROUP_TIMEOUT_NOTIFICATION_ENABLE    STD_OFF

#define COM_RX_SIG_GROUP_UPDATE_BIT_ENABLE  STD_OFF

#define COM_TX_SIG_GROUP_UPDATE_BIT_ENABLE  STD_OFF

#define COM_TX_SIG_GROUP_PROP_TRIGGERED_ENABLE  STD_OFF

#define COM_TX_SIG_GROUP_PROP_TRIGGERED_ON_CHANGE_ENABLE    STD_OFF

#define COM_TX_SIG_GROUP_PROP_TRIG_ON_CH_NO_REPETITION_ENABLE   STD_OFF

#define COM_TX_SIG_GROUP_PROP_TRIG_NO_REPETITION_ENABLE     STD_OFF

#define COM_TX_SIG_GROUP_ERROR_NOTIFICATION_ENABLE  STD_OFF

#define COM_TX_SIG_GROUP_INITIAL_VALUE_ONLY_ENABLE  STD_OFF

#define COM_RX_SIG_GROUP_INVALID_DATA_ACTION_NOTIFY_ENABLE  STD_ON

#define COM_TX_GRP_SIGNAL_TYPE_UINT8_DYN_ENABLE      STD_OFF

#define COM_TX_SIGNAL_TYPE_UINT8_N_ENABLE     STD_OFF

#define COM_RX_GRP_SIGNAL_TYPE_UINT8_DYN_ENABLE     STD_OFF

#define COM_RX_GRP_SIGNAL_TYPE_UINT8_N_ENABLE   STD_OFF

#define COM_RX_GRP_SIGNAL_INVALID_DATA_ENABLE   STD_OFF

#define COM_TX_GRP_SIGNAL_INVALID_DATA_ENABLE   STD_OFF

#define COM_GW_DEST_SIG_UPDATE_BIT_ENABLE   STD_OFF

#define COM_GW_SRC_SIG_UPDATE_BIT_ENABLE    STD_OFF

#define COM_TX_IPDU_CALLOUT_ENABLE     STD_ON

#define COM_RX_IPDU_CALLOUT_ENABLE     STD_ON

#define COM_TX_SIG_INITIAL_VALUE_ONLY_ENABLE  STD_OFF

#define COM_RX_IPDU_SIGNAL_PROCESS_IMMEDIATE_ENABLE     STD_OFF

#define COM_TX_IPDU_SIGNAL_PROCESS_IMMEDIATE_ENABLE     STD_OFF

#define COM_RX_SIGNAL_TIMEOUT_ACTION_REPLACE_ENABLE     STD_OFF

#define COM_RX_SIGNAL_TIMEOUT_ACTION_SUBSTITUTE_ENABLE     STD_OFF

#define COM_RX_SIG_GROUP_TIMEOUT_ACTION_REPLACE_ENABLE     STD_OFF

#define COM_RX_SIG_GROUP_TIMEOUT_ACTION_SUBSTITUTE_ENABLE     STD_OFF

#define COM_GW_SRC_DSP_SIG_TYPE_UINT8_N_ENABLE     STD_OFF

#define COM_GW_SRC_DSP_SIG_TYPE_UINT8_DYN_ENABLE     STD_OFF

#define COM_SIGNAL_SIGNED_TYPE_ENABLE     STD_ON

#define COM_TXIPDU_TIGGERTRANSMIT_CALLOUT_ENABLE   STD_OFF

/***********************************************************************************************************************
**                                     Global Data Types                                                              **
***********************************************************************************************************************/
#endif
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/
