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
 *  @file               : Nm_PBcfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:42
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Nm.h"

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/

#define NM_START_SEC_CONST_UNSPECIFIED
#include "Nm_MemMap.h"
const Nm_ConfigType Nm_Config =
{
    NULL_PTR /*NmEcucPartitionRef*/
};
#define NM_STOP_SEC_CONST_UNSPECIFIED
#include "Nm_MemMap.h"

