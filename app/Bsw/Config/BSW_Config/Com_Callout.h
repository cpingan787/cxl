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
 *  @file               : Com_Callout.h
 *  @author             : iSoft
 *  @date               : 2026-07-14 20:21:16
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef  COM_CALLOUT_H
#define  COM_CALLOUT_H
/* PRQA S 1753 EOF */ /* VL_Com_1753 */

#include "ComStack_Types.h"

boolean IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

void Rte_COMCbkTAck_IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

#endif
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/
