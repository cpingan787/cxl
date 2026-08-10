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
 *  @file               : Rte_Dcm.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:29
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
#include "NVM.h"
#include "EEIf.h"
#include "Wdg_59_DriverB.h"
#include "Wdg_59_DriverB_PBTypes.h"
#include "Dcm_Internal.h"
#include "batterySdk.h"
#include "projectConfigure.h"
#include "com.h"
#include "Com_Cfg.h"
#include "string.h"
#include "Dcm.h"
#include "Dem.h"
#include "Dem_Dcm.h"
#include "Vss.h"
#include "Mcu.h"
//#include "taskEcallProcess.h"
#include "SchM_NvM.h"
#include "Fls.h"

#include "logHal.h"
#include "peripheralHal.h"
#include "timerHal.h"
//#include "ecallHal.h"
//#include "alarmSdk.h"

#include "stateSyncSdk.h"
#include "timeSyncSdk.h"
//#include "canPassthroughSdk.h"
#include "parameterSyncSdk.h"
#include "powerManageSdk.h"
#include "taskDtcProcess.h"

const uint32 DIDs_DTC_Configuation[128] = {
            /* bit 0    bit 1     bit 2     bit 3     bit 4    bit 5     bit 6     bit 7 */
/* byte 1*/ 0x95a313, 0x95a311, 0x95a213, 0x95a211, 0x95a113, 0x95a111, 0x95a013, 0x95a011,
/* byte 2*/ 0x957113, 0x957111, 0x952113, 0x952111, 0x95a513, 0x95a511, 0x95a413, 0x95a411,
/* byte 3*/ 0x953111, 0x953412, 0x953413, 0x953411, 0x951171, 0x953312, 0x953313, 0x953311,
/* byte 4*/ 0x955013, 0x955016, 0x955017, 0x954200, 0x954100, 0x951511, 0x953512, 0x953113,
/* byte 5*/ 0x000000, 0x000000, 0x000000, 0x951512, 0x95a713, 0x95a711, 0x955201, 0x955011,
/* byte 6*/ 0x000000, 0xe29887, 0xe298f1, 0xe2a2f1, 0xe298f0, 0xe2a2f0, 0xe2a287, 0xe26200,
/* byte 7*/ 0x000000, 0x95ae09, 0x95ad09, 0x000000, 0x000000, 0x95aa09, 0x95a909, 0x95a809,
/* byte 8*/ 0xd56316, 0xd56217, 0x000000, 0x000000, 0x000000, 0xd60087, 0xe00444, 0xe00142,
/* byte 9*/ 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0xc07488, 0xc07388,
/* byte 10*/0xe28200, 0xe28000, 0xc14687, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
/* byte 11*/0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
/* byte 12*/0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
/* byte 13*/0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
/* byte 14*/0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
/* byte 15*/0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
/* byte 16*/0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
};

DID_F110_t DID_F110RamBuffer[16] = {
    { 0, DID_F111_ADDR_IDX},
    { 1, DID_F112_ADDR_IDX},
    { 2, DID_F113_ADDR_IDX},
    { 3, DID_F114_ADDR_IDX},
    { 4, DID_F115_ADDR_IDX},
    { 5, DID_F116_ADDR_IDX},
    { 6, DID_F117_ADDR_IDX},
    { 7, DID_F118_ADDR_IDX},
    { 8, DID_F119_ADDR_IDX},
    { 9, DID_F11A_ADDR_IDX},
    {10, DID_F11B_ADDR_IDX},
    {11, DID_F11C_ADDR_IDX},
    {12, DID_F11D_ADDR_IDX},
    {13, DID_F11E_ADDR_IDX},
    {14, DID_F11F_ADDR_IDX},
};

extern const uint8 Appl_DID_0xF100_Data[DID_F100_LEN] ;
extern const uint8 Appl_DID_0xF194_Data[DID_F194_LEN] ;
extern const uint8 Appl_DID_0xF1A0_Data[DID_F1A0_LEN] ;
extern const uint8 Appl_DID_0xF1A1_Data[DID_F1A1_LEN] ;
extern const uint8 Appl_DID_0xF1A2_Data[DID_F1A2_LEN] ;
extern const uint8 Appl_DID_0xF1A5_Data[DID_F1A5_LEN] ;

