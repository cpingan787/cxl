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
 *  @file               : Com_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-07-14 20:21:15
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

#define COM_RXIPDUGROUP_NUMBER                 106u

#define COM_TXIPDUGROUP_NUMBER                 35u

#define COM_IPDUGROUP_NUMBER                       2u

#define COM_RXIPDU_CALLOUT_NUMBER   34u

#define COM_RXIPDU_COUNTER_NUMBER   0u

#define COM_TXIPDU_COUNTER_NUMBER   0u

#define COM_TX_MODE_TRUE_PERIOD_NUMBER   26u

#define COM_TX_MODE_FALSE_PERIOD_NUMBER    0u

#define COM_TX_MODE_TRUE_DIRECT_NUMBER   9u

#define COM_TX_MODE_FALSE_DIRECT_NUMBER   0u

#define COM_TX_MODE_TRUE_MIXED_NUMBER    0u

#define COM_TX_MODE_FALSE_MIXED_NUMBER    0u

#define COM_TX_MODE_TRUE_DIRECT_NOREPETITION_NUMBER   0u

#define COM_TX_MODE_FALSE_DIRECT_NOREPETITION_NUMBER   0u

#define COM_TX_MODE_TRUE_MIXED_NOREPETITION_NUMBER    0u

#define COM_TX_MODE_FALSE_MIXED_NOREPETITION_NUMBER    0u

#define COM_SIGNALGROUPARRY_NUMBER  0u

#define COM_RXSIG_TIMEOUT_NUMBER                       0u

#define COM_RXSIGGRP_TIMEOUT_NUMBER                    0u

#define  COM_RXSIGNAL_INVALID_NUMBER        0u

#define  COM_TXSIGNAL_INVALID_NUMBER        0u

#define  COM_RXGRPSIG_INVALID_NUMBER        0u

#define  COM_TXGRPSIG_INVALID_NUMBER        0u

#define COM_RX_SIGNAL_8BIT_INVALIDVALUE_NUMBER    0u

#define COM_TX_SIGNAL_8BIT_INVALIDVALUE_NUMBER   0u

#define COM_RXSIGNAL_FILTERTYPE_MAX_NUMBER  0u

#define COM_TXSIGNAL_FILTERTYPE_MAX_NUMBER  0u

#define COM_RXGRPSIG_FILTERTYPE_MAX_NUMBER  0u

#define COM_TXGRPSIG_FILTERTYPE_MAX_NUMBER  0u

#define COM_DESTSIG_FILTERTYPE_MAX_NUMBER    0u

#define COM_TMCTXSIGNAL_NUMBER              0u

#define COM_TXSIG_ERROR_AND_NOTIFY_NUMBER  28u

#define COM_TXSIGGRP_ERROR_AND_NOTIFY_NUMBER  1u

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

#define Com_TxPduGroup_CONTROLLER_0_IAM                             0u
#define Com_RxPduGroup_CONTROLLER_0_IAM                             1u

#define COM_RXIPDU_NUMBER                          106u
/* ComIPduHandleId of RXPDU */
#define COM_RXPDU_COM_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx                         0u /* 0 AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx                         1u /* 1 CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                         2u /* 2 CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                         3u /* 3 CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                         4u /* 4 CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx                         5u /* 5 CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                         6u /* 6 CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx                         7u /* 7 CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx                         8u /* 8 DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx                         9u /* 9 DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx                         10u /* 10 ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                         11u /* 11 ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx                         12u /* 12 ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                         13u /* 13 ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                         14u /* 14 ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                         15u /* 15 ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx                         16u /* 16 ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                         17u /* 17 ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                         18u /* 18 ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                         19u /* 19 ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                         20u /* 20 ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx                         21u /* 21 ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                         22u /* 22 ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                         23u /* 23 ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                         24u /* 24 ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                         25u /* 25 ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                         26u /* 26 ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                         27u /* 27 ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                         28u /* 28 ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                         29u /* 29 ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                         30u /* 30 ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                         31u /* 31 ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx                         32u /* 32 ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx                         33u /* 33 ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_Event_FrS62_CONTROLLER_0_IAM_Rx                         34u /* 34 ESS_PTCANFD_Event_FrS62_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_Event_FrS63_CONTROLLER_0_IAM_Rx                         35u /* 35 ESS_PTCANFD_Event_FrS63_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                         36u /* 36 ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx                         37u /* 37 ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx                         38u /* 38 ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx                         39u /* 39 ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx                         40u /* 40 ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx                         41u /* 41 ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx                         42u /* 42 ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                         43u /* 43 ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx                         44u /* 44 FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                         45u /* 45 IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx                         46u /* 46 IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx                         47u /* 47 IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx                         48u /* 48 IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                         49u /* 49 ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                         50u /* 50 ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                         51u /* 51 ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                         52u /* 52 ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx                         53u /* 53 ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                         54u /* 54 ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx                         55u /* 55 ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                         56u /* 56 ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx                         57u /* 57 ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx                         58u /* 58 ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                         59u /* 59 ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP48_CONTROLLER_0_IAM_Rx                         60u /* 60 ICBVC_RZCUCANFD_100ms_FrP48_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP51_CONTROLLER_0_IAM_Rx                         61u /* 61 ICBVC_RZCUCANFD_100ms_FrP51_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx                         62u /* 62 ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                         63u /* 63 ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx                         64u /* 64 ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                         65u /* 65 ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx                         66u /* 66 ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx                         67u /* 67 ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                         68u /* 68 ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                         69u /* 69 ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx                         70u /* 70 ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                         71u /* 71 ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                         72u /* 72 LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                         73u /* 73 LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx                         74u /* 74 LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx                         75u /* 75 LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx                         76u /* 76 LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                         77u /* 77 LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                         78u /* 78 LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                         79u /* 79 LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx                         80u /* 80 LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                         81u /* 81 LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx                         82u /* 82 PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx                         83u /* 83 PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx                         84u /* 84 PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PICM_PTCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                         85u /* 85 PICM_PTCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PICM_PTCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx                         86u /* 86 PICM_PTCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx                         87u /* 87 PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                         88u /* 88 PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PICU_PTCANFD_200ms_FrP20_CONTROLLER_0_IAM_Rx                         89u /* 89 PICU_PTCANFD_200ms_FrP20_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_PICU_RHZCU_RHBKBCANFD_100ms_____CONTROLLER_0_IAM_Rx                         90u /* 90 PICU_RHZCU_RHBKBCANFD_100ms_____CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx                         91u /* 91 RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                         92u /* 92 RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                         93u /* 93 RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                         94u /* 94 RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx                         95u /* 95 RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                         96u /* 96 RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx                         97u /* 97 RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx                         98u /* 98 RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx                         99u /* 99 RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                         100u /* 100 SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                         101u /* 101 SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                         102u /* 102 SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx                         103u /* 103 SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                         104u /* 104 TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx */
#define COM_RXPDU_COM_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                         105u /* 105 ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx */

