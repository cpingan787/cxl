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
 *  @file               : CanTp_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:29
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*============================================================================*/
#ifndef CANTP_CFG_H
#define CANTP_CFG_H

/*======== [I N C L U D E S]========================*/
#include "Std_Types.h"

/*========[M A C R O S] ==========================*/
/* Switches the Development Error Detection and Notification ON or OFF */
#define CANTP_DEV_ERROR_DETECT                     STD_ON

/* Switches the runtime Error Detection and Notification ON or OFF */
#define CANTP_RUNTIME_ERROR_DETECT                  STD_ON

/* The time for MainFunction,expressed as the value with ms */
#define CANTP_MAIN_FUNCTION_PERIOD                 0x5u

/* Used for the initialization of unused bytes with a certain value */
#define CANTP_PADDING_BYTE                         0xaau

/* Preprocessor switch for enabling Transmit Cancellation and Receive Cancellation. */
#define CANTP_TC                                   STD_OFF

/* Preprocessor switch for enabling CanTp_ChangeParameterRequest Api*/
#define CANTP_CHANGE_PARAMETER                     STD_ON

/* Preprocessor switch for enabling CanTpReadParameterApi Api*/
#define CANTP_READ_PARAMETER                       STD_OFF

#define CANTP_VERSION_INFO_API                     STD_OFF

/*Enable support for CAN FD frames*/
#define CANTP_FD                                   STD_ON

#define CANTP_DYN_ID_SUPPORT                       STD_OFF
#define CANTP_GENERIC_CONNECTION_SUPPORT           STD_OFF

/* Total number of channel used in CanTp module. */
#define CANTP_MAX_CHANNEL_NUMBER                   0x1u

/* diag gateway response function */
#define CANTP_DIAG_GW_RES_ENABLE                    STD_OFF

/* Synchronous/Asynchronous RxIndication Handle */
#define CANTP_SYNCHRONOUS_RXINDICATION              STD_OFF

/* Switches Queued Reception on or off */
#define CANTP_RX_QUEUE                              STD_OFF

#define CANTP_SYNCHRONOUS_TRANSMIT                  STD_OFF

#define CANTP_TIME_MAINFUNCTION_ENABLED STD_ON

#define CANTP_TIME_OVERFLOW 0xFFFFFFFFuL

#endif /* CANTP_CFG_H */