static uint8 g_SpecificCauseCode = 0;
static uint32 gs_RandomSeed = 0x23654789;
static uint8 gs_SeedBuf[4] = {0};
static uint8 longKey[16] = {0xCB, 0x57, 0xE4, 0xEF, 0xB1, 0x10, 0x5B, 0x9C,
    0x8C, 0x44, 0x92, 0x29, 0xFA, 0x26, 0xB7, 0x9C};
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
    uint32 i = 0;
    gs_RandomSeed = (gs_RandomSeed * 16807L) & 0xFFFFFFFFUL;
    for(i = 0 ; i < 4 ; i++)
    {
        Seed[i] = (uint8)((gs_RandomSeed >> ((4 - i - 1U) * 8U)) & 0xFFU);
        gs_SeedBuf[i] = Seed[i];
    }

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
    NvMBlockRamBuffer50[0] = AttemptCounter;
    NvM_WriteBlock(NvMBlock_27Key_error_count,NvMBlockRamBuffer50);
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
Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead>
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
Std_ReturnType  Rte_Call_DataServices_Data_0xB932_DID_0xB932_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB932_DID_0xB932_ConditionCheckRead>
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
Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_FreezeCurrentState(
    Dcm_OpStatusType OpStatus,
    P2CONST(uint8,AUTOMATIC,DCM_VAR)ControlEnableMaskRecord,
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD004_DID_0xD004_FreezeCurrentState>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ControlEnableMaskRecord);
    DCM_UNUSED(ErrorCode);
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

    /* �?查参数是否有�? */
    if (Data == NULL_PTR || ErrorCode == NULL_PTR)
    {
        return E_NOT_OK;
    }

    /* 使用EEIf_Read函数读取DID 0xF130的数�? */
    uint8 readStatus = EEIf_Read(DID_F130_ADDR_IDX, DID_F130_LEN, Data);

    if (readStatus == E_OK)
    {
        *ErrorCode = DCM_E_RESERVED;
        return E_OK;
    }
    else
    {
        *ErrorCode = DCM_E_GENERALREJECT;
        return E_NOT_OK;
    }

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

    memset(Data,0,3);

    if(NvM_ReadBlock(NvMBlock_DIDF18B,NvMBlockRamBuffer5) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 3; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer5[i];
    }

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
    memset(Data,0,16);

    if(NvM_ReadBlock(NvMBlock_DIDF18C,NvMBlockRamBuffer6) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 16; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer6[i];
    }

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

    memset(Data,0,17);

    if(NvM_ReadBlock(NvMBlock_DIDF190,NvMBlockRamBuffer7) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 17; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer7[i];
    }

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

    memset(Data,0,11);

    if(NvM_ReadBlock(NvMBlock_DIDF198,NvMBlockRamBuffer8) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 11; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer8[i];
    }

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

    memset(Data,0,20);

    if(NvM_ReadBlock(NvMBlock_DIDF1A8,NvMBlockRamBuffer9) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 20; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer9[i];
    }

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

    memset(Data,0,5);

    if(NvM_ReadBlock(NvMBlock_DIDF1A9,NvMBlockRamBuffer2) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 5; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer2[i];
    }

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
    memset(Data,0,16);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_SVIF, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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
    memset(Data,0,16);

    Std_ReturnType retValue = E_OK;
    uint8 F110NumBlocks = 0;
    uint32 F110Addr = 0; 
    uint8 i = 0;
    EEIf_Read(DID_F110_ADDR_IDX, 1, &F110NumBlocks);

    if(F110NumBlocks == 0)/* 未被写入 */
    {
        for(i = 0; i < 16; i++)
        {
            Data[i] = 0;
        }
        retValue = E_OK;
        return retValue;
    }
    else if(F110NumBlocks == 1)
    {
        /* 读F11F判断是否是第一轮写入 */
        uint8 IsFirstWheel = 1;//是否是第一轮 1是 0否
        uint8 F11FNumBlocks[16] = {0};
        EEIf_Read(DID_F11F_ADDR_IDX, 16, &F11FNumBlocks);
        for(i = 0; i < 16; i++)
        {
            if(F11FNumBlocks[i] != 0)
            {
                IsFirstWheel = 0;
                break;
            }
        }

        if(IsFirstWheel == 1)
        {
            /* 是第一轮 读取F111 */
            EEIf_Read(DID_F111_ADDR_IDX, 16, Data);
        }
        else
        {
            /* 不是第一轮 读取F11F */
            for(i = 0; i < 16; i++)
            {
                Data[i] = F11FNumBlocks[i];
            }
        }

        retValue = E_OK;
        return retValue;
    }
    else
    {
        F110Addr = DID_F110RamBuffer[F110NumBlocks - 1].Addr;
        retValue = EEIf_Read(F110Addr, 16, Data);
    }

    return retValue;

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

    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F111_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F112_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F113_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F114_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F115_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F116_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F117_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F118_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F119_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F11A_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F11B_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F11C_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F11D_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F11E_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F11F_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        
        *(Data+i) = (uint8_t)temp[i];
    }
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

    memset(Data,0,16);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_F120, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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
    memset(Data,0,16);
    uint8 temp[16] = {0};

    EEIf_Read(DID_F121_ADDR_IDX,16,temp);
    for (uint8_t i = 0; i < 16; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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
    memset(Data,0,10);

    uint32_t len = 0;

    if(ProjectConfig_GetItemData(CONFIG_ITEM_BOOTLOADER_SW_VERSION, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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
    memset(Data,0,10);
    uint8 temp[5] = {0};

    EEIf_Read(DID_F187_ADDR_IDX,5,temp);
    for (uint8_t i = 0; i < 5; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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

    memset(Data,0,5);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_SYSTEM_SUPPLIER_IDENTIFIER, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,5);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_HW_NUMBER, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,10);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_HW_REF_NUMBER, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,10);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_SW_REF_NUMBER, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,5);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_APP_SW_VERSION, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,5);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_CALIBRATION_SW_VERSION, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,5);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_NCF_REF_NUMBER, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,3);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_INDEX_INFORMATION, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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

    memset(Data,0,5);
    uint8 temp[5] = {0};
    
    EEIf_Read(DID_F1AA_ADDR_IDX,5,temp);
    for (uint8_t i = 0; i < 5; i++) 
    {
        *(Data+i) = (uint8_t)temp[i];
    }
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

    memset(Data,0,5);

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

    memset(Data,0,5);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_ECU_THIRD_APP_SW, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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
    //NvM_ReadBlock(NvMBlock_DIDC001,NvMBlockRamBuffer11);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC0, 0x01};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,64);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }

    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC002,NvMBlockRamBuffer12);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer12[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC003,NvMBlockRamBuffer13);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer13[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC004,NvMBlockRamBuffer14);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC0, 0x04};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,64);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }

    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC005,NvMBlockRamBuffer15);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer15[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC006,NvMBlockRamBuffer16);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer16[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC007,NvMBlockRamBuffer17);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer17[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC008,NvMBlockRamBuffer18);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer18[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC009,NvMBlockRamBuffer19);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC0, 0x09};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,6);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }

    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC00A,NvMBlockRamBuffer20);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer20[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC00B,NvMBlockRamBuffer21);
    // for (uint8 i = 0; i < 6; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer21[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC00C,NvMBlockRamBuffer22);
    // for (uint8 i = 0; i < 4; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer22[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC00D,NvMBlockRamBuffer23);
    // for (uint8 i = 0; i < 2; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer23[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC011,NvMBlockRamBuffer24);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC0, 0x11};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,64);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }

    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC012,NvMBlockRamBuffer25);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer25[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC013,NvMBlockRamBuffer26);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer26[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC014,NvMBlockRamBuffer27);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC0, 0x14};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,64);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC015,NvMBlockRamBuffer28);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer28[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC016,NvMBlockRamBuffer29);
    // for (uint8 i = 0; i < 32; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer29[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC102,NvMBlockRamBuffer30);
    DCM_UNUSED(OpStatus);
    memset(Data,0,2);

    if(NvM_ReadBlock(NvMBlock_DIDC102,NvMBlockRamBuffer30) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 2; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer30[i];
    }

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
    //NvM_ReadBlock(NvMBlock_DIDC106,NvMBlockRamBuffer31);
    DCM_UNUSED(OpStatus);
    memset(Data,0,8);

    if(NvM_ReadBlock(NvMBlock_DIDC106,NvMBlockRamBuffer31) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 8; i++)
    {
        *(Data+i) = NvMBlockRamBuffer31[i];
    }

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
    //NvM_ReadBlock(NvMBlock_DIDC109,NvMBlockRamBuffer32);
    // for (uint8 i = 0; i < 14; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer32[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDCA02,NvMBlockRamBuffer33);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xCA, 0x02};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,37);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDCA21,NvMBlockRamBuffer34);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xCA, 0x21};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,1);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC305,NvMBlockRamBuffer35);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC3, 0x05};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,2);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC306,NvMBlockRamBuffer36);
    // for (uint8 i = 0; i < 1; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer36[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC307,NvMBlockRamBuffer37);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC3, 0x07};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,2);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC308,NvMBlockRamBuffer38);
    // for (uint8 i = 0; i < 8; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer38[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC309,NvMBlockRamBuffer39);
    // for (uint8 i = 0; i < 8; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer39[i];
    // }
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
    //NvM_ReadBlock(NvMBlock_DIDC30A,NvMBlockRamBuffer40);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC3, 0x0A};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,2);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDC30C,NvMBlockRamBuffer41);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC3, 0x0C};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,8);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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

    //NvM_ReadBlock(NvMBlock_DIDCE01,NvMBlockRamBuffer42);
    // for (uint8 i = 0; i < 2; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer42[i];
    // }

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
    //NvM_ReadBlock(NvMBlock_DIDCE05,NvMBlockRamBuffer43);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xCE, 0x05};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,1);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDCE06,NvMBlockRamBuffer44);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xCE, 0x06};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,1);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    //NvM_ReadBlock(NvMBlock_DIDCF00,NvMBlockRamBuffer45);
    DCM_UNUSED(OpStatus);
    memset(Data,0,24);

    if(NvM_ReadBlock(NvMBlock_DIDCF00,NvMBlockRamBuffer45) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 24; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer45[i];
    }

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

    //NvM_ReadBlock(NvMBlock_DIDC30D,NvMBlockRamBuffer46);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xC3, 0x0D};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,2);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,1);

    uint32_t supplyVoltage = 0;
    uint8_t KL30_Voltage0_1V = 0;

    PeripheralHalAdGet(AD0_CHANNEL_KL30, &supplyVoltage);
    TBOX_PRINT("KL30_Voltage = %d\n",supplyVoltage);
    // DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "KL30_Voltage = %d", supplyVoltage);

    KL30_Voltage0_1V = supplyVoltage / 100;

    Data[0] = KL30_Voltage0_1V;
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
    memset(Data,0,3);

    uint8 ret = E_OK;
    uint32 Odometer = 0;
    Com_ReceiveSignalGroup(IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx);
    ret = Com_ReceiveSignal(IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx, &Odometer);
    if (0 == ret)
    {
        Data[0] = (uint8_t)((Odometer >> 16) & 0xFF);
        Data[1] = (uint8_t)((Odometer >> 8) & 0xFF);
        Data[2] = (uint8_t)(Odometer & 0xFF);
    }
    else
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return  E_NOT_OK;
    }
    
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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,6);

    int16_t ret = 0;
    FormatTime_t formatTime;
    uint8_t year8 = 0;

    ret = TimeSyncSdkGetRealTime(&formatTime);
    if(ret == -1)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return  E_NOT_OK;
    }

    year8 = formatTime.year - 2000;
    /* 填充数据（共6字节） */
    Data[0] = year8;                  /* Year: 26 → 2026年 */
    Data[1] = formatTime.month;       /* Month */
    Data[2] = formatTime.day;         /* Day */
    Data[3] = formatTime.hour;        /* Hour */
    Data[4] = formatTime.min;         /* Minute */
    Data[5] = formatTime.second;      /* Second */

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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,2);

    uint8 ret = E_OK;
    uint16 vehicleSpeed = 0u;
    Com_ReceiveSignalGroup(IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx);
    ret = Com_ReceiveSignal(IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx, &vehicleSpeed);
    if (0 == ret)
    {
        Data[0u] = (uint8)(vehicleSpeed >> 8u);
        Data[1u] = (uint8)(vehicleSpeed & 0x00FFu);
    }
    else
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return  E_NOT_OK;
    }
    
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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,1);
    
    /* Default values */
    uint8 vehicleMode = 0x0;
    uint8 usageMode = 0x3;
    Com_ReceiveSignalGroup(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx);
    Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &vehicleMode);
    Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &usageMode);
    /* 7-4bit: Vehicle Mode, 3-0bit: Usage Mode */
    Data[0] = ((vehicleMode & 0x0F) << 4) | (usageMode & 0x0F);
    
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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,1);

    Dcm_SesCtrlType activeDiagnosticSession;

    if(Dcm_GetSesCtrlType(&activeDiagnosticSession) == E_OK)
    {
        Data[0] = activeDiagnosticSession;
    }
    else
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
    }

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB9, 0xC1};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,3);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    memset(Data,0,20);

    // if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    // {
    //     *ErrorCode = DCM_E_BUSYREPEATREQUEST;
    //     return E_NOT_OK;
    // }

    if(NvM_ReadBlock(NvMBlock_DIDB001,NvMBlockRamBuffer54) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 20; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer54[i];
    }

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
    memset(Data,0,24);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return E_NOT_OK;
    }

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_MODEM_SW_VERSION, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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
    memset(Data,0,24);

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_MCU_SW_VERSION, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {

    }

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
    memset(Data,0,24);

    // if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    // {
    //     *ErrorCode = DCM_E_BUSYREPEATREQUEST;
    //     return E_NOT_OK;
    // }

    if(NvM_ReadBlock(NvMBlock_DIDB004,NvMBlockRamBuffer55) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }

    for (uint8 i = 0; i < 24; i++) 
    {
        *(Data+i) = NvMBlockRamBuffer55[i];
    }

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
    memset(Data,0,128);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return E_NOT_OK;
    }

    uint32_t len = 0;
    if(ProjectConfig_GetItemData(CONFIG_ITEM_NAD_SW_VERSION, Data, &len) != 0)
    {
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        return E_NOT_OK;
    }
    else
    {
        
    }

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
    memset(Data,0,32);
    
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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,4);

    uint32_t systemTime = 0; /* 系统时间（秒），实际应从系统获取 */
    TimerHalGetRtcTime(&systemTime);

    Data[0] = (uint8_t)((systemTime >> 24) & 0xFF);
    Data[1] = (uint8_t)((systemTime >> 16) & 0xFF);
    Data[2] = (uint8_t)((systemTime >> 8) & 0xFF);
    Data[3] = (uint8_t)(systemTime & 0xFF);

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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,3);

    uint8_t powerStatus = 0;
    PowerManageSdkGetPowerInfo(NULL, &powerStatus,NULL);
    TBOX_PRINT("DID B083 powerStatus = %d\n",powerStatus);

    switch(powerStatus)
    {
        case PM_HAL_WAKEUP_SOURCE_CAN1:
            Data[0] |= (0x01);
            break;

        case PM_HAL_WAKEUP_SOURCE_MPU:
            Data[0] |= (0x01 << 2);
            break;

        case PM_HAL_WAKEUP_SOURCE_BLE:
            Data[0] |= (0x01 << 3);
            break;

        case PM_HAL_WAKEUP_SOURCE_MCURTC:
            Data[1] |= (0x01 << 0);
            break;

        default:
            break;
    }

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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,1);

    uint32_t gnssAdcValue0 = 0;
    uint32_t gnssAdcValue1 = 0;
    // F9K天线 bit1-0
    PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC0, &gnssAdcValue0);
    PeripheralHalAdGet(AD0_CHANNEL_MCU_GPS_ANT_ADC1, &gnssAdcValue1);
    Data[0] = 0;
    if((gnssAdcValue0 >= 2050 && gnssAdcValue0 <= 2450) || (gnssAdcValue1 >= 2050 && gnssAdcValue1 <= 2450))
    {
        //天线断开
        Data[0] = 0x00;
    }
    else if((gnssAdcValue0 >= 2050 && gnssAdcValue0 <= 2450) || (gnssAdcValue1 >= 100 && gnssAdcValue1 <= 300))
    {
        //天线正常
        Data[0] |= (0x01);
    }
    else if((gnssAdcValue0 ==0) || (gnssAdcValue1 == 0))
    {
        //天线对地短接
        Data[0] |= (0x02);
    }
    else
    {
    }

    //GNSS天线 bit7-4  外置GNSS预留的，不上件
    Data[0] |= (0x03 << 4);


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
    memset(Data,0,8);

    uint8_t *p_buf = Data;
    LocationInfoSync_t locationInfo;

    if(StateSyncGetLocationInfo(&locationInfo) != 0)
    {
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return E_NOT_OK;
    }

    *p_buf++ = (uint8_t)((locationInfo.longitude >> 24) & 0xFF);
    *p_buf++ = (uint8_t)((locationInfo.longitude >> 16) & 0xFF);
    *p_buf++ = (uint8_t)((locationInfo.longitude >> 8) & 0xFF);
    *p_buf++ = (uint8_t)(locationInfo.longitude & 0xFF);

    *p_buf++ = (uint8_t)((locationInfo.latitude >> 24) & 0xFF);
    *p_buf++ = (uint8_t)((locationInfo.latitude >> 16) & 0xFF);
    *p_buf++ = (uint8_t)((locationInfo.latitude >> 8) & 0xFF);
    *p_buf++ = (uint8_t)(locationInfo.latitude & 0xFF);

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
    memset(Data,0,8);

    uint8_t *p_buf = Data;
    LocationInfoSync_t locationInfo;

    if(StateSyncGetLocationInfo(&locationInfo) != 0)
    {
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return E_NOT_OK;
    }

    /* GNSS_TIME_IAM 1-4 byte*/
    *p_buf++ = (uint8_t)((locationInfo.timeStamp >> 24) & 0xFF);
    *p_buf++ = (uint8_t)((locationInfo.timeStamp >> 16) & 0xFF);
    *p_buf++ = (uint8_t)((locationInfo.timeStamp >> 8) & 0xFF);
    *p_buf++ = (uint8_t)(locationInfo.timeStamp & 0xFF);

    /* GNSS_HDOP_IAM 5 byte*/
    if((locationInfo.accuracy) >= 255)
    {
        *p_buf++ = 0xFF;
    }
    else
    {
        *p_buf++ = (uint8_t)(locationInfo.accuracy & 0xFF);
    }

    /* GNSS_SPEED_IAM 6 byte*/
    *p_buf++ = (uint8_t)((locationInfo.speed * 10) & 0xFF);

    /* GNSS_HEAD_IAM 7 byte*/
    *p_buf++ = (uint8_t)((locationInfo.heading *10 / 2) & 0xFF);

    /* GNSS_QUAL_IAM 8 byte*/
    if(locationInfo.useSvsnum == 0)
    {
        *p_buf++ = 0x00;
    }
    else if((locationInfo.useSvsnum < 4) || (locationInfo.accuracy > 255))
    {
        *p_buf++ = 0x01;
    }
    else if((locationInfo.useSvsnum >= 4) || (locationInfo.accuracy <= 255))
    {
        *p_buf++ = 0x02;
    }
    
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
    memset(Data,0,8);
    uint32_t altitude = 0;
    uint8_t statusIndicator = 0; //Position & Heading Status Indicator
    uint8_t svsUseNum = 0; //Live Satellite No. used in Position
    LocationInfoSync_t locationInfo;

    if(StateSyncGetLocationInfo(&locationInfo) != 0)
    {
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return E_NOT_OK;
    }

    uint8_t bit3_is_set = (locationInfo.svwFlags >> 3) & 0x01;  // 航向是否有效
    uint8_t bit4_is_set = (locationInfo.svwFlags >> 4) & 0x01;  // 水平定位精度是否有效
    uint8_t bit5_is_set = (locationInfo.svwFlags >> 5) & 0x01;  // 垂直定位精度是否有效
    if((bit4_is_set == 1) && (bit5_is_set == 1))// High 4 Bits Position Status
    {
        statusIndicator |= 0x10;
    }
    if(bit3_is_set == 1)// Low 4 Bits Heading Status
    {
        statusIndicator |= 0x01;
    }

    altitude = (uint32_t)(locationInfo.altitude * 10);
    svsUseNum = locationInfo.useSvsnum;

    TBOX_PRINT("altitude = %d, statusIndicator = %d, svsUseNum = %d\n", locationInfo.altitude, locationInfo.svwFlags,locationInfo.useSvsnum);

    uint8_t *p_altitude = (uint8_t *)&altitude;
    Data[0] = (uint8_t)((altitude >> 24) & 0xFF); 
    Data[1] = (uint8_t)((altitude >> 16) & 0xFF);
    Data[2] = (uint8_t)((altitude >> 8) & 0xFF);
    Data[3] = (uint8_t)(altitude & 0xFF);
    Data[4] = statusIndicator;
    Data[5] = svsUseNum;
    Data[6] = svsUseNum;

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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,4);
    uint32_t batterVol = 0;
    uint32_t batterTempVol = 0;

    PeripheralHalAdGet(AD0_CHANNEL_BUB_TEMP_ADC,&batterTempVol);
    PeripheralHalAdGet(AD0_CHANNEL_BUB_VOLTAGE_ADC,&batterVol);
    
    if(batterTempVol >= 3200)//判断是否开路
    {
        //开路
        Data[0] = 1;
        Data[1] = 0;
    }
    else
    {
        Data[1] = (uint8_t)(batterVol/100);//单位：0.1V
        TBOX_PRINT("DID B105 batterVol = %d\n",batterVol);

        if(batterVol <= 100)
        {
            //短路
            Data[0] = 0x02;
        }
        else if((batterVol >= 100) && (batterVol <= 1800))
        {
            //欠压 
            Data[0] = 0x03;
        }
        else if((batterVol >= 1800) && (batterVol <= 2800))
        {
            //正常
            Data[0] = 0x00;
        }
        else if(batterVol >= 2800)
        {
            //过压
            Data[0] = 0x04;
        }
        else
        {
            //预留
        }
    }

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB1, 0x80};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,6);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB1, 0x81};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,6);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB1, 0x82};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,16);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB1, 0x83};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,16);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    DCM_UNUSED(ErrorCode);
    memset(Data,0,2);

    uint8_t ANT_Status[2] = {0};
    uint32_t ANT_Value = 0;

    /* 5G ANT MAIN bit1-0 */
    PeripheralHalAdGet(AD0_CHANNEL_MAIN_ANT_ADC, &ANT_Value);
    TBOX_PRINT("5G_ANT0_Value: %d\n", ANT_Value);
    // DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "5G_ANT0_Value = %d", ANT_Value);
    if(ANT_Value <= 200)
    {
        ANT_Status[0] = ANT_Status[0] | 0x02;
    }
    else if(ANT_Value >= 1600)
    {
        ANT_Status[0] = ANT_Status[0] | 0x00;
    }
    else
    {
        ANT_Status[0] = ANT_Status[0] | 0x01;
    }

    /* 5G ANT DIV bit3-2 */
    PeripheralHalAdGet(AD0_CHANNEL_DIV_ANT_ADC, &ANT_Value);
    TBOX_PRINT("5G_ANT1_Value: %d\n", ANT_Value);
    // DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "5G_ANT1_Value = %d", ANT_Value);
    if(ANT_Value <= 200)
    {
        ANT_Status[0] = ANT_Status[0] | (0x02 << 2);
    }
    else if(ANT_Value >= 1600)
    {
        ANT_Status[0] = ANT_Status[0] | (0x00 << 2);
    }
    else
    {
        ANT_Status[0] = ANT_Status[0] | (0x01 << 2);
    }

    /* 5G ANT MIMO3 bit5-4 */
    PeripheralHalAdGet(AD0_CHANNEL_MIMO3_ANT_ADC, &ANT_Value);
    TBOX_PRINT("5G_ANT3_Value: %d\n", ANT_Value);
    // DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "5G_ANT3_Value = %d", ANT_Value);
    if(ANT_Value <= 200)
    {
        ANT_Status[0] = ANT_Status[0] | (0x02 << 4);
    }
    else if(ANT_Value >= 1600)
    {
        ANT_Status[0] = ANT_Status[0] | (0x00 << 4);
    }
    else
    {
        ANT_Status[0] = ANT_Status[0] | (0x01 << 4);
    }

    /* 5G ANT MIMO4 bit7-6 */
    PeripheralHalAdGet(AD0_CHANNEL_MIMO4_ANT_ADC, &ANT_Value);
    TBOX_PRINT("5G_ANT4_Value: %d\n", ANT_Value);
    // DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "5G_ANT4_Value = %d", ANT_Value);
    if(ANT_Value <= 200)
    {
        ANT_Status[0] = ANT_Status[0] | (0x02 << 6);
    }
    else if(ANT_Value >= 1600)
    {
        ANT_Status[0] = ANT_Status[0] | (0x00 << 6);
    }
    else
    {
        ANT_Status[0] = ANT_Status[0] | (0x01 << 6);
    }

    /* CV2X ANT TRX0 bit1-0 (Byte2) */
    PeripheralHalAdGet(AD0_CHANNEL_CV2X_ANT_TRX1_ADC, &ANT_Value);
    TBOX_PRINT("CV2X_ANT_TRX1_Value: %d\n", ANT_Value);
    // DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "CV2X_ANT_TRX1_Value = %d", ANT_Value);
    if(ANT_Value <= 200)
    {
        ANT_Status[1] = ANT_Status[1] | 0x02;
    }
    else if(ANT_Value >= 1600)
    {
        ANT_Status[1] = ANT_Status[1] | 0x00;
    }
    else
    {
        ANT_Status[1] = ANT_Status[1] | 0x01;
    }

    /* CV2X ANT TRX1 bit3-2 (Byte2) */
    PeripheralHalAdGet(AD0_CHANNEL_CV2X_ANT_TRX0_ADC, &ANT_Value);
    TBOX_PRINT("CV2X_ANT_TRX0_Value: %d\n", ANT_Value);
    // DIAG_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_DATA_UPDATE, "CV2X_ANT_TRX0_Value = %d", ANT_Value);
    if(ANT_Value <= 200)
    {
        ANT_Status[1] = ANT_Status[1] | (0x02 << 2);
    }
    else if(ANT_Value >= 1600)
    {
        ANT_Status[1] = ANT_Status[1] | (0x00 << 2);
    }
    else
    {
        ANT_Status[1] = ANT_Status[1] | (0x01 << 2);
    }

    Data[0] = ANT_Status[0];
    Data[1] = ANT_Status[1];

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB1, 0x86};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,16);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB1, 0x87};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,16);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB2, 0x00};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,5);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB2, 0x01};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,16);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB2, 0x02};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,16);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    uint8_t VIN[17] = {0};
    uint16_t len = 17;
    memset(Data,0,2);

    NvM_ReadBlock(NvMBlock_DIDF190,NvMBlockRamBuffer7);
    for(uint16_t i = 0; i < 17; i++)
    {
        VIN[i] = NvMBlockRamBuffer7[i];
    }

    uint8_t VINValid = IsFlashDataValid(VIN, len);
    if(VINValid == 0)
    {
        Data[0] = 0;
        Data[1] = 0;
    }
    else
    {
        Data[0] |= 0x01;        // 设置 bit0 = 0x1
        Data[0] |= (0x07 << 1); // 设置 bit1-7 = 0x7
        Data[1] = 0;
    }

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB2, 0x11};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,2);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB2, 0x30};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,3);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB3, 0x02};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,2);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB9, 0x31};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,16);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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

    uint8_t algFlag = 0;
    VssGetAlgFlag(&algFlag);
    Data[0] = algFlag;

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
    /* The length of this data is configured to be 58 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);

    // 待确认长度
    uint8_t proSBA_Status = 0;
    Data[0] = proSBA_Status;

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
    DCM_UNUSED(ErrorCode);

    uint8_t proSBA_Status = 0xFF;
    Data[0] = proSBA_Status;

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

    /* �?查参数是否有�? */
    if (Data == NULL_PTR || ErrorCode == NULL_PTR)
    {
        return E_NOT_OK;
    }

    /* 使用EEIf_Read函数读取DID 0xAFF5的数�? */
    uint8 readStatus = EEIf_Read(DID_AFF5_ADDR_IDX, DID_AFF5_LEN, Data);

    if (readStatus == E_OK)
    {
        *ErrorCode = DCM_E_RESERVED;
        return E_OK;
    }
    else
    {
        *ErrorCode = DCM_E_GENERALREJECT;
        return E_NOT_OK;
    }

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xAF, 0xF6};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,1);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;


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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xBE, 0x01};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,1);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xBE, 0x04};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,1);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xBE, 0x80};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,7);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xBE, 0x05};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,4);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xBE, 0x06};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,36);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData>
     */
    //NvM_ReadBlock(NvMBlock_DID0100,NvMBlockRamBuffer53);

    // for (uint8 i = 0; i < 16; i++)
    // {
    //     *(Data+i) = NvMBlockRamBuffer53[i];
    // }
    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    memset(Data,0,16);

    NvM_ReadBlock(NvMBlock_DID0100,NvMBlockRamBuffer53);
    memcpy(Data,NvMBlockRamBuffer53,16);

    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xB932_DID_0xB932_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xB932_DID_0xB932_ReadData>
     */

    /* custom code.... */
    /* The length of this data is configured to be 4 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3] = {0x22, 0xB9, 0x32};
    uint16_t UDSReqDataLen = 3;
    memset(Data,0,25);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRead_PENDING(UDSReqData, UDSReqDataLen, Data);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ResetToDefault(
    Dcm_OpStatusType OpStatus,
    P2CONST(uint8,AUTOMATIC,DCM_VAR)ControlEnableMaskRecord,
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD004_DID_0xD004_ResetToDefault>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ControlEnableMaskRecord);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReturnControlToECU(
    P2CONST(uint8,AUTOMATIC,DCM_VAR)ControlEnableMaskRecord,
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReturnControlToECU>
     */

    /* custom code.... */
    DCM_UNUSED(ControlEnableMaskRecord);
    DCM_UNUSED(ErrorCode);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ShortTermAdjustment(
    P2CONST(uint8,AUTOMATIC,DCM_VAR) ControlStateInfo,
    uint16 DataLength,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR) ControlMask,
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xD004_DID_0xD004_ShortTermAdjustment>
     */

    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(ControlStateInfo);
    DCM_UNUSED(DataLength);
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ControlMask);
    DCM_UNUSED(ErrorCode);
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
    if (DCM_INITIAL == OpStatus)
    {
        return DCM_E_FORCE_RCRRP;
    }
    else if(DCM_FORCE_RCRRP_OK == OpStatus)
    {
        /* 写入数据 */
        uint8 writeStatus = EEIf_Write(DID_F130_ADDR_IDX, DataLength, Data);
        if (E_OK == writeStatus)
        {
            return E_OK;
        }
    }

    // 其他情况，返回一般拒绝错�?
    *ErrorCode = DCM_E_GENERALREJECT;
    return E_NOT_OK;
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
    DCM_UNUSED(OpStatus);

    uint16_t timeout = 0;
    NvM_RequestResultType blockret = 0;

    if ((Data == NULL_PTR) || (ErrorCode == NULL_PTR))
    {
        return E_NOT_OK;
    }

    if (DataLength != 3u)
    {
        *ErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
        return E_NOT_OK;
    }

    /* 读取block */
    if (NvM_ReadBlock(NvMBlock_DIDF18B, NvMBlockRamBuffer5) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }

    /* 等待读取完成 */
    do {
        timeout++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(NvMBlock_DIDF18B, &blockret);

        if (timeout >= 5000u)
        {
            *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            return E_NOT_OK;
        }
    } while (blockret == NVM_REQ_PENDING);

    if ((blockret != NVM_REQ_OK) && (blockret != NVM_REQ_RESTORED_FROM_ROM))
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }

    /* 检查是否已写入：已写入则回复 NRC 22 */
    for (uint8 i = 0u; i < 3u; i++)
    {
        if (NvMBlockRamBuffer5[i] != 0x00u)
        {
            *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            return E_NOT_OK;
        }
    }

    /* 写入数据到 NvM RAM buffer */
    for (uint8 i = 0u; i < 3u; i++)
    {
        NvMBlockRamBuffer5[i] = Data[i];
    }

    if (NvM_WriteBlock(NvMBlock_DIDF18B, NvMBlockRamBuffer5) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }

    return E_OK;
    
    // DCM_UNUSED(OpStatus);
    // uint16_t timeout = 0;
    // NvM_RequestResultType blockret = 0;

    // /* 读取block */
    // NvM_ReadBlock(NvMBlock_DIDF18B, NvMBlockRamBuffer5);
    // /* 等待读取完成 */
    // do{
    //     timeout++;
    //     NvM_MainFunction();
    //     Fee_MainFunction();
    //     Fls_MainFunction();
    //     NvM_GetErrorStatus(NvMBlock_DIDF18B, &blockret);
    //     if(timeout >= 5000)break;
    // }while(blockret == NVM_REQ_PENDING);
    // /* 检查是否已写入 */
    // for(uint8 j = 0; j < 3; j++)
    // {
    //     /* 已写入回复NRC 22 */
    //     if(NvMBlockRamBuffer5[j] != 0x00)
    //     {
    //         *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
    //         return E_NOT_OK;
    //     }
    // }

    // /* 写入数据 */
    // for (uint8 i = 0; i < 3; i++) 
    // {
    //    NvMBlockRamBuffer5[i]= *(Data+i);
    // }
    // if(NvM_WriteBlock(NvMBlock_DIDF18B,NvMBlockRamBuffer5) == E_NOT_OK)
    // {
    //     *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    //     return E_NOT_OK;
    // }
    // EEIf_Write(DID_F18B_ADDR_IDX, 3, Data);

    // return E_OK;

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
    DCM_UNUSED(OpStatus);
    uint16_t timeout = 0;
    NvM_RequestResultType blockret = 0;

    /* 读取block */
    NvM_ReadBlock(NvMBlock_DIDF18C, NvMBlockRamBuffer6);
    /* 等待读取完成 */
    do{
        timeout++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(NvMBlock_DIDF18C, &blockret);
        if(timeout >= 5000)break;
    }while(blockret == NVM_REQ_PENDING);
    /* 检查是否已写入 */
    for(uint8 j = 0; j < 16; j++)
    {
        /* 已写入回复NRC 22 */
        if(NvMBlockRamBuffer6[j] != 0x00)
        {
            *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            return E_NOT_OK;
        }
    }

    /* 写入数据 */
    for (uint8 i = 0; i < 16; i++) 
    {
       NvMBlockRamBuffer6[i]= *(Data+i);
    }
    if(NvM_WriteBlock(NvMBlock_DIDF18C,NvMBlockRamBuffer6) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }
    EEIf_Write(DID_F18C_ADDR_IDX, 16, Data);

    if(ParameterSyncSdkGetFromCpuIsFinished() == 0)//等待参数同步完成 如果参数同步完成则无需发送请求
    {
        ParameterSyncSdkSetToCpu(E_PARAMID_SN, NvMBlockRamBuffer6, 16);
    }

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

