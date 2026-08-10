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
 *  @file               : Dcm_Callout.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:29
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
#include "Dcm_Internal.h"
#if (STD_ON == DCM_UDS_SERVICE0X85_ENABLED)
#include "Dem_Dcm.h"
#include "EEIf.h"
#include "Wdg_59_DriverB.h"
#include "Wdg_59_DriverB_PBTypes.h"
#endif /* STD_ON == DCM_UDS_SERVICE0X85_ENABLED */

/* BL_AppFlagType* BL_AppFlag = (BL_AppFlagType*) BL_APP_FLAG_ADDRESS; */
Std_ReturnType  Dcm_Rte_PreConditonCheck = E_OK;

const uint8 Appl_DID_0xF100_Data[DID_F100_LEN] = {'0','1','2','3','4','5'};
const uint8 Appl_DID_0xF194_Data[DID_F194_LEN] = {'0','1','2','3','4','5','6','7','8','9'};
const uint8 Appl_DID_0xF1A0_Data[DID_F1A0_LEN] = {'0','1','2','3','4'};
const uint8 Appl_DID_0xF1A1_Data[DID_F1A1_LEN] = {'0','1','2','3','4'};
const uint8 Appl_DID_0xF1A2_Data[DID_F1A2_LEN] = {'0','1','2','3','4','5','6','7'};
const uint8 Appl_DID_0xF1A5_Data[DID_F1A5_LEN] = {'0','1','2',};
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
    static uint8 SecondEnter = FALSE ;
    uint32 retValue = E_OK ;
    uint32 WriteData = 0xB5u;
    uint32 dataRead = 0;
    if(Dcm_Rte_PreConditonCheck == E_OK)
    {
        if(OpStatus == DCM_INITIAL)
        {
            return DCM_E_FORCE_RCRRP;
        }
        else if(OpStatus == DCM_PENDING)
        {
            if(SecondEnter == FALSE)
            {
                SecondEnter = TRUE ;
                retValue = EEIf_Write(DID_F100_ADDR_IDX, DID_F100_LEN, (uint8*)&Appl_DID_0xF100_Data);
                retValue = EEIf_Write(DID_F194_ADDR_IDX, DID_F194_LEN, (uint8*)&Appl_DID_0xF194_Data);
                retValue = EEIf_Write(DID_F1A0_ADDR_IDX, DID_F1A0_LEN, (uint8*)&Appl_DID_0xF1A0_Data);
                retValue = EEIf_Write(DID_F1A1_ADDR_IDX, DID_F1A1_LEN, (uint8*)&Appl_DID_0xF1A1_Data);
                retValue = EEIf_Write(DID_F1A2_ADDR_IDX, DID_F1A2_LEN, (uint8*)&Appl_DID_0xF1A2_Data);
                retValue = EEIf_Write(DID_F1A5_ADDR_IDX, DID_F1A5_LEN, (uint8*)&Appl_DID_0xF1A5_Data);
                /*the processing is pending,send NRC 0x78*/
                DsdInternal_SetNrc(0, DCM_E_RESPONSE_PENDING);
                DsdInternal_ProcessingDone(0);
                return DCM_E_PENDING;
            }
            else
            {
                retValue = EEIf_Write(REPROGRAM_ADDR_IDX, 4, (uint8*)&WriteData);
        
                EEIf_Read(REPROGRAM_ADDR_IDX, 4, (uint8*)&dataRead);
                if((retValue != E_OK) || (dataRead != WriteData))
                {
                    retValue = E_NOT_OK;
                }
            }

        }
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
    *code = NRC22SpecificCauseCodeGet();
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#endif

