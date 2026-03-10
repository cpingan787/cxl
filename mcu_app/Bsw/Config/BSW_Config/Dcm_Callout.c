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
 *  @file               : Dcm_Callout.c
 *  @author             : iSoft
 *  @date               : 2026-01-19 21:44:11
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/* PRQA S 3673, 6040 EOF */ /* VL_QAC_3673, VL_MTR_Dcm_STPAR */
#include "Dcm_Internal.h"
#include "Dcm_CalloutBoot.h"
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK include>
 */

/* custom code.... */
#if (STD_ON == DCM_UDS_SERVICE0X85_ENABLED)
#include "Dem_Dcm.h"
#endif /* STD_ON == DCM_UDS_SERVICE0X85_ENABLED */

/* BL_AppFlagType* BL_AppFlag = (BL_AppFlagType*) BL_APP_FLAG_ADDRESS; */
Std_ReturnType  Dcm_Rte_PreConditonCheck = E_OK;

/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
extern VAR(uint32, DCM_VAR_POWER_ON_INIT) Dcm_Timer;

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType Dcm_SetProgConditions(
Dcm_OpStatusType OpStatus,
const Dcm_ProgConditionsType * ProgConditions
)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Dcm_SetProgConditions>
     */

    /* custom code.... */
    DCM_UNUSED(OpStatus);
    DCM_UNUSED(ProgConditions);
    return E_OK;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Dcm_EcuStartModeType Dcm_GetProgConditions(Dcm_ProgConditionsType * ProgConditions
)
{

    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Dcm_GetProgConditions>
     */

    /* custom code.... */
    DCM_UNUSED(ProgConditions);
    return DCM_COLD_START;

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
void Rte_DcmControlCommunicationMode(NetworkHandleType DcmDspComMChannelId,Dcm_CommunicationModeType RequestedMode)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_DcmControlCommunicationMode>
     */

    /* custom code.... */
    DCM_UNUSED(DcmDspComMChannelId);
    switch(RequestedMode)
    {
        case DCM_ENABLE_RX_TX_NORM:
        break;
        case DCM_DISABLE_RX_TX_NM:
        break;
        case DCM_ENABLE_RX_TX_NM:
        break;
        case DCM_ENABLE_RX_TX_NORM_NM:
        break;
        case DCM_DISABLE_RX_TX_NORMAL:
        break;
        case DCM_DISABLE_RX_TX_NORM_NM:
        break;
        case DCM_ENABLE_RX_DISABLE_TX_NORM:
        break;
        case DCM_ENABLE_RX_DISABLE_TX_NM:
        break;
        case DCM_ENABLE_RX_DISABLE_TX_NORM_NM:
        break;
        case DCM_DISABLE_RX_ENABLE_TX_NORM:
        break;
        case DCM_DISABLE_RX_ENABLE_TX_NM:
        break;
        case DCM_DISABLE_RX_ENABLE_TX_NORM_NM:
        break;
        default:
        break;
    }

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
void Rte_EnableAllDtcsRecord(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_EnableAllDtcsRecord>
     */

    /* custom code.... */
   /*The update of the DTC status bit information shall continue once a ControlDTCSetting request is performed
     with sub-function set to on or a session layer timeout occurs (server transitions to defaultSession. */
    (void)Dem_DcmEnableDTCSetting(DEM_DTC_GROUP_ALL_DTCS, DEM_DTC_KIND_ALL_DTCS);

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
/* Tm and Os implementation for timer. If DcmTimerType is set to callout, need to implement manually */
FUNC(void, DCM_CODE) Dcm_ResetTime(P2VAR(uint32, AUTOMATIC, DCM_VAR) TimerPtr)
{
    *TimerPtr = Dcm_Timer;

}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
/* Tm and Os implementation for timer. If DcmTimerType is set to callout, need to implement manually */
FUNC(void, DCM_CODE) Dcm_GetTimeSpan(uint32 TimerPtr,P2VAR(uint32, AUTOMATIC, DCM_VAR) TimeSpanPtr)
{
    if (TimerPtr > Dcm_Timer)
    {
        *TimeSpanPtr = (DCM_TIME_OVERFLOW - TimerPtr) + Dcm_Timer;
    }
    else
    {
        *TimeSpanPtr = Dcm_Timer - TimerPtr;
    }
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"

/***************************NRC22 Specific User Code Part****************************************/
/* Define macros DCM_NRC22_SPECIFIC_CAUSE_CODE in the project configuration to report the cause of NRC22.*/
#if (STD_ON == DCM_NRC22_SPECIFIC_CAUSE_CODE)
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"
Std_ReturnType Dcm_GetSpecificCauseCode(Dcm_SpecificCauseCodeType* code)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Dcm_GetSpecificCauseCode>
     */
    /* custom code.... */
    /* *code: the Specific Cause Code defined by customer.the 4th data byte for neg Rx */
    /* TODO: Set *code value. default value/internal NRC22 : 0xFF */
    *code = 0xFFu;
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#endif

