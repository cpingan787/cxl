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
 *  @file               : Com_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-03-10 09:17:02
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef  COM_CFG_H
#define  COM_CFG_H
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

/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/

#define COM_CANCELLATION_SUPPORT                     STD_ON

#define COM_DEV_ERROR_DETECT                         STD_OFF

#define COM_ENABLE_SIGNAL_GROUP_ARRAY_API            STD_OFF

#define COM_VERSION_INFO_API                         STD_OFF

#define COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION       STD_ON

#define COM_METADATA_SUPPORT                         STD_OFF

#define COM_RETRY_FAILED_TRANSMIT_REQUESTS           STD_OFF

#define COM_MULTIPLE_PARTITION_USED                     STD_OFF

#define COM_IPDUGROUP_MAX                            2u

#define COM_RXIPDUGROUP_NUMBER                 118u

#define COM_TXIPDUGROUP_NUMBER                 43u

#define COM_IPDUGROUP_NUMBER                       2u

#define COM_RXIPDU_CALLOUT_NUMBER   118u

#define COM_RXIPDU_COUNTER_NUMBER   0u

#define COM_TXIPDU_COUNTER_NUMBER   0u

#define COM_TX_MODE_TRUE_PERIOD_NUMBER   30u

#define COM_TX_MODE_FALSE_PERIOD_NUMBER    0u

#define COM_TX_MODE_TRUE_DIRECT_NUMBER   12u

#define COM_TX_MODE_FALSE_DIRECT_NUMBER   0u

#define COM_TX_MODE_TRUE_MIXED_NUMBER    0u

#define COM_TX_MODE_FALSE_MIXED_NUMBER    0u

#define COM_TX_MODE_TRUE_DIRECT_NOREPETITION_NUMBER   1u

#define COM_TX_MODE_FALSE_DIRECT_NOREPETITION_NUMBER   0u

#define COM_TX_MODE_TRUE_MIXED_NOREPETITION_NUMBER    0u

#define COM_TX_MODE_FALSE_MIXED_NOREPETITION_NUMBER    0u

#define COM_SIGNALGROUPARRY_NUMBER  0u

#define COM_RXSIG_TIMEOUT_NUMBER                       6u

#define COM_RXSIGGRP_TIMEOUT_NUMBER                    1u

#define  COM_RXSIGNAL_INVALID_NUMBER        0u

#define  COM_TXSIGNAL_INVALID_NUMBER        0u

#define  COM_RXGRPSIG_INVALID_NUMBER        0u

#define  COM_TXGRPSIG_INVALID_NUMBER        4u

#define COM_RX_SIGNAL_8BIT_INVALIDVALUE_NUMBER    0u

#define COM_TX_SIGNAL_8BIT_INVALIDVALUE_NUMBER   0u

#define COM_RXSIGNAL_FILTERTYPE_MAX_NUMBER  0u

#define COM_TXSIGNAL_FILTERTYPE_MAX_NUMBER  0u

#define COM_RXGRPSIG_FILTERTYPE_MAX_NUMBER  0u

#define COM_TXGRPSIG_FILTERTYPE_MAX_NUMBER  0u

#define COM_DESTSIG_FILTERTYPE_MAX_NUMBER    0u

#define COM_TMCTXSIGNAL_NUMBER              0u

#define COM_TXSIG_ERROR_AND_NOTIFY_NUMBER  240u

#define COM_TXSIGGRP_ERROR_AND_NOTIFY_NUMBER  8u

#define COM_ONEEVERYNFILTERSIGNAL_NUMBER           0u
#define COM_RXMASKNEWDIFFERMASKOLD_NUMBER    0u

#define COM_RXMASKNEWDIFFERX_NUMBER   0u

#define COM_RXMASKNEWEQUALSX_NUMBER   0u

#define COM_RXNEWISOUTSIDE_NUMBER   0u

#define COM_RXNEWISWITHIN_NUMBER   0u

#define COM_TXMASKNEWDIFFERMASKOLD_NUMBER   0u

#define COM_TXMASKNEWDIFFERX_NUMBER   0u

#define COM_TXMASKNEWEQUALSX_NUMBER   0u

#define COM_TXNEWISOUTSIDE_NUMBER   0u

#define COM_TXNEWISWITHIN_NUMBER   0u

#define COM_TXSIGNAL_TIMEOUT_NUMBER    0u

#define COM_TXSIGGRP_TIMEOUT_NUMBER    0u

#define COM_RXGRPSIG_SUBSTITUTE_NUMBER     0u

#define Com_RxPduGroup_CONTROLLER_0_IAM                             0u
#define Com_TxPduGroup_CONTROLLER_0_IAM                             1u