#define COM_TXIPDU_NUMBER                          36u

/* ComIPduHandleId of TXPDU */
#define COM_TXPDU_COM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx                         106u /* 0 DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                         107u /* 1 IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                         108u /* 2 IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                         109u /* 3 IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                         110u /* 4 IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                         111u /* 5 IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                         112u /* 6 IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                         113u /* 7 IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                         114u /* 8 IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                         115u /* 9 IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx                         116u /* 10 IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                         117u /* 11 IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx                         118u /* 12 IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                         119u /* 13 IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                         120u /* 14 IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx                         121u /* 15 IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx                         122u /* 16 IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                         123u /* 17 IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx                         124u /* 18 IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                         125u /* 19 IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                         126u /* 20 IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx                         127u /* 21 IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx                         128u /* 22 IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_COM_TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx                         129u /* 23 TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx */
#define COM_TXPDU_Com_Contained_Tx_0x377_Pdu06                         130u /* 24 IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06 */
#define COM_TXPDU_Com_Contained_Tx_0x377_Pdu07                         131u /* 25 IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07 */
#define COM_TXPDU_Com_Contained_Tx_0x377_Pdu08                         132u /* 26 IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu13                         133u /* 27 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu34                         134u /* 28 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu35                         135u /* 29 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu39                         136u /* 30 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39 */
#define COM_TXPDU_Com_Contained_Tx_0x36A_Pdu40                         137u /* 31 IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40 */
#define COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu03                         138u /* 32 IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03 */
#define COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu41                         139u /* 33 IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41 */
#define COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu57                         140u /* 34 IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57 */
#define COM_TXPDU_Com_NmUserDataPdu_IAM                         141u /* 35 PDU_COM_NMUSERDATA_IAM */

#define COM_TXSIGNALGROUP_NUMBER                   8u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx                           0u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx                           1u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                           2u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           3u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           4u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           5u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                           6u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                           7u
#define COM_RXSIGNALGROUP_NUMBER                   34u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx                           0u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                           1u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx                           2u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx                           3u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx                           4u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx                           5u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx                           6u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx                           7u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                           8u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx                           9u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx                           10u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx                           11u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx                           12u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx                           13u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx                           14u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                           15u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx                           16u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx                           17u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx                           18u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                           19u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx                           20u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx                           21u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx                           22u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                           23u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                           24u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx                           25u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx                           26u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                           27u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                           28u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx                           29u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx                           30u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx                           31u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx                           32u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                           33u

#define COM_TXSIGNAL_NUMBER                        182u

#define IDTCinfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx                               0u
#define ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               1u
#define ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               2u
#define ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               3u
#define ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               4u
#define ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               5u
#define ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               6u
#define ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               7u
#define ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx                               8u
#define ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               9u
#define ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               10u
#define ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               11u
#define ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               12u
#define ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               13u
#define ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               14u
#define ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               15u
#define ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx                               16u
#define ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               17u
#define ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               18u
#define ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               19u
#define ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               20u
#define ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               21u
#define ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               22u
#define ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               23u
#define ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx                               24u
#define ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               25u
#define ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               26u
#define ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               27u
#define ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               28u
#define ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               29u
#define ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               30u
#define ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               31u
#define ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx                               32u
#define ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               33u
#define ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               34u
#define ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               35u
#define ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               36u
#define ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               37u
#define ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               38u
#define ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               39u
#define ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx                               40u
#define ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               41u
#define ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               42u
#define ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               43u
#define ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               44u
#define ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               45u
#define ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               46u
#define ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               47u
#define ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx                               48u
#define ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               49u
#define ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               50u
#define ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               51u
#define ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               52u
#define ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               53u
#define ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               54u
#define ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               55u
#define ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx                               56u
#define ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               57u
#define ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               58u
#define ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               59u
#define ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               60u
#define ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               61u
#define ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               62u
#define ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               63u
#define ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx                               64u
#define ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               65u
#define ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               66u
#define ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               67u
#define ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               68u
#define ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               69u
#define ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               70u
#define ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               71u
#define ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx                               72u
#define ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx                               73u
#define ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx                               74u
#define ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               75u
#define ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               76u
#define ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               77u
#define ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               78u
#define ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               79u
#define ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               80u
#define ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               81u
#define ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx                               82u
#define IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx                               83u
#define IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                               84u
#define IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx                               85u
#define IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               86u
#define IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               87u
#define IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               88u
#define IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               89u
#define IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               90u
#define IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               91u
#define IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               92u
#define IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               93u
#define IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               94u
#define IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               95u
#define IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               96u
#define IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               97u
#define IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               98u
#define IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               99u
#define IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               100u
#define IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               101u
#define IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               102u
#define IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               103u
#define IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               104u
#define IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               105u
#define IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               106u
#define IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               107u
#define IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               108u
#define IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               109u
#define IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               110u
#define IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               111u
#define IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               112u
#define IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               113u
#define IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               114u
#define IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               115u
#define IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               116u
#define IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               117u
#define IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               118u
#define IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               119u
#define IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx                               120u
#define IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx                               121u
#define IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx                               122u
#define IRmtReserChrgSts_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx                               123u
#define IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx                               124u
#define IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               125u
#define IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               126u
#define IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               127u
#define IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               128u
#define IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               129u
#define IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               130u
#define IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               131u
#define IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               132u
#define IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               133u
#define IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               134u
#define IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               135u
#define IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               136u
#define IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               137u
#define IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               138u
#define IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               139u
#define IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               140u
#define IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               141u
#define IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx                               142u
#define INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               143u
#define INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               144u
#define INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               145u
#define INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               146u
#define INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               147u
#define INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               148u
#define INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx                               149u
#define IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx                               150u
#define IeCallSysSta_TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx                               151u
#define INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               152u
#define IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               153u
#define ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               154u
#define ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               155u
#define IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               156u
#define IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               157u
#define IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               158u
#define IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               159u
#define IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx                               160u
#define IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                               161u
#define IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx                               162u
#define IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               163u
#define IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               164u
#define IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               165u
#define IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               166u
#define IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               167u
#define ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               168u
#define ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               169u
#define ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               170u
#define ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               171u
#define ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               172u
#define ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               173u
#define ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               174u
#define ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               175u
#define ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               176u
#define ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               177u
#define ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               178u
#define ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               179u
#define ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx                               180u
#define IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx                               181u

