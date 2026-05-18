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
 *  @file               : MemIf_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-29 15:22:22
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "MemIf_Cfg.h"
#include "Fee.h"

/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/

#define MEMIF_START_SEC_CONST_UNSPECIFIED
#include "MemIf_MemMap.h"
CONST(MemIf_MemHwAApi_Type, MEMIF_CONST) MemIf_MemHwaApis_at[MEMIF_NUMBER_OF_DEVICES] =
{

    {
        /* Device SetMode Operation API */
        NULL_PTR,
        /* Device Read operation API */
        Fee_Read,
        /* Device Write operation API */
        Fee_Write,
        /* Device Erase Immediate operation API */
        Fee_EraseImmediateBlock,
        /* Device Invalidate operation API */
        Fee_InvalidateBlock,
        /* Device Cancel operation API */
        Fee_Cancel,
        /* Device GetStatus operation API */
        Fee_GetStatus,
        /* Device GetJobResult operation API */
        Fee_GetJobResult
    },
};

#define MEMIF_STOP_SEC_CONST_UNSPECIFIED
#include "MemIf_MemMap.h"