#define COM_RXIPDU_NUMBER                          118u
/* ComIPduHandleId of RXPDU */
#define COM_RXPDU_COM_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx                         0u /* 0 SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                         1u /* 1 ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                         2u /* 2 ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx                         3u /* 3 ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx                         4u /* 4 ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                         5u /* 5 TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                         6u /* 6 ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx                         7u /* 7 AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx                         8u /* 8 ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                         9u /* 9 LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                         10u /* 10 RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx                         11u /* 11 IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx                         12u /* 12 PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx                         13u /* 13 DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                         14u /* 14 PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                         15u /* 15 TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx                         16u /* 16 RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                         17u /* 17 ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                         18u /* 18 ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx                         19u /* 19 ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx                         20u /* 20 PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                         21u /* 21 SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                         22u /* 22 ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                         23u /* 23 PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx                         24u /* 24 ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                         25u /* 25 SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx                         26u /* 26 RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx                         27u /* 27 IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx                         28u /* 28 ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx                         29u /* 29 IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                         30u /* 30 ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx                         31u /* 31 ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx                         32u /* 32 PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx                         33u /* 33 ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                         34u /* 34 ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                         35u /* 35 ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                         36u /* 36 ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                         37u /* 37 ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                         38u /* 38 ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                         39u /* 39 ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                         40u /* 40 ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                         41u /* 41 ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx                         42u /* 42 RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx                         43u /* 43 LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx                         44u /* 44 LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                         45u /* 45 LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx                         46u /* 46 ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                         47u /* 47 PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx                         48u /* 48 LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx                         49u /* 49 ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                         50u /* 50 PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx                         51u /* 51 IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx                         52u /* 52 ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                         53u /* 53 ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                         54u /* 54 ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx                         55u /* 55 ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx                         56u /* 56 RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                         57u /* 57 ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                         58u /* 58 LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx                         59u /* 59 ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                         60u /* 60 ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                         61u /* 61 ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx                         62u /* 62 CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                         63u /* 63 ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                         64u /* 64 ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                         65u /* 65 ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                         66u /* 66 RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                         67u /* 67 RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx                         68u /* 68 ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                         69u /* 69 RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx                         70u /* 70 RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx                         71u /* 71 ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                         72u /* 72 ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                         73u /* 73 PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                         74u /* 74 ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx                         75u /* 75 RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx                         76u /* 76 ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx                         77u /* 77 ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx                         78u /* 78 RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                         79u /* 79 RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx                         80u /* 80 LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                         81u /* 81 TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                         82u /* 82 RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx                         83u /* 83 ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                         84u /* 84 ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                         85u /* 85 SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                         86u /* 86 RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                         87u /* 87 ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                         88u /* 88 ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                         89u /* 89 ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx                         90u /* 90 ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx                         91u /* 91 CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx                         92u /* 92 RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx                         93u /* 93 TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                         94u /* 94 LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx                         95u /* 95 ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                         96u /* 96 ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx                         97u /* 97 LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx                         98u /* 98 LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                         99u /* 99 ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                         100u /* 100 ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                         101u /* 101 ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx                         102u /* 102 ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx                         103u /* 103 synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx                         104u /* 104 RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx                         105u /* 105 ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx                         106u /* 106 IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx                         107u /* 107 CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                         108u /* 108 ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                         109u /* 109 ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx                         110u /* 110 SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx                         111u /* 111 SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                         112u /* 112 ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                         113u /* 113 ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx                         114u /* 114 DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx                         115u /* 115 DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx                         116u /* 116 DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx                         117u /* 117 DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx */

#define COM_TXIPDU_NUMBER                          44u

/* ComIPduHandleId of TXPDU */
#define COM_TXPDU_COM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx                         118u /* 0 DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                         119u /* 1 IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                         120u /* 2 IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                         121u /* 3 IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                         122u /* 4 IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                         123u /* 5 IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx                         124u /* 6 IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                         125u /* 7 IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx                         126u /* 8 IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                         127u /* 9 IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                         128u /* 10 IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx                         129u /* 11 IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx                         130u /* 12 IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                         131u /* 13 IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx                         132u /* 14 IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                         133u /* 15 IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                         134u /* 16 IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx                         135u /* 17 IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx                         136u /* 18 IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx                         137u /* 19 IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                         138u /* 20 IAM_SecOC_Log_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx                         139u /* 21 IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx                         140u /* 22 TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                         141u /* 23 IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                         142u /* 24 IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                         143u /* 25 IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                         144u /* 26 IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx                         145u /* 27 synthesized_IAM_ZONE__Event_FrS03_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                         146u /* 28 synthesized_IAM_ZONE__Event_FrS02_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                         147u /* 29 synthesized_IAM_ZONE__Event_FrS01_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx                         148u /* 30 synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu13                         149u /* 31 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13 */
#define COM_TXPDU_Com_Contained_Tx_0x377_Pdu06                         150u /* 32 IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06 */
#define COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu03                         151u /* 33 IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03 */
#define COM_TXPDU_Com_NmUserDataPdu_IAM                         152u /* 34 PDU_COM_NMUSERDATA_IAM */
#define COM_TXPDU_Com_Contained_Tx_0x377_Pdu07                         153u /* 35 IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07 */
#define COM_TXPDU_Com_Contained_Tx_0x377_Pdu08                         154u /* 36 IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu34                         155u /* 37 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu35                         156u /* 38 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu39                         157u /* 39 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu40                         158u /* 40 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40 */
#define COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu04                         159u /* 41 IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04 */
#define COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu41                         160u /* 42 IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41 */
#define COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu57                         161u /* 43 IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57 */

#define COM_TXSIGNALGROUP_NUMBER                   8u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx                           0u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx                           1u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           2u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                           3u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           4u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           5u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           6u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                           7u
#define COM_RXSIGNALGROUP_NUMBER                   34u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx                           0u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                           1u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx                           2u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                           3u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                           4u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx                           5u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx                           6u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                           7u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                           8u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                           9u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx                           10u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                           11u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx                           12u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx                           13u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx                           14u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx                           15u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx                           16u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx                           17u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx                           18u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                           19u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx                           20u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                           21u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx                           22u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx                           23u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx                           24u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx                           25u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                           26u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx                           27u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx                           28u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx                           29u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                           30u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                           31u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx                           32u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx                           33u

#define COM_TXSIGNAL_NUMBER                        240u