#define COM_RXSIGNAL_NUMBER                        321u

#define IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx                               0u
#define IDCCurrentMaxHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               1u
#define IDCOverCurrentHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               2u
#define IDCOverCurrentLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               3u
#define IDCOverVoltHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               4u
#define IDCOverVoltLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               5u
#define IDCUnderVoltHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               6u
#define IDCUnderVoltLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               7u
#define IDCVoltFail_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx                               8u
#define IHVDCDCActvDisOverTime_CONNC____CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               9u
#define IHVDCDCDrtng_CONNCANFD_PTCANFD_CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               10u
#define IHVDCDCOverCurrProtLV_CONNCA____CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               11u
#define IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx                               12u
#define IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx                               13u
#define IDTCinfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx                               14u
#define IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx                               15u
#define IBMSPTCHeatReqDspCmd_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               16u
#define IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               17u
#define IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               18u
#define IBMSPTCHeatResp_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               19u
#define IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx                               20u
#define IBMSDschrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               21u
#define IBMSDsChrgCtrlDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx                               22u
#define IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               23u
#define IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               24u
#define IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               25u
#define IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               26u
#define IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               27u
#define IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx                               28u
#define IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               29u
#define IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               30u
#define IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               31u
#define IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx                               32u
#define IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx                               33u
#define IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                               34u
#define IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                               35u
#define IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                               36u
#define IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx                               37u
#define IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               38u
#define IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               39u
#define IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               40u
#define IBMSChrgCtrlDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               41u
#define IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx                               42u
#define IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                               43u
#define IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                               44u
#define IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx                               45u
#define IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               46u
#define IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               47u
#define IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               48u
#define IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               49u
#define IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               50u
#define IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               51u
#define IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               52u
#define IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx                               53u
#define IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               54u
#define IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               55u
#define IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               56u
#define IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               57u
#define IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               58u
#define IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               59u
#define IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx                               60u
#define IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               61u
#define IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               62u
#define IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               63u
#define IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               64u
#define IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               65u
#define IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx                               66u
#define IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               67u
#define IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               68u
#define IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               69u
#define IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               70u
#define IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               71u
#define IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               72u
#define IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               73u
#define IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               74u
#define IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               75u
#define IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               76u
#define IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               77u
#define IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               78u
#define IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               79u
#define IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               80u
#define IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx                               81u
#define IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               82u
#define ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               83u
#define ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               84u
#define ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               85u
#define ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               86u
#define ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               87u
#define ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               88u
#define ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               89u
#define ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx                               90u
#define ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               91u
#define ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               92u
#define ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               93u
#define ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               94u
#define IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               95u
#define ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               96u
#define ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               97u
#define ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               98u
#define ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx                               99u
#define ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               100u
#define ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               101u
#define IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               102u
#define ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               103u
#define ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               104u
#define ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               105u
#define ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               106u
#define ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               107u
#define ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               108u
#define ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               109u
#define ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               110u
#define ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               111u
#define ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx                               112u
#define IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               113u
#define IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               114u
#define IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               115u
#define IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               116u
#define IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               117u
#define IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               118u
#define IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               119u
#define IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               120u
#define IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               121u
#define IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               122u
#define IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               123u
#define IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               124u
#define IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx                               125u
#define IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx                               126u
#define IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx                               127u
#define IRmtBattWarmResp_ESS_ESS_PTCANFD_Event_FrS62_CONTROLLER_0_IAM_Rx                               128u
#define IRmtBattWarmCompResp_ESS_ESS_PTCANFD_Event_FrS63_CONTROLLER_0_IAM_Rx                               129u
#define IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               130u
#define IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               131u
#define IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               132u
#define IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               133u
#define IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               134u
#define IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               135u
#define IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               136u
#define IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               137u
#define IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx                               138u
#define IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx                               139u
#define IBMSPackSOCDspBkup_ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx                               140u
#define IBMSPackSOCDspVBkup_ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx                               141u
#define IBMSOfbdChrgrOtptVol_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               142u
#define IBMSOfbdChrgrOtptCrnt_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               143u
#define IBMSOfbdChrgrOtptVolV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               144u
#define IBMSOfbdChrgrOtptCrnV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               145u
#define IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx                               146u
#define IAIParkngDsp_ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                               147u
#define IAIParkngSts_ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                               148u
#define IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               149u
#define IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               150u
#define IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               151u
#define IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               152u
#define IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               153u
#define IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               154u
#define IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               155u
#define IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               156u
#define IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               157u
#define IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               158u
#define IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               159u
#define IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               160u
#define IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               161u
#define IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               162u
#define IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               163u
#define IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               164u
#define IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               165u
#define IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               166u
#define IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               167u
#define IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx                               168u
#define IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               169u
#define IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               170u
#define IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               171u
#define IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               172u
#define IRmtPsngSeatVenttCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               173u
#define IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               174u
#define IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               175u
#define IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               176u
#define IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               177u
#define IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               178u
#define IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               179u
#define IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               180u
#define IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               181u
#define IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               182u
#define IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx                               183u
#define IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               184u
#define IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               185u
#define IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               186u
#define IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx                               187u
#define IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx                               188u
#define IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                               189u
#define IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx                               190u
#define IEBSBatSOC_ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx                               191u
#define IEBSBatSOCSts_ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx                               192u
#define IEBSBatCrnt_ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx                               193u
#define IEBSBatVol_ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx                               194u
#define IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx                               195u
#define IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               196u
#define IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               197u
#define IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               198u
#define IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               199u
#define IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               200u
#define IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx                               201u
#define IDCDCVolStpt_ICBVC_RZCUCANFD_100ms_FrP48_CONTROLLER_0_IAM_Rx                               202u
#define IEnrgSplReqScene_ICBVC_RZCUCANFD_100ms_FrP51_CONTROLLER_0_IAM_Rx                               203u
#define IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               204u
#define IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               205u
#define IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               206u
#define IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               207u
#define IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               208u
#define IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx                               209u
#define IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               210u
#define ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               211u
#define IIBS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               212u
#define IPICU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               213u
#define IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               214u
#define IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               215u
#define ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               216u
#define IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               217u
#define IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               218u
#define IFVCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx                               219u
#define IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx                               220u
#define IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               221u
#define ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               222u
#define ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               223u
#define ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               224u
#define ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               225u
#define IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               226u
#define IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               227u
#define IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               228u
#define IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               229u
#define ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               230u
#define IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               231u
#define IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               232u
#define IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               233u
#define IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               234u
#define IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               235u
#define ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               236u
#define ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               237u
#define ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               238u
#define ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               239u
#define IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               240u
#define IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               241u
#define IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               242u
#define IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               243u
#define IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               244u
#define IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               245u
#define IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               246u
#define IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               247u
#define IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               248u
#define IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               249u
#define IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               250u
#define IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               251u
#define IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx                               252u
#define IDschrgTrgtSOCVal_CONNCANFD_____ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx                               253u
#define IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx                               254u
#define ITPMSIdficnLrnCm_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               255u
#define IRRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               256u
#define IRLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               257u
#define IRLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               258u
#define IFRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               259u
#define IFRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               260u
#define IRRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               261u
#define IFLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               262u
#define IFLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx                               263u
#define IFLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               264u
#define IFLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               265u
#define IFRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               266u
#define IFRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               267u
#define IRLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               268u
#define IRLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               269u
#define IRRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               270u
#define IRRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx                               271u
#define IBrkLghtFltSta_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx                               272u
#define IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx                               273u
#define IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx                               274u
#define ITPMSF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               275u
#define ITPMSTirePrsLowIO_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               276u
#define ITPMSSystemFault_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               277u
#define IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               278u
#define IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               279u
#define IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               280u
#define IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               281u
#define ITPMSFrtAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               282u
#define ITPMSRrAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx                               283u
#define IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               284u
#define IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               285u
#define IIntrusionAlrmCounter_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               286u
#define IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx                               287u
#define IPEUInvtrATem_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx                               288u
#define IPEUMotATem_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx                               289u
#define IPEUMotATemV_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx                               290u
#define IPEUInvtrATemV_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx                               291u
#define IRmtACResp_PICM_PICM_PTCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx                               292u
#define IRmtACCompResp_PICM_PICM_PTCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx                               293u
#define IACInCarTemV_PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx                               294u
#define IACFrtInCarTem_PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx                               295u
#define ICampEPTCrkAbotdRsn_PTCANFD_____PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                               296u
#define ICampEPTRunAbotdRsn_PTCANFD_____PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx                               297u
#define IV2XEnEnbResp_PICU_PTCANFD_200ms_FrP20_CONTROLLER_0_IAM_Rx                               298u
#define IACOnOffDspCmd_LHBDCANFD_CON____PICU_RHZCU_RHBKBCANFD_100ms_____CONTROLLER_0_IAM_Rx                               299u
#define IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx                               300u
#define IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               301u
#define IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               302u
#define IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               303u
#define IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx                               304u
#define IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx                               305u
#define ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx                               306u
#define ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx                               307u
#define IV2XEnEnbDspCmd_PTCANFD_CONN____RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx                               308u
#define ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx                               309u
#define IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx                               310u
#define IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx                               311u
#define ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               312u
#define ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               313u
#define ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               314u
#define ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx                               315u
#define IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               316u
#define IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               317u
#define IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               318u
#define IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               319u
#define IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx                               320u

