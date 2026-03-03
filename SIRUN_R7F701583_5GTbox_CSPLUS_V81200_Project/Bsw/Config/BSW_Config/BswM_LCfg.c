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
 *  @date               : 2026-01-22 11:51:05
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
    NULL_PTR,    /*BswMModeSwitchErrorEvent*/
    NULL_PTR,
    NULL_PTR,    /*BswMNmCarWakeUpIndication*/
    NULL_PTR,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

/*********************BswMModeRequestPort******************/
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_CanSMInd0Rule_Core0_Par0[10u] =
{
    4u,
    5u,
    6u,
    7u,
    8u,
    9u,
    12u,
    13u,
    14u,
    15u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_CansmInd_LCfg_Core0_Par0[1u] =
{
    /*ReqPort_CanSm_CanChannel_0 : BswMCanSMIndication*/
    {
        &(BswM_CanSMInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        10u,                    /*belongToRlueNum*/
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
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_ComMInd_LCfg_Core0_Par0[1u] =
{
    /*ReqPort_ComM_CanChannel_0 : BswMComMIndication*/
    {
        NULL_PTR,    /*belongToRlue*/
        0u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(NetworkHandleType, BSWM_CONST) BswM_ComMIndChRef_Core0_Par0[1u] =
{
    ComMChannel_0,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_DcmComModeRqstInd0Rule_Core0_Par0[6u] =
{
    16u,
    17u,
    18u,
    19u,
    20u,
    21u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_DcmComModeRqst_LCfg_Core0_Par0[1u] =
{
    /*ReqPort_Dcm_CanChannel_0 : BswMDcmComModeRequest*/
    {
        &(BswM_DcmComModeRqstInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        6u,                    /*belongToRlueNum*/
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
    11u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_EcuMState_LCfg_Core0_Par0[1u] =
{
    /*ReqPort_EcuMStateIndication : BswMEcuMIndication*/
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
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_EcuMWkSrcRqstInd0Rule_Core0_Par0[3u] =
{
    0u,
    3u,
    9u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_EcuMWkSrcRqstInd1Rule_Core0_Par0[2u] =
{
    3u,
    22u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_EcuMWkSrcRqst_LCfg_Core0_Par0[2u] =
{
    /*ReqPort_EcuM_EcuMWakeupSource_CAN : BswMEcuMWakeupSource*/
    {
        &(BswM_EcuMWkSrcRqstInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        3u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
    /*ReqPort_EcuM_EcuMWakeupSource_Local : BswMEcuMWakeupSource*/
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
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_EcuMRunRqst0Rule_Core0_Par0[1u] =
{
    2u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_EcuMRunRqst1Rule_Core0_Par0[2u] =
{
    1u,
    2u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_EcuMRunRqst_LCfg_Core0_Par0[2u] =
{
    /*ReqPort_EcuM_ReqPostRun : BswMEcuMRUNRequestIndication*/
    {
        &(BswM_EcuMRunRqst0Rule_Core0_Par0[0]),        /*belongToRlue*/
        1u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
    /*ReqPort_EcuM_ReqRun : BswMEcuMRUNRequestIndication*/
    {
        &(BswM_EcuMRunRqst1Rule_Core0_Par0[0]),        /*belongToRlue*/
        2u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(EcuM_StateType, BSWM_CONST) BswM_EcuMRunRqstRef_Core0_Par0[2u] =
{
    ECUM_STATE_APP_POST_RUN,
    ECUM_STATE_APP_RUN,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_GeneRqstInd0Rule_Core0_Par0[2u] =
{
    14u,
    15u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleIndexType, BSWM_CONST) BswM_GeneRqstInd1Rule_Core0_Par0[1u] =
{
    10u,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RqstPortLcCfgType, BSWM_CONST) BswM_GeneRqst_LCfg_Core0_Par0[3u] =
{
    /*ReqPort_GenericCanSmBusOff_CanChannel_0 : BswMGenericRequest*/
    {
        &(BswM_GeneRqstInd0Rule_Core0_Par0[0]),        /*belongToRlue*/
        2u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
    /*RepPort_GerericComControl : BswMGenericRequest*/
    {
        &(BswM_GeneRqstInd1Rule_Core0_Par0[0]),        /*belongToRlue*/
        1u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
    /*RepPort_ECUSleepControl : BswMGenericRequest*/
    {
        NULL_PTR,    /*belongToRlue*/
        0u,                    /*belongToRlueNum*/
        BSWM_IMMEDIATE    /*BswMRequestProcessing*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_UserType, BSWM_CONST) BswM_GenRqstUserRef_Core0_Par0[3u] =
{
    240,
    66,
    95,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ModeRqstPortLCfgType, BSWM_CONST) BswM_ModeRqstLCfg_Core0_Par0 =
{

    &(BswM_CansmInd_LCfg_Core0_Par0[0]),    /*BswMCanSMIndication*/
    &(BswM_CansmIndChRef_Core0_Par0[0]),    /*BswMCanSMChannelRef*/
    &(BswM_ComMInd_LCfg_Core0_Par0[0]),    /*BswMComMIndication*/
    &(BswM_ComMIndChRef_Core0_Par0[0]),    /*BswMComMChannelRef*/
    &(BswM_DcmComModeRqst_LCfg_Core0_Par0[0]),    /*BswMDcmComModeRequest*/
    &(BswM_DcmChRef_Core0_Par0[0]),    /*BswMDcmComMChannelRef*/
    &(BswM_EcuMState_LCfg_Core0_Par0[0]),
    &(BswM_EcuMWkSrcRqst_LCfg_Core0_Par0[0]),    /*BswMEcuMWakeupSource*/
    &(BswM_EcuMWkSrcRef_Core0_Par0[0]),    /*BswMEcuMWakeupSrcRef*/
    &(BswM_EcuMRunRqst_LCfg_Core0_Par0[0]),    /*BswMEcuMRUNRequestIndication*/
    &(BswM_EcuMRunRqstRef_Core0_Par0[0]),    /*BswMEcuMRUNRequestProtocolPort*/
    &(BswM_GeneRqst_LCfg_Core0_Par0[0]),    /*BswMGenericRequest*/
    &(BswM_GenRqstUserRef_Core0_Par0[0]),    /*BswMModeRequesterId*/
    NULL_PTR,    /*BswMSwcModeNotification*/
    NULL_PTR,    /*BswMSwcModeNotificationModeDeclarationGroupPrototypeRef*/
    NULL_PTR,    /*BswMSwcModeRequest*/
    NULL_PTR,    /*BswMSwcModeRequestVariableDataPrototypeRef*/
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

/*********Rules**********/ 

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule0Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(ECUM_WKSTATUS_VALIDATED == BswM_GetEcuMWakeSrcStatus(0))
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
    2u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule1Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(ECUM_RUNSTATUS_REQUESTED == BswM_GetEcuMRunRqstStatus(1))
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
    3u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule2Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((ECUM_RUNSTATUS_REQUESTED == BswM_GetEcuMRunRqstStatus(0))
    && (ECUM_RUNSTATUS_RELEASED == BswM_GetEcuMRunRqstStatus(1)))
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
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule3Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((ECUM_WKSTATUS_PENDING == BswM_GetEcuMWakeSrcStatus(0))
    || (ECUM_WKSTATUS_PENDING == BswM_GetEcuMWakeSrcStatus(1)))
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
    5u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule4Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(CANSM_BSWM_NO_COMMUNICATION != BswM_GetCanSmIndStatus(0))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule4FalseActList_Core0_Par0[1u] =
{
    19u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule4TrueActList_Core0_Par0[1u] =
{
    18u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule5Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule5FalseActList_Core0_Par0[1u] =
{
    17u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule5TrueActList_Core0_Par0[1u] =
{
    16u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule6Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule6TrueActList_Core0_Par0[1u] =
{
    0u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule7Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((CANSM_BSWM_BUS_OFF == BswM_GetCanSmIndStatus(0))
    || (CANSM_BSWM_SILENT_COMMUNICATION == BswM_GetCanSmIndStatus(0)))
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
    1u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule8Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule8TrueActList_Core0_Par0[1u] =
{
    6u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule9Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((CANSM_BSWM_NO_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    && (ECUM_WKSTATUS_EXPIRED == BswM_GetEcuMWakeSrcStatus(0)))
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
    15u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule10Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule10FalseActList_Core0_Par0[1u] =
{
    21u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule10TrueActList_Core0_Par0[1u] =
{
    20u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule11Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule11TrueActList_Core0_Par0[1u] =
{
    22u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule12Expression_Core0_Par0(void)
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

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule13Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(CANSM_BSWM_FULL_COMMUNICATION != BswM_GetCanSmIndStatus(0))
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
    26u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule14Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((CANSM_BSWM_FULL_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    && (1u == BswM_GetGeneRqstStatus(0)))
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
    25u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule15Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    /* PRQA S 3415 ++*/ /* VL_BswM_3415 */    
    if((CANSM_BSWM_FULL_COMMUNICATION == BswM_GetCanSmIndStatus(0))
    && (0u == BswM_GetGeneRqstStatus(0)))
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule15TrueActList_Core0_Par0[1u] =
{
    27u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule16Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule16TrueActList_Core0_Par0[1u] =
{
    9u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule17Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule17TrueActList_Core0_Par0[1u] =
{
    10u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule18Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule18TrueActList_Core0_Par0[1u] =
{
    11u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule19Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule19TrueActList_Core0_Par0[1u] =
{
    12u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule20Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule20TrueActList_Core0_Par0[1u] =
{
    13u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule21Expression_Core0_Par0(void)
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
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule21TrueActList_Core0_Par0[1u] =
{
    14u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"
static FUNC(BswM_RuleStateType, BSWM_CODE) BswM_Rule22Expression_Core0_Par0(void)
{
    BswM_RuleStateType result = BSWM_FALSE;
    if(ECUM_WKSTATUS_VALIDATED == BswM_GetEcuMWakeSrcStatus(1))
    {
        result = BSWM_TRUE;
    }
    return result;
}
#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListIndexType, BSWM_CONST) BswM_Rule22TrueActList_Core0_Par0[1u] =
{
    28u
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_RuleLcCfgType, BSWM_CONST) BswM_RuleLCfg_Core0_Par0[23u] =
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
        NULL_PTR,    /*BswMRuleTrueActionList*/
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
        BswM_Rule4FalseActList_Core0_Par0, /*BswMRuleFalseActionList*/
        BswM_Rule4TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule5Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        BswM_Rule5FalseActList_Core0_Par0, /*BswMRuleFalseActionList*/
        BswM_Rule5TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule6Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_TRUE,        /*BswMRuleInitState*/
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
        BSWM_TRUE,        /*BswMRuleInitState*/
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
        BSWM_TRUE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        BswM_Rule10FalseActList_Core0_Par0, /*BswMRuleFalseActionList*/
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
        NULL_PTR,    /*BswMRuleTrueActionList*/
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
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule16TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule17Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule17TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule18Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule18TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule19Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule19TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule20Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule20TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule21Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule21TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
    {
        BswM_Rule22Expression_Core0_Par0,        /*BswMRuleExpressionRef*/
        BSWM_FALSE,        /*BswMRuleInitState*/
        FALSE,    /*BswMNestedExecutionOnly*/
        NULL_PTR,    /*BswMRuleFalseActionList*/
        BswM_Rule22TrueActList_Core0_Par0, /*BswMRuleTrueActionList*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

/********************ActionItem*******************/

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionType, BSWM_CONST) BswM_ActListItemsRefAction_Core0_Par0[48u] =
{
    {
        BSWM_USER_CALLOUT,
        0
    },
    {
        BSWM_USER_CALLOUT,
        1
    },
    {
        BSWM_USER_CALLOUT,
        2
    },
    {
        BSWM_ECUM_STATE_SWITCH,
        0
    },
    {
        BSWM_USER_CALLOUT,
        8
    },
    {
        BSWM_ECUM_STATE_SWITCH,
        1
    },
    {
        BSWM_USER_CALLOUT,
        3
    },
    {
        BSWM_COMM_ALLOW_COM,
        0
    },
    {
        BSWM_USER_CALLOUT,
        9
    },
    {
        BSWM_RTE_START,
        0
    },
    {
        BSWM_USER_CALLOUT,
        7
    },
    {
        BSWM_USER_CALLOUT,
        4
    },
    {
        BSWM_ECUM_GO_DOWN_HALT_POLL,
        0
    },
    {
        BSWM_RTE_STOP,
        0
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
        BSWM_USER_CALLOUT,
        7
    },
    {
        BSWM_USER_CALLOUT,
        4
    },
    {
        BSWM_USER_CALLOUT,
        2
    },
    {
        BSWM_ECUM_GO_DOWN_HALT_POLL,
        0
    },
    {
        BSWM_RTE_STOP,
        0
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
        BSWM_PDU_GROUP_SWITCH,
        0
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        1
    },
    {
        BSWM_PDU_GROUP_SWITCH,
        0
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
        1
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
        BSWM_ECUM_DRIVER_INIT_BSWM,
        0
    },
    {
        BSWM_ECUM_DRIVER_INIT_BSWM,
        1
    },
    {
        BSWM_USER_CALLOUT,
        8
    },
    {
        BSWM_USER_CALLOUT,
        5
    },
    {
        BSWM_ECUM_GO_DOWN_HALT_POLL,
        0
    },
    {
        BSWM_RTE_STOP,
        0
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
        BSWM_PDU_GROUP_SWITCH,
        4
    },
    {
        BSWM_USER_CALLOUT,
        10
    },
    {
        BSWM_COMM_MODE_SWITCH,
        0
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList3Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[3u])    /*avActType*/
    },
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList4Ref_Core0_Par0[1u] =
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList5Ref_Core0_Par0[4u] =
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
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList6Ref_Core0_Par0[4u] =
{
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList7Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[14u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList8Ref_Core0_Par0[1u] =
{
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList9Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[16u])    /*avActType*/
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
        &(BswM_ActListItemsRefAction_Core0_Par0[17u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList11Ref_Core0_Par0[1u] =
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList12Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[19u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList13Ref_Core0_Par0[1u] =
{
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList14Ref_Core0_Par0[1u] =
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList15Ref_Core0_Par0[5u] =
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
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[26u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList16Ref_Core0_Par0[1u] =
{
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList17Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[28u])    /*avActType*/
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
        &(BswM_ActListItemsRefAction_Core0_Par0[29u])    /*avActType*/
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
        &(BswM_ActListItemsRefAction_Core0_Par0[30u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList20Ref_Core0_Par0[3u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[31u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[32u])    /*avActType*/
    },
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
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList21Ref_Core0_Par0[3u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[34u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[35u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[36u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList22Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[37u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[38u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList23Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[39u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList24Ref_Core0_Par0[3u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[40u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[41u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[42u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList25Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[43u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList26Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[44u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList27Ref_Core0_Par0[1u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[45u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemRefType, BSWM_CONST) BswM_ActList28Ref_Core0_Par0[2u] =
{
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[46u])    /*avActType*/
    },
    {
        NULL_PTR,                                        /*actListRefIdx*/
        NULL_PTR,                                        /*ruleRefIdx*/
        &(BswM_ActListItemsRefAction_Core0_Par0[47u])    /*avActType*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListItemType, BSWM_CONST) BswM_ActionListItemsLCfg_Core0_Par0[48u] =
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
        &(BswM_ActList3Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        5u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList4Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        6u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList5Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        7u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList5Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        8u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList5Ref_Core0_Par0[2u])    /*actionRef*/
    },
    {
        9u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList5Ref_Core0_Par0[3u])    /*actionRef*/
    },
    {
        10u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        11u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        12u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[2u])    /*actionRef*/
    },
    {
        13u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList6Ref_Core0_Par0[3u])    /*actionRef*/
    },
    {
        14u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList7Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        15u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList8Ref_Core0_Par0[0u])    /*actionRef*/
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
        &(BswM_ActList10Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        18u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList11Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        19u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList12Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        20u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList13Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        21u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList14Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        22u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList15Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        23u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList15Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        24u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList15Ref_Core0_Par0[2u])    /*actionRef*/
    },
    {
        25u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList15Ref_Core0_Par0[3u])    /*actionRef*/
    },
    {
        26u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList15Ref_Core0_Par0[4u])    /*actionRef*/
    },
    {
        27u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList16Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        28u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList17Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        29u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList18Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        30u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList19Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        31u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList20Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        32u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList20Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        33u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList20Ref_Core0_Par0[2u])    /*actionRef*/
    },
    {
        34u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList21Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        35u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList21Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        36u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList21Ref_Core0_Par0[2u])    /*actionRef*/
    },
    {
        37u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList22Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        38u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList22Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        39u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList23Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        40u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList24Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        41u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList24Ref_Core0_Par0[1u])    /*actionRef*/
    },
    {
        42u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList24Ref_Core0_Par0[2u])    /*actionRef*/
    },
    {
        43u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList25Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        44u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList26Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        45u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList27Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        46u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList28Ref_Core0_Par0[0u])    /*actionRef*/
    },
    {
        47u,    /*actionItemIdx*/
        FALSE,    /*abortOnFail*/
        NULL_PTR,    /*BswMReportFailRuntimeErrorId*/
        BSWM_ACTIONITEM_ACTION,    /*actionItemType*/
        &(BswM_ActList28Ref_Core0_Par0[1u])    /*actionRef*/
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionListLCfgType, BSWM_CONST) BswM_ActionListLCfg_Core0_Par0[29u] =
{
    /* AL_GenericCanSmBusOff_NO_COM_CanChannel_0 */
    {
        BSWM_TRIGGER,    /*executeType*/
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[0u])    /*actionItems*/
    },
    /* AL_GenericCanSmBusOff_BUSOFF_SILENT_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[1u]),    /* actionItems */
    },
    /* AL_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[2u]),    /* actionItems */
    },
    /* AL_EcuM_RequestStatus_RUN */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[3u]),    /* actionItems */
    },
    /* AL_EcuM_RequestStatus_POSTRUN */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[5u]),    /* actionItems */
    },
    /* AL_EcuM_WakeupSourcePending */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        4u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[6u]),    /* actionItems */
    },
    /* AL_ComM_AllChanel_NO_COM */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        4u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[10u]),    /* actionItems */
    },
    /* AL_NmCtrol_Enable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[14u]),    /* actionItems */
    },
    /* AL_NmCtrol_Disable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[15u]),    /* actionItems */
    },
    /* AL_DCM_Normal_Rx_Enable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[16u]),    /* actionItems */
    },
    /* AL_DCM_Normal_Rx_Disable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[17u]),    /* actionItems */
    },
    /* AL_DCM_Normal_Tx_Enable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[18u]),    /* actionItems */
    },
    /* AL_DCM_Normal_Tx_Disable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[19u]),    /* actionItems */
    },
    /* AL_DCM_Nm_Tx_Enable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[20u]),    /* actionItems */
    },
    /* AL_DCM_Nm_Tx_Disable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[21u]),    /* actionItems */
    },
    /* AL_EcuM_ClearExpiredWakeUpSource_CAN */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        5u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[22u]),    /* actionItems */
    },
    /* AL_RxEnableDM_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[27u]),    /* actionItems */
    },
    /* AL_RxDisableDM_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[28u]),    /* actionItems */
    },
    /* AL_RxEnableGroupSwitch_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[29u]),    /* actionItems */
    },
    /* AL_RxDisableGroupSwitch_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[30u]),    /* actionItems */
    },
    /* AL_ComControl_ON */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        3u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[31u]),    /* actionItems */
    },
    /* AL_ComControl_OFF */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        3u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[34u]),    /* actionItems */
    },
    /* AL_StartUp */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[37u]),    /* actionItems */
    },
    /* AL_ComM_AllChanel_FULL_COM */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[39u]),    /* actionItems */
    },
    /* AL_EcuM_ReleasePostRun */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        3u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[40u]),    /* actionItems */
    },
    /* AL_TxEnable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[43u]),    /* actionItems */
    },
    /* AL_TxDisable_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[44u]),    /* actionItems */
    },
    /* AL_TxEnableReInit_CanChannel_0 */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        1u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[45u]),    /* actionItems */
    },
    /* AL_EcuM_ClearWakeUpSource_EcuMWakeupSource_Local */
    {
        BSWM_TRIGGER,    /* executeType */
        NULL_PTR,    /*actListPrior*/
        2u,    /*BswMActionListItem*/
        &(BswM_ActionListItemsLCfg_Core0_Par0[46u]),    /* actionItems */
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
static CONST(BswM_ActionComMModeSwitchLCfgType, BSWM_CONST) BswM_ComMModeSwiLCfg_Core0_Par0[1u] =
{
    /* BswMComMModeSwitch*/
    {
        /* BswMComMRequestedMode */
        COMM_FULL_COMMUNICATION,
        /* BswMComMUserRef */    
        ComMUser_0,
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ComIpduGruType, BSWM_CONST) BswM_ComEnAbleDmGruLCfg_Core0_Par0[1u] =
{
    Com_RxPduGroup_CONTROLLER_0_IAM,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ComIpduGruType, BSWM_CONST) BswM_ComDisAbleDmGruLCfg_Core0_Par0[1u] =
{
    Com_RxPduGroup_CONTROLLER_0_IAM,
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
/*Action: COM deadline monitor control*/
static CONST(BswM_ActionDMControlLCfgType, BSWM_CONST) BswM_ComDmCtrlLCfg_Core0_Par0[2u] =
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
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ComIpduGruType, BSWM_CONST) BswM_ComEnAblePduGruLCfg_Core0_Par0[3u] =
{
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
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
static CONST(BswM_ActionPduGrpSwitchLCfgType, BSWM_CONST) BswM_ComPduGruCtrlLCfg_Core0_Par0[5u] =
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
static CONST(BswM_ActionEcuMSelectShutTgtLCfgType, BSWM_CONST) BswM_EcuMSelectShutTgtLCfg_Core0_Par0[1u] =
{
    /* BswMEcuMSelectShutdownTarget*/
    {
        /* target */
        ECUM_SHUTDOWN_TARGET_SLEEP,
        /* mode */
        0U,
    },
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_ActionEcuMStateSwitchLCfgType, BSWM_CONST) BswM_EcuMStateSwitchLCfg_Core0_Par0[4u] =
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
    /* BswMEcuMStateSwitch*/
    {
        /* ecuMState */
        ECUM_STATE_SLEEP,
    },
    /* BswMEcuMStateSwitch*/
    {
        /* ecuMState */
        ECUM_STATE_SHUTDOWN,
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
static CONST(BswM_ActionUserCalloutLCfgType, BSWM_CONST) BswM_UserCallLCfg_Core0_Par0[11u] =
{
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        GenericSwitch_CanSmBusOff_NoCom_CanChannel_0,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        GenericSwitch_CanSmBusOff_BusOffSilent_CanChannel_0,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        BswM_EcuM_RequestRun,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        BswM_EcuM_ReleaseRun,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        BswM_EcuM_ReleasePostRun,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        BswM_EcuM_RequestPostRun,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        WakeupSource_Enable,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        WakeupSource_Disable,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        BswM_CanTrcv_ModeShift,
    },
    /* BswMUserCallout*/
    {
        /* userCalloutFctPtr */
        User_EcuM_ClearWakeUpSource_EcuMWakeupSource_Local,
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
    &(BswM_EcuMSelectShutTgtLCfg_Core0_Par0[0U]),    /*BswMEcuMSelectShutdownTarget*/
    &(BswM_EcuMStateSwitchLCfg_Core0_Par0[0U]),    /*BswMEcuMStateSwitch*/
    &(BswM_NmControlLCfg_Core0_Par0[0U]),    /*BswMNMControl*/
    &(BswM_UserCallLCfg_Core0_Par0[0U]),    /*BswMUserCallout*/
};
#define BSWM_STOP_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"
static VAR(BswM_RuleRunTimeType, BSWM_VAR_CLEARED) BswM_RuleRunTime_Core0_Par0[23u];
#define BSWM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "BswM_MemMap.h"

#define BSWM_START_SEC_CONST_UNSPECIFIED
#include "BswM_MemMap.h"
static CONST(BswM_PartitionLCfgType, BSWM_CONST) BswM_PartitionLCfg_Core0[1u] =
{
    {
        &BswM_EvRqstLCfg_Core0_Par0,    /*evRqstLCfg*/
        &BswM_ModeRqstLCfg_Core0_Par0,    /*modeRqstLCfg*/
        23u,    /*numOfRules*/
        &(BswM_RuleLCfg_Core0_Par0[0]),    /*ruleLCfg*/
        0u,    /*numOfDefRules*/
        NULL_PTR,    /*defRuleRefLCfg*/
        29u,    /*numOfActionList*/
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