#define IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx                               0u
#define ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               1u
#define ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               2u
#define ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               3u
#define ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               4u
#define ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               5u
#define ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               6u
#define ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               7u
#define ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               8u
#define ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               9u
#define ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               10u
#define ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               11u
#define ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               12u
#define ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               13u
#define ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               14u
#define ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               15u
#define ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               16u
#define ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               17u
#define ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               18u
#define ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               19u
#define ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               20u
#define ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               21u
#define ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               22u
#define ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               23u
#define ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               24u
#define ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               25u
#define ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               26u
#define ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               27u
#define ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               28u
#define ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               29u
#define ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               30u
#define ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               31u
#define ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               32u
#define ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               33u
#define ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               34u
#define ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               35u
#define ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               36u
#define ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               37u
#define ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               38u
#define ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               39u
#define ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               40u
#define ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx                               41u
#define ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx                               42u
#define ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               43u
#define ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               44u
#define ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               45u
#define ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               46u
#define ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               47u
#define ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               48u
#define ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               49u
#define ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               50u
#define IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               51u
#define IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               52u
#define IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               53u
#define IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               54u
#define IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               55u
#define IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               56u
#define IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               57u
#define INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               58u
#define INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               59u
#define INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               60u
#define INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               61u
#define INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               62u
#define INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               63u
#define INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               64u
#define IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx                               65u
#define IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx                               66u
#define IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx                               67u
#define IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx                               68u
#define IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               69u
#define IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               70u
#define IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               71u
#define IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               72u
#define IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               73u
#define IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               74u
#define IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               75u
#define IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               76u
#define IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               77u
#define IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               78u
#define IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               79u
#define IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               80u
#define IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               81u
#define IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               82u
#define IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx                               83u
#define IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx                               84u
#define IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx                               85u
#define IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                               86u
#define IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                               87u
#define IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                               88u
#define IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                               89u
#define IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               90u
#define IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               91u
#define IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               92u
#define IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               93u
#define IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               94u
#define IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               95u
#define IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               96u
#define IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               97u
#define IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               98u
#define IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               99u
#define IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               100u
#define IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               101u
#define IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               102u
#define IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               103u
#define IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               104u
#define IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               105u
#define IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               106u
#define IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               107u
#define IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               108u
#define IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               109u
#define IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               110u
#define IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               111u
#define IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               112u
#define IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               113u
#define IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               114u
#define IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               115u
#define IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               116u
#define IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               117u
#define IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               118u
#define IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               119u
#define IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               120u
#define IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               121u
#define IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               122u
#define IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               123u
#define IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               124u
#define IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               125u
#define IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               126u
#define IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               127u
#define IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               128u
#define IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               129u
#define IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               130u
#define IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               131u
#define IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx                               132u
#define IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx                               133u
#define IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx                               134u
#define IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx                               135u
#define IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               136u
#define IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               137u
#define IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               138u
#define IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               139u
#define IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               140u
#define IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               141u
#define IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               142u
#define IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx                               143u
#define IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx                               144u
#define ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               145u
#define ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               146u
#define ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               147u
#define ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               148u
#define ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               149u
#define ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               150u
#define ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               151u
#define ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               152u
#define ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               153u
#define ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               154u
#define ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               155u
#define ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               156u
#define ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               157u
#define ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               158u
#define ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               159u
#define ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               160u
#define ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               161u
#define ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               162u
#define ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               163u
#define ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               164u
#define ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               165u
#define ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               166u
#define ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               167u
#define ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               168u
#define ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               169u
#define ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               170u
#define ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               171u
#define ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               172u
#define ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               173u
#define ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               174u
#define ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               175u
#define ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               176u
#define ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx                               177u
#define IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx                               178u
#define ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx                               179u
#define IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               180u
#define IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               181u
#define IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               182u
#define IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               183u
#define IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               184u
#define IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               185u
#define IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               186u
#define IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               187u
#define IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               188u
#define IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx                               189u
#define IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               190u
#define IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               191u
#define IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               192u
#define IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               193u
#define IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               194u
#define IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               195u
#define IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               196u
#define IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               197u
#define IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               198u
#define IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx                               199u
#define IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx                               200u
#define IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx                               201u
#define INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               202u
#define IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               203u
#define ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               204u
#define ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               205u
#define IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               206u
#define IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               207u
#define IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               208u
#define IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               209u
#define IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               210u
#define ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               211u
#define IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               212u
#define IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               213u
#define IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               214u
#define IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               215u
#define IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               216u
#define IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               217u
#define IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               218u
#define IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               219u
#define IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               220u
#define IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                               221u
#define IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                               222u
#define ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               223u
#define ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               224u
#define ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               225u
#define ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               226u
#define ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               227u
#define ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               228u
#define ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               229u
#define ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               230u
#define ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               231u
#define ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               232u
#define ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               233u
#define ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               234u
#define ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               235u
#define ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               236u
#define ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               237u
#define ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               238u
#define ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               239u

#define COM_RXSIGNAL_NUMBER                        443u

