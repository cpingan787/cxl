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
 *  @file               : CanIf_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-20 17:30:58
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/* Refer to CanIf.h */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "CanSM_Cbk.h"
#include "Can.h"
#include "CanIf_Internal.h"

/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define CANIF_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
CONST(CanIf_DispatchConfigType,CANIF_CONFIG_DATA) CanIf_DispatchConfigData =
{
    &CanSM_ControllerBusOff,/* CanIfDispatchUserCtrlBusOffName */
    &CanSM_ControllerModeIndication,/* CanIfDispatchUserCtrlModeIndicationName */
    NULL_PTR,
};
#define CANIF_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
CONST(Can_DriverApiType,CANIF_CONFIG_DATA) Can_DriverApi[CANIF_CANDRIVER_NUMBER] =
{
    {
        &Can_SetControllerMode,
        &Can_Write,
    },
};
#define CANIF_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

#define CANIF_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"
CONST(CanIf_ControllerCfgType, CANIF_CONFIG_DATA) CanIf_CtrlCfgData[CANIF_CANCONTROLLER_NUMBER] =
{
    {
        CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM,
        CANIF_CAN,
        FALSE,
        0u,
        0u|0u,
    },
};
#define CANIF_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanIf_MemMap.h"

/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/
