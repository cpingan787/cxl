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
 *  @file               : CanTp_PBcfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:29
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*=======[I N C L U D E S]================================*/
#include "CanTp.h"
#include "CanIf_PBcfg.h"
#include "PduR_Cfg.h"

/*=======[I N T E R N A L   D A T A]=======================*/
/* PRQA S 6610 EOF */ /* VL_MTR_CanTp_STCDN */

/*CanTpChannel_DbcDiag_0 RxSdu address information*/
#define CANTP_START_SEC_CONST_32
#include "CanTp_MemMap.h"
static CONST(uint32, CANTP_CONST) CanTp_Ch0RxSdu0Nar = 25u;
static CONST(uint32, CANTP_CONST) CanTp_Ch0RxSdu0Ncr = 150u;
#define CANTP_STOP_SEC_CONST_32
#include "CanTp_MemMap.h"
#define CANTP_START_SEC_CONST_8
#include "CanTp_MemMap.h"
static CONST(uint8, CANTP_CONST) CanTp_Ch0RxSdu0Bs = 0u;
static CONST(uint8, CANTP_CONST) CanTp_Ch0RxSdu0RxWftMax = 255u;
static CONST(uint8, CANTP_CONST) CanTp_Ch0RxSdu0STmin = 10u;

#define CANTP_STOP_SEC_CONST_8
#include "CanTp_MemMap.h"
#define CANTP_START_SEC_CONST_32
#include "CanTp_MemMap.h"
static CONST(uint32, CANTP_CONST) CanTp_Ch0RxSdu1Nar = 25u;
static CONST(uint32, CANTP_CONST) CanTp_Ch0RxSdu1Ncr = 150u;
#define CANTP_STOP_SEC_CONST_32
#include "CanTp_MemMap.h"
#define CANTP_START_SEC_CONST_8
#include "CanTp_MemMap.h"
static CONST(uint8, CANTP_CONST) CanTp_Ch0RxSdu1Bs = 0u;
static CONST(uint8, CANTP_CONST) CanTp_Ch0RxSdu1RxWftMax = 255u;
static CONST(uint8, CANTP_CONST) CanTp_Ch0RxSdu1STmin = 10u;

#define CANTP_STOP_SEC_CONST_8
#include "CanTp_MemMap.h"

#define CANTP_START_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"
static CONST(CanTp_RxNSduType, CANTP_CONST) CanTp_Ch0RxNSdus[2] =
{
    {
        &CanTp_Ch0RxSdu0Bs,
        &CanTp_Ch0RxSdu0Nar,
        0u,
        &CanTp_Ch0RxSdu0Ncr,
        CANTP_STANDARD,
        PDUR_SRCPDU_CanTp_fun_rx_0x7df,
        CANTP_CanTp_fun_rx_0x7df,
        CANTP_CanIf_fun_rx_0x7df,
        0xFFu,
        0xFFu,
        0u,
        64u,
        CANTP_PADDING_ON,
        CANTP_CANFD_FUNCTIONAL,
        &CanTp_Ch0RxSdu0RxWftMax,
        &CanTp_Ch0RxSdu0STmin,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        CANTP_CAN_FD,
    },
    {
        &CanTp_Ch0RxSdu1Bs,
        &CanTp_Ch0RxSdu1Nar,
        0u,
        &CanTp_Ch0RxSdu1Ncr,
        CANTP_STANDARD,
        PDUR_SRCPDU_CanTp_phy_rx_0x711,
        CANTP_CanTp_phy_rx_0x711,
        CANTP_CanIf_phy_rx_0x711,
        CANTP_CanIf_phy_tx_0x719,
        CANIF_TXPDU_CanIf_phy_tx_0x719,
        0u,
        64u,
        CANTP_PADDING_ON,
        CANTP_CANFD_PHYSICAL,
        &CanTp_Ch0RxSdu1RxWftMax,
        &CanTp_Ch0RxSdu1STmin,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        CANTP_CAN_FD,
    },
};
#define CANTP_STOP_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"

/*CanTpChannel_DbcDiag_0 TxSdu address information*/
#define CANTP_START_SEC_CONST_32
#include "CanTp_MemMap.h"
static CONST(uint32, CANTP_CONST) CanTp_Ch0TxSdu0Nbs = 75u;
static CONST(uint32, CANTP_CONST) CanTp_Ch0TxSdu0Ncs = 25u;
#define CANTP_STOP_SEC_CONST_32
#include "CanTp_MemMap.h"

#define CANTP_START_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"
static CONST(CanTp_TxNSduType, CANTP_CONST) CanTp_Ch0TxNSdus[1] =
{
    {
        25u,
        &CanTp_Ch0TxSdu0Nbs,
        &CanTp_Ch0TxSdu0Ncs,
        CANTP_STANDARD,
        PDUR_DESTPDU_CanTp_phy_tx_0x719,
        CANTP_CanTp_phy_tx_0x719,
        CANTP_CanIf_phy_tx_0x719,
        CANTP_CanIf_phy_rx_0x711,
        CANIF_TXPDU_CanIf_phy_tx_0x719,
        0u,
        64u,
        CANTP_PADDING_ON,
        CANTP_PHYSICAL_TX,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        CANTP_CAN_FD,
    },
};
#define CANTP_STOP_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"

#define CANTP_START_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"
static CONST(CanTp_ChannelType, CANTP_CONST) CanTp_CfgChannel[CANTP_CHANNEL_NUMBER] =
{
    {
        CANTP_MODE_FULL_DUPLEX,
        FALSE,
        50u,
        5000u,
        0u,
        0x2u,
        &CanTp_Ch0RxNSdus[0],
        0x1u,
        &CanTp_Ch0TxNSdus[0]
    },
};
#define CANTP_STOP_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"

#define CANTP_START_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"
CONST(CanTp_ConfigType, CANTP_CONST) CanTp_Config =
{
    CANTP_CHANNEL_NUMBER,
    &CanTp_CfgChannel[0]
};
#define CANTP_STOP_SEC_CONST_UNSPECIFIED
#include "CanTp_MemMap.h"

/*=======[E X T E R N A L   D A T A]===========================*/
/*=======[E N D   O F   F I L E]==============================*/