#define IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx                               0u
#define IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx                               1u
#define IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               2u
#define IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               3u
#define IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               4u
#define IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               5u
#define IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               6u
#define IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               7u
#define IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               8u
#define IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               9u
#define IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               10u
#define IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx                               11u
#define IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               12u
#define IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               13u
#define IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               14u
#define IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               15u
#define IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               16u
#define IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               17u
#define IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               18u
#define IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               19u
#define IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               20u
#define IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               21u
#define ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx                               22u
#define IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx                               23u
#define IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               24u
#define IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx                               25u
#define ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx                               26u
#define ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx                               27u
#define ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx                               28u
#define IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx                               29u
#define IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               30u
#define IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               31u
#define ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               32u
#define ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               33u
#define ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               34u
#define ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               35u
#define ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               36u
#define IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               37u
#define ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               38u
#define IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               39u
#define ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               40u
#define IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx                               41u
#define ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               42u
#define ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               43u
#define ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               44u
#define ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               45u
#define ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               46u
#define ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               47u
#define ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               48u
#define ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               49u
#define ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               50u
#define ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               51u
#define ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               52u
#define ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               53u
#define ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               54u
#define ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               55u
#define ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               56u
#define ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               57u
#define ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               58u
#define ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               59u
#define ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               60u
#define ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               61u
#define ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               62u
#define ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx                               63u
#define IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               64u
#define IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               65u
#define IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               66u
#define IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               67u
#define IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               68u
#define IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               69u
#define IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               70u
#define IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx                               71u
#define ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx                               72u
#define INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               73u
#define INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               74u
#define ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               75u
#define IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               76u
#define ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               77u
#define ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               78u
#define IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               79u
#define IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               80u
#define ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               81u
#define IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               82u
#define ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               83u
#define IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               84u
#define IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               85u
#define IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               86u
#define IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               87u
#define IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               88u
#define IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               89u
#define ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               90u
#define IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               91u
#define ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               92u
#define IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               93u
#define IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               94u
#define IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               95u
#define IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               96u
#define IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               97u
#define IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               98u
#define IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               99u
#define IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               100u
#define ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               101u
#define ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               102u
#define IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               103u
#define IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               104u
#define IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               105u
#define IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               106u
#define IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               107u
#define IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               108u
#define IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx                               109u
#define IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx                               110u
#define IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                               111u
#define IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               112u
#define IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               113u
#define IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               114u
#define IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               115u
#define IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               116u
#define ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               117u
#define ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               118u
#define ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               119u
#define ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               120u
#define ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               121u
#define ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               122u
#define ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               123u
#define ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               124u
#define ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               125u
#define ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               126u
#define ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               127u
#define ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               128u
#define IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               129u
#define ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               130u
#define ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               131u
#define ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               132u
#define ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               133u
#define ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               134u
#define ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               135u
#define ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               136u
#define ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               137u
#define IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               138u
#define ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               139u
#define ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               140u
#define ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               141u
#define ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx                               142u
#define IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               143u
#define IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               144u
#define IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               145u
#define IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               146u
#define IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               147u
#define IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               148u
#define IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               149u
#define IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               150u
#define IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               151u
#define IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               152u
#define IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               153u
#define IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               154u
#define IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               155u
#define ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               156u
#define ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               157u
#define IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               158u
#define ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               159u
#define ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               160u
#define ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               161u
#define ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               162u
#define ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               163u
#define ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               164u
#define ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               165u
#define ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               166u
#define ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               167u
#define ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               168u
#define IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               169u
#define IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               170u
#define IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               171u
#define IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               172u
#define IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               173u
#define IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               174u
#define ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx                               175u
#define ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx                               176u
#define IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx                               177u
#define IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               178u
#define IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               179u
#define IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               180u
#define IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               181u
#define IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               182u
#define IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               183u
#define IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               184u
#define IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx                               185u
#define ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx                               186u
#define IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx                               187u
#define IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx                               188u
#define IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx                               189u
#define IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               190u
#define IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               191u
#define IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               192u
#define IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               193u
#define IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               194u
#define IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               195u
#define IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               196u
#define IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               197u
#define IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               198u
#define IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               199u
#define IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                               200u
#define IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                               201u
#define IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                               202u
#define IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               203u
#define IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               204u
#define IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               205u
#define IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               206u
#define IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               207u
#define IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               208u
#define IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               209u
#define IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               210u
#define IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               211u
#define IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               212u
#define IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               213u
#define IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               214u
#define IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               215u
#define IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               216u
#define IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               217u
#define IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               218u
#define IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               219u
#define IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               220u
#define IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               221u
#define IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               222u
#define IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               223u
#define IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               224u
#define IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               225u
#define IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               226u
#define IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               227u
#define IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               228u
#define IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               229u
#define IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx                               230u
#define IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                               231u
#define IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                               232u
#define IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                               233u
#define IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                               234u
#define IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                               235u
#define IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx                               236u
#define IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx                               237u
#define IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx                               238u
#define IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx                               239u
#define IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               240u
#define ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                               241u
#define ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                               242u
#define IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                               243u
#define ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                               244u
#define ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                               245u
#define ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                               246u
#define ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               247u
#define ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               248u
#define ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               249u
#define ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               250u
#define ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               251u
#define ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               252u
#define ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               253u
#define ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               254u
#define ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx                               255u
#define IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx                               256u
#define IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx                               257u
#define IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx                               258u
#define IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx                               259u
#define IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                               260u
#define IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                               261u
#define IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                               262u
#define ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               263u
#define ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               264u
#define ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               265u
#define ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               266u
#define ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               267u
#define ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               268u
#define IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx                               269u
#define ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               270u
#define ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               271u
#define ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               272u
#define ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               273u
#define IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               274u
#define IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               275u
#define IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               276u
#define IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               277u
#define ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               278u
#define IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               279u
#define IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               280u
#define IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               281u
#define IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               282u
#define IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               283u
#define IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               284u
#define ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               285u
#define ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               286u
#define ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               287u
#define ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               288u
#define IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               289u
#define IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               290u
#define IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               291u
#define IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               292u
#define IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               293u
#define IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               294u
#define IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               295u
#define IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               296u
#define IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               297u
#define IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               298u
#define IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               299u
#define IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               300u
#define IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               301u
#define IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               302u
#define IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               303u
#define IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               304u
#define IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               305u
#define IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               306u
#define ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                               307u
#define IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               308u
#define IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               309u
#define IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               310u
#define IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               311u
#define IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               312u
#define IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               313u
#define IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               314u
#define IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               315u
#define IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               316u
#define IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               317u
#define IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               318u
#define IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               319u
#define IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx                               320u
#define IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               321u
#define IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               322u
#define IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               323u
#define IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               324u
#define IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               325u
#define IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               326u
#define IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               327u
#define IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               328u
#define IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                               329u
#define IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                               330u
#define IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                               331u
#define INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx                               332u
#define INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx                               333u
#define IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx                               334u
#define IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx                               335u
#define ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx                               336u
#define ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx                               337u
#define IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               338u
#define IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               339u
#define IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               340u
#define IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               341u
#define IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               342u
#define IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               343u
#define IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               344u
#define IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               345u
#define IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               346u
#define IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               347u
#define IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               348u
#define IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               349u
#define IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               350u
#define IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               351u
#define IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               352u
#define IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               353u
#define IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               354u
#define IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               355u
#define IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               356u
#define IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               357u
#define IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               358u
#define IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx                               359u
#define IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx                               360u
#define IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx                               361u
#define IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx                               362u
#define IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                               363u
#define IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                               364u
#define IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                               365u
#define IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                               366u
#define IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               367u
#define IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               368u
#define IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               369u
#define IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               370u
#define IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               371u
#define IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               372u
#define IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               373u
#define IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               374u
#define IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               375u
#define IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               376u
#define IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               377u
#define IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx                               378u
#define SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx                               379u
#define IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx                               380u
#define IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx                               381u
#define IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx                               382u
#define IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx                               383u
#define IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx                               384u
#define IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx                               385u
#define IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx                               386u
#define IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               387u
#define IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               388u
#define IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               389u
#define IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               390u
#define IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               391u
#define IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               392u
#define IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               393u
#define IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               394u
#define IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               395u
#define IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               396u
#define IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               397u
#define IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               398u
#define IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               399u
#define IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               400u
#define IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               401u
#define IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               402u
#define IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               403u
#define IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               404u
#define IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               405u
#define IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               406u
#define IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               407u
#define IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               408u
#define IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               409u
#define IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               410u
#define IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               411u
#define IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               412u
#define IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               413u
#define IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               414u
#define IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               415u
#define IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               416u
#define IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               417u
#define IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               418u
#define IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               419u
#define IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               420u
#define IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               421u
#define IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               422u
#define IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               423u
#define IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               424u
#define IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               425u
#define IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               426u
#define IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx                               427u
#define ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx                               428u
#define ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx                               429u
#define IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               430u
#define IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               431u
#define IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               432u
#define IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               433u
#define IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               434u
#define IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               435u
#define IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               436u
#define IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               437u
#define IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               438u
#define IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx                               439u
#define IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx                               440u
#define IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx                               441u
#define IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx                               442u

