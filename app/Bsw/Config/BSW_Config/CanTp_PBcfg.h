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
 *  @file               : CanTp_PBcfg.h
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:29
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*============================================================================*/
#ifndef CANTP_PBCFG_H
#define CANTP_PBCFG_H

/*======== [I N C L U D E S]========================*/
#include "Std_Types.h"

/*========[V E R S I O N  I N F O R M A T I O N]=========*/
#define CANTP_CFG_H_AR_MAJOR_VERSION 4U
#define CANTP_CFG_H_AR_MINOR_VERSION 5U
#define CANTP_CFG_H_AR_PATCH_VERSION 0U
#define CANTP_CFG_H_SW_MAJOR_VERSION 2U
#define CANTP_CFG_H_SW_MINOR_VERSION 1U
#define CANTP_CFG_H_SW_PATCH_VERSION 1U

/*========[M A C R O S] ==========================*/
/* Total number of channel used in CanTp module. */
#define CANTP_CHANNEL_NUMBER                        0x1u

/*configuration MACRO addressing mode for cutting*/
#define CANTP_EXTENDED_ADDRESSING_SUPPORT           STD_OFF
#define CANTP_NORMAL_FIXED_ADDRESSING_SUPPORT       STD_OFF
#define CANTP_MIXED_ADDRESSING_SUPPORT              STD_OFF
#define CANTP_MIXED29_ADDRESSING_SUPPORT            STD_OFF

/* -------------------- CanTpChannel_DbcDiag_0 -------------------- */

/* CanTpRxNSdu_FUNC_RX_0x7DF */    
#define CANTP_CanTp_fun_rx_0x7df                                0x0u/*RxNSdu Id*/

#define CANTP_CanIf_fun_rx_0x7df                                 0x1u/*RxNPdu Id*/

/* CanTpRxNSdu_PHY_RX_0x711 */    
#define CANTP_CanTp_phy_rx_0x711                                0x2u/*RxNSdu Id*/

#define CANTP_CanIf_phy_rx_0x711                                 0x3u/*RxNPdu Id*/

#define CANTP_CanIf_phy_tx_0x719                               0x4u/*TxFcNPdu Id*/

/* CanTpTxNSdu_TX_0x719 */    
#define CANTP_CanTp_phy_tx_0x719                                0x5u/*TxNSdu Id*/

#endif /* CANTP_PBCFG_H */
