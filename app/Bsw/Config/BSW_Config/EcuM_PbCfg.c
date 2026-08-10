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
 *  @file               : EcuM_PbCfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-22 11:22:45
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
#include "Dem.h"
#include "Gpt.h"
#include "Wdg_59_DriverB.h"
#include "Can.h"
#include "CanIf.h"
#include "CanSM.h"
#include "PduR.h"
#include "Com.h"
#include "ComM.h"
#include "Nm.h"
#include "CanNm.h"
#include "CanTp.h"
#include "Dcm.h"

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/
#define ECUM_START_SEC_PBCFG_GLOBALROOT
#include "EcuM_MemMap.h"
static CONST(EcuM_GenBSWPbCfgType, ECUM_VAR_NO_INIT) EcuM_GenMcalConfig =
{
    NULL_PTR, /*bswmPbCfg*/
    (const void *)&Gpt_GstConfiguration,
    (const void *)&Wdg_59_DriverB_GstConfiguration,
    (const void *)&Can_GaaConfig,
    (const void *)&CanIf_InitCfgSet,
    (const void *)&CanSM_Config,
    (const void *)&PduR_PBConfigData,
    (const void *)&Com_PBConfigData,
    (const void *)&ComM_Config,
    (const void *)&Nm_Config,
    (const void *)&CanNm_Config,
    (const void *)&CanTp_Config,
    (const void *)&Dcm_Cfg,
    (const void *)&DemPbCfg,
};
CONST(EcuM_ConfigType, ECUM_VAR_NO_INIT) EcuM_Config = /* PRQA S 3408,1533 */ /* VL_EcuM_3408,VL_QAC_OneRefSymbol */
{
    123,    /*EcuMConfigConsistencyHash*/
    OSDEFAULTAPPMODE,    /*EcuMDefaultAppMode*/
    ECUM_SHUTDOWN_TARGET_SLEEP,
    0,
    &EcuM_GenMcalConfig
};
#define ECUM_STOP_SEC_PBCFG_GLOBALROOT
#include "EcuM_MemMap.h"

/*******************************************************************************
**                            General Notes                                   **
*******************************************************************************/
/* PRQA S 6610,6530 EOF */ /* VL_MTR_EcuM_STCDN, VL_MTR_EcuM_STECT */

