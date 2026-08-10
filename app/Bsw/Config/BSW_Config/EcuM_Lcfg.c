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
 *  @file               : EcuM_Lcfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:22:51
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "EcuM.h"

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/
#define ECUM_START_SEC_CONST_32
#include "EcuM_MemMap.h"
/*EcuMConfigConsistencyHash, a hash value generated across all pre-compile and
 *link-time parameters of all BSW modules. This hash value is compared against
 *a field in the EcuM_ConfigType and hence allows checking the consistency of
 *the entire configuration.*/
CONST(uint32, ECUM_CONST) EcuM_ConfigConsistencyHash = 0x7buL; /*PRQA S 1533*/ /*VL_QAC_OneRefSymbol*/
#define ECUM_STOP_SEC_CONST_32
#include "EcuM_MemMap.h"

/*******************************************************************************
**                            General Notes                                   **
*******************************************************************************/

