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
 *  @file               : CanSM_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-22 16:40:18
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*******************************************************************************
**                      Imported Compiler Switch Check                        **
*******************************************************************************/
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*=======[I N C L U D E S]====================================================*/
#include "CanSM_Cfg.h"
#include "CanSM.h"
#include "CanIf_Cfg.h"
#include "ComM_Cfg.h"
#include "Dem.h"
/*******************************************************************************
**                       Version  Check                                       **
*******************************************************************************/
/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/
/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/

#define CANSM_START_SEC_CONFIG_DATA_8
#include "CanSM_MemMap.h"
static CONST(uint8, CANSM_CONST) CanSM_MN_0ControllerId[1] = {CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM};/*CanSMControllerId*/
#define CANSM_STOP_SEC_CONFIG_DATA_8
#include "CanSM_MemMap.h"

#define CANSM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanSM_MemMap.h"
static CONST(CanSM_ControllerRefType, CANSM_CONST) CanSM_ControllerConfig[CANSM_NETWORK_NUM] =
{
    {
        0x1,
        &CanSM_MN_0ControllerId[0]
    },
};
#define CANSM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanSM_MemMap.h"

#define CANSM_START_SEC_CONFIG_DATA_16
#include "CanSM_MemMap.h"
static CONST(Dem_EventIdType, CANSM_CONST) CanSMManagerNetwork_0_DemEvtBusOff = EventParameter_0xC07388;
#define CANSM_STOP_SEC_CONFIG_DATA_16
#include "CanSM_MemMap.h"

#define CANSM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanSM_MemMap.h"
static CONST(CanSM_DemEventParameterRefType, CANSM_CONST) CanSM_DemEventParameter [1] =
{
    {
        &CanSMManagerNetwork_0_DemEvtBusOff,     /*CANSM_E_BUS_OFF */
        NULL_PTR,     /*CANSM_E_MODE_REQUEST_TIMEOUT */
    },
};
#define CANSM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanSM_MemMap.h"

#define CANSM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanSM_MemMap.h"
static CONST(CanSM_ManagerNetworkType, CANSM_CONST) CanSM_NetworkConfig [CANSM_NETWORK_NUM] =
{
    {
        0xa,    /*CanSMBorCounterL1ToL2 */
        0x64,           /*CanSMBorTimeL1 */
        0x3e8,           /*CanSMBorTimeL2 */
        0xa,           /*CanSMBorTimeTxEnsured */
        FALSE,          /*CanSMEnableBusOffDelay */
        ComMChannel_0,                        /*CanSMComMNetworkHandleRef*/NULL_PTR,
        &CanSM_ControllerConfig[0],
        &CanSM_DemEventParameter[0]
    },
};

CONST(CanSM_ConfigType, CANSM_CONST) CanSM_Config =
{
    0xa,    /*CanSMModeRequestRepetitionMax */
    0xa,    /*CanSMModeRequestRepetitionTime */
    &CanSM_NetworkConfig[0]
};
#define CANSM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanSM_MemMap.h"

/*******************************************************************************
**                      Global Variable Definitions                          **
*******************************************************************************/
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/
/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