#define COM_GW_DESTINATION_NUM                     0u

#define COM_TXGROUPSIGNAL_NUMBER                   49u

#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_CRC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          182u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_RC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          183u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_Reserved1_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          184u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchRTK_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          185u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IHeadingSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          186u
#define IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IPitchSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx          187u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_CRC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          188u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_RC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          189u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_Reserved1_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          190u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          191u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_ILatitudeRTK_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          192u
#define IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_Reserved2_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx          193u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IAltSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          194u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILonSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          195u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_ILatSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          196u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_Reserved1_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          197u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_RC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          198u
#define IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_CRC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx          199u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTimeH_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          200u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSSeq_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          201u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IFixType_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          202u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_Reserved_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          203u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_RC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          204u
#define IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_CRC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          205u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved2          206u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          207u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved3          208u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IVdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          209u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved4          210u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IPdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          211u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved1          212u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_RC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          213u
#define IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_CRC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          214u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_PDU35_RC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          215u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSF9HCounter_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          216u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IGNSSUTCTime_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          217u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group35_Reserved1          218u
#define IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_PDU35_CRC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          219u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_Reserved2          220u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IHeadingRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          221u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IAltitudeRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          222u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_Reserved1          223u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_RC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          224u
#define IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_CRC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx          225u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_Reserved2          226u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_ILongitudeRTK_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx          227u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_Reserved1          228u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_RC          229u
#define IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_CRC_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx          230u
#define COM_RXGROUPSIGNAL_NUMBER                   614u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_CRC_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          321u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_RC_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          322u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          323u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCDCSta_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          324u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCDCTem_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          325u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved1_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          326u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IOnBdChrgrHVILStsVal_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          327u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IPDUHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          328u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IPDUHVILSts_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          329u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IOnBdChrgrHVILStsValV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          330u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_IHVDCHVILSts_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          331u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved2_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          332u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved3_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          333u
#define ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group02_Reserved4_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx          334u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group03_CRC_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          335u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group03_RC_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          336u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group03_Reserved1_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          337u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCHVSideCrnt_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          338u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCHVSideCrntV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          339u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCHVSideVolV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          340u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLVSideVolV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          341u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLVSideCrntV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          342u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLVSideStptFdbkV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          343u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCHVSideVol_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          344u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group03_Reserved3_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          345u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCOverHtd_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          346u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLdRatioV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          347u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group03_Reserved2_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          348u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLVSideStptFdbk_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          349u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLdRatio_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          350u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLVSideCrnt_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          351u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_IHVDCDCLVSideVol_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          352u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group03_Reserved4_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          353u
#define ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group03_Reserved5_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx          354u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_CRC_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          355u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_RC_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          356u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCUOnbdChrgrPlugOnV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          357u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved1_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          358u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrCtrlPilotPWMSts_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          359u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          360u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrSts_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          361u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnbdChrgrAltrCrntInptHVCrntLmt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          362u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved3_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          363u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnbdChrgrOtptCrntV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          364u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnbdChrgrOpngMd_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          365u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved2_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          366u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrAltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          367u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrAltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          368u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnbdChrgrOtptCrntVal_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          369u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved4_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          370u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrOtptVolV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          371u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnbdChrgrOtptVolVal_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          372u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrL1AltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          373u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrL1AltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          374u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrL2AltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          375u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrL2AltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          376u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrL3AltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          377u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrL3AltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          378u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCUActiveWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          379u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCUOnbdChrgrMaxChrgPwr_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          380u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved5_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          381u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCUOnbdChrgrPlugOn_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          382u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved6_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          383u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCUOnbdChrgrSpRsn_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          384u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved7_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          385u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved9_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          386u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrLastWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          387u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved8_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          388u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved10_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          389u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_IOnBdChrgrCtrlPilotPWMDuty_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          390u
#define ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group07_Reserved11_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx          391u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_CRC_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          392u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_RC_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          393u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUOnBdChrgrSktElecLckSta_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          394u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_IAirCtrlrHVILClsd_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          395u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUOfbdChrgrNgtvSktTem_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          396u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUClntFlowReq_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          397u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUOnBdChrgrSktPstvSnsrTem_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          398u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_IHVDCDCClntPumpPWMReq_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          399u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_IAirCtrlrHVILClsdV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          400u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_IESSPTCHVILSts_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          401u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUOnbdChrgrSktEleccLckEnable_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          402u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUEleccLckCtrlResp_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          403u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUEleccLckCtrlDspCmd_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          404u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_IHVDCDCIntnlFlr_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          405u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_IHVDCDCHdwrFlr_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          406u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_IESSPTCHVILStsV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          407u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUOfbdChrgrNgtvSktTemV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          408u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUOnBdChrgrSktPstvSnsrTemV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          409u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCUOnBdChrgrSktElecLckStaV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          410u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved1_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          411u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved2_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          412u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved3_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          413u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved4_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          414u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved5_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          415u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved6_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          416u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved7_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          417u
#define ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx_ICCU_100ms_Group11_Reserved8_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx          418u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_CRC_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          419u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_RC_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          420u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnActuStdyStaToqV_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          421u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnRunA_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          422u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnSpdSts_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          423u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnSpd_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          424u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_Reserved1_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          425u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IEnActuStdyStaToq_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          426u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_Reserved2_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          427u
#define IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx_IECM_010ms_Group00_Reserved3_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx          428u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_CRC_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          429u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_RC_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          430u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved1_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          431u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSCMUFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          432u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSWrnngInfo_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          433u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSCellVoltFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          434u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved2_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          435u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSPackTemFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          436u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSPackVoltFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          437u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IBMSPreThrmFltInd_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          438u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved3_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          439u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved4_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          440u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved5_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          441u
#define IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx_IESS_100ms_Group20_Reserved6_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx          442u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_CRC_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          443u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_RC_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          444u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved1_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          445u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrVal_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          446u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrV_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          447u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved2_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          448u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved3_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          449u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved4_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          450u
#define IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IESS_100ms_Group32_Reserved5_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx          451u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IESS_100ms_Group58_CRC_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          452u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IESS_100ms_Group58_RC_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          453u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgrSktVolV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          454u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgrPstvSktTemV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          455u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOffBdChrgrPlugOn_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          456u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgrPstvSktTem_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          457u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOnbdChrgrSktNgtvSnsrTem_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          458u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgrSktVol_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          459u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IESS_100ms_Group58_Reserved2_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          460u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOnbdChrgrSktNgtvSnsrTemV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          461u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IBMSOffBdChrgrPlugOnV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          462u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IESS_100ms_Group58_Reserved1_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          463u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IESS_100ms_Group58_Reserved3_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          464u
#define IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx_IESS_100ms_Group58_Reserved4_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx          465u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IESS_20ms_Group01_CRC_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          466u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IESS_20ms_Group01_RC_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          467u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMinVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          468u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMaxVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          469u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackVolV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          470u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackCrntV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          471u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackCrnt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          472u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSPackVol_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          473u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMaxVolLmt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          474u
#define IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IBMSMinVolLmt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          475u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_CRC_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          476u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_RC_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          477u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_Reserved1_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          478u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSHVReq_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          479u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSBscSta_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          480u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSFltLvl_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          481u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSPtIsltnRstcV_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          482u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_Reserved2_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          483u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSMainRelaySts_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          484u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSHVILClsd_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          485u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_Reserved3_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          486u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgRelayAdh_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          487u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IESS_50ms_Group14_Reserved4_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          488u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSKeepSysAwkScene_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          489u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSPtIsltnRstc_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          490u
#define IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx_IBMSHVILSts_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx          491u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_CRC_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          492u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_RC_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          493u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSHVILClsdBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          494u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved1_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          495u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSPackSOCBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          496u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSPackSOCVBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          497u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved2_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          498u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved3_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          499u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IBMSMainRelayStsBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          500u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved4_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          501u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved5_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          502u
#define IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx_IESS_100ms_Group23_Reserved6_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx          503u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_CRC_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          504u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_RC_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          505u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved1_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          506u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved2_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          507u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IBMSWrnngInfoBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          508u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved3_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          509u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved4_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          510u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IBMSPreThrmFltIndBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          511u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved5_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          512u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved6_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          513u
#define IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx_IESS_100ms_Group27_Reserved7_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx          514u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_CRC_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          515u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_RC_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          516u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved1_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          517u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrValBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          518u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrVBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          519u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved2_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          520u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved3_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          521u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved4_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          522u
#define IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx_IESS_100ms_Group33_Reserved5_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx          523u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IESS_100ms_Group59_CRC_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          524u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IESS_100ms_Group59_RC_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          525u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgrPstvSktTemVBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          526u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IRdundtHVCntarCmdSts_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          527u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgrPstvSktTemBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          528u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IBMSOnbdChrgrSktNgtvSnsrTemBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          529u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IRdundtHVCntarShtdwnReq_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          530u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IRdundtHVBatFltSveritSts_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          531u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IRdundtHVAIsltnRstcSts_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          532u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IBMSOffBdChrgrPlugOnBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          533u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IESS_100ms_Group59_Reserved1_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          534u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IRdundtHVCntarCmdStsV_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          535u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IRdundtHVBatFltSveritStsV_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          536u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IBMSOnbdChrgrSktNgtvSnsrTemV____IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          537u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IBMSOffBdChrgrPlugOnVBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          538u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IBMSOfbdChrgrWkupBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          539u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IESS_100ms_Group59_Reserved2_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          540u
#define IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx_IESS_100ms_Group59_Reserved3_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx          541u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_CRC_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          542u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_RC_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          543u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IKeepPwrRsnFVCM_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          544u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_PwrWinLazyMdCtrlReq_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          545u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_ITLRTrafficLightsRightCircleDsp_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          546u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_ITLRTrafficLightsLeftCircleDsp_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          547u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_ITLRTrafficLightsCircleDsp_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          548u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved1_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          549u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IADASLaunchTelematicsCall_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          550u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved2_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          551u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved3_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          552u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved4_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          553u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved5_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          554u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved6_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          555u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved7_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          556u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved8_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          557u
#define IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx_IFVCM_50ms_Group03_Reserved9_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx          558u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_CRC_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          559u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_RC_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          560u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_Reserved2_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          561u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IBrkFltAlrm_GB_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          562u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_Reserved1_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          563u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IBrkFrc_GB_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          564u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IDistRCAvgDrvnSrc_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          565u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IDistRCAvgDrvnRstOcd_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          566u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_Reserved3_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          567u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IDistRCAvgDrvn_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          568u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_Reserved4_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          569u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IDistRCAvgDrvnV_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          570u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_Reserved5_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          571u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_Reserved6_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          572u
#define IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx_IIBS_100ms_Group15_Reserved7_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx          573u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_CRC_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          574u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_RC_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          575u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved1_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          576u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IBrkPdlPos_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          577u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved2_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          578u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IBrkSysBrkLghtsReqd_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          579u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IBrkPdlPosV_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          580u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved3_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          581u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved4_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          582u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved5_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          583u
#define IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx_IIBS_10ms_Group04_Reserved6_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx          584u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group07_CRC_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          585u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group07_RC_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          586u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IHDCSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          587u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IABSIO_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          588u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IVSESysA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          589u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysYlwBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          590u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IVSESts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          591u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IVSEMd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          592u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMultColBrkEnbA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          593u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEBDFaultSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          594u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSOpngSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          595u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSOpngMd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          596u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysHillStAstAvlbl_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          597u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IRgtvBrkFnFltSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          598u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMSRF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          599u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutoHoldSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          600u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutoHoldMsg_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          601u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEBDA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          602u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IRgtvBrkFnSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          603u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSEnbd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          604u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IHBAActiveSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          605u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ITCSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          606u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEnDragToqRducnA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          607u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IABSF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          608u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IABSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          609u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IHBAValidSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          610u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMSRA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          611u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEmgcBrkAV_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          612u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IEmgcBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          613u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysRedBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          614u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IBrkSysHillStAstSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          615u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAVHSigPdlSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          616u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IAutoHoldMdSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          617u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_ISoftSpSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          618u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMulColBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          619u
#define IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx_IMulColBrkAvlblySts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx          620u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group11_CRC_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          621u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group11_RC_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          622u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IIBS_20ms_Group11_Reserved1_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          623u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgNonDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          624u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          625u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          626u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgDrvn_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          627u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          628u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgNonDrvn_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          629u
#define IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgDrvnSrc_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx          630u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group19_CRC_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          631u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group19_RC_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          632u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IRgnLvReqFICMV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          633u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IRgnLvReqFICM_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          634u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_ILVBatChrgReqRaw_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          635u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_ILVBatChrgReqInhbt_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          636u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_ILVBatEnrgSufct_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          637u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_ILVBatEnrgLow_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          638u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group19_Reserved1_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          639u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEnrgSplReqV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          640u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEnrgSplReq_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          641u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IPMDCSta_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          642u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEPMOprtMd_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          643u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group19_Reserved2_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          644u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IVehEnrgRdyLvlV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          645u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IVehEnrgRdyLvl_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          646u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEPMCurEstdCapct_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          647u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEPMMaxEstdCapct_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          648u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group19_Reserved3_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          649u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEPTToqCustSetngReqV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          650u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEPTToqCustSetngReq_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          651u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_ILVBatSelfWakeupFlg_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          652u
#define IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx_IEnrgSplReqRaw_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx          653u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_CRC_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          654u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_RC_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          655u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehDrvngMd_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          656u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          657u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_Reserved1_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          658u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehLdShedLvl_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          659u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          660u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_Reserved2_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          661u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagSwStsReqV_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          662u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagSwStsReq_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          663u
#define IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IICBVC_100ms_Group80_Reserved3_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx          664u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_CRC_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          665u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_RC_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          666u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_Reserved2_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          667u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IOdoPriyPrcsV_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          668u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IEPTNotReadyReq_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          669u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_Reserved1_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          670u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_Reserved3_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          671u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IICBVC_200ms_Group79_Reserved4_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          672u
#define IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx_IOdoPriyPrcs_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx          673u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_CRC_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          674u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_RC_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          675u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IAMRPrtensonReq_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          676u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved2_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          677u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVolMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          678u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved1_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          679u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved3_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          680u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          681u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVolV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          682u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysPwrMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          683u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          684u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          685u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          686u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVol_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          687u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IPwrMdMstrRunCrkA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          688u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysPwrMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          689u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IPwrMdMstrAccryA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          690u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysOpnlMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          691u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IICBVC_20ms_Group03_Reserved4_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          692u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IBPMMstrAvlbly_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          693u
#define IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_ISysVolMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx          694u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_CRC_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          695u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_RC_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          696u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUFltLvlWarn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          697u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUDrvMd_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          698u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUExtdShiftrFlr_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          699u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrOpngRmndr_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          700u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IKeyAuthResp_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          701u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          702u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReqV_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          703u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_Reserved1_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          704u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IDigKeyAuthReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          705u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrLvrRawPosn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          706u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReqVEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          707u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_Reserved2_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          708u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUParkLckReqEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          709u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrPosnInvsn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          710u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrLvrPosn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          711u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IDrvrReqParkBtn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          712u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUShiftrLvrPosnLtchActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          713u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ILHZCU_10ms_Group01_Reserved3_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          714u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUDrvrIntrvnActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          715u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_ISCUAPAUnderCtrlActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          716u
#define ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IDigKeyPEValidReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          717u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_CRC_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          718u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_RC_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          719u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IDrvrDetSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          720u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IRLDoorOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          721u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved1_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          722u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IDrvrDoorOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          723u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IBntOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          724u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_IVehLckSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          725u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved2_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          726u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved3_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          727u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved4_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          728u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved6_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          729u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHDircnLghtFusaWrn_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          730u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved5_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          731u
#define ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group06_Reserved7_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx          732u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_CRC_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          733u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_RC_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          734u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotBSpdSts_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          735u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotASpdSts_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          736u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotADampTrqCmdd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          737u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotASpd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          738u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotBDampTrqCmdd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          739u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotBSpd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          740u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotAToqAch_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          741u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotBToqAch_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          742u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotASpdV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          743u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_Reserved1_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          744u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotBToqAchV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          745u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotBSpdV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          746u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEUMotAToqAchV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          747u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_Reserved2_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          748u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_Reserved3_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          749u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_Reserved4_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          750u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_Reserved5_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          751u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_Reserved6_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          752u
#define IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx_IPEU_10ms_Group25_Reserved7_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx          753u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_CRC_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          754u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_RC_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          755u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrBDCVltV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          756u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrBDCCrntV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          757u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrADCVltV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          758u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrADCCrntV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          759u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrADCCrnt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          760u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrADCVlt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          761u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrBDCCrnt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          762u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUInvtrBDCVlt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          763u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotAMaxToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          764u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotAMaxToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          765u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotAMinToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          766u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotAMinToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          767u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotBMaxToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          768u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotBMaxToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          769u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotBMinToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          770u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEUMotBMinToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          771u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved1_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          772u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved2_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          773u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved3_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          774u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved4_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          775u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved5_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          776u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved6_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          777u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved7_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          778u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved8_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          779u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved9_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          780u
#define IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx_IPEU_50ms_Group28_Reserved10_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx          781u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_CRC_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          782u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_RC_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          783u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_Reserved1_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          784u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IEPTCCTrgtSpd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          785u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IEPTSysPwr_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          786u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IEPTSysPwrPcnt_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          787u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybLVOtptPwrLmt_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          788u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybLVStptCmdd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          789u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IEPTFlt_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          790u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybDrvrItndHVBatSOCAch_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          791u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybHVCircuitFltIO_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          792u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybVehSysMd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          793u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybMotBRsovrOfstLrnEnblReq_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          794u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybMotARsovrOfstLrnEnblReq_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          795u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybVehOpnlMdRVM_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          796u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybVehFrtTMStsRVM_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          797u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IEPTCCFltPrst_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          798u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybLVEnbReqd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          799u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybLVGenrSysF_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          800u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybRgnLvReqDisb_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          801u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_ITMFltIO_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          802u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IHybVehSysStsInd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          803u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_Reserved2_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          804u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_ICampEPTCrkAbotd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          805u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_ICampEPTRdy_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          806u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IEPTCCA_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          807u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IEPTCCEnbd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          808u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_Reserved3_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          809u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_ICampEPTRunAbotd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          810u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_Reserved4_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          811u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_Reserved5_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          812u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_Reserved6_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          813u
#define IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx_IPICU_100ms_Group29_Reserved7_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx          814u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro____IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          815u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__1_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          816u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__2_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          817u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__3_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          818u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IVCUSecyWrnngInfo_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          819u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__4_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          820u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__5_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          821u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__6_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          822u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__7_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          823u
#define IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx_IIMCU_100ms_VCUSecyWrnng_Gro__8_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx          824u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_CRC_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          825u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_RC_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          826u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved1_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          827u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTStCmdOn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          828u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTAccelActuPosV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          829u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved2_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          830u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTBrkPdlDscrtInptStsV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          831u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTBrkPdlDscrtInptSts_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          832u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRVSEPTRdy_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          833u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTCrkAbotd_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          834u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved3_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          835u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTHVDCDCMdReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          836u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTAccelActuPos_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          837u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IEPTAccelEfctvPos_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          838u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved4_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          839u
#define IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group01_Reserved5_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx          840u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_CRC_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          841u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_RC_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          842u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IPtHVCntarReq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          843u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_ITotActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          844u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRrAxleActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          845u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IEPTSecyAxleRgtvCstdnToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          846u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_Reserved1_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          847u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IDrvrReqFrtAxleWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          848u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IEPTSecyAxleRgtvCstdnToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          849u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IEPTSecyAxleRgtvBrkFlt_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          850u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_Reserved2_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          851u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IEPTSecyAxleRgtvBrkActuToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          852u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IEPTSecyAxleRgtvBrkToqLmt_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          853u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_Reserved3_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          854u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_Reserved4_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          855u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_Reserved6_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          856u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IFrtAxleActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          857u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IDrvrReqRrAxleWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          858u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_Reserved5_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          859u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IDrvrReqFrtAxleWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          860u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IDrvrReqRrAxleWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          861u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IFrtAxleActuWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          862u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRZCU_10ms_Group05_Reserved14_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          863u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_IRrAxleActuWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          864u
#define IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx_ITotActuWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx          865u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_CRC_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          866u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_RC_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          867u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrEstdGearV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          868u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved1_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          869u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          870u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrShftLvrPosV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          871u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrEstdGear_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          872u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrShftLvrPos_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          873u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved2_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          874u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrEngdStaV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          875u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_ITrEngdSta_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          876u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved3_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          877u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved4_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          878u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved5_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          879u
#define IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IRZCU_20ms_Group06_Reserved6_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx          880u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_CRC_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          881u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_RC_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          882u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved1_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          883u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagSysFltForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          884u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagDplInvsneForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          885u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IAirbagDplForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          886u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSbltAudRmndr_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          887u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnFrtPsngSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          888u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnDrvrSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          889u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved2_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          890u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IDrvrSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          891u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IDrvrSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          892u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          893u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          894u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          895u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          896u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowLSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          897u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowMidSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          898u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowLSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          899u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          900u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          901u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowRSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          902u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          903u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnSecRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          904u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowRSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          905u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          906u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          907u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowMidSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          908u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          909u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFasnThrdRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          910u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFrtPsngSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          911u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_IFrtPsngSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          912u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved3_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          913u
#define ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group01_Reserved4_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx          914u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_CRC_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          915u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_RC_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          916u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagSysFltIndCmd_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          917u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagDplInvsn_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          918u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagDpl_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          919u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved1_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          920u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IPedtrnProtnSysDplStsV_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          921u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IPedtrnProtnSysDplSts_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          922u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IPedtrnProtnSysIndrCmd_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          923u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IAirbagSysFlt_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          924u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagSwSts_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          925u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved2_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          926u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved3_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          927u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved4_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          928u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved5_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          929u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagIndReq_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          930u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagEnbIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          931u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IFrtPsngAirbagDsblIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          932u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_ISDM_20ms_Group02_Reserved6_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          933u
#define ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx_IVehCrshTyp_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx          934u

#define COM_NUMBER_OF_MAIN_FUNCTION_ROUTE_SIGNALS  0u
#define COM_NUMBER_OF_MAIN_FUNCTION_RX             1u
#define COM_NUMBER_OF_MAIN_FUNCTION_TX             1u
#endif
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/
