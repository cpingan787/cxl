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
 *  @file               : CanIf_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-06-25 18:58:46
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef CANIF_CFG_H
#define CANIF_CFG_H

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

#define CANIF_CFG_H_AR_RELEASE_MAJOR_VERSION    4u
#define CANIF_CFG_H_AR_RELEASE_MINOR_VERSION    5u
#define CANIF_CFG_H_AR_RELEASE_REVISION_VERSION 0u
#define CANIF_CFG_H_SW_MAJOR_VERSION            2u
#define CANIF_CFG_H_SW_MINOR_VERSION            2u
#define CANIF_CFG_H_SW_PATCH_VERSION            2u

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/
#define CANIF_CAN_AUTOSAR_422                0u
#define CANIF_CAN_AUTOSAR_431                1u
#define CANIF_CAN_AUTOSAR_440                2u

#define CANIF_CAN_AUTOSAR_VERSION            CANIF_CAN_AUTOSAR_422

#define CANIF_CANID_UINT16                  0u
#define CANIF_CANID_UINT32                  1u

#define CANIF_CAN_IDTYPE                    CANIF_CANID_UINT32

#define CANIF_PDUID_TYPE_INVALID                   0xffffu

#define CANIF_SOFTWARE_FILTER_BINARY                0u
#define CANIF_SOFTWARE_FILTER_INDEX                 1u
#define CANIF_SOFTWARE_FILTER_LINEAR                2u
#define CANIF_SOFTWARE_FILTER_TABLE                 3u

#define CANIF_FIXED_BUFFER            STD_ON

#define CANIF_PRIVATE_DLC_CHECK       STD_ON

#define CANIF_SOFTWARE_FILTER_TYPE    CANIF_SOFTWARE_FILTER_LINEAR

#define CANIF_SUPPORT_TTCAN           STD_OFF

#define CANIF_META_DATA_SUPPORT       STD_OFF

#define CANIF_PUBLIC_CANCEL_TRANSMIT_SUPPORT               STD_OFF

#define CANIF_PUBLIC_DEV_ERROR_DETECT                      STD_OFF

#define CANIF_PUBLIC_ICOM_SUPPORT                          STD_OFF

#define CANIF_PUBLIC_MULTIPLE_DRV_SUPPORT                  STD_ON

#define CANIF_PUBLIC_PN_SUPPORT                            STD_OFF

#define CANIF_PUBLIC_READ_RX_PDU_DATA_API                  STD_OFF

#define CANIF_PUBLIC_READ_RX_PDU_NOTIFY_STATUS_API         STD_OFF

#define CANIF_PUBLIC_READ_TX_PDU_NOTIFY_STATUS_API         STD_OFF

#define CANIF_PUBLIC_SET_DYNAMIC_TX_ID_API                 STD_OFF

#define CANIF_PUBLIC_TX_BUFFERING                          STD_OFF

#define CANIF_PUBLIC_TX_CONFIRM_POLLING_SUPPORT            STD_ON

#define CANIF_PUBLIC_VERSION_INFO_API                      STD_OFF

#define CANIF_PUBLIC_WAKEUP_CHECK_VALID_BY_NM              STD_ON

#define CANIF_PUBLIC_WAKEUP_CHECK_VALID_SUPPORT            STD_ON

#define CANIF_SET_BAUDRATE_API                             STD_OFF

#define CANIF_TRIGGER_TRANSMIT_SUPPORT            STD_OFF

#define CANIF_TX_OFFLINE_ACTIVE_SUPPORT           STD_OFF

#define CANIF_WAKE_UP_SUPPORT                     STD_ON

#define CANIF_CANDRV_WAKE_UP_SUPPORT              STD_ON

#define CANIF_CANTRCV_WAKE_UP_SUPPORT             STD_OFF

#define CANIF_HRH_RANGE_SUPPORT     STD_OFF

#define CANIF_RXPDU_CANID_RANGE_SUPPORT     STD_OFF

#define CANIF_RX_STANDARD_CAN_SUPPORT     STD_OFF

#define CANIF_RX_STANDARD_FD_CAN_SUPPORT     STD_ON

#define CANIF_RX_STANDARD_NO_FD_CAN_SUPPORT     STD_OFF

#define CANIF_RX_EXTENDED_CAN_SUPPORT     STD_OFF

#define CANIF_RX_EXTENDED_FD_CAN_SUPPORT     STD_OFF

#define CANIF_RX_EXTENDED_NO_FD_CAN_SUPPORT     STD_OFF

#define CANIF_TX_EXTENDED_CAN_SUPPORT       STD_OFF

#define CANIF_TX_EXTENDED_FD_CAN_SUPPORT        STD_OFF

#define CANIF_TX_STANDARD_CAN_SUPPORT           STD_OFF

#define CANIF_TX_STANDARD_FD_CAN_SUPPORT        STD_ON

/*******************************************************************************************/

#define CANIF_CANDRIVER_NUMBER      1u
#define CANIF_CAN    0u
#define CANIF_CANCONTROLLER_NUMBER      1u
#define CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM    0u

#define CANIF_TRCVDRIVER_NUMBER      0u
#define CANIF_TRCV_NUMBER      0u

#define CANIF_WAKEUPSOURCE_MAX                    0xFFu

#endif
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/
