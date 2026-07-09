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
 *  @file               : BswM_LCfg.c
 *  @author             : iSoft
 *  @date               : 2026-04-18 10:34:02
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*  <VERSION>    <DATE>        <AUTHOR>        <REVISION LOG>
 *  V1.0.0       2020-03-24  qinchun.yang    R19_11 BswM initial version.
 *  V1.0.1       2023-05-22  Jian.Jiang      R19_11 BswM QAC rectification.
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "BswM_Internal.h"

/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_RefLE_EcuM_WakeupSourceClear_EcuMWakeupSource_CAN2_Core0_Par0(void);
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_RefLE_CanSMIndi_FullCom_BCan2_Core0_Par0(void);
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
/* PRQA S 3415 ++ */ /* VL_BswM_3415 */
/* BswMConfig*/
/********BswMEventRequestPort**********/
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_EvRqst_ComMInitReset_LCfg_Core0_Par0[1u] =
{
    {
        NULL_PTR,    /*belongToRlue*/
        0u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMEventRequestProcessing*/
    }
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_EventRqstPortLCfgType, BSWM_CONST) BswM_EvRqstLCfg_Core0_Par0 =
{
    &(BswM_EvRqst_ComMInitReset_LCfg_Core0_Par0[0]),    /*BswMComMInitiateReset*/
    NULL_PTR,    /*BswMDcmApplicationUpdatedIndication*/
    NULL_PTR,    /*BswMNmCarWakeUpIndication*/
    NULL_PTR,
    NULL_PTR,    /*BswMWdgMRequestPartitionReset*/
    NULL_PTR,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

/*********************BswMModeRequestPort******************/
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_CanSMInd0Rule_Core0_Par0[8u] =
{
    7u,
    8u,
    9u,
    12u,
    13u,
    14u,
    15u,
    16u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_CansmInd_LCfg_Core0_Par0[1u] =
{
    /*RPort_CanSMIndi_Can : BswMCanSMIndication*/
    {
        &(BswM_CanSMInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        8u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(NetworkHandleType, BSWM_CONST) BswM_CansmIndChRef_Core0_Par0[1u] =
{
    ComMChannel_0,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_DcmComModeRqstInd0Rule_Core0_Par0[7u] =
{
    1u,
    2u,
    3u,
    4u,
    5u,
    6u,
    14u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_DcmComModeRqst_LCfg_Core0_Par0[1u] =
{
    /*RPort_DcmIndi : BswMDcmComModeRequest*/
    {
        &(BswM_DcmComModeRqstInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        7u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(NetworkHandleType, BSWM_CONST) BswM_DcmChRef_Core0_Par0[1u] =
{
    ComMChannel_0,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_EcuMState0Rule_Core0_Par0[1u] =
{
    0u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_EcuMState_LCfg_Core0_Par0[1u] =
{
    /*RPort_EcuMIndi : BswMEcuMIndication*/
    {
        &(BswM_EcuMState0Rule_Core0_Par0[0]),        /*belongToRlue*/
        1u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_EcuMWkSrcRqstInd0Rule_Core0_Par0[4u] =
{
    7u,
    8u,
    9u,
    17u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_EcuMWkSrcRqstInd1Rule_Core0_Par0[2u] =
{
    9u,
    17u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_EcuMWkSrcRqst_LCfg_Core0_Par0[2u] =
{
    /*RPort_Wks_Can : BswMEcuMWakeupSource*/
    {
        &(BswM_EcuMWkSrcRqstInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        4u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
    /*RPort_Wks_local : BswMEcuMWakeupSource*/
    {
        &(BswM_EcuMWkSrcRqstInd1Rule_Core0_Par0[0]),        /*belongToRlue*/
        2u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(EcuM_WakeupSourceType, BSWM_CONST) BswM_EcuMWkSrcRef_Core0_Par0[2u] =
{
    EcuMWakeupSource_CAN,
    EcuMWakeupSource_Local,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_GeneRqstInd0Rule_Core0_Par0[2u] =
{
    7u,
    8u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_GeneRqstInd1Rule_Core0_Par0[4u] =
{
    7u,
    8u,
    10u,
    11u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_GeneRqstInd2Rule_Core0_Par0[1u] =
{
    8u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_GeneRqst_LCfg_Core0_Par0[3u] =
{
    /*RPort_CanNMIndi_1 : BswMGenericRequest*/
    {
        &(BswM_GeneRqstInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        2u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
    /*RPort_KL15_2 : BswMGenericRequest*/
    {
        &(BswM_GeneRqstInd1Rule_Core0_Par0[0]),        /*belongToRlue*/
        4u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
    /*RPort_AppInd_3 : BswMGenericRequest*/
    {
        &(BswM_GeneRqstInd2Rule_Core0_Par0[0]),        /*belongToRlue*/
        1u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_UserType, BSWM_CONST) BswM_GenRqstUserRef_Core0_Par0[3u] =
{
    1,
    2,
    3,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ModeRqstPortLCfgType, BSWM_CONST) BswM_ModeRqstLCfg_Core0_Par0 =
{

    &(BswM_CansmInd_LCfg_Core0_Par0[0]),    /*BswMCanSMIndication*/
    &(BswM_CansmIndChRef_Core0_Par0[0]),    /*BswMCanSMChannelRef*/
    NULL_PTR,    /*BswMComMIndication*/
    NULL_PTR,    /*BswMComMChannelRef*/
    &(BswM_DcmComModeRqst_LCfg_Core0_Par0[0]),    /*BswMDcmComModeRequest*/
    &(BswM_DcmChRef_Core0_Par0[0]),    /*BswMDcmComMChannelRef*/
    &(BswM_EcuMState_LCfg_Core0_Par0[0]),
    &(BswM_EcuMWkSrcRqst_LCfg_Core0_Par0[0]),    /*BswMEcuMWakeupSource*/
    &(BswM_EcuMWkSrcRef_Core0_Par0[0]),    /*BswMEcuMWakeupSrcRef*/
    NULL_PTR,    /*BswMEcuMRUNRequestIndication*/
    NULL_PTR,    /*BswMEcuMRUNRequestProtocolPort*/
    &(BswM_GeneRqst_LCfg_Core0_Par0[0]),    /*BswMGenericRequest*/
    &(BswM_GenRqstUserRef_Core0_Par0[0]),    /*BswMModeRequesterId*/
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

/*********Rules**********/ 

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule0Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(ECUM_STATE_STARTUP == BswM_GetEcuMState())
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule0TrueActList_Core0_Par0[1u] =
{
    6u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule1Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((DCM_ENABLE_RX_TX_NORM == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_DISABLE_TX_NORM == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_TX_NORM_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_DISABLE_TX_NORM_NM == BswM_GetDcmCurModeStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule1TrueActList_Core0_Par0[1u] =
{
    0u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule2Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((DCM_DISABLE_RX_ENABLE_TX_NORM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_TX_NORMAL == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_ENABLE_TX_NORM_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_TX_NORM_NM == BswM_GetDcmCurModeStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule2TrueActList_Core0_Par0[1u] =
{
    1u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule3Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((DCM_ENABLE_RX_TX_NORM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_ENABLE_TX_NORM == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_TX_NORM_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_ENABLE_TX_NORM_NM == BswM_GetDcmCurModeStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule3TrueActList_Core0_Par0[1u] =
{
    2u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule4Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((DCM_ENABLE_RX_DISABLE_TX_NORM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_TX_NORMAL == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_DISABLE_TX_NORM_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_TX_NORM_NM == BswM_GetDcmCurModeStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule4TrueActList_Core0_Par0[1u] =
{
    3u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule5Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((DCM_ENABLE_RX_TX_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_ENABLE_TX_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_TX_NORM_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_ENABLE_TX_NORM_NM == BswM_GetDcmCurModeStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule5TrueActList_Core0_Par0[1u] =
{
    4u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule6Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((DCM_ENABLE_RX_DISABLE_TX_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_TX_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_DISABLE_TX_NORM_NM == BswM_GetDcmCurModeStatus(0))
    || (DCM_DISABLE_RX_TX_NORM_NM == BswM_GetDcmCurModeStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule6TrueActList_Core0_Par0[1u] =
{
    5u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule7Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((ECUM_WKSTATUS_NONE == BswM_GetEcuMWakeSrcStatus(0))
    && (1u == BswM_GetGeneRqstStatus(1))
    && (CANSM_BSWM_NO_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    && (2u == BswM_GetGeneRqstStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule7TrueActList_Core0_Par0[1u] =
{
    7u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule8Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((ECUM_WKSTATUS_NONE == BswM_GetEcuMWakeSrcStatus(0))
    && (CANSM_BSWM_NO_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    && (1u == BswM_GetGeneRqstStatus(1))
    && (2u == BswM_GetGeneRqstStatus(0))
    && (2u == BswM_GetGeneRqstStatus(2)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule8TrueActList_Core0_Par0[1u] =
{
    8u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_RefLE_EcuM_WakeupSourceClear_EcuMWakeupSource_CAN2_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */
    if((ECUM_WKSTATUS_EXPIRED == BswM_GetEcuMWakeSrcStatus(0))
    && (CANSM_BSWM_FULL_COMMUNICATION == BswM_GetCanSmIndStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
      result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule9Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((ECUM_WKSTATUS_EXPIRED == BswM_GetEcuMWakeSrcStatus(0))
    || (BSWM_TRUE == BswM_RefLE_EcuM_WakeupSourceClear_EcuMWakeupSource_CAN2_Core0_Par0())
    || (ECUM_WKSTATUS_EXPIRED == BswM_GetEcuMWakeSrcStatus(1)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule9TrueActList_Core0_Par0[1u] =
{
    10u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule10Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(2u == BswM_GetGeneRqstStatus(1))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule10TrueActList_Core0_Par0[1u] =
{
    11u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule11Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(1u == BswM_GetGeneRqstStatus(1))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule11TrueActList_Core0_Par0[1u] =
{
    12u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule12Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(CANSM_BSWM_NO_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule12TrueActList_Core0_Par0[1u] =
{
    13u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule13Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(CANSM_BSWM_SILENT_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule13TrueActList_Core0_Par0[1u] =
{
    14u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_RefLE_CanSMIndi_FullCom_BCan2_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */
    if((DCM_ENABLE_RX_TX_NORM == BswM_GetDcmCurModeStatus(0))
    || (DCM_ENABLE_RX_TX_NORM_NM == BswM_GetDcmCurModeStatus(0)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
      result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule14Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((CANSM_BSWM_FULL_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    && (BSWM_TRUE == BswM_RefLE_CanSMIndi_FullCom_BCan2_Core0_Par0()))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule14TrueActList_Core0_Par0[1u] =
{
    15u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule15Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(CANSM_BSWM_BUS_OFF == BswM_GetCanSmIndStatus(0))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule15TrueActList_Core0_Par0[1u] =
{
    16u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule16Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(CANSM_BSWM_FULL_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule16FalseActList_Core0_Par0[1u] =
{
    18u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule16TrueActList_Core0_Par0[1u] =
{
    17u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule17Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((ECUM_WKSTATUS_VALIDATED == BswM_GetEcuMWakeSrcStatus(0))
    || (ECUM_WKSTATUS_VALIDATED == BswM_GetEcuMWakeSrcStatus(1)))
    /* PRQA S 3415 --*/ /* VL_BswM_3415 */
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule17TrueActList_Core0_Par0[1u] =
{
    9u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleLcCfgType, BSWM_CONST) BswM_RuleLCfg_Core0_Par0[18u] =
{
    {
        BswM_Rule0Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule0TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule1Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule1TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule2Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule2TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule3Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule3TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule4Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule4TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule5Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule5TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule6Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule6TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule7Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule7TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule8Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule8TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule9Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule9TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule10Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule10TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule11Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule11TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule12Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule12TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule13Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule13TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule14Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule14TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule15Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule15TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule16Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        BswM_Rule16FalseActList_Core0_Par0, /*BswMRuleFalseActionList*/
        BswM_Rule16TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule17Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule17TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

/********************ActionItem*******************/

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionType, BSWM_CONST) BswM_ActListItemsRefAction_Core0_Par0[34u] =
{
    {
        BSWM_PDU_GROUP_SWITCH,
        0
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        1
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        2
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        3
    },
    {
        BSWM_NM_CONTROL,
        0
    },
    {
        BSWM_NM_CONTROL,
        1
    },
    {
        BSWM_ECUM_DRIVER_INIT_BSWM,
        0
    },
    {
        BSWM_ECUM_DRIVER_INIT_BSWM,
        1
    },
    {
        BSWM_COMM_ALLOW_COM,
        0
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        5
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        4
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        1
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        3
    },
    {
        BSWM_USER_CALLOUT,
        1
    },
    {
        BSWM_PDU_ROUTER_CONTROL,
        1
    },
    {
        BSWM_ECUM_GO_DOWN_HALT_POLL,
        0
    },
    {
        BSWM_USER_CALLOUT,
        2
    },
    {
        BSWM_PDU_ROUTER_CONTROL,
        0
    },
    {
        BSWM_USER_CALLOUT,
        0
    },
    {
        BSWM_COMM_MODE_SWITCH,
        0
    },
    {
        BSWM_PDU_ROUTER_CONTROL,
        0
    },
    {
        BSWM_COMM_MODE_SWITCH,
        1
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        3
    },
    {
        BSWM_DEADLINE_MONITOR_CONTROL,
        1
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        3
    },
    {
        BSWM_DEADLINE_MONITOR_CONTROL,
        0
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        2
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        0
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        3
    },
    {
        BSWM_DEADLINE_MONITOR_CONTROL,
        1
    },
    {
        BSWM_DEADLINE_MONITOR_CONTROL,
        0
    },
    {
        BSWM_DEADLINE_MONITOR_CONTROL,
        1
    },
    {
        BSWM_PDU_ROUTER_CONTROL,
        0
    },
    {
        BSWM_PDU_ROUTER_CONTROL,
        1
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList0Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[0u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList1Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[1u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList2Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[2u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList3Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[3u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList4Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[4u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList5Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[5u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList6Ref_Core0_Par0[7u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[6u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[7u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[8u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[9u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[10u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[11u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[12u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList7Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[13u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList8Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[14u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[15u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList9Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[16u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[17u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList10Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[18u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList11Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[19u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[20u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList12Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[21u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList13Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[22u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[23u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList14Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[24u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[25u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList15Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[26u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[27u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList16Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[28u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[29u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList17Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[30u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList18Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[31u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList19Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[32u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList20Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[33u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemType, BSWM_CONST) BswM_ActionListItemsLCfg_Core0_Par0[34u] =
{
    {
        0u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList0Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        1u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList1Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        2u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList2Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        3u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList3Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        4u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList4Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        5u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList5Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        6u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        7u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        8u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[2u])    /*actionRef*/
    },
    {
        9u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[3u])    /*actionRef*/
    },
    {
        10u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[4u])    /*actionRef*/
    },
    {
        11u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[5u])    /*actionRef*/
    },
    {
        12u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[6u])    /*actionRef*/
    },
    {
        13u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList7Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        14u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList8Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        15u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList8Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        16u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList9Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        17u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList9Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        18u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList10Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        19u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList11Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        20u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList11Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        21u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList12Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        22u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList13Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        23u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList13Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        24u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList14Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        25u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList14Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        26u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList15Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        27u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList15Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        28u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList16Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        29u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList16Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        30u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList17Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        31u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList18Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        32u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList19Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        33u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList20Ref_Core0_Par0[0u])    /*actionRef*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListLCfgType, BSWM_CONST) BswM_ActionListLCfg_Core0_Par0[21u] =
{
    /* AL_DCM_Normal_Rx_Enable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /*executeType*/
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[0u])    /*actionItems*/
    },
    /* AL_DCM_Normal_Rx_Disable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[1u]),    /* actionItems */
    },
    /* AL_DCM_Normal_Tx_Enable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[2u]),    /* actionItems */
    },
    /* AL_DCM_Normal_Tx_Disable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[3u]),    /* actionItems */
    },
    /* AL_DCM_Nm_Tx_Enable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[4u]),    /* actionItems */
    },
    /* AL_DCM_Nm_Tx_Disable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[5u]),    /* actionItems */
    },
    /* AL_StartUp */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        7u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[6u]),    /* actionItems */
    },
    /* AL_Bsw_Allow_GoDown */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[13u]),    /* actionItems */
    },
    /* AL_GoDown */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[14u]),    /* actionItems */
    },
    /* AL_WakeupEventValidated */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[16u]),    /* actionItems */
    },
    /* AL_ClearWakeupEvent */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[18u]),    /* actionItems */
    },
    /* AL_KL15_ON_ComM_ReqFullCom */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[19u]),    /* actionItems */
    },
    /* AL_KL15_OFF_ComM_ReqNoCom */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[21u]),    /* actionItems */
    },
    /* AL_CanSMIndi_NoCom_BCan */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[22u]),    /* actionItems */
    },
    /* AL_CanSMIndi_SilentCom_BCan */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[24u]),    /* actionItems */
    },
    /* AL_CanSMIndi_FullCom_BCan */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[26u]),    /* actionItems */
    },
    /* AL__CanSMIndi_BusOff_BCan */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[28u]),    /* actionItems */
    },
    /* AL_RxEnableDM_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[30u]),    /* actionItems */
    },
    /* AL_RxDisableDM_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[31u]),    /* actionItems */
    },
    /* AL_EnableDiagPduGrop_BCan */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[32u]),    /* actionItems */
    },
    /* AL_DisableDiagPduGrop_BCan */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[33u]),    /* actionItems */
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

/********************Action*******************/
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
/*Action: ComM Allow COM*/
static CONST(BswM_ActionComMAllowComLCfgType, BSWM_CONST) BswM_AllowComMLCfg_Core0_Par0[2u] =
{
    /* BswMComMAllowCom*/
    {
        /* comAllowed */
        TRUE,
        /* channel */    
        ComMChannel_0,
    },
    /* BswMComMAllowCom*/
    {
        /* comAllowed */
        FALSE,
        /* channel */    
        ComMChannel_0,
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
/*Action: ComM Mode Switch*/
static CONST(BswM_ActionComMModeSwitchLCfgType, BSWM_CONST) BswM_ComMModeSwiLCfg_Core0_Par0[2u] =
{
    /* BswMComMModeSwitch*/
    {
        /* BswMComMRequestedMode */
        COMM_FULL_COMMUNICATION,
        /* BswMComMUserRef */    
        ComMUser_0,
    },
    /* BswMComMModeSwitch*/
    {
        /* BswMComMRequestedMode */
        COMM_NO_COMMUNICATION,
        /* BswMComMUserRef */    
        ComMUser_0,
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ComIpduGruType, BSWM_CONST) BswM_ComEnAbleDmGruLCfg_Core0_Par0[2u] =
{
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ComIpduGruType, BSWM_CONST) BswM_ComDisAbleDmGruLCfg_Core0_Par0[2u] =
{
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
/*Action: COM deadline monitor control*/
static CONST(BswM_ActionDMControlLCfgType, BSWM_CONST) BswM_ComDmCtrlLCfg_Core0_Par0[4u] =
{
    /* BswMDeadlineMonitoringControl*/
    {
        &(BswM_ComEnAbleDmGruLCfg_Core0_Par0[0U]),    /*enableRecDmGruId*/
        1u,        /*numOfEnableRecDmGru*/
        NULL_PTR,    /*disableRecDmGruId*/
        0u,     /*numOfDisableRecDmGru*/
    },
    /* BswMDeadlineMonitoringControl*/
    {
        NULL_PTR,    /*enableRecDmGruId*/
        0u,        /*numOfEnableRecDmGru*/
        &(BswM_ComDisAbleDmGruLCfg_Core0_Par0[0U]), /*disableRecDmGruId*/
        1u,     /*numOfDisableRecDmGru*/
    },
    /* BswMDeadlineMonitoringControl*/
    {
        &(BswM_ComEnAbleDmGruLCfg_Core0_Par0[1U]),    /*enableRecDmGruId*/
        1u,        /*numOfEnableRecDmGru*/
        NULL_PTR,    /*disableRecDmGruId*/
        0u,     /*numOfDisableRecDmGru*/
    },
    /* BswMDeadlineMonitoringControl*/
    {
        NULL_PTR,    /*enableRecDmGruId*/
        0u,        /*numOfEnableRecDmGru*/
        &(BswM_ComDisAbleDmGruLCfg_Core0_Par0[1U]), /*disableRecDmGruId*/
        1u,     /*numOfDisableRecDmGru*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ComIpduGruType, BSWM_CONST) BswM_ComEnAblePduGruLCfg_Core0_Par0[4u] =
{
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ComIpduGruType, BSWM_CONST) BswM_ComDisAblePduGruLCfg_Core0_Par0[2u] =
{
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
/*Action: PDU Group Switch*/
static CONST(BswM_ActionPduGrpSwitchLCfgType, BSWM_CONST) BswM_ComPduGruCtrlLCfg_Core0_Par0[6u] =
{
    /* BswMPduGroupSwitch*/
    {
        FALSE,
        &(BswM_ComEnAblePduGruLCfg_Core0_Par0[0U]),    /*enableIpduGruId*/
        1u,        /*numOfEnableIpduGru*/
        NULL_PTR,    /*disableRecDmGruId*/
        0u,     /*numOfDisableIpduGru*/
    },
    /* BswMPduGroupSwitch*/
    {
        FALSE,
        NULL_PTR,    /*enableRecDmGruId*/
        0u,        /*numOfEnableIpduGru*/
        &(BswM_ComDisAblePduGruLCfg_Core0_Par0[0U]), /*disableIpduGruId*/
        1u,     /*numOfDisableIpduGru*/
    },
    /* BswMPduGroupSwitch*/
    {
        FALSE,
        &(BswM_ComEnAblePduGruLCfg_Core0_Par0[1U]),    /*enableIpduGruId*/
        1u,        /*numOfEnableIpduGru*/
        NULL_PTR,    /*disableRecDmGruId*/
        0u,     /*numOfDisableIpduGru*/
    },
    /* BswMPduGroupSwitch*/
    {
        FALSE,
        NULL_PTR,    /*enableRecDmGruId*/
        0u,        /*numOfEnableIpduGru*/
        &(BswM_ComDisAblePduGruLCfg_Core0_Par0[1U]), /*disableIpduGruId*/
        1u,     /*numOfDisableIpduGru*/
    },
    /* BswMPduGroupSwitch*/
    {
        TRUE,
        &(BswM_ComEnAblePduGruLCfg_Core0_Par0[2U]),    /*enableIpduGruId*/
        1u,        /*numOfEnableIpduGru*/
        NULL_PTR,    /*disableRecDmGruId*/
        0u,     /*numOfDisableIpduGru*/
    },
    /* BswMPduGroupSwitch*/
    {
        TRUE,
        &(BswM_ComEnAblePduGruLCfg_Core0_Par0[3U]),    /*enableIpduGruId*/
        1u,        /*numOfEnableIpduGru*/
        NULL_PTR,    /*disableRecDmGruId*/
        0u,     /*numOfDisableIpduGru*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionEcuMDrvInitLCfgType, BSWM_CONST) BswM_EcuMDrvInitListLCfg_Core0_Par0[2u] =
{
    /* BswMEcuMDriverInitListBswM*/
    {
        EcuMDriverInitListBswM_0
    },
    /* BswMEcuMDriverInitListBswM*/
    {
        EcuMDriverInitListBswM_Diag
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionEcuMGoDownLCfgType, BSWM_CONST) BswM_EcuMGoDownHaltPollLCfg_Core0_Par0[1u] =
{
    /* BswMEcuMGoDownHaltPoll*/
    {
        EcuMFlexUserConfig
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionEcuMStateSwitchLCfgType, BSWM_CONST) BswM_EcuMStateSwitchLCfg_Core0_Par0[2u] =
{
    /* BswMEcuMStateSwitch*/
    {
        /* ecuMState */
        ECUM_STATE_APP_RUN,
    },
    /* BswMEcuMStateSwitch*/
    {
        /* ecuMState */
        ECUM_STATE_APP_POST_RUN,
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionNMControlLCfgType, BSWM_CONST) BswM_NmControlLCfg_Core0_Par0[2u] =
{
    /* BswMNMControl*/
    {
        /* action */
        BSWM_NM_ENABLE,
        /* channel */
        ComMChannel_0,
    },
    /* BswMNMControl*/
    {
        /* action */
        BSWM_NM_DISABLE,
        /* channel */
        ComMChannel_0,
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(PduR_RoutingPathGroupIdType, BSWM_CONST) BswM_PdurPathIdsLCfg_Core0_Par0[2u] =
{
    PduRRoutingPathGroup_Diag,
    PduRRoutingPathGroup_Diag,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(boolean, BSWM_CONST) BswM_PdurCtrlInit1_Core0_Par0 = TRUE;

#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionPduRCtrlLCfgType, BSWM_CONST) BswM_PdurCtrlLCfg_Core0_Par0[2u] =
{
    /* BswMPduRouterControl*/
    {
        BSWM_PDUR_ENABLE,
        NULL_PTR,
        1u,        /*numOfPathGrp*/
        &(BswM_PdurPathIdsLCfg_Core0_Par0[0U]),    /*pduPathIds*/
    },
    /* BswMPduRouterControl*/
    {
        BSWM_PDUR_DISABLE,
        &BswM_PdurCtrlInit1_Core0_Par0,
        1u,        /*numOfPathGrp*/
        &(BswM_PdurPathIdsLCfg_Core0_Par0[1U]),    /*pduPathIds*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionUserCalloutLCfgType, BSWM_CONST) BswM_UserCallLCfg_Core0_Par0[3u] =
{
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        Act_Bsw_Allow_GoDown_Function,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        WakeupSource_Validated,
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionItemsLCfgType, BSWM_CONST) BswM_ActionItemsLCfg_Core0_Par0 =
{
    &(BswM_AllowComMLCfg_Core0_Par0[0U]),    /*BswMComMAllowCom*/
    &(BswM_ComMModeSwiLCfg_Core0_Par0[0U]),    /*BswMComMModeSwitch*/
    &(BswM_ComDmCtrlLCfg_Core0_Par0[0U]),    /*BswMDeadlineMonitoringControl*/
    &(BswM_ComPduGruCtrlLCfg_Core0_Par0[0U]),    /*BswMPduGroupSwitch*/
    &(BswM_EcuMDrvInitListLCfg_Core0_Par0[0U]),    /*BswMEcuMDriverInitListBswM*/
    &(BswM_EcuMGoDownHaltPollLCfg_Core0_Par0[0U]),    /*BswMEcuMGoDownHaltPoll*/
    &(BswM_EcuMStateSwitchLCfg_Core0_Par0[0U]),    /*BswMEcuMStateSwitch*/
    &(BswM_NmControlLCfg_Core0_Par0[0U]),    /*BswMNMControl*/
    &(BswM_PdurCtrlLCfg_Core0_Par0[0U]),    /*BswMPduRouterControl*/
    &(BswM_UserCallLCfg_Core0_Par0[0U]),    /*BswMUserCallout*/
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(BswM_RuleRunTimeType, BSWM_VAR_CLEARED) BswM_RuleRunTime_Core0_Par0[18u];
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_PartitionLCfgType, BSWM_CONST) BswM_PartitionLCfg_Core0[1u] =
{
    {
        &BswM_EvRqstLCfg_Core0_Par0,    /*evRqstLCfg*/
        &BswM_ModeRqstLCfg_Core0_Par0,    /*modeRqstLCfg*/
        18u,    /*numOfRules*/
        &(BswM_RuleLCfg_Core0_Par0[0]),    /*ruleLCfg*/
        0u,    /*numOfDefRules*/
        NULL_PTR,    /*defRuleRefLCfg*/
        21u,    /*numOfActionList*/
        &(BswM_ActionListLCfg_Core0_Par0[0]),    /*acListLCfg*/
        &BswM_ActionItemsLCfg_Core0_Par0,    /*acItemsLCfg*/
        &(BswM_RuleRunTime_Core0_Par0[0]),    /*ruleRutTimeStatus*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_LCfgType, BSWM_CONST) BswM_LCfg[1u] =
{
    {
        &(BswM_PartitionLCfg_Core0[0u]),
    },
};
#define BSWM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "BswM_MemMap.h"

/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/
#define BSWM_START_SEC_CONST_PTR
#include "BswM_MemMap.h"
/*PRQA S 1533 ++*/ /*VL_QAC_OneRefSymbol*/
CONSTP2CONST(BswM_LCfgType, BSWM_CONST, BSWM_CONST) BswM_CoreLinkCfg = &(BswM_LCfg[0u]);
/*PRQA S 1533 --*/ /*VL_QAC_OneRefSymbol*/
#define BSWM_STOP_SEC_CONST_PTR
#include "BswM_MemMap.h"
/*PRQA S 6620 EOF*/ /*VL_MTR_BswM_STSCT*/

