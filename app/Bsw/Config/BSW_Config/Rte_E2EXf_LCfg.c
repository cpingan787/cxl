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
 *  @file               : Rte_E2EXf_LCfg.c
 *  @author             : iSoft
 *  @date               : 2026-04-14 13:43:31
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Imported Compiler Switch Check                        **
*******************************************************************************/
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Rte_E2EXf_LCfg.h"
#include "Rte_Xf_Cfg.h"
/*******************************************************************************
**                       Version  Check                                       **
*******************************************************************************/
/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/
/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/
/* PRQA S 0779 ++ */ /* MISRA Rule 1.3,Rule 5.2 */
#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
CONST(EndToEndTransformationDescriptionType_PROFILE_01, E2EXF_CONST) EndToEndTransformationDescription_0 =
{
    8,            /*counterOffset*/
    0,            /*crcOffset*/
    ALL16BIT,    /*dataIdMode*/
    12,            /*dataIdNibbleOffset*/
    3,            /*maxDeltaCounter*/
    0,            /*maxErrorStateInit*/
    0,            /*maxErrorStateInvalid*/
    0,            /*maxErrorStateValid*/
    14,            /*maxNoNewOrRepeatedData*/
    1,            /*minOkStateInit*/
    1,            /*minOkStateInvalid*/
    1,            /*minOkStateValid*/
    R4_2,            /*profileBehavior*/
    "PROFILE_01",    /*PROFILE_01*/
    1,            /*syncCounterInit*/
    0,            /*upperHeaderBitsToShift*/
    1,            /*windowSizeInit*/
    1,            /*windowSizeValid*/
    1,            /*windowSizeInvalid*/
    TRUE        /*clearFromValidToInvalid*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_CCU_PTCANFD_100ms_FrP02_0x317_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ECM_ERCANFD_10ms_FrP00_0x84_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP20_0x308_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP32_0x331_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ESS_PTCANFD_20ms_FrP01_0x12c_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ESS_PTCANFD_50ms_FrP14_0x211_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_CONNCAN_100ms_FrP18_0x32b_Tx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13 =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IBS_CHCANFD_10ms_FrP04_0xb8_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx =
{
    0x0u,            /*dataId*/
    160,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx =
{
    0x0u,            /*dataId*/
    240,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_PEU_PTCANFD_100ms_FrP03_0x17c_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx =
{
    0x0u,            /*dataId*/
    128,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP10_0x309_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RZCU_PTCANFD_20ms_FrP06_0x194_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx =
{
    0x0u,            /*dataId*/
    96,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP01_0x163_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP02_0x187_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34 =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35 =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40 =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_PEU_PTCANFD_50ms_FrP05_0x0200_Rx =
{
    0x0u,            /*dataId*/
    128,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RHZCU_RHBKBCANFD_50ms_FrP01_0x289_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RHZCU_RHBKBCANFD_100ms_FrP10_0x33d_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_RHZCU_RHBKBCANFD_100ms_FrP09_0x355_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_IBS_CHCANFD_100ms_FrP15_3dc_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(EndToEndTransformationISignalPropsType_PROFILE_01, E2EXF_CONST) EndToEndTransformationISignalProps_ICB_RZCUCANFD_200ms_FrP82_0x469_Rx =
{
    0x0u,            /*dataId*/
    64,            /*dataLength*/
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
static CONST(E2EXf_ConfigType_PROFILE_01, E2EXF_CONST) E2ETransformer_profile01[50] =
{
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_CCU_PTCANFD_100ms_FrP02_0x317_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ECM_ERCANFD_10ms_FrP00_0x84_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP20_0x308_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP32_0x331_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ESS_PTCANFD_20ms_FrP01_0x12c_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ESS_PTCANFD_50ms_FrP14_0x211_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_CONNCAN_100ms_FrP18_0x32b_Tx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IBS_CHCANFD_10ms_FrP04_0xb8_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_PEU_PTCANFD_100ms_FrP03_0x17c_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP10_0x309_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RZCU_PTCANFD_20ms_FrP06_0x194_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP01_0x163_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP02_0x187_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_PEU_PTCANFD_50ms_FrP05_0x0200_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RHZCU_RHBKBCANFD_50ms_FrP01_0x289_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RHZCU_RHBKBCANFD_100ms_FrP10_0x33d_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_RHZCU_RHBKBCANFD_100ms_FrP09_0x355_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_IBS_CHCANFD_100ms_FrP15_3dc_Rx,
       NULL_PTR
   },
   {
       &E2E_PROFILE_01,
       &EndToEndTransformationISignalProps_ICB_RZCUCANFD_200ms_FrP82_0x469_Rx,
       NULL_PTR
   }
};
#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"

#define RTE_E2EXF_START_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
CONST(E2EXf_ConfigType, E2EXF_CONST) E2EXf_Config =
{
    E2ETransformer_profile01,
};

#define RTE_E2EXF_STOP_SEC_PBCFG_DATA_UNSPECIFIED
#include "Rte_E2EXf_MemMap.h"
/* PRQA S 0779 -- */ /* MISRA Rule 1.3,Rule 5.2 */