DCM_UNUSED(OpStatus);
    uint16_t timeout = 0;
    NvM_RequestResultType blockret = 0;

    /* 读取block */
    NvM_ReadBlock(NvMBlock_DIDF190, NvMBlockRamBuffer7);
    /* 等待读取完成 */
    do{
        timeout++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(NvMBlock_DIDF190, &blockret);
        if(timeout >= 5000)break;
    }while(blockret == NVM_REQ_PENDING);
    /* 检查是否已写入 */
    for(uint8 j = 0; j < 17; j++)
    {
        /* 已写入回复NRC 22 */
        if(NvMBlockRamBuffer7[j] != 0x00)
        {
            *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            return E_NOT_OK;
        }
    }

    /* 写入数据 */
    for (uint8 i = 0; i < 17; i++) 
    {
       NvMBlockRamBuffer7[i]= *(Data+i);
    }

    if(NvM_WriteBlock(NvMBlock_DIDF190,NvMBlockRamBuffer7) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }
    EEIf_Write(DID_F190_ADDR_IDX, 17, Data);

    if(ParameterSyncSdkGetFromCpuIsFinished() == 0)//等待参数同步完成 如果参数同步完成则无需发送请求
    {
        ParameterSyncSdkSetToCpu(E_PARAMID_VIN, NvMBlockRamBuffer7, 17);
    }

    // VIN写入后启用备电
    BatterySdkSetBatteryEnableFlag(1);

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
    DCM_UNUSED(OpStatus);

    for (uint8 i = 0; i < 11; i++) 
    {
       NvMBlockRamBuffer8[i]= *(Data+i);
    }

    if(NvM_WriteBlock(NvMBlock_DIDF198,NvMBlockRamBuffer8) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }
    EEIf_Write(DID_F198_ADDR_IDX, 11, Data);

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
    DCM_UNUSED(OpStatus);

    for (uint8 i = 0; i < 20; i++) 
    {
       NvMBlockRamBuffer9[i]= *(Data+i);
    }

    if(NvM_WriteBlock(NvMBlock_DIDF1A8,NvMBlockRamBuffer9) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }
    EEIf_Write(DID_F1A8_ADDR_IDX, 20, Data);

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
    DCM_UNUSED(OpStatus);

    for (uint8 i = 0; i < 5; i++) 
    {
       NvMBlockRamBuffer2[i]= *(Data+i);
    }

    if(NvM_WriteBlock(NvMBlock_DIDF1A9,NvMBlockRamBuffer2) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }
    EEIf_Write(DID_F1A9_ADDR_IDX, 5, Data);

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
    // for (uint8 i = 0; i < 64; i++)
    // {
    //    NvMBlockRamBuffer11[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC001,NvMBlockRamBuffer11);
    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+64] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC0;
    UDSReqData[2] = 0x01;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer12[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC002,NvMBlockRamBuffer12);
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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer13[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC003,NvMBlockRamBuffer13);
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
    // for (uint8 i = 0; i < 64; i++)
    // {
    //    NvMBlockRamBuffer14[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC004,NvMBlockRamBuffer14);
    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+64] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC0;
    UDSReqData[2] = 0x04;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer15[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC005,NvMBlockRamBuffer15);
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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer16[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC006,NvMBlockRamBuffer16);
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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer17[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC007,NvMBlockRamBuffer17);
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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer18[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC008,NvMBlockRamBuffer18);
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
    // for (uint8 i = 0; i < 6; i++)
    // {
    //    NvMBlockRamBuffer19[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC009,NvMBlockRamBuffer19);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+6] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC0;
    UDSReqData[2] = 0x09;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer20[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC00A,NvMBlockRamBuffer20);
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
    // for (uint8 i = 0; i < 6; i++)
    // {
    //    NvMBlockRamBuffer21[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC00B,NvMBlockRamBuffer21);
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
    // for (uint8 i = 0; i < 4; i++)
    // {
    //    NvMBlockRamBuffer22[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC00C,NvMBlockRamBuffer22);
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
    // for (uint8 i = 0; i < 2; i++)
    // {
    //    NvMBlockRamBuffer23[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC00D,NvMBlockRamBuffer23);
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
    // for (uint8 i = 0; i < 64; i++)
    // {
    //    NvMBlockRamBuffer24[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC011,NvMBlockRamBuffer24);
    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+64] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC0;
    UDSReqData[2] = 0x11;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer25[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC012,NvMBlockRamBuffer25);
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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer26[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC013,NvMBlockRamBuffer26);
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
    // for (uint8 i = 0; i < 64; i++)
    // {
    //    NvMBlockRamBuffer27[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC014,NvMBlockRamBuffer27);
    /* custom code.... */
    /* The length of this data is configured to be 8 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+64] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC0;
    UDSReqData[2] = 0x14;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer28[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC015,NvMBlockRamBuffer28);
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
    // for (uint8 i = 0; i < 32; i++)
    // {
    //    NvMBlockRamBuffer29[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC016,NvMBlockRamBuffer29);
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
    // for (uint8 i = 0; i < 2; i++)
    // {
    //    NvMBlockRamBuffer30[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC102,NvMBlockRamBuffer30);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);

    for (uint8 i = 0; i < 2; i++) 
    {
       NvMBlockRamBuffer30[i]= *(Data+i);
    }

    if(NvM_WriteBlock(NvMBlock_DIDC102,NvMBlockRamBuffer30) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }

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
    // for (uint8 i = 0; i < 8; i++)
    // {
    //    NvMBlockRamBuffer31[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC106,NvMBlockRamBuffer31);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    DCM_UNUSED(OpStatus);

    for (uint8 i = 0; i < 8; i++) 
    {
       NvMBlockRamBuffer31[i]= *(Data+i);
    }

    if(NvM_WriteBlock(NvMBlock_DIDC106,NvMBlockRamBuffer31) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }
    PowerManageSdkSyncListenTimer(NvMBlockRamBuffer31[0], NvMBlockRamBuffer31[4]);

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
    // for (uint8 i = 0; i < 14; i++)
    // {
    //    NvMBlockRamBuffer32[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC109,NvMBlockRamBuffer32);
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
    // for (uint8 i = 0; i < 37; i++)
    // {
    //    NvMBlockRamBuffer33[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDCA02,NvMBlockRamBuffer33);
    /* custom code.... */
    /* The length of this data is configured to be 5 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+37] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xCA;
    UDSReqData[2] = 0x02;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            memcpy(NvMBlockRamBuffer33, Data, DataLength);
            NvM_WriteBlock(NvMBlock_DIDCA02,NvMBlockRamBuffer33);

            memcpy(NvMBlockRamBuffer16,&Data[21],15);
            NvM_WriteBlock(NvMBlock_DIDC006,NvMBlockRamBuffer16);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 1; i++)
    // {
    //    NvMBlockRamBuffer34[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDCA21,NvMBlockRamBuffer34);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+7] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xCA;
    UDSReqData[2] = 0x21;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 2; i++)
    // {
    //    NvMBlockRamBuffer35[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC305,NvMBlockRamBuffer35);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+2] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC3;
    UDSReqData[2] = 0x05;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 1; i++)
    // {
    //    NvMBlockRamBuffer36[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC306,NvMBlockRamBuffer36);
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
    // for (uint8 i = 0; i < 2; i++)
    // {
    //    NvMBlockRamBuffer37[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC307,NvMBlockRamBuffer37);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+2] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC3;
    UDSReqData[2] = 0x07;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 8; i++)
    // {
    //    NvMBlockRamBuffer38[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC308,NvMBlockRamBuffer38);
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
    // for (uint8 i = 0; i < 8; i++)
    // {
    //    NvMBlockRamBuffer39[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC309,NvMBlockRamBuffer39);
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
    // for (uint8 i = 0; i < 2; i++)
    // {
    //    NvMBlockRamBuffer40[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC30A,NvMBlockRamBuffer40);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+2] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC3;
    UDSReqData[2] = 0x0A;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 8; i++)
    // {
    //    NvMBlockRamBuffer41[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC30C,NvMBlockRamBuffer41);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+8] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC3;
    UDSReqData[2] = 0x0C;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }

    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            memcpy(NvMBlockRamBuffer41, Data, DataLength);
            NvM_WriteBlock(NvMBlock_DIDC30C,NvMBlockRamBuffer41);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 2; i++)
    // {
    //    NvMBlockRamBuffer42[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDCE01,NvMBlockRamBuffer42);
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
    // for (uint8 i = 0; i < 1; i++)
    // {
    //    NvMBlockRamBuffer43[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDCE05,NvMBlockRamBuffer43);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+1] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xCE;
    UDSReqData[2] = 0x05;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 1; i++)
    // {
    //    NvMBlockRamBuffer44[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDCE06,NvMBlockRamBuffer44);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+1] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xCE;
    UDSReqData[2] = 0x06;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // for (uint8 i = 0; i < 24; i++)
    // {
    //    NvMBlockRamBuffer45[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDCF00,NvMBlockRamBuffer45);
    /* custom code.... */
    /* The length of this data is configured to be 3 bytes */
    DCM_UNUSED(OpStatus);

    for (uint8 i = 0; i < 24; i++) 
    {
       NvMBlockRamBuffer45[i]= *(Data+i);
    }

    if(NvM_WriteBlock(NvMBlock_DIDCF00,NvMBlockRamBuffer45) == E_NOT_OK)
    {
        *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        return E_NOT_OK;
    }

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
    // for (uint8 i = 0; i < 2; i++)
    // {
    //    NvMBlockRamBuffer46[i]= *(Data+i);
    // }

    // NvM_WriteBlock(NvMBlock_DIDC30D,NvMBlockRamBuffer46);
    /* custom code.... */
    /* The length of this data is configured to be 1 bytes */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[3+2] = {0};
    uint16_t UDSReqDataLen = 3+DataLength;

    UDSReqData[0] = 0x2E;
    UDSReqData[1] = 0xC3;
    UDSReqData[2] = 0x0D;
    memcpy((UDSReqData+3), Data, DataLength);

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughWrite_PENDING(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData>
     */
    for (uint8 i = 0; i < 16; i++)
    {
       NvMBlockRamBuffer53[i]= *(Data+i);
    }

    NvM_WriteBlock(NvMBlock_DID0100,NvMBlockRamBuffer53);

    /* custom code.... */
    /* The length of this data is configured to be 2 bytes */
    uint8_t i = 0;
    uint8_t j = 0;

    for(i = 0; i < 16; i++)
    {
        for(j = 0; j < 8; j++)
        {
            if(DIDs_DTC_Configuation[i*8+j] != 0)
            {
                if ((Data[i] & (1u << j)) == 0)
                {
                    Dem_SetDTCSuppression(DIDs_DTC_Configuation[i*8+j], DEM_DTC_FORMAT_UDS, TRUE);//抑制
                }
                else
                {
                    Dem_SetDTCSuppression(DIDs_DTC_Configuation[i*8+j], DEM_DTC_FORMAT_UDS, FALSE);//不抑制
                }
            }
        }
    }

    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_DataServices_Data_0xF187_DID_0xF187_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_DataServices_Data_0xF187_DID_0xF187_WriteData>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ErrorCode);
    *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
    NRC22SpecificCauseCodeSet(0x87);
    return E_NOT_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

