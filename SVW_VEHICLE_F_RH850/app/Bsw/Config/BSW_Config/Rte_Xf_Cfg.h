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
 *  @file               : Rte_Xf_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-01-19 18:49:39
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef XF_CFG_H_
#define XF_CFG_H_
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "TransformerTypes.h"
#include "Rte_E2EXf_LCfg.h"
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* PRQA S 0791 ++ */ /* MISRA Rule 5.4 */
#define IN_PLACE_TRANSFORMATION_CCU_PTCANFD_100MS_FRP02_0X317_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ECM_ERCANFD_10MS_FRP00_0X84_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_TC_ZONE_PTCANFD_10MS_FRP01_0X57_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ESS_PTCANFD_100MS_FRP20_0X308_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ESS_PTCANFD_100MS_FRP32_0X331_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ESS_PTCANFD_20MS_FRP01_0X12C_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ESS_PTCANFD_50MS_FRP14_0X211_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ESS_PTEXTDCAN_100MS_FRP23_0X312_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ESS_PTEXTDCAN_100MS_FRP27_0X37E_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ESS_PTEXTDCAN_100MS_FRP33_0X2D6_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCAN_100MS_FRP18_0X32B_TX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_100MS_CONFRP02_0X377_TX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_100MS_CONFRP03_0X36A_TX_PDU13        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_100MS_CONFRP41_0X3A2_TX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_ZONE_CONNCANFD_100MS_FRP56_0X3CE_TX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IBS_CHCANFD_10MS_FRP04_0XB8_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IBS_CHCANFD_20MS_FRP07_0X1A7_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IBS_CHCANFD_20MS_FRP11_0X1A9_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ICBAD_BKPCANFD_20MS_FRP07_0X17E_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ICBAD_RZCUCANFD_20MS_FRP12_0X1A8_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ICBAD_ZONE_CHCANFD_20MS_FRP13_0X51_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ICBVC_RZCUCANFD_100MS_FRP80_0X38B_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ICBVC_RZCUCANFD_200MS_FRP79_0X47F_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_ICBVC_RZCUCANFD_20MS_FRP03_0X1F1_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_LHZCU_BKBCANFD_50MS_FRP24_0X27E_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_LHZCU_LHBKBCANFD_10MS_FRP01_0X9D_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_LHZCU_LHBKBCANFD_50MS_FRP06_0X28C_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_LVBM_PTEXTDCAN_100MS_FRP04_0X3C3_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_PEU_ERCANFD_100MS_FRP15_0X2F8_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_PEU_PTCANFD_100MS_FRP03_0X17C_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_PEU_PTCANFD_5MS_FRP02_SIGGWTOCONN_0XE2_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_TC_PTCANFD_10MS_FRP01_SIGGWTORZCU_0XED_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_RZCU_IMCU_SFCANFD_100MS_FRP26_0X3F7_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_RZCU_PTCANFD_100MS_FRP10_0X309_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_RZCU_PTCANFD_100MS_FRP12_0X3D4_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_RZCU_PTCANFD_10MS_FRP01_0XB4_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_RZCU_PTCANFD_20MS_FRP06_0X194_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_RZCU_PTEXTDCAN_100MS_FRP21_0X455_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_RZCU_RZCUCANFD_10MS_FRP22_NOSECOC_0XF7_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_SDM_CHCANFD_20MS_FRP01_0X163_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_SDM_CHCANFD_20MS_FRP02_0X187_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_100MS_CONFRP03_0X36A_TX_PDU34        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_100MS_CONFRP03_0X36A_TX_PDU35        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_100MS_CONFRP03_0X36A_TX_PDU40        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_PEU_PTCANFD_50MS_FRP05_0X200_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_RHZCU_RHBKBCANFD_50MS_FRP01_0X289_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_RHZCU_RHBKBCANFD_100MS_FRP10_0X33D_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_RHZCU_RHBKBCANFD_100MS_FRP09_0X355_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_IBS_CHCANFD_100MS_FRP15_0X3DC_RX        STD_OFF
#define IN_PLACE_TRANSFORMATION_IAM_CONNCANFD_ICB_RZCUCANFD_200MS_FRP82_0X469_RX        STD_OFF
/* PRQA S 0791 -- */ /* MISRA Rule 5.4 */
/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/*******************************************************************************
**                      Global Data Declaration                               **
*******************************************************************************/

extern CONST(TransformationTechnologyType_PROFILE_01, E2EXF_CONST) E2E_PROFILE_01;

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/
#endif/* XF_CFG_H_ */

