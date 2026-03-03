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
 *  @file               : Rte_Dcm.c
 *  @author             : iSoft
 *  @date               : 2026-01-22 16:40:21
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#include "Rte_Dcm.h"
#define DCM_UNUSED(a) (void)(a)
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK include>
 */

/* custom code.... */

/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */

/* PRQA S 3673,3678++ */ /* MISRA Rule 8.13 */
/***************************Security Part****************************************/
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_SecurityAccess_Level_1_CompareKey( const  uint8*  Key,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK Rte_Call_SecurityAccess_Level_1_CompareKey>
    */
    /* custom code.... */
    DCM_UNUSED(Key);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter( Dcm_OpStatusType  OpStatus,uint8*  AttemptCounter )
{
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter>
    */
    /* custom code.... */
    DCM_UNUSED(OpStatus);
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_SecurityAccess_Level_1_GetSeed(
        Dcm_OpStatusType OpStatus,uint8* Seed,Dcm_NegativeResponseCodeType* ErrorCode)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_SecurityAccess_Level_1_GetSeed>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Seed);
    DCM_UNUSED(ErrorCode);
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter( Dcm_OpStatusType  OpStatus,  uint8  AttemptCounter )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(AttemptCounter);
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
/***************************Did Part****************************************/

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 5 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 16 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 16 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 5 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(Data);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 5 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(Data);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
/***************************Routine Part****************************************/
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF09_RequestResults>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE02_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE02_RequestResults>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF08_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF08_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF09_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0A_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF0A_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAFF7_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAFF7_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE02_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE02_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE80_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE80_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE0A_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0B_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE0B_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF05_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF05_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF06_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF06_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF07_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF07_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF08_Stop(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF08_Stop>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_Stop(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF09_Stop>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_Stop(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xFE0A_Stop>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF06_Stop(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF06_Stop>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF07_Stop(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF07_Stop>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
/*PreConditon Check*/
Std_ReturnType RTE_PreConditonCheck(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK RTE_PreConditonCheck>
     */

    /* custom code.... */
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType SchM_PerformReset(Rte_ModeType_DcmEcuReset Reset)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK SchM_PerformReset>
     */

    /* custom code.... */
    if (Reset == RTE_MODE_DcmEcuReset_EXECUTE)
    {
        #ifdef DCM_EXAMPLE    /*e.g*/
        Mcu_PerformReset();
        #endif /*#ifdef DCM_EXAMPLE*/
    }
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

/* PRQA S 3673,3678-- */ /* MISRA Rule 8.13 */