void DIDs_DTC_Configuation_Init(void)
{
    uint8_t Data[16] = {0};
    uint8_t i = 0;
    uint8_t j = 0;
    
    NvM_ReadBlock(NvMBlock_DID0100,NvMBlockRamBuffer53);
    memcpy(Data,NvMBlockRamBuffer53,16);

    for(i = 0; i < 16; i++)
    {
        for(j = 0; j < 8; j++)
        {
            if(DIDs_DTC_Configuation[i*8+j] != 0)
            {
                if ((Data[i] & (1u << j)) == 0)
                {
                    Dem_SetDTCSuppression(DIDs_DTC_Configuation[i*8+j], DEM_DTC_FORMAT_UDS, TRUE);//抑制
                }
                else
                {
                    Dem_SetDTCSuppression(DIDs_DTC_Configuation[i*8+j], DEM_DTC_FORMAT_UDS, FALSE);//不抑制
                }
            }
        }
    }
}
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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x03, 0xAF, 0x09};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4+1] = {0x31, 0x03, 0xAF, 0x0A};
    uint16_t UDSReqDataLen = 4;

    memcpy(UDSReqData + 4,InBuffer,1);
    UDSReqDataLen += 1;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    OutBuffer[0] = 0x01;
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x03, 0xFE, 0x02};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x03, 0xFE, 0x0A};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x03, 0xFE, 0x0B};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0C_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF0C_RequestResults>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x03, 0xAF, 0x0C};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0B_RequestResults(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF0B_RequestResults>
     */

    /* custom code.... */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x03, 0xAF, 0x0B};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // DCM_UNUSED(InBuffer);
    // DCM_UNUSED(OutBuffer);
    // DCM_UNUSED(currentDataLength);
    // DCM_UNUSED(ErrorCode);
    // DCM_UNUSED(OpStatus);
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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x03, 0xAF, 0x09};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4+1] = {0x31, 0x01, 0xAF, 0x0A};// +1 附带1字节传参
    uint16_t UDSReqDataLen = 4;
    uint8_t UDSRespData[5] = {0};/*该RID无响应，OutBuffer为NULL，此数组为占位符*/

    memcpy(UDSReqData + 4,InBuffer,1);
    UDSReqDataLen += 1;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, UDSRespData, currentDataLength);
            if(OutBuffer != NULL)
            {
                /* 不会执行到此处，因为OutBuffer为NULL */
                memcpy(OutBuffer,UDSRespData,*currentDataLength);
                TBOX_PRINT("UDS31 OutBuffer error !\r\n");
            }

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
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
    Std_ReturnType ret = E_OK;
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4+6] = {0x31, 0x01, 0xFE, 0x02};//附带6字节传参
    uint16_t UDSReqDataLen = 4;

    memcpy(UDSReqData + 4,InBuffer,6);
    UDSReqDataLen += 6;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4+2] = {0x31, 0x01, 0xFE, 0x80};
    uint16_t UDSReqDataLen = 4;

    memcpy(UDSReqData + 4,InBuffer,2);
    UDSReqDataLen += 2;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4+3] = {0x31, 0x01, 0xFE, 0x0A};
    uint16_t UDSReqDataLen = 4;
    uint8_t UDSRespData[5] = {0};/*该RID无响应，OutBuffer为NULL，此数组为占位符*/

    memcpy(UDSReqData + 4,InBuffer,3);
    UDSReqDataLen += 3;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, UDSRespData, currentDataLength);
            if(OutBuffer != NULL)
            {
                /* 不会执行到此处，因为OutBuffer为NULL */
                memcpy(OutBuffer,UDSRespData,*currentDataLength);
                TBOX_PRINT("UDS31 OutBuffer error !\r\n");
            }

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4+1] = {0x31, 0x01, 0xFE, 0x0B};
    uint16_t UDSReqDataLen = 4;

    memcpy(UDSReqData + 4,InBuffer,1);
    UDSReqDataLen += 1;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x01, 0xAF, 0x05};
    uint16_t UDSReqDataLen = 4;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, OutBuffer, currentDataLength);
            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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

    // Std_ReturnType ret = E_OK;     //待ecall适配
    // SosLledState_e ecallStatus = 0;
    // ecallStatus = GetSosLedState();
    // if(ecallStatus == E_SOS_LED_STATE_NO_ECALL)
    // {
    //     if(AlarmSdkEcallTriger(E_ECALL_TRIGGER_TEST_MODE) != 0)
    //     {
    //         ret = E_NOT_OK;
    //         *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    //     }
    //     else;
    // }
    // else
    // {
    //     ret = E_NOT_OK;
    //     *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    // }

    // return ret;

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
        
    // Std_ReturnType ret = E_OK;     //待ecall适配
    // SosLledState_e ecallStatus = 0;
    // ecallStatus = GetSosLedState();
    // if(ecallStatus == E_SOS_LED_STATE_NO_ECALL)
    // {
    //     if(AlarmSdkEcallTriger(E_ECALL_TRIGGER_TEST_MODE) != 0)
    //     {
    //         ret = E_NOT_OK;
    //         *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    //     }
    //     else;
    // }
    // else
    // {
    //     ret = E_NOT_OK;
    //     *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    // }

    // return ret;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0C_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF0C_Start>
     */

    /* custom code.... */
    DCM_UNUSED(InBuffer);
    DCM_UNUSED(OutBuffer);
    DCM_UNUSED(currentDataLength);
    DCM_UNUSED(ErrorCode);
    DCM_UNUSED(OpStatus);
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    static uint8_t AFF7UDSReqData[804] = {0x31, 0x01, 0xAF, 0x0C};//附带6字节传参
    uint16_t UDSReqDataLen = 4;
    uint8_t UDSRespData[5] = {0};/*该RID无响应，OutBuffer为NULL，此数组为占位符*/

    memcpy(AFF7UDSReqData + 4,InBuffer,800);
    UDSReqDataLen += 800;

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(AFF7UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(AFF7UDSReqData, UDSReqDataLen, UDSRespData, currentDataLength);
            if(OutBuffer != NULL)
            {
                /* 不会执行到此处，因为OutBuffer为NULL */
                memcpy(OutBuffer,UDSRespData,*currentDataLength);
                TBOX_PRINT("UDS31 OutBuffer error !\r\n");
            }

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0B_Start(
    /* PRQA S 3432++ */ /* MISRA Rule 20.7 */
    P2CONST(uint8,AUTOMATIC,DCM_VAR)InBuffer,
    Dcm_OpStatusType OpStatus,
    P2VAR(uint8,AUTOMATIC,DCM_VAR)OutBuffer,
    P2VAR(uint16,AUTOMATIC,DCM_VAR) currentDataLength,
    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_VAR)ErrorCode)
