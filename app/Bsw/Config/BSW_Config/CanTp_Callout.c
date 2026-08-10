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
 *  @file               : CanTp_Callout.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:29
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*=======[I N C L U D E S]====================================================*/
#include "CanTp_Internal.h"
extern VAR(uint32, CANTP_VAR_POWER_ON_INIT) CanTp_Timer;

/*=============Module Callout Function Implementation====================*/
#define CANTP_START_SEC_CODE
#include "CanTp_MemMap.h"
/* Tm and Os implementation for timer. If CanTpTimerType is set to callout, need to implement manually */
FUNC(void, CANTP_CODE)
CanTp_ResetTime(P2VAR(uint32, AUTOMATIC, CANTP_APPL_DATA) TimerPtr)
{
    *TimerPtr = CanTp_Timer;
}

/* Tm and Os implementation for timer. If CanTpTimerType is set to callout, need to implement manually */
FUNC(void, CANTP_CODE)
CanTp_GetTimeSpan(uint32 TimerPtr, P2VAR(uint32, AUTOMATIC, CANTP_APPL_DATA) TimeSpanPtr)
{
    if (TimerPtr > CanTp_Timer)
    {
        *TimeSpanPtr = (CANTP_TIME_OVERFLOW - TimerPtr) + CanTp_Timer;
    }
    else
    {
        *TimeSpanPtr = CanTp_Timer - TimerPtr;
    }
}
#define CANTP_STOP_SEC_CODE
#include "CanTp_MemMap.h"

