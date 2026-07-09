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
 *  @file               : BswM_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-03-13 18:02:50
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "BswM_Internal.h"

/* BswMConfig*/
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_EventRqstPortIdxType, BSWM_CONST) BswM_EventRqstPort_ComMInitRstIdx_Core0_Par0 = 0u;
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_EvRqstPortPCCfgType, BSWM_CONST) BswM_EvRqstSrc_Core0_Par0 =
{
    &BswM_EventRqstPort_ComMInitRstIdx_Core0_Par0,            /*comMInitRstIdxPtr*/
    NULL_PTR,    /*dcmAppUpdateIndIdxPtr*/
    0u,
    NULL_PTR,    /*nmWkEvPortIdxPtr*/
    0u,
    NULL_PTR,    /*wdgmRqstParRstEvIdxPtr*/
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(CanSM_BswMCurrentStateType, BSWM_CONST) BswM_CanSmInitState_Core0_Par0 = CANSM_BSWM_NO_COMMUNICATION;
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(Dcm_CommunicationModeType, BSWM_CONST) BswM_DcmInitMode_Core0_Par0 = DCM_ENABLE_RX_TX_NORM_NM;
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(EcuM_WakeupStatusType, BSWM_CONST) BswM_EcumWkInitstate_Core0_Par0 = ECUM_WKSTATUS_NONE;
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(uint16, BSWM_CONST) BswM_GenRqstInitMode_Core0_Par0 = 0;
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ModeRqstPortPCCfgType, BSWM_CONST) BswM_ModeRqstSrc_Core0_Par0 =
{
    1u,    /*numOfCanSMInd*/
    &BswM_CanSmInitState_Core0_Par0,    /*canSMInitState*/
    0u,    /*numOfComMInd*/
    NULL_PTR,
    1u,    /*numOfDcmComModeReq*/
    &BswM_DcmInitMode_Core0_Par0,    /*dcmInitMode*/
    2u,    /*numOfEcuMWakeupSource*/
    &BswM_EcumWkInitstate_Core0_Par0,    /*ecumWkInitstate*/
    0u,    /*numOfEcuMRUNRequestIndications*/
    NULL_PTR,
    3u,    /*numOfGenericReq*/
    &BswM_GenRqstInitMode_Core0_Par0,    /*genRqstInitMode*/
    0u,    /*numOfBswMTimer*/
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(BswM_EventRquestPortRuntimeType, BSWM_VAR_CLEARED) BswM_EvRqstSrcStatus_Core0_Par0[1u];
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(CanSM_BswMCurrentStateType, BSWM_VAR_CLEARED) BswM_CanSMIndicationStatus_Core0_Par0[1u];
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(Dcm_CommunicationModeType, BSWM_VAR_CLEARED) BswM_DcmComModeRequestStatus_Core0_Par0[1u];
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(EcuM_WakeupStatusType, BSWM_VAR_CLEARED) BswM_EcuMWakeupSourceStatus_Core0_Par0[2u];
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(uint16, BSWM_VAR_CLEARED) BswM_GenericRequestStatus_Core0_Par0[3u];
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_INIT_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(BswM_ModeRqstPortRuntimeType, BSWM_VAR_CLEARED) BswM_ModeRqstSrcSatus_Core0_Par0 =
{
    &(BswM_CanSMIndicationStatus_Core0_Par0[0u]),    /*BswMCanSMIndication*/
    NULL_PTR,    /*BswMComMIndication*/
    &(BswM_DcmComModeRequestStatus_Core0_Par0[0u]),    /*BswMDcmComModeRequest*/
    &(BswM_EcuMWakeupSourceStatus_Core0_Par0[0u]),    /*BswMEcuMWakeupSource*/
    NULL_PTR,    /*bswMEcuMRUNRequestIndications*/
    &(BswM_GenericRequestStatus_Core0_Par0[0u]),    /*BswMGenericRequest*/
    NULL_PTR,    /*BswMTimer*/
    NULL_PTR,    /*BswMTimerCycle*/
};
#define BSWM_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(Com_IpduGroupVector, BSWM_VAR_CLEARED) BswM_ComIpduGroup_Ctrl[3u]; /*PRQA S 3679*/ /*VL_BswM_3679*/
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_PartitionPCCfgType, BSWM_CONST) BswM_PartitionPCCfg_Core0[1u] =
{
    {
        1u,    /*evRqstSrcNum*/
        &BswM_EvRqstSrc_Core0_Par0,    /*evRqstPCCfg*/
        &BswM_ModeRqstSrc_Core0_Par0,    /*modeRqstPCCfg*/
        &(BswM_EvRqstSrcStatus_Core0_Par0[0u]),    /*eventRqstPortRunPtr*/
        &BswM_ModeRqstSrcSatus_Core0_Par0,    /*modeRqstPortRunPtr*/
        &(BswM_ComIpduGroup_Ctrl[0u]),    /*comRxDmIpduGroupVector*/
        &(BswM_ComIpduGroup_Ctrl[1u]),    /*ipduGroupReinitVecotr*/
        &(BswM_ComIpduGroup_Ctrl[2u]),    /*ipduGroupAllVecotr*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_PCCfgType, BSWM_CONST) BswM_PCCfg[1u] =
{
    {
        /* numOfPartitions */
        1U,
        /* bswmPartPCCfgs */
        &(BswM_PartitionPCCfg_Core0[0u]),
    },
};
#define BSWM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "BswM_MemMap.h"

/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
/*PRQA S 1533 ++*/ /*VL_QAC_OneRefSymbol*/
CONSTP2CONST(BswM_PCCfgType, BSWM_CONST, BSWM_CONST) BswM_CorePCCfg = &(BswM_PCCfg[0]);
/*PRQA S 1533 --*/ /*VL_QAC_OneRefSymbol*/
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
/*PRQA S 6610 EOF*/ /*VL_MTR_BswM_STCDN*/