/* PRQA S 3432-- */     /* MISRA Rule 20.7 */
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_Call_RoutineServices_Routine_0xAF0B_Start>
     */

    /* custom code.... */
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x01, 0xAF, 0x0B};
    uint16_t UDSReqDataLen = 4;
    uint8_t UDSRespData[5] = {0};/*该RID无响应，OutBuffer为NULL，此数组为占位符*/

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, UDSRespData, currentDataLength);
            if(OutBuffer != NULL)
            {
                /* 不会执行到此处，因为OutBuffer为NULL */
                memcpy(OutBuffer,UDSRespData,*currentDataLength);
                TBOX_PRINT("UDS31 OutBuffer error !\r\n");
            }

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    // DCM_UNUSED(InBuffer);
    // DCM_UNUSED(OutBuffer);
    // DCM_UNUSED(currentDataLength);
    // DCM_UNUSED(ErrorCode);
    // DCM_UNUSED(OpStatus);
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
    Std_ReturnType ret = E_OK;
    int16_t canPassRet = 0;
    uint8_t UDSReqData[4] = {0x31, 0x02, 0xFE, 0x0A};
    uint16_t UDSReqDataLen = 4;
    uint8_t UDSRespData[5] = {0};/*该RID无响应，OutBuffer为NULL，此数组为占位符*/

    if(ParameterSyncSdkGetFromCpuIsFinished()!=0)
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_BUSYREPEATREQUEST;
        return ret;
    }
    
    switch(OpStatus)
    {
        case DCM_INITIAL://首次调用，发起异步请求
            canPassRet = CanPassthrough_SendRequest(UDSReqData, UDSReqDataLen);
            if(canPassRet == 0)
            {
                ret = DCM_E_PENDING;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            }
            break;

        case DCM_PENDING://后续调用，检查是否有响应
            canPassRet = CanPassthroughRoutine_PENDING(UDSReqData, UDSReqDataLen, UDSRespData, currentDataLength);
            if(OutBuffer != NULL)
            {
                /* 不会执行到此处，因为OutBuffer为NULL */
                memcpy(OutBuffer,UDSRespData,*currentDataLength);
                TBOX_PRINT("UDS31 OutBuffer error !\r\n");
            }

            if(canPassRet == 0)
            {
                ret = E_OK;
            }
            else if(canPassRet == 1)//DCM_E_PENDING
            {
                ret = DCM_E_PENDING;
            }
            else if(canPassRet == -1)//timeout
            {
                ret = E_NOT_OK;
                *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else
            {
                ret = E_NOT_OK;
                *ErrorCode = canPassRet;
            }
            break;
    }
    return ret;

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
    
    // Std_ReturnType ret = E_OK;   //待ecall适配
    // SosLledState_e ecallStatus = 0;
    // ecallStatus = GetSosLedState();
    // if(ecallStatus != E_SOS_LED_STATE_NO_ECALL && ecallStatus != E_SOS_LED_STATE_INIT)
    // {
    //     if(AlarmSdkEcallStop() != 0)
    //     {
    //         ret = E_NOT_OK;
    //         *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    //     }
    //     else;
    // }
    // else
    // {
    //     TBOX_PRINT("There is currently no ECALL trigger running, cannot stop\r\n");
    //     ret = E_NOT_OK;
    //     *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    // }

    // return ret;

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
    
    // Std_ReturnType ret = E_OK;   //待ecall适配
    // SosLledState_e ecallStatus = 0;
    // ecallStatus = GetSosLedState();
    // if(ecallStatus != E_SOS_LED_STATE_NO_ECALL && ecallStatus != E_SOS_LED_STATE_INIT)
    // {
    //     if(AlarmSdkEcallStop() != 0)
    //     {
    //         ret = E_NOT_OK;
    //         *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    //     }
    //     else;
    // }
    // else
    // {
    //     TBOX_PRINT("There is currently no ECALL trigger running, cannot stop\r\n");
    //     ret = E_NOT_OK;
    //     *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
    // }

    // return ret;

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
        uint32 init_expired_time = 0;
        NvM_RequestResultType InitNvMWriteAllStatus = NVM_REQ_PENDING;
        Dem_Shutdown();
        NvM_WriteAll();
        do
        {
            //Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERA_INCLUDE_CRITICAL_SECTION);
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
              init_expired_time++;
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
              if(init_expired_time >= 500000)
                  break;

        }while(InitNvMWriteAllStatus == NVM_REQ_PENDING);
        Mcu_PerformReset();
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

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
void NRC22SpecificCauseCodeSet(uint8 SpecificCauseCode)
{
    g_SpecificCauseCode = SpecificCauseCode;
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
uint8 NRC22SpecificCauseCodeGet(void)
{
    return g_SpecificCauseCode;
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
/* PRQA S 3673,3678-- */ /* MISRA Rule 8.13 */