#define COM_GW_DESTINATION_NUM                     0u

#define COM_TXGROUPSIGNAL_NUMBER                   49u

#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          240u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IHeadingSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          241u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchRTK_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          242u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_Reserved1_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          243u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_PDU18_RC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          244u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_PDU18_CRC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          245u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_Reserved2_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          246u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_ILatitudeRTK_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          247u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          248u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_Reserved1_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          249u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_RC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          250u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_CRC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          251u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTimeH_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          252u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSSeq_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          253u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IFixType_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          254u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_Reserved_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          255u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_RC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          256u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_CRC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          257u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IAltSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          258u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILonSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          259u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILatSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          260u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_Reserved1_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          261u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_RC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          262u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_CRC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          263u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved2          264u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          265u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved3          266u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IVdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          267u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved4          268u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IPdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          269u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved1          270u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_RC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          271u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_CRC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          272u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_PDU35_RC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          273u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSF9HCounter_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          274u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTime_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          275u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group35_Reserved1          276u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_PDU35_CRC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          277u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_Reserved2          278u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHeadingRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          279u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IAltitudeRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          280u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_Reserved1          281u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_RC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          282u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_CRC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          283u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_Reserved2          284u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_ILongitudeRTK_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx          285u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_Reserved1          286u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_RC          287u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_CRC_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx          288u
#define COM_RXGROUPSIGNAL_NUMBER                   590u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_CRC_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          443u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_RC_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          444u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Reserve_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          445u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_ITJAICASysFltSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          446u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Re_0000_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          447u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_ILKASysFltSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          448u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Re_0001_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          449u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Re_0002_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          450u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_ITJAICASysSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          451u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_ILKASysSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          452u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Re_0003_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          453u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Re_0004_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          454u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Re_0005_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          455u
#define IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx_IICBAD_ZONE_20ms_Group13_Re_0006_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx          456u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITC_ZONE_10ms_Group01_CRC_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          457u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITC_ZONE_10ms_Group01_RC_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          458u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITC_ZONE_10ms_Group01_Reserved1_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          459u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITMDmpngCtrlToq_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          460u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITMInvtrCrnt_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          461u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITMInvtrVolV_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          462u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITMInvtrCrntV_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          463u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITMInvtrVol_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          464u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITMPhaseCurrent_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          465u
#define ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ITC_ZONE_10ms_Group01_Reserved2_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          466u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_CRC_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          467u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_RC_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          468u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnActuStdyStaToqV_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          469u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnRunA_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          470u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnSpdSts_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          471u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnSpd_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          472u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_Reserved2_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          473u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnCtrlrRunCrkTrmlSts_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          474u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_Reserved1_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          475u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnActuStdyStaToq_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          476u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_Reserved3_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          477u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnToqResvA_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          478u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_Reserved4_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          479u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_CRC_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          480u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_RC_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          481u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUFltLvlWarn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          482u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUDrvMd_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          483u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUExtdShiftrFlr_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          484u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrOpngRmndr_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          485u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IKeyAuthResp_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          486u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          487u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReqV_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          488u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_Reserved1_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          489u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IDigKeyAuthReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          490u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrLvrRawPosn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          491u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReqVEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          492u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IScurtKeyInvd_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          493u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_Reserved2_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          494u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReqEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          495u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrPosnInvsn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          496u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrLvrPosn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          497u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IDrvrReqParkBtn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          498u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrLvrPosnLtchActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          499u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISecuKeyVldSts_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          500u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUDrvrIntrvnActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          501u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUAPAUnderCtrlActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          502u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IDigKeyPEValidReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          503u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_CRC_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          504u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_RC_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          505u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IElecMotEmgcShutDwn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          506u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTHVEmgcPwrOffReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          507u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTMainRelayDrvReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          508u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTStCmdOn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          509u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTAccelActuPosV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          510u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IAutoChrgngMngmnt_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          511u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTBrkPdlDscrtInptStsV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          512u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTBrkPdlDscrtInptSts_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          513u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRVSEPTRdy_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          514u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTCrkAbotd_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          515u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved1_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          516u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTHVDCDCMdReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          517u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTAccelActuPos_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          518u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTAccelEfctvPos_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          519u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved2_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          520u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved3_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          521u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_CRC_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          522u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_RC_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          523u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved1_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          524u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IBrkPdlPos_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          525u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved2_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          526u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IBrkSysBrkLghtsReqd_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          527u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IBrkPdlPosV_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          528u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved3_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          529u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved4_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          530u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved5_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          531u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved6_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          532u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_CRC_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          533u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_RC_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          534u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_Reserved1_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          535u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IEPTTrOtptShaftTotMinAvlblToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          536u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IEPTTrOtptShaftTotMaxAvlblToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          537u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IEPTTrOtptShaftTotMaxAvlblToq_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          538u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IEPTTrOtptShaftTotMinAvlblToq_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          539u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IEPTTrOtptShaftTotToq_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          540u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IEPTTrOtptShaftTotToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          541u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_Reserved2_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          542u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_Reserved3_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          543u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_Reserved4_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          544u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_Reserved5_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          545u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_Reserved6_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          546u
#define IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group22_Reserved7_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx          547u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IESS_20ms_Group01_CRC_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          548u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IESS_20ms_Group01_RC_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          549u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMinVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          550u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMaxVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          551u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackVolV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          552u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackCrntV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          553u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackCrnt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          554u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackVol_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          555u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMaxVolLmt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          556u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMinVolLmt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          557u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_CRC_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          558u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_RC_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          559u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved1_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          560u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagSysFltForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          561u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagDplInvsneForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          562u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagDplForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          563u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSbltAudRmndr_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          564u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnFrtPsngSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          565u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnDrvrSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          566u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved2_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          567u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IDrvrSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          568u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IDrvrSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          569u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          570u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          571u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          572u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          573u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowLSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          574u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowMidSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          575u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowLSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          576u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          577u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          578u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowRSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          579u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          580u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          581u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowRSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          582u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          583u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          584u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowMidSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          585u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          586u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          587u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFrtPsngSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          588u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFrtPsngSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          589u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved3_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          590u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved4_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          591u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group03_CRC_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          592u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group03_RC_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          593u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMHVInhd_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          594u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IEPTSysCoolResp_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          595u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMSttrTem_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          596u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMInvtrTem_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          597u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group03_Reserved2_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          598u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMAShrtCircuitRdy_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          599u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMSttrTemV_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          600u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMOvhtd_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          601u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMInvtrTemV_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          602u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IISGHVILSts_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          603u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group03_Reserved1_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          604u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group03_Reserved3_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          605u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMHVILSts_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          606u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMToqDrtng_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          607u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ISAMOfstAngCalReq_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          608u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group03_Reserved4_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          609u
#define IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group03_Reserved5_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          610u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group07_CRC_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          611u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group07_RC_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          612u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IACCSdslReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          613u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IACCGoReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          614u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IACCAccReqSts_CH_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          615u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IACCAccReqVal_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          616u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAPAEPBOPReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          617u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IACCSysFltSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          618u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAIPkgAPASCSAcclReqVal_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          619u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IACCSysSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          620u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAPASCSAcclReqSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          621u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAPAEPBOPReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          622u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysSCSSdslReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          623u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysSCSSdslReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          624u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysEmgcBrkReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          625u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysEmgcBrkReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          626u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAIPilotBrkRddyMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          627u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAIPkgBrkRddyMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          628u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group07_Reserved1_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          629u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysSCSDrvOffReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          630u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysSCSDrvOffReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          631u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysMdReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          632u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          633u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysFlrStsV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          634u
#define IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutodDrvngSysFlrSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          635u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_CRC_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          636u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_RC_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          637u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagSysFltIndCmd_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          638u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagDplInvsn_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          639u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagDpl_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          640u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved1_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          641u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IPedtrnProtnSysDplStsV_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          642u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IPedtrnProtnSysDplSts_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          643u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IPedtrnProtnSysIndrCmd_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          644u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagSysFlt_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          645u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagSwSts_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          646u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved2_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          647u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved3_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          648u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved4_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          649u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved5_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          650u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagIndReq_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          651u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagEnbIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          652u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagDsblIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          653u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved6_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          654u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IVehCrshTyp_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          655u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_CRC_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          656u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_RC_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          657u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrEstdGearV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          658u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IEPTRdyV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          659u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          660u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrShftLvrPosV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          661u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrEstdGear_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          662u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrShftLvrPos_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          663u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved2_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          664u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IPreEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          665u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved1_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          666u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved3_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          667u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved4_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          668u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved5_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          669u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved6_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          670u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group07_CRC_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          671u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group07_RC_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          672u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IHDCSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          673u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IABSIO_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          674u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IVSESysA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          675u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysYlwBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          676u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IVSESts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          677u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IVSEMd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          678u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMultColBrkEnbA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          679u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEBDFaultSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          680u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSOpngSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          681u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSOpngMd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          682u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysHillStAstAvlbl_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          683u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IRgtvBrkFnFltSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          684u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMSRF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          685u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutoHoldSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          686u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutoHoldMsg_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          687u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEBDA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          688u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IRgtvBrkFnSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          689u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSEnbd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          690u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IHBAActiveSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          691u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          692u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEnDragToqRducnA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          693u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IABSF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          694u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IABSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          695u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IHBAValidSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          696u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMSRA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          697u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEmgcBrkAV_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          698u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEmgcBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          699u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysRedBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          700u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysHillStAstSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          701u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAVHSigPdlSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          702u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutoHoldMdSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          703u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ISoftSpSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          704u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMulColBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          705u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMulColBrkAvlblySts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          706u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_CRC_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          707u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_RC_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          708u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_Reserved1_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          709u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_Reserved2_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          710u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IAPASts_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          711u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IAutodDrvngSysSts_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          712u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_Reserved3_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          713u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_Reserved4_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          714u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_Reserved5_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          715u
#define IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx_IICBAD_20ms_Group12_Reserved6_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx          716u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group11_CRC_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          717u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group11_RC_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          718u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group11_Reserved1_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          719u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgNonDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          720u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          721u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          722u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgDrvn_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          723u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          724u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgNonDrvn_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          725u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgDrvnSrc_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          726u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_CRC_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          727u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_RC_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          728u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IAMRPrtensonReq_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          729u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved2_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          730u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVolMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          731u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved1_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          732u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved3_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          733u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          734u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVolV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          735u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysPwrMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          736u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          737u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          738u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          739u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVol_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          740u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IPwrMdMstrRunCrkA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          741u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysPwrMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          742u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IPwrMdMstrAccryA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          743u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysOpnlMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          744u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved4_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          745u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IBPMMstrAvlbly_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          746u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVolMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          747u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_CRC_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          748u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_RC_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          749u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSVehicleEPO_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          750u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSHVReq_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          751u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSBscSta_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          752u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSFltLvl_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          753u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSPtIsltnRstcV_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          754u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_Reserved1_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          755u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSMainRelaySts_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          756u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSHVILClsd_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          757u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_Reserved2_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          758u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgRelayAdh_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          759u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_Reserved3_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          760u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSKeepSysAwkScene_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          761u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSPtIsltnRstc_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          762u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSHVILSts_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          763u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_CRC_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          764u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_RC_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          765u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved1_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          766u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved2_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          767u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IVehIlluminateCtrlCmd_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          768u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved3_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          769u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IBrkLghtSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          770u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRLChildProtnA_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          771u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved4_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          772u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IBrkLghtFltSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          773u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRRChildProtnA_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          774u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved5_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          775u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved7_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          776u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IDircnLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          777u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved6_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          778u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRevsLghtFltSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          779u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRevsLghtSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          780u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRearFogLghtAcFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          781u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRearFogLghtAcSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          782u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRearFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          783u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ISideLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          784u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved8_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          785u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRRSideLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          786u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRLSideLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          787u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IHdlmpLvlngFltSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          788u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IHdlmpLvlngCrtl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          789u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IDayTmRunngLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          790u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IDayTmRunngLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          791u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved9_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          792u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved10_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          793u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IFrtFogLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          794u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IRFrtFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          795u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILFrtFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          796u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IHdlmpLvlngSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          797u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved12_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          798u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IDircnLghtSwReq_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          799u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved11_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          800u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IFrtFogLghtFltSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          801u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved13_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          802u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved14_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          803u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_IDircnLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          804u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved15_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          805u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved16_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          806u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved17_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          807u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved18_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          808u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved19_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          809u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved20_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          810u
#define ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved21_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx          811u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_CRC_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          812u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_RC_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          813u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IDrvrDetSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          814u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IRLDoorOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          815u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved1_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          816u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IDrvrDoorOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          817u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IBntOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          818u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IVehLckSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          819u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved2_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          820u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved3_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          821u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved4_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          822u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved6_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          823u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHDircnLghtFusaWrn_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          824u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved5_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          825u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved7_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          826u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_CRC_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          827u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_RC_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          828u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved1_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          829u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrValBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          830u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrVBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          831u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved2_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          832u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved3_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          833u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved4_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          834u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved5_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          835u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_CRC_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          836u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_RC_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          837u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEVMdDisb_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          838u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTEVMode_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          839u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEmmsnTestMdPCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          840u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybTrgtSOCUprLmt_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          841u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybElecVehMdRcmnd_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          842u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybTrgtSOCLowrLmt_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          843u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IEPTEnStFail_HCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          844u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybTrgtSOCResp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          845u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTFrcEVStsDsp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          846u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved1_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          847u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTParkngPwrGennMdSts_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          848u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybLowSOCWrnng_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          849u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved2_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          850u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved3_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          851u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybParkngPwrGennTrgtSOCResp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          852u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTEVMdExitIPKDsp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          853u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybVehEnrgFlw_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          854u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTEVMdNoEntRsn_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          855u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybInfoDsp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          856u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IV2XEnEnbDspCmd_HCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          857u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTParkngPwrGennLvlSts_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          858u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTParkngPwrGennMdNoEntRsn_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          859u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved4_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          860u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IHybEPTPwrDMdSwSts_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          861u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved5_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          862u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved6_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          863u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved7_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          864u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved8_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          865u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved9_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          866u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved10_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          867u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved11_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          868u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved12_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          869u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved13_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          870u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved14_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          871u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved15_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          872u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved16_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          873u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved17_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          874u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved18_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          875u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved19_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          876u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved20_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          877u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved21_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          878u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved22_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          879u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved23_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          880u
#define IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IPEU_100ms_Group15_Reserved24_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          881u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_CRC_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          882u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_RC_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          883u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved1_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          884u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSCMUFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          885u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSWrnngInfo_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          886u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSCellVoltFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          887u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved2_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          888u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSPackTemFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          889u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSPackVoltFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          890u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSPreThrmFltInd_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          891u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved3_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          892u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved4_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          893u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved5_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          894u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved6_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          895u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group10_CRC_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          896u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group10_RC_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          897u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOfbdChrgRelaySts_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          898u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group10_Reserved1_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          899u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOfbdChrgrNgtvSktTem_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          900u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOnBdChrgrSktPstvSnsrTem_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          901u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group10_Reserved2_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          902u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOnbdChrgrSktElecLckEnable_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          903u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOnBdChrgrSktPstvSnsrTemV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          904u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOfbdChrgrNgtvSktTemV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          905u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOfbdChrgrWkup_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          906u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group10_Reserved3_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          907u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOffBdChrgrPlugOn_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          908u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOfbdRelayWeldFlt_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          909u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IIMU_Signal_status_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          910u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IVCUCtrlS2Req_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          911u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group10_Reserved4_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          912u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOfbdChrgRelayStsV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          913u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_ICstRgtnBrkLgtReq_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          914u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_ICstRgtnBrkLgtReqV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          915u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOnBdChrgrSktElecLckStaV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          916u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOnBdChrgrSktElecLckSta_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          917u
#define IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx_IOffBdChrgrPlugOnV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx          918u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_CRC_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          919u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_RC_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          920u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSHVILClsdBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          921u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSFltLvlBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          922u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSPackSOCBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          923u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSPackSOCVBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          924u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSBscStaBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          925u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved1_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          926u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSMainRelayStsBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          927u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSMainRelayReqBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          928u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved2_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          929u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved3_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          930u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_CRC_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          931u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_RC_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          932u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          933u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCDCSta_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          934u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCDCTem_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          935u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved1_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          936u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IOnBdChrgrHVILStsVal_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          937u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IPDUHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          938u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IPDUHVILSts_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          939u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IOnBdChrgrHVILStsValV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          940u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCHVILSts_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          941u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved2_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          942u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved3_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          943u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved4_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          944u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_CRC_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          945u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_RC_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          946u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved1_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          947u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrVal_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          948u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrV_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          949u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved2_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          950u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved3_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          951u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved4_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          952u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved5_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          953u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_CRC_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          954u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_RC_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          955u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved1_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          956u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved2_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          957u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IBMSWrnngInfoBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          958u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved3_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          959u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved4_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          960u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IBMSPreThrmFltIndBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          961u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved5_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          962u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved6_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          963u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved7_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          964u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_CRC_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          965u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_RC_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          966u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehDrvngMd_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          967u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          968u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_Reserved1_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          969u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehLdShedLvl_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          970u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          971u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_Reserved2_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          972u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagSwStsReqV_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          973u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagSwStsReq_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          974u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_Reserved3_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          975u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_Group03_CRC_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          976u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_Group03_RC_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          977u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_100ms_Group01_Reserved1_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          978u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_100ms_Group01_Reserved2_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          979u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_100ms_Group01_Reserved3_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          980u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_100ms_Group01_Reserved4_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          981u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_100ms_Group01_Reserved5_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          982u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_100ms_Group01_Reserved6_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          983u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBMAlrmSts_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          984u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBM_100ms_Group01_Reserved7_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          985u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBMHdwrFltSts_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          986u
#define ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx_ILVBMFltLvl_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx          987u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_CRC_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          988u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_RC_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          989u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IVCUBatPrsAlrmV_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          990u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IVCUBatPrsAlrm_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          991u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IHVEstbCond_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          992u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_Reserved1_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          993u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IVMCExtrePssMdInd_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          994u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_Reserved2_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          995u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_Reserved3_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          996u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_Reserved4_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          997u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_Reserved5_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          998u
#define IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group12_Reserved6_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx          999u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Group01_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1000u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0000_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1001u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0001_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1002u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0002_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1003u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IVCUSecyWrnngInfo_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1004u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0003_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1005u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0004_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1006u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0005_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1007u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0006_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1008u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gr_0007_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          1009u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_CRC_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1010u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_RC_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1011u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved1_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1012u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IOffBdChrgrPlugOnBkup_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1013u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved2_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1014u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved3_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1015u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved4_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1016u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved6_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1017u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IEmgyPwrdwnReq_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1018u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved5_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1019u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IOffBdChrgrPlugOnVBkup_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1020u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved7_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1021u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IOffBdPlugOnRepBkup_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1022u
#define IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx_IRZCU_100ms_Group21_Reserved8_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx          1023u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_CRC_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1024u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_RC_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1025u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_Reserved1_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1026u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IOdoPriyPrcsV_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1027u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IEPTNotReadyReq_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1028u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IClstrDspdAirbagWrnng_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1029u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_Reserved2_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1030u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_Reserved3_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1031u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IOdoPriyPrcs_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          1032u

#define COM_NUMBER_OF_MAIN_FUNCTION_ROUTE_SIGNALS  0u
#define COM_NUMBER_OF_MAIN_FUNCTION_RX             1u
#define COM_NUMBER_OF_MAIN_FUNCTION_TX             1u
#endif
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/
