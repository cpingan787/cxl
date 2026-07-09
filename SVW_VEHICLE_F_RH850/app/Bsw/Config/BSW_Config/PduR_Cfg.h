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
 *  @file               : PduR_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-01-22 11:44:20
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef  PDUR_CFG_H
#define  PDUR_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "ComStack_Types.h"
#include "PduR_PBcfg.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

#define PDUR_CFG_H_AR_RELEASE_MAJOR_VERSION    4u
#define PDUR_CFG_H_AR_RELEASE_MINOR_VERSION    5u
#define PDUR_CFG_H_AR_RELEASE_REVISION_VERSION 0u
#define PDUR_CFG_H_SW_MAJOR_VERSION            2u
#define PDUR_CFG_H_SW_MINOR_VERSION            3u
#define PDUR_CFG_H_SW_PATCH_VERSION            1u

/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/

#define PDUR_ZERO_COST_OPERATION        STD_OFF

#define PDUR_DEV_ERROR_DETECT           STD_OFF

#define PDUR_META_DATA_SUPPORT          STD_OFF

#define PDUR_VERSION_INFO_API           STD_OFF

#define PDUR_MULITIPARTITION_SUPPORT    STD_OFF

#define PDUR_BSW_MODULE_SUM             7u
#define PDUR_COM      0u
#define PDUR_CANIF      1u
#define PDUR_CANNM      2u
#define PDUR_CANTP      3u
#define PDUR_DCM      4u
#define PDUR_IPDUM      5u
#define PDUR_SECOC      6u

#define PDUR_TRANSMIT_SUPPORT                 STD_ON
#define PDUR_CANCEL_TRANSMIT                  STD_ON
#define PDUR_CANCEL_RECEIVE                   STD_ON
#define PDUR_RX_INDICATION                    STD_ON
#define PDUR_TX_CONFIRMATION                  STD_ON
#define PDUR_TRIGGER_TRANSMIT                 STD_ON
#define PDUR_TP_STARTOFRECEPTION_TRANSMIT     STD_ON
#define PDUR_TP_COPYRXDATA                    STD_ON
#define PDUR_TP_RXINDICATION                  STD_ON
#define PDUR_TP_COPYTXDATA                    STD_ON
#define PDUR_TP_TXCONFIRMATION                STD_ON

#define PDUR_ROUTINGPATH_MAX                  255u
#define PDUR_ROUTING_PATH_GROUP_MAX           1u

#define PDUR_NUMBER_OF_QUEUES                 0u
#define PDUR_NUMBER_OF_BUFFERS                0u

#define PDUR_TP_BUFFER_SUM           0u

#endif  /* end of PDUR_CFG_H */

/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/

