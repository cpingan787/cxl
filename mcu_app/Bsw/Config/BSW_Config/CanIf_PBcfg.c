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
 *  @file               : CanIf_PBcfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-21 19:15:01
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "CanIf_Internal.h"
#include "PduR_CanIf.h"
#include "CanTp_Cbk.h"
#include "CanTp_PBcfg.h"
#include "CanNm_Cbk.h"
#include "CanTSyn_Cbk.h"

/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
static CONST(PduIdType, CANIF_PBCFG_CONST) CanIf_HrhRxPduRef[] =
{
    CANIF_RXPDU_CANIF_IAM_NM_RxPdu_IAM_NM_RxPdu, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_RX_PDU_CANTSYNC, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CANIF_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx, /* CanifHrh_0 */
    CANIF_RXPDU_CanIf_phy_rx_0x711, /* CanifHrh_0 */
    CANIF_RXPDU_CanIf_fun_rx_0x7df, /* CanifHrh_0 */
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
static CONST(CanIfHrhCfgType,CANIF_PBCFG_CONST) CanIf_HrhCfgData[CANIF_HRH_NUMBER] =
{
    {
        CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM,

        0u,
        122u,
        CANIF_BASIC_CAN,

        &CanIf_HrhRxPduRef[0],

    },
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
static CONST(CanIfHthCfgType,CANIF_PBCFG_CONST) CanIf_HthCfgData[CANIF_HTH_NUMBER] =
{
    {
        CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM,
        2u,
        CANIF_BASIC_CAN,
    },
    {
        CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM,
        3u,
        CANIF_BASIC_CAN,
    },
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
static CONST(CanIfRxCanIdRangeRefType,CANIF_CONST) CanIf_RxCanIdRange[] =
{
    {
        0x480u,
        0x4ffu,
    },
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
CanIfRxPduUserRxIndicationNameApiType CanIf_UpRxIndicationArray[CANIF_RXINDICATION_FUNC_NUMBER] =
/* PRQA S 1533 -- */ /* VL_QAC_OneRefSymbol */
{
        &PduR_CanIfRxIndication,
        &CanTp_RxIndication,
        &CanNm_RxIndication,
        &CanTSyn_RxIndication,
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
static CONST(CanIf_RxPduConfigType,CANIF_PBCFG_CONST) CanIf_RxPduConfigData[CANIF_RXPDU_NUMBER] =
{
    {
        /*0  CANIF_RXPDU_CANIF_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx  53*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x35u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*1  CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx  54*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        48u,  /* CanIfRxPduDlc */
        0x36u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*2  CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx  59*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        48u,  /* CanIfRxPduDlc */
        0x3bu,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*3  CANIF_RXPDU_CANIF_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx  60*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3cu,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*4  CANIF_RXPDU_CANIF_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  81*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x51u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*5  CANIF_RXPDU_CANIF_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  87*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x57u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*6  CANIF_RXPDU_CANIF_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx  90*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x5au,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*7  CANIF_RXPDU_CANIF_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx  106*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x6au,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*8  CANIF_RXPDU_CANIF_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  132*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x84u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*9  CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  157*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x9du,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*10  CANIF_RXPDU_CANIF_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  180*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0xb4u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*11  CANIF_RXPDU_CANIF_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  184*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0xb8u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*12  CANIF_RXPDU_CANIF_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx  212*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0xd4u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*13  CANIF_RXPDU_CANIF_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx  214*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0xd6u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*14  CANIF_RXPDU_CANIF_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx  226*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0xe2u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*15  CANIF_RXPDU_CANIF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx  237*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0xedu,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*16  CANIF_RXPDU_CANIF_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  247*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        12u,  /* CanIfRxPduDlc */
        0xf7u,  /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*17  CANIF_RXPDU_CANIF_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  300*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x12cu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*18  CANIF_RXPDU_CANIF_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  304*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x130u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*19  CANIF_RXPDU_CANIF_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx  314*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x13au, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*20  CANIF_RXPDU_CANIF_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx  344*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        12u,  /* CanIfRxPduDlc */
        0x158u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*21  CANIF_RXPDU_CANIF_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  355*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x163u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*22  CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx  361*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x169u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*23  CANIF_RXPDU_CANIF_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  380*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x17cu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*24  CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  382*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x17eu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*25  CANIF_RXPDU_CANIF_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  391*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x187u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*26  CANIF_RXPDU_CANIF_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  404*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x194u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*27  CANIF_RXPDU_CANIF_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  423*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x1a7u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*28  CANIF_RXPDU_CANIF_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  424*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x1a8u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*29  CANIF_RXPDU_CANIF_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  425*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x1a9u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*30  CANIF_RXPDU_CANIF_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx  457*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x1c9u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*31  CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  497*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x1f1u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*32  CANIF_RXPDU_CANIF_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx  512*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x200u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*33  CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  529*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x211u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*34  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  536*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x218u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*35  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  548*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x224u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*36  CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  549*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x225u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*37  CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx  551*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x227u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*38  CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx  552*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x228u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*39  CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx  553*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x229u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*40  CANIF_RXPDU_CANIF_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx  554*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x22au, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*41  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx  559*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x22fu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*42  CANIF_RXPDU_CANIF_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx  564*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x234u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*43  CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx  566*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x236u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*44  CANIF_RXPDU_CANIF_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  638*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        20u,  /* CanIfRxPduDlc */
        0x27eu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*45  CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  652*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x28cu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*46  CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  726*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x2d6u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*47  CANIF_RXPDU_CANIF_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx  735*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x2dfu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*48  CANIF_RXPDU_CANIF_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx  738*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x2e2u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*49  CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx  758*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x2f6u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*50  CANIF_RXPDU_CANIF_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  760*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        32u,  /* CanIfRxPduDlc */
        0x2f8u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*51  CANIF_RXPDU_CANIF_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx  765*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        32u,  /* CanIfRxPduDlc */
        0x2fdu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*52  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx  770*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x302u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*53  CANIF_RXPDU_CANIF_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx  771*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x303u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*54  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx  775*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x307u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*55  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  776*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x308u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*56  CANIF_RXPDU_CANIF_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  777*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x309u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*57  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx  782*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x30eu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*58  CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  785*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        20u,  /* CanIfRxPduDlc */
        0x311u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*59  CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  786*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x312u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*60  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx  788*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x314u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*61  CANIF_RXPDU_CANIF_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx  790*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x316u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*62  CANIF_RXPDU_CANIF_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  791*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x317u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*63  CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx  812*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x32cu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*64  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  814*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x32eu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*65  CANIF_RXPDU_CANIF_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  817*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x331u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*66  CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  855*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x357u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*67  CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  857*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x359u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*68  CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx  872*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x368u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*69  CANIF_RXPDU_CANIF_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  879*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x36fu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*70  CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx  892*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x37cu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*71  CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  894*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x37eu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*72  CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx  895*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x37fu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*73  CANIF_RXPDU_CANIF_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  900*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x384u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*74  CANIF_RXPDU_CANIF_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx  902*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        24u,  /* CanIfRxPduDlc */
        0x386u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*75  CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx  904*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x388u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*76  CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  907*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x38bu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*77  CANIF_RXPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx  919*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x397u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*78  CANIF_RXPDU_CANIF_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx  921*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        20u,  /* CanIfRxPduDlc */
        0x399u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*79  CANIF_RXPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  962*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3c2u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*80  CANIF_RXPDU_CANIF_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  963*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3c3u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*81  CANIF_RXPDU_CANIF_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx  971*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3cbu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*82  CANIF_RXPDU_CANIF_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  980*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3d4u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*83  CANIF_RXPDU_CANIF_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx  1008*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3f0u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*84  CANIF_RXPDU_CANIF_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx  1009*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        32u,  /* CanIfRxPduDlc */
        0x3f1u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*85  CANIF_RXPDU_CANIF_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  1013*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3f5u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*86  CANIF_RXPDU_CANIF_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  1015*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x3f7u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*87  CANIF_RXPDU_CANIF_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx  1040*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        20u,  /* CanIfRxPduDlc */
        0x410u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*88  CANIF_RXPDU_CANIF_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx  1045*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x415u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*89  CANIF_RXPDU_CANIF_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx  1046*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x416u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*90  CANIF_RXPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx  1105*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        32u,  /* CanIfRxPduDlc */
        0x451u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*91  CANIF_RXPDU_CANIF_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx  1108*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x454u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*92  CANIF_RXPDU_CANIF_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  1109*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x455u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*93  CANIF_RXPDU_CANIF_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx  1112*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        12u,  /* CanIfRxPduDlc */
        0x458u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*94  CANIF_RXPDU_CANIF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx  1150*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x47eu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*95  CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  1151*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x47fu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*96  CANIF_RXPDU_CANIF_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx  1287*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        20u,  /* CanIfRxPduDlc */
        0x507u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*97  CANIF_RXPDU_CANIF_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx  1288*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x508u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*98  CANIF_RXPDU_CANIF_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx  1289*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x509u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*99  CANIF_RXPDU_CANIF_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx  1329*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x531u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*100  CANIF_RXPDU_CANIF_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx  1340*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x53cu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*101  CANIF_RXPDU_CANIF_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx  1345*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x541u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*102  CANIF_RXPDU_CANIF_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx  1389*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x56du, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*103  CANIF_RXPDU_CANIF_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx  1391*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x56fu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*104  CANIF_RXPDU_CANIF_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx  1393*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx, /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x571u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*105  CANIF_RXPDU_CANIF_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx  1424*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x590u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*106  CANIF_RXPDU_CANIF_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx  1526*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x5f6u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*107  CANIF_RXPDU_CANIF_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx  1530*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x5fau, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*108  CANIF_RXPDU_CANIF_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx  1531*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        16u,  /* CanIfRxPduDlc */
        0x5fbu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*109  CANIF_RXPDU_CANIF_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx  1558*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        20u,  /* CanIfRxPduDlc */
        0x616u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*110  CANIF_RXPDU_CANIF_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx  1585*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x631u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*111  CANIF_RXPDU_CANIF_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx  1592*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        20u,  /* CanIfRxPduDlc */
        0x638u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*112  CANIF_RXPDU_CANIF_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx  1643*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x66bu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*113  CANIF_RXPDU_CANIF_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx  1721*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        64u,  /* CanIfRxPduDlc */
        0x6b9u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*114  CANIF_RXPDU_CANIF_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx  1792*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x700u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*115  CANIF_RXPDU_CANIF_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx  1795*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x703u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*116  CANIF_RXPDU_CANIF_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx  1803*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx,   /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x70bu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*117  CANIF_RXPDU_CANIF_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx  1804*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        0,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        PDUR_SRCPDU_CANIF_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x70cu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*118  CANIF_RXPDU_CanIf_phy_rx_0x711  1809*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */
        FALSE,    /* CanIfRxPduDataLengthCheck */

        1,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        CANTP_CanIf_phy_rx_0x711, /* CanIfUpPduId */

        64u,  /* CanIfRxPduDlc */
        0x711u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*119  CANIF_RXPDU_CanIf_fun_rx_0x7df  2015*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */
        FALSE,    /* CanIfRxPduDataLengthCheck */

        1,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        CANTP_CanIf_fun_rx_0x7df, /* CanIfUpPduId */

        64u,  /* CanIfRxPduDlc */
        0x7dfu, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
    {
        /*120  CANIF_RXPDU_CANIF_IAM_NM_RxPdu_IAM_NM_RxPdu  null*/
        TRUE,   /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        2,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        CanNmConf_CanNmRxPdu_CanNmRx_IAM_NM_RxPdu,    /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x0u,   /* CanIfRxPduCanIdMasked */
        0x0u,   /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */

        &CanIf_RxCanIdRange[0],   /* CanIfRxCanIdRangeRef */
},
    {
        /*121  CANIF_RXPDU_RX_PDU_CANTSYNC  1536*/
        FALSE,  /* CanIfRxPduForNM */
        FALSE,  /* RxMetaDataEnable */

        TRUE, /* CanIfRxPduDataLengthCheck */

        3,     /* CanIfUpRxIndicationApiIndex */
        CANIF_HOH0_HRH_0, /* CanIfRxPduHrhId */
        CANTSYN_RX_PDU_CANTSYNC,  /* CanIfUpPduId */

        8u,   /* CanIfRxPduDlc */
        0x600u, /* CanIfRxPduCanIdMasked */
        0x7ffu, /* CanIfRxPduCanIdMask */
        CANIF_RX_STANDARD_FD_CAN,   /* CanIfRxPduCanIdType */
        NULL_PTR, /* CanIfRxCanIdRangeRef */
},
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
CanIfTxPduUserTxConfirmationNameApiType CanIf_UpTxConfirmationArray[CANIF_TXCONFIRMATION_FUNC_NUMBER] =
/* PRQA S 1533 -- */ /* VL_QAC_OneRefSymbol */
{
        &CanTp_TxConfirmation,
        &CanNm_TxConfirmation,
        &PduR_CanIfTxConfirmation,
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
static CONST(CanIf_TxPduConfigType,CANIF_PBCFG_CONST) CanIf_TxPduConfigData[CANIF_TXPDU_NUMBER] =
{
    {
        /* 0  CANIF_TXPDU_CANIF_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        0,

        0x709u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 1  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        1,

        0x567u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 2  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        2,

        0x568u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 3  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        3,

        0x569u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 4  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        4,

        0x56au,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 5  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        5,

        0x56bu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 6  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        6,

        0x56cu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 7  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        7,

        0x564u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 8  CANIF_TXPDU_CANIF_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        8,

        0x32bu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 9  CANIF_TXPDU_CANIF_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        9,

        0x41du,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 10  CANIF_TXPDU_CANIF_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        10,

        0x46au,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 11  CANIF_TXPDU_CANIF_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx */

        FALSE,
        20u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        11,

        0x576u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 12  CANIF_TXPDU_CANIF_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        12,

        0x54eu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 13  CANIF_TXPDU_CANIF_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx */

        FALSE,
        32u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        13,

        0x2bcu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 14  CANIF_TXPDU_CANIF_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx */

        FALSE,
        16u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        14,

        0x59u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 15  CANIF_TXPDU_CANIF_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx */

        FALSE,
        12u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        15,

        0x501u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 16  CANIF_TXPDU_CANIF_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx */

        FALSE,
        32u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        16,

        0x504u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 17  CANIF_TXPDU_CANIF_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        17,

        0x506u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 18  CANIF_TXPDU_CANIF_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        18,

        0x60u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 19  CANIF_TXPDU_CANIF_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        19,

        0x98u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 20  CANIF_TXPDU_CANIF_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        20,

        0x5fu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 21  CANIF_TXPDU_CANIF_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        21,

        0x3ceu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 22  CANIF_TXPDU_CANIF_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        22,

        0x1f8u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 23  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        23,

        0x565u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 24  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        24,

        0x55eu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 25  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        25,

        0x55fu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 26  CANIF_TXPDU_CANIF_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx */

        FALSE,
        8u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        26,

        0x566u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 27  CANIF_TXPDU_CANIF_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx */

        FALSE,
        20u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        27,

        0x7du,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 28  CANIF_TXPDU_CANIF_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx */

        FALSE,
        52u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        28,

        0x9fu,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 29  CANIF_TXPDU_CANIF_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx */

        FALSE,
        52u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        29,

        0xb3u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 30  CANIF_TXPDU_CANIF_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx */

        FALSE,
        12u,

        2u,
        CANIF_HOH0_HTH_0,
        PDUR_DESTPDU_CANIF_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,
        CANIF_PDUID_TYPE_INVALID,

        30,

        0x12au,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 31  CANIF_TXPDU_CanIf_Contained_Tx_Pdu_0x36A */

        FALSE,
        64u,

        2u,
        CANIF_HOH0_HTH_1,
        PDUR_DESTPDU_CanIf_Contained_Tx_Pdu_0x36A,
        0u,

        31,

        0x36au,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 32  CANIF_TXPDU_CanIf_Contained_Tx_Pdu_0x377 */

        FALSE,
        64u,

        2u,
        CANIF_HOH0_HTH_1,
        PDUR_DESTPDU_CanIf_Contained_Tx_Pdu_0x377,
        0u,

        32,

        0x377u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 33  CANIF_TXPDU_CanIf_Contained_Tx_Pdu_0x3A2 */

        FALSE,
        64u,

        2u,
        CANIF_HOH0_HTH_1,
        PDUR_DESTPDU_CanIf_Contained_Tx_Pdu_0x3A2,
        0u,

        33,

        0x3a2u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 34  CANIF_TXPDU_CanIf_phy_tx_0x719 */

        FALSE,
        64u,

        0u,
        CANIF_HOH0_HTH_0,
        CANTP_CanIf_phy_tx_0x719,
        CANIF_PDUID_TYPE_INVALID,

        34,

        0x719u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
    {
        /* 35  CANIF_TXPDU_CANIF_IAM_CONNCANFD_NM_IAM_NM_TxPdu */

        FALSE,
        8u,

        1u,
        CANIF_HOH0_HTH_0,
        CanNmConf_CanNmTxPdu_CanNmTx_IAM_CONNCANFD_NM,
        CANIF_PDUID_TYPE_INVALID,

        35,

        0x483u,
        0x7ffu,
        CANIF_TX_STANDARD_FD_CAN,
        CANID_DYNAMIC,
    },
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_VAR_NO_INIT_8
#include "CanIf_MemMap.h"
static uint8 TxPduBuffer[640];
#define CANIF_STOP_SEC_VAR_NO_INIT_8
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_VAR_INIT_UNSPECIFIED
#include "CanIf_MemMap.h"
static VAR(CanIf_TxPduBufferType, CANIF_VAR) CanIf_TxPduBuffer[] =
{
     /* CanIfBufferCfg_1, Length is 64, size is 10 */
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[0]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[64]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[128]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[192]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[256]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[320]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[384]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[448]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[512]},
     {FALSE, 0u, CANIF_PDUID_TYPE_INVALID, 0xffffffffu, &TxPduBuffer[576]},
};
#define CANIF_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_VAR_INIT_UNSPECIFIED
#include "CanIf_MemMap.h"
VAR(CanIf_TxBufferType, CANIF_VAR) CanIf_TxBuffer[CANIF_TXBUFFER_NUMBER] =
{
    {&CanIf_TxPduBuffer[0]},
};
#define CANIF_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_CONFIG_DATA_8
#include "CanIf_MemMap.h"
static CONST(uint8,CANIF_PBCFG_CONST) CanIf_TxBufferSizeCfg[CANIF_TXBUFFER_NUMBER] ={10};
#define CANIF_STOP_SEC_CONFIG_DATA_8
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
CONST(CanIf_ConfigType,CANIF_PBCFG_CONST) CanIf_InitCfgSet =
{
    CANIF_TXBUFFER_NUMBER,  /* CanIfTxBufferSize */
    CANIF_RXPDU_NUMBER,  /* CanIfRxPduNumber */
    CANIF_TXPDU_NUMBER, /* CanIfTxPduNumber */
    CANIF_HRH_NUMBER,   /* CanIfHrhNumber */
    CANIF_HTH_NUMBER,   /* CanIfHthNumber */
    CanIf_HrhCfgData,   /* CanIfHrhCfgRef */
    CanIf_HthCfgData,  /* CanIfHthCfgRef */CanIf_RxPduConfigData,   /* CanIfRxPduConfigRef */   CanIf_TxPduConfigData,    /* CanIfTxPduConfigRef */  CanIf_TxBufferSizeCfg,  /* CanIfBufferSize */
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#if (STD_OFF == CANIF_RXINDICATION_AUTOSAR_PARAMETER)

#define CANIF_START_SEC_PBCONFIG_DATA_16
#include "CanIf_MemMap.h"
static CONST(uint16,CANIF_CONST_PBCFG) CanIf_Can0Hoh2HrhId[1u] =
{
    0x0u
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_16
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
/* PRQA S 1533 ++ */ /* VL_QAC_OneRefSymbol */
CONST(CanIf_CanHOH2HRHType,CANIF_PBCFG_CONST) CanIf_CanHoh2Hrh[1] =
/* PRQA S 1533 -- */ /* VL_QAC_OneRefSymbol */
{
    {
        CanIf_Can0Hoh2HrhId,
        1u
    },
};
#define CANIF_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
#endif/*STD_OFF == CANIF_RXINDICATION_AUTOSAR_PARAMETER*/
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/

