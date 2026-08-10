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
 *  @file               : ComM_Gent.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:42
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*=================================================[inclusions]=======================================================*/
#include "ComM_Internal.h"
#include "SchM_ComM.h"
#include "ComM_Ch.h"
/*============================================[external date declarations]============================================*/

BEGIN_C_DECLS
/*==========================================[external function definitions]===========================================*/

END_C_DECLS
/*==========================================[external function definitions]===========================================*/
#define COMM_START_SEC_CODE
#include "ComM_MemMap.h"
FUNC(void, COMM_CODE) ComM_MainFunction_ComMChannel_0(void)
{
    if (ComM_InitStatus == COMM_INIT)
    {
        ComM_ChProcessTimer(0);
    }
}
#define COMM_STOP_SEC_CODE
#include "ComM_MemMap.h"

