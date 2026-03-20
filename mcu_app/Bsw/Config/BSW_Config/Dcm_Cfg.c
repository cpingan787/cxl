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
 *  @file               : Dcm_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-19 21:44:11
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#include "Dcm_Cfg.h"
#include "Dcm_Types.h"

/**********************************************************************
 ***********************DcmGeneral Container***************************
 **********************************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
/* PRQA S 3408 ++ */ /* VL_Dcm_3408 */
CONST(Dcm_GeneralCfgType,DCM_CONST)Dcm_GeneralCfg =
/* PRQA S 3408 -- */
{
    10, /*DcmTaskTime*/
    NULL_PTR, /*DcmVinRef*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
