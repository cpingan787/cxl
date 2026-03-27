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
 *  @file               : Com_PBcfg.c
 *  @author             : iSoft
 *  @date               : 2026-03-19 13:01:15
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Com_Internal.h"

#include "Com_Callout.h"

/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/
/*******************************************************************************
**                      Global Functions Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* PRQA S 1531,1532,1533,1502 ++ */ /* VL_QAC_OneRefSymbol, VL_Com_ReferencedOnlyOne,VL_QAC_OneRefSymbol,VL_Com_1502 */
/* PRQA S 6530 EOF  */ /* VL_MTR_Com_STECT  */
#define COM_START_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"
VAR(uint8, COM_VAR) Com_TxIPduRuntimeBuff[COM_TXIPDUBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"
CONST(uint8,COM_CONST_PBCFG) Com_TxIPduInitValue[COM_TXIPDUBUFF_SIZE] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
};
#define COM_STOP_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"
VAR(uint8, COM_VAR) Com_RxIPduRuntimeBuff[COM_RXIPDUBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"
CONST(uint8,COM_CONST_PBCFG) Com_RxIPduInitValue[COM_RXIPDUBUFF_SIZE]= {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
};
#define COM_STOP_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_BOOLEAN
#include "Com_MemMap.h"
VAR(boolean, COM_VAR) Com_SignalBoolRuntimeBuff[COM_SIGNAL_BOOLBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_BOOLEAN
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_BOOLEAN
#include "Com_MemMap.h"
CONST(boolean,COM_CONST_PBCFG) Com_SignalBoolInitValue[COM_SIGNAL_BOOLBUFF_SIZE] = {
    /* IICBAD_ZONE_20ms_Group13_Reserve_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMInvtrVolV_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMInvtrCrntV_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEnActuStdyStaToqV_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEnRunA_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IECM_010ms_Group00_Reserved2_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEnCtrlrRunCrkTrmlSts_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IKeyAuthResp_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISCUParkLckReqV_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDigKeyAuthReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISCUParkLckReqVEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IScurtKeyInvd_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCU_10ms_Group01_Reserved2_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISCUShiftrLvrPosnLtchActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISecuKeyVldSts_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISCUDrvrIntrvnActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IElecMotEmgcShutDwn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTHVEmgcPwrOffReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTStCmdOn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTAccelActuPosV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTBrkPdlDscrtInptStsV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTBrkPdlDscrtInptSts_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRVSEPTRdy_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTCrkAbotd_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkSysBrkLghtsReqd_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkPdlPosV_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTTrOtptShaftTotMinAvlblToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTTrOtptShaftTotMaxAvlblToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTTrOtptShaftTotToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSMinVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSMaxVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPackVolV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPackCrntV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISDM_20ms_Group01_Reserved1_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAirbagSysFltForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAirbagDplInvsneForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAirbagDplForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSbltAudRmndr_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISDM_20ms_Group01_Reserved2_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDrvrSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDrvrSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSecRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSecRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSecRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSecRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnThrdRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnThrdRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSecRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSecRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnThrdRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnThrdRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnThrdRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnThrdRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtPsngSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtPsngSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMHVInhd_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMAShrtCircuitRdy_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMSttrTemV_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMOvhtd_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMInvtrTemV_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEU_100ms_Group03_Reserved1_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMToqDrtng_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMOfstAngCalReq_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IACCSdslReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IACCGoReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAPASCSAcclReqSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAPAEPBOPReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysSCSSdslReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysSCSSdslReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysEmgcBrkReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysEmgcBrkReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAIPilotBrkRddyMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAIPkgBrkRddyMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysSCSDrvOffReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysSCSDrvOffReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysMdReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAutodDrvngSysFlrStsV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAirbagDplInvsn_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAirbagDpl_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISDM_20ms_Group02_Reserved1_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPedtrnProtnSysDplStsV_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPedtrnProtnSysDplSts_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAirbagSysFlt_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtPsngAirbagEnbIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtPsngAirbagDsblIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITrEstdGearV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTRdyV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITrShftLvrPosV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRZCU_20ms_Group06_Reserved2_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPreEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IABSIO_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVSESysA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkSysYlwBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IMultColBrkEnbA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEBDFaultSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkSysHillStAstAvlbl_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRgtvBrkFnFltSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IMSRF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEBDA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRgtvBrkFnSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITCSEnbd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHBAActiveSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITCSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEnDragToqRducnA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IABSF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IABSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHBAValidSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IMSRA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEmgcBrkAV_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEmgcBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkSysRedBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IMulColBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IMulColBrkAvlblySts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehSpdAvgNonDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehSpdAvgV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehSpdAvgDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehSpdAvgDrvnSrc_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISysVolMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISysVolV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISysPwrMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPwrMdMstrRunCrkA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPwrMdMstrAccryA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBPMMstrAvlbly_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPtIsltnRstcV_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IESS_50ms_Group14_Reserved1_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSHVILClsd_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehIlluminateCtrlCmd_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkLghtSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkLghtFltSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCU_50ms_Group24_Reserved6_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRevsLghtFltSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRevsLghtSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRearFogLghtAcFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRearFogLghtAcSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRearFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISideLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCU_50ms_Group24_Reserved8_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRRSideLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRLSideLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHdlmpLvlngFltSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDayTmRunngLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDayTmRunngLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtFogLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRFrtFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILFrtFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtFogLghtFltSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCU_50ms_Group06_Reserved1_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsSnsrVBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybEmmsnTestMdPCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybElecVehMdRcmnd_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTEnStFail_HCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybEPTParkngPwrGennMdSts_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEU_100ms_Group15_Reserved3_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPreThrmFltInd_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOnBdChrgrSktPstvSnsrTemV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOfbdChrgrNgtvSktTemV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOfbdChrgrWkup_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOfbdRelayWeldFlt_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRZCU_100ms_Group10_Reserved4_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOfbdChrgRelayStsV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICstRgtnBrkLgtReq_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICstRgtnBrkLgtReqV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOnBdChrgrSktElecLckStaV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOffBdChrgrPlugOnV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSHVILClsdBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPackSOCVBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHVDCHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPDUHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOnBdChrgrHVILStsValV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsSnsrV_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPreThrmFltIndBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtPsngAirbagSwStsReqV_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtPsngAirbagSwStsReq_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVCUBatPrsAlrmV_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVCUBatPrsAlrm_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRZCU_100ms_Group21_Reserved5_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOffBdChrgrPlugOnVBkup_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRZCU_100ms_Group21_Reserved8_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IICBVC_200ms_Group79_Reserved1_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOdoPriyPrcsV_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTNotReadyReq_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IClstrDspdAirbagWrnng_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE
};
#define COM_STOP_SEC_PBCONFIG_DATA_BOOLEAN
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"
VAR(uint8, COM_VAR) Com_Signal8BitRuntimeBuff[COM_SIGNAL_8BITBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"
CONST(uint8,COM_CONST_PBCFG) Com_Signal8BitInitValue[COM_SIGNAL_8BITBUFF_SIZE] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
};
#define COM_STOP_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_16
#include "Com_MemMap.h"
VAR(uint16, COM_VAR) Com_Signal16BitRuntimeBuff[COM_SIGNAL_16BITBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(uint16,COM_CONST_PBCFG) Com_Signal16BitInitValue[COM_SIGNAL_16BITBUFF_SIZE] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_32
#include "Com_MemMap.h"
VAR(uint32, COM_VAR) Com_Signal32BitRuntimeBuff[COM_SIGNAL_32BITBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_32
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"
CONST(uint32,COM_CONST_PBCFG) Com_Signal32BitInitValue[COM_SIGNAL_32BITBUFF_SIZE] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};
#define COM_STOP_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_64
#include "Com_MemMap.h"
VAR(uint64, COM_VAR) Com_Signal64BitRuntimeBuff[COM_SIGNAL_64BITBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_64
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_64
#include "Com_MemMap.h"
CONST(uint64,COM_CONST_PBCFG) Com_Signal64BitInitValue[COM_SIGNAL_64BITBUFF_SIZE] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};
#define COM_STOP_SEC_PBCONFIG_DATA_64
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_BOOLEAN
#include "Com_MemMap.h"
VAR(boolean, COM_VAR) Com_RxGroupSignalBoolShadowBuff[COM_RXGROUPSIGNAL_BOOLBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_BOOLEAN
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"
VAR(uint8, COM_VAR) Com_RxGroupSignal8BitShadowBuff[COM_RXGROUPSIGNAL_8BITBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_8
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_16
#include "Com_MemMap.h"
VAR(uint16, COM_VAR) Com_RxGroupSignal16BitShadowBuff[COM_RXGROUPSIGNAL_16BITBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_16
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_32
#include "Com_MemMap.h"
VAR(uint32, COM_VAR) Com_RxGroupSignal32BitShadowBuff[COM_RXGROUPSIGNAL_32BITBUFF_SIZE];
#define COM_STOP_SEC_VAR_NO_INIT_32
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"
CONST(uint8,COM_CONST_PBCFG) Com_Signal8BitInvalidValue[COM_SIGNAL_8BIT_INVALID_SIZE] = {
    0x00
};
#define COM_STOP_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(uint16,COM_CONST_PBCFG) Com_Signal16BitInvalidValue[COM_SIGNAL_16BIT_INVALID_SIZE] = {
    0x0,
    0x0,
    0x0
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Com_MemMap.h"
VAR(Com_RxIPduRunTimeStateType, COM_VAR) Com_RxIPduRunTimeState[COM_RXIPDU_NUMBER];
#define COM_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
CONST(Com_RxIPduRunTimeStateType, COM_CONST) Com_RxIPduInitState[COM_RXIPDU_NUMBER]=
{
    {
        /* SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx */
        48u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx */
        48u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx */
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx */
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx */
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx */
        24u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx */
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx */
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx */
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx */
        5u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx */
        64u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Com_MemMap.h"
VAR(Com_TxIPduRunTimeStateType, COM_VAR) Com_TxIPduRunTimeState[COM_TXIPDU_NUMBER];
#define COM_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
CONST(Com_TxIPduRunTimeStateType, COM_CONST) Com_TxIPduInitState[COM_TXIPDU_NUMBER]=
{
    {
        /* DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/
        20u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        32u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/
        16u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
        12u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        32u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT_WITHOUT_REPETITION,
    },
    {
        /* IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* synthesized_IAM_ZONE__Event_FrS03_CONTROLLER_0_IAM_Tx*/
        16u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* synthesized_IAM_ZONE__Event_FrS02_CONTROLLER_0_IAM_Tx*/
        48u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* synthesized_IAM_ZONE__Event_FrS01_CONTROLLER_0_IAM_Tx*/
        48u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
        /* synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* PDU_COM_NMUSERDATA_IAM*/
        6u,

        0u,
        0u,
        0u,
        1u,
        0u,

        5u,
        COM_TX_MODE_NONE,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08*/
        24u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41*/
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
        /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57*/
        24u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(uint16, COM_CONST) Com_RxSignalFirstTimeoutVal[COM_RXSIG_TIMEOUT_NUMBER] =
{
    /* IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/ 
    100u,
    /* IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/ 
    100u,
    /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/ 
    200u,
    /* IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/ 
    200u,
    /* IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/ 
    200u,
    /* SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx*/ 
    1000u,};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(uint16, COM_CONST) Com_RxSignalTimeoutVal[COM_RXSIG_TIMEOUT_NUMBER] =
{
    /* IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/ 
    100u,
    /* IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/ 
    100u,
    /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/ 
    200u,
    /* IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/ 
    200u,
    /* IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/ 
    200u,
    /* SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx*/ 
    1000u,};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(Com_SignalIdType, COM_CONST) Com_TimeoutRxSignalRef[COM_RXSIG_TIMEOUT_NUMBER] =
{
    /* IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/
    109u,
    /* IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/
    110u,
    /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    222u,
    /* IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    223u,
    /* IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    224u,
    /* SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx*/
    379u,};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"
CONST(Com_RxDataTimeoutActionType, COM_CONST) Com_RxSignalDataTimeoutActionCfg[COM_RXSIG_TIMEOUT_NUMBER] =
{
    /* IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/
    COM_TIMEOUT_ACTION_NONE,
    /* IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/
    COM_TIMEOUT_ACTION_NONE,
    /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    COM_TIMEOUT_ACTION_NONE,
    /* IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    COM_TIMEOUT_ACTION_NONE,
    /* IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    COM_TIMEOUT_ACTION_NONE,
    /* SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx*/
    COM_TIMEOUT_ACTION_NONE,
};
#define COM_STOP_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"
CONST(Com_RxTimeoutNotificationType, COM_CONST) Com_RxSignalTimeoutNotificationCfg[COM_RXSIG_TIMEOUT_NUMBER] =
{
    /* IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/

    &Rte_COMCbkRxTOut_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,
    /* IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/

    &Rte_COMCbkRxTOut_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,
    /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

    &Rte_COMCbkRxTOut_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,
    /* IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

    &Rte_COMCbkRxTOut_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,
    /* IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

    &Rte_COMCbkRxTOut_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,
    /* SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx*/

    &Rte_COMCbkRxTOut_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,
};
#define COM_STOP_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(uint16, COM_CONST) Com_RxSigGrpFirstTimeoutVal[COM_RXSIGGRP_TIMEOUT_NUMBER] =
{
/* IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
400u,
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(uint16, COM_CONST) Com_RxSigGrpTimeoutVal[COM_RXSIGGRP_TIMEOUT_NUMBER] =
{
/* IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
20u,
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(Com_RxSignalGroupIdType, COM_CONST) Com_TimeoutRxSigGrpRef[COM_RXSIGGRP_TIMEOUT_NUMBER] =
{
    /* IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    16u,
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"
CONST(Com_RxDataTimeoutActionType, COM_CONST) Com_RxSigGrpDataTimeoutActionCfg[COM_RXSIGGRP_TIMEOUT_NUMBER] =
{
/* IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    COM_TIMEOUT_ACTION_NONE,
};
#define COM_STOP_SEC_PBCONFIG_DATA_8
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"
CONST(Com_RxTimeoutNotificationType, COM_CONST) Com_RxSigGrpTimeoutNotificationCfg[COM_RXSIGGRP_TIMEOUT_NUMBER] =
{
    /* IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    &Rte_COMCbkRxTOut_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
};
#define COM_STOP_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_RxIPduType, COM_CONST_PBCFG) Com_RxIPdu[COM_RXIPDU_NUMBER]=
{
    {
        /* SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx*/

        &SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        0u, /*PduBufferId*/

        0u, /*ComIpduSignalRefStartId*/
        2u,

        0u, /*ComIPduGroupsRefStartId*/
        1u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/

        &ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        48u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        8u, /*PduBufferId*/

        2u, /*ComIpduSignalRefStartId*/
        12u,

        1u, /*ComIPduGroupsRefStartId*/
        2u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/

        &ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        48u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        56u, /*PduBufferId*/

        12u, /*ComIpduSignalRefStartId*/
        22u,

        2u, /*ComIPduGroupsRefStartId*/
        3u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx*/

        &ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        104u, /*PduBufferId*/

        22u, /*ComIpduSignalRefStartId*/
        24u,

        3u, /*ComIPduGroupsRefStartId*/
        4u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/

        &ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        112u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        4u, /*ComIPduGroupsRefStartId*/
        5u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        0u, /*ComIPduSignalGroupsRefStartId*/
        1u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        120u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        5u, /*ComIPduGroupsRefStartId*/
        6u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        1u, /*ComIPduSignalGroupsRefStartId*/
        2u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        &ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        128u, /*PduBufferId*/

        24u, /*ComIpduSignalRefStartId*/
        25u,

        6u, /*ComIPduGroupsRefStartId*/
        7u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/

        &AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        136u, /*PduBufferId*/

        25u, /*ComIpduSignalRefStartId*/
        26u,

        7u, /*ComIPduGroupsRefStartId*/
        8u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/

        &ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        144u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        8u, /*ComIPduGroupsRefStartId*/
        9u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        2u, /*ComIPduSignalGroupsRefStartId*/
        3u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        152u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        9u, /*ComIPduGroupsRefStartId*/
        10u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        3u, /*ComIPduSignalGroupsRefStartId*/
        4u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        160u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        10u, /*ComIPduGroupsRefStartId*/
        11u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        4u, /*ComIPduSignalGroupsRefStartId*/
        5u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/

        &IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        168u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        11u, /*ComIPduGroupsRefStartId*/
        12u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        5u, /*ComIPduSignalGroupsRefStartId*/
        6u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx*/

        &PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        176u, /*PduBufferId*/

        26u, /*ComIpduSignalRefStartId*/
        29u,

        12u, /*ComIPduGroupsRefStartId*/
        13u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/

        &DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        192u, /*PduBufferId*/

        29u, /*ComIpduSignalRefStartId*/
        30u,

        13u, /*ComIPduGroupsRefStartId*/
        14u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/

        &PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        200u, /*PduBufferId*/

        30u, /*ComIpduSignalRefStartId*/
        42u,

        14u, /*ComIPduGroupsRefStartId*/
        15u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/

        &TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        208u, /*PduBufferId*/

        42u, /*ComIpduSignalRefStartId*/
        64u,

        15u, /*ComIPduGroupsRefStartId*/
        16u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx*/

        &RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        12u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        224u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        16u, /*ComIPduGroupsRefStartId*/
        17u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        6u, /*ComIPduSignalGroupsRefStartId*/
        7u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        236u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        17u, /*ComIPduGroupsRefStartId*/
        18u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        7u, /*ComIPduSignalGroupsRefStartId*/
        8u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        244u, /*PduBufferId*/

        64u, /*ComIpduSignalRefStartId*/
        71u,

        18u, /*ComIPduGroupsRefStartId*/
        19u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx*/

        &ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        252u, /*PduBufferId*/

        71u, /*ComIpduSignalRefStartId*/
        72u,

        19u, /*ComIPduGroupsRefStartId*/
        20u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx*/

        &PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        12u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        260u, /*PduBufferId*/

        72u, /*ComIpduSignalRefStartId*/
        73u,

        20u, /*ComIPduGroupsRefStartId*/
        21u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        272u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        21u, /*ComIPduGroupsRefStartId*/
        22u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        8u, /*ComIPduSignalGroupsRefStartId*/
        9u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        280u, /*PduBufferId*/

        73u, /*ComIpduSignalRefStartId*/
        103u,

        22u, /*ComIPduGroupsRefStartId*/
        23u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/

        &PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        288u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        23u, /*ComIPduGroupsRefStartId*/
        24u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        9u, /*ComIPduSignalGroupsRefStartId*/
        10u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/

        &ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        296u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        24u, /*ComIPduGroupsRefStartId*/
        25u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        10u, /*ComIPduSignalGroupsRefStartId*/
        11u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        &SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        304u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        25u, /*ComIPduGroupsRefStartId*/
        26u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        11u, /*ComIPduSignalGroupsRefStartId*/
        12u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/

        &RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        312u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        26u, /*ComIPduGroupsRefStartId*/
        27u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        12u, /*ComIPduSignalGroupsRefStartId*/
        13u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/

        &IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        320u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        27u, /*ComIPduGroupsRefStartId*/
        28u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        13u, /*ComIPduSignalGroupsRefStartId*/
        14u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/

        &ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        328u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        28u, /*ComIPduGroupsRefStartId*/
        29u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        14u, /*ComIPduSignalGroupsRefStartId*/
        15u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/

        &IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        336u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        29u, /*ComIPduGroupsRefStartId*/
        30u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        15u, /*ComIPduSignalGroupsRefStartId*/
        16u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        344u, /*PduBufferId*/

        103u, /*ComIpduSignalRefStartId*/
        109u,

        30u, /*ComIPduGroupsRefStartId*/
        31u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        400u, /*ComFirstTimeout*/

        20u, /*ComTimeout*/

        352u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        31u, /*ComIPduGroupsRefStartId*/
        32u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        16u, /*ComIPduSignalGroupsRefStartId*/
        17u,

        0u, /*ComIPduSignalGroupsTimeoutRefStartId*/
        1u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/

        &PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        100u, /*ComFirstTimeout*/

        100u, /*ComTimeout*/

        360u, /*PduBufferId*/

        109u, /*ComIpduSignalRefStartId*/
        111u,

        32u, /*ComIPduGroupsRefStartId*/
        33u,

        0u, /*ComIPduSignalsTimeoutRefStartId*/
        2u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        376u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        33u, /*ComIPduGroupsRefStartId*/
        34u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        17u, /*ComIPduSignalGroupsRefStartId*/
        18u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        384u, /*PduBufferId*/

        111u, /*ComIpduSignalRefStartId*/
        112u,

        34u, /*ComIPduGroupsRefStartId*/
        35u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        392u, /*PduBufferId*/

        112u, /*ComIpduSignalRefStartId*/
        116u,

        35u, /*ComIPduGroupsRefStartId*/
        36u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        400u, /*PduBufferId*/

        116u, /*ComIpduSignalRefStartId*/
        125u,

        36u, /*ComIPduGroupsRefStartId*/
        37u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        408u, /*PduBufferId*/

        125u, /*ComIpduSignalRefStartId*/
        134u,

        37u, /*ComIPduGroupsRefStartId*/
        38u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        416u, /*PduBufferId*/

        134u, /*ComIpduSignalRefStartId*/
        143u,

        38u, /*ComIPduGroupsRefStartId*/
        39u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        424u, /*PduBufferId*/

        143u, /*ComIpduSignalRefStartId*/
        156u,

        39u, /*ComIPduGroupsRefStartId*/
        40u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        432u, /*PduBufferId*/

        156u, /*ComIpduSignalRefStartId*/
        169u,

        40u, /*ComIPduGroupsRefStartId*/
        41u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        440u, /*PduBufferId*/

        169u, /*ComIpduSignalRefStartId*/
        175u,

        41u, /*ComIPduGroupsRefStartId*/
        42u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/

        &RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        448u, /*PduBufferId*/

        175u, /*ComIpduSignalRefStartId*/
        177u,

        42u, /*ComIPduGroupsRefStartId*/
        43u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx*/

        &LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        456u, /*PduBufferId*/

        177u, /*ComIpduSignalRefStartId*/
        178u,

        43u, /*ComIPduGroupsRefStartId*/
        44u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/

        &LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        464u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        44u, /*ComIPduGroupsRefStartId*/
        45u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        18u, /*ComIPduSignalGroupsRefStartId*/
        19u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        &LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        484u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        45u, /*ComIPduGroupsRefStartId*/
        46u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        19u, /*ComIPduSignalGroupsRefStartId*/
        20u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/

        &ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        492u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        46u, /*ComIPduGroupsRefStartId*/
        47u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        20u, /*ComIPduSignalGroupsRefStartId*/
        21u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/

        &PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        500u, /*PduBufferId*/

        178u, /*ComIpduSignalRefStartId*/
        186u,

        47u, /*ComIPduGroupsRefStartId*/
        48u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        516u, /*PduBufferId*/

        186u, /*ComIpduSignalRefStartId*/
        187u,

        48u, /*ComIPduGroupsRefStartId*/
        49u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx*/

        &ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        524u, /*PduBufferId*/

        187u, /*ComIpduSignalRefStartId*/
        188u,

        49u, /*ComIPduGroupsRefStartId*/
        50u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        &PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        32u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        532u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        50u, /*ComIPduGroupsRefStartId*/
        51u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        21u, /*ComIPduSignalGroupsRefStartId*/
        22u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx*/

        &IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        32u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        564u, /*PduBufferId*/

        188u, /*ComIpduSignalRefStartId*/
        189u,

        51u, /*ComIPduGroupsRefStartId*/
        52u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        596u, /*PduBufferId*/

        189u, /*ComIpduSignalRefStartId*/
        190u,

        52u, /*ComIPduGroupsRefStartId*/
        53u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/

        &ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        604u, /*PduBufferId*/

        190u, /*ComIpduSignalRefStartId*/
        193u,

        53u, /*ComIPduGroupsRefStartId*/
        54u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        612u, /*PduBufferId*/

        193u, /*ComIpduSignalRefStartId*/
        200u,

        54u, /*ComIPduGroupsRefStartId*/
        55u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        620u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        55u, /*ComIPduGroupsRefStartId*/
        56u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        22u, /*ComIPduSignalGroupsRefStartId*/
        23u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/

        &RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        628u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        56u, /*ComIPduGroupsRefStartId*/
        57u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        23u, /*ComIPduSignalGroupsRefStartId*/
        24u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        636u, /*PduBufferId*/

        200u, /*ComIpduSignalRefStartId*/
        203u,

        57u, /*ComIPduGroupsRefStartId*/
        58u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        &LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        644u, /*PduBufferId*/

        203u, /*ComIpduSignalRefStartId*/
        205u,

        58u, /*ComIPduGroupsRefStartId*/
        59u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/

        &ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        664u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        59u, /*ComIPduGroupsRefStartId*/
        60u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        24u, /*ComIPduSignalGroupsRefStartId*/
        25u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        672u, /*PduBufferId*/

        205u, /*ComIpduSignalRefStartId*/
        212u,

        60u, /*ComIPduGroupsRefStartId*/
        61u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/

        &ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        680u, /*PduBufferId*/

        212u, /*ComIpduSignalRefStartId*/
        216u,

        61u, /*ComIPduGroupsRefStartId*/
        62u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/

        &CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        688u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        62u, /*ComIPduGroupsRefStartId*/
        63u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        25u, /*ComIPduSignalGroupsRefStartId*/
        26u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        696u, /*PduBufferId*/

        216u, /*ComIpduSignalRefStartId*/
        222u,

        63u, /*ComIPduGroupsRefStartId*/
        64u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        200u, /*ComFirstTimeout*/

        200u, /*ComTimeout*/

        704u, /*PduBufferId*/

        222u, /*ComIpduSignalRefStartId*/
        225u,

        64u, /*ComIPduGroupsRefStartId*/
        65u,

        2u, /*ComIPduSignalsTimeoutRefStartId*/
        5u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        712u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        65u, /*ComIPduGroupsRefStartId*/
        66u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        26u, /*ComIPduSignalGroupsRefStartId*/
        27u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        &RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        720u, /*PduBufferId*/

        225u, /*ComIpduSignalRefStartId*/
        229u,

        66u, /*ComIPduGroupsRefStartId*/
        67u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        &RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        728u, /*PduBufferId*/

        229u, /*ComIpduSignalRefStartId*/
        230u,

        67u, /*ComIPduGroupsRefStartId*/
        68u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        736u, /*PduBufferId*/

        230u, /*ComIpduSignalRefStartId*/
        231u,

        68u, /*ComIPduGroupsRefStartId*/
        69u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/

        &RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        744u, /*PduBufferId*/

        231u, /*ComIpduSignalRefStartId*/
        236u,

        69u, /*ComIPduGroupsRefStartId*/
        70u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx*/

        &RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        752u, /*PduBufferId*/

        236u, /*ComIpduSignalRefStartId*/
        240u,

        70u, /*ComIPduGroupsRefStartId*/
        71u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/

        &ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        760u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        71u, /*ComIPduGroupsRefStartId*/
        72u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        27u, /*ComIPduSignalGroupsRefStartId*/
        28u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        &ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        768u, /*PduBufferId*/

        240u, /*ComIpduSignalRefStartId*/
        241u,

        72u, /*ComIPduGroupsRefStartId*/
        73u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/

        &PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        784u, /*PduBufferId*/

        241u, /*ComIpduSignalRefStartId*/
        247u,

        73u, /*ComIPduGroupsRefStartId*/
        74u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/

        &ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        24u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        800u, /*PduBufferId*/

        247u, /*ComIpduSignalRefStartId*/
        256u,

        74u, /*ComIPduGroupsRefStartId*/
        75u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx*/

        &RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        824u, /*PduBufferId*/

        256u, /*ComIpduSignalRefStartId*/
        257u,

        75u, /*ComIPduGroupsRefStartId*/
        76u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        832u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        76u, /*ComIPduGroupsRefStartId*/
        77u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        28u, /*ComIPduSignalGroupsRefStartId*/
        29u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/

        &ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        840u, /*PduBufferId*/

        257u, /*ComIpduSignalRefStartId*/
        259u,

        77u, /*ComIPduGroupsRefStartId*/
        78u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx*/

        &RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        848u, /*PduBufferId*/

        259u, /*ComIpduSignalRefStartId*/
        260u,

        78u, /*ComIPduGroupsRefStartId*/
        79u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/

        &RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        868u, /*PduBufferId*/

        260u, /*ComIpduSignalRefStartId*/
        263u,

        79u, /*ComIPduGroupsRefStartId*/
        80u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        &LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        876u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        80u, /*ComIPduGroupsRefStartId*/
        81u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        29u, /*ComIPduSignalGroupsRefStartId*/
        30u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        &TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        884u, /*PduBufferId*/

        263u, /*ComIpduSignalRefStartId*/
        269u,

        81u, /*ComIPduGroupsRefStartId*/
        82u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        &RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        892u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        82u, /*ComIPduGroupsRefStartId*/
        83u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        30u, /*ComIPduSignalGroupsRefStartId*/
        31u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx*/

        &ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        900u, /*PduBufferId*/

        269u, /*ComIpduSignalRefStartId*/
        270u,

        83u, /*ComIPduGroupsRefStartId*/
        84u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        &ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        32u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        908u, /*PduBufferId*/

        270u, /*ComIpduSignalRefStartId*/
        307u,

        84u, /*ComIPduGroupsRefStartId*/
        85u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/

        &SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        940u, /*PduBufferId*/

        307u, /*ComIpduSignalRefStartId*/
        308u,

        85u, /*ComIPduGroupsRefStartId*/
        86u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        &RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        948u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        86u, /*ComIPduGroupsRefStartId*/
        87u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        31u, /*ComIPduSignalGroupsRefStartId*/
        32u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/

        &ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        956u, /*PduBufferId*/

        308u, /*ComIpduSignalRefStartId*/
        321u,

        87u, /*ComIPduGroupsRefStartId*/
        88u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        976u, /*PduBufferId*/

        321u, /*ComIpduSignalRefStartId*/
        329u,

        88u, /*ComIPduGroupsRefStartId*/
        89u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        984u, /*PduBufferId*/

        329u, /*ComIpduSignalRefStartId*/
        332u,

        89u, /*ComIPduGroupsRefStartId*/
        90u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx*/

        &ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        32u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        992u, /*PduBufferId*/

        332u, /*ComIpduSignalRefStartId*/
        334u,

        90u, /*ComIPduGroupsRefStartId*/
        91u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx*/

        &CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1024u, /*PduBufferId*/

        334u, /*ComIpduSignalRefStartId*/
        336u,

        91u, /*ComIPduGroupsRefStartId*/
        92u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/

        &RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1032u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        92u, /*ComIPduGroupsRefStartId*/
        93u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        32u, /*ComIPduSignalGroupsRefStartId*/
        33u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx*/

        &TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        12u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1040u, /*PduBufferId*/

        336u, /*ComIpduSignalRefStartId*/
        338u,

        93u, /*ComIPduGroupsRefStartId*/
        94u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        &LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1052u, /*PduBufferId*/

        338u, /*ComIpduSignalRefStartId*/
        342u,

        94u, /*ComIPduGroupsRefStartId*/
        95u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1060u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        95u, /*ComIPduGroupsRefStartId*/
        96u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,

        33u, /*ComIPduSignalGroupsRefStartId*/
        34u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        &ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1068u, /*PduBufferId*/

        342u, /*ComIpduSignalRefStartId*/
        359u,

        96u, /*ComIPduGroupsRefStartId*/
        97u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx*/

        &LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1088u, /*PduBufferId*/

        359u, /*ComIpduSignalRefStartId*/
        361u,

        97u, /*ComIPduGroupsRefStartId*/
        98u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx*/

        &LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1096u, /*PduBufferId*/

        361u, /*ComIpduSignalRefStartId*/
        363u,

        98u, /*ComIPduGroupsRefStartId*/
        99u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1104u, /*PduBufferId*/

        363u, /*ComIpduSignalRefStartId*/
        367u,

        99u, /*ComIPduGroupsRefStartId*/
        100u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/

        &ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1112u, /*PduBufferId*/

        367u, /*ComIpduSignalRefStartId*/
        372u,

        100u, /*ComIPduGroupsRefStartId*/
        101u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1120u, /*PduBufferId*/

        372u, /*ComIpduSignalRefStartId*/
        378u,

        101u, /*ComIPduGroupsRefStartId*/
        102u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx*/

        &ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1128u, /*PduBufferId*/

        378u, /*ComIpduSignalRefStartId*/
        379u,

        102u, /*ComIPduGroupsRefStartId*/
        103u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx*/

        &synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        5u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        1000u, /*ComFirstTimeout*/

        1000u, /*ComTimeout*/

        1144u, /*PduBufferId*/

        379u, /*ComIpduSignalRefStartId*/
        380u,

        103u, /*ComIPduGroupsRefStartId*/
        104u,

        5u, /*ComIPduSignalsTimeoutRefStartId*/
        6u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx*/

        &RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1149u, /*PduBufferId*/

        380u, /*ComIpduSignalRefStartId*/
        381u,

        104u, /*ComIPduGroupsRefStartId*/
        105u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1165u, /*PduBufferId*/

        381u, /*ComIpduSignalRefStartId*/
        383u,

        105u, /*ComIPduGroupsRefStartId*/
        106u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx*/

        &IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1173u, /*PduBufferId*/

        383u, /*ComIpduSignalRefStartId*/
        385u,

        106u, /*ComIPduGroupsRefStartId*/
        107u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/

        &CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1181u, /*PduBufferId*/

        385u, /*ComIpduSignalRefStartId*/
        387u,

        107u, /*ComIPduGroupsRefStartId*/
        108u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1197u, /*PduBufferId*/

        387u, /*ComIpduSignalRefStartId*/
        402u,

        108u, /*ComIPduGroupsRefStartId*/
        109u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        &ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1213u, /*PduBufferId*/

        402u, /*ComIpduSignalRefStartId*/
        427u,

        109u, /*ComIPduGroupsRefStartId*/
        110u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx*/

        &SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1233u, /*PduBufferId*/

        427u, /*ComIpduSignalRefStartId*/
        428u,

        110u, /*ComIPduGroupsRefStartId*/
        111u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx*/

        &SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1241u, /*PduBufferId*/

        428u, /*ComIpduSignalRefStartId*/
        430u,

        111u, /*ComIPduGroupsRefStartId*/
        112u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        &ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1261u, /*PduBufferId*/

        430u, /*ComIpduSignalRefStartId*/
        431u,

        112u, /*ComIPduGroupsRefStartId*/
        113u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        64u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1269u, /*PduBufferId*/

        431u, /*ComIpduSignalRefStartId*/
        439u,

        113u, /*ComIPduGroupsRefStartId*/
        114u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx*/

        &DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1333u, /*PduBufferId*/

        439u, /*ComIpduSignalRefStartId*/
        440u,

        114u, /*ComIPduGroupsRefStartId*/
        115u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx*/

        &DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1341u, /*PduBufferId*/

        440u, /*ComIpduSignalRefStartId*/
        441u,

        115u, /*ComIPduGroupsRefStartId*/
        116u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx*/

        &DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1349u, /*PduBufferId*/

        441u, /*ComIpduSignalRefStartId*/
        442u,

        116u, /*ComIPduGroupsRefStartId*/
        117u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx*/

        &DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1357u, /*PduBufferId*/

        442u, /*ComIpduSignalRefStartId*/
        443u,

        117u, /*ComIPduGroupsRefStartId*/
        118u,

        COM_UNUSED_RXSIGTIMEOUTID,0u,
        COM_UNUSED_RXSIGNALGROUPID,0u,

        COM_UNUSED_RXSIGGRPTIMEOUTID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(Com_RxIpduGroupIdType, COM_CONST) Com_RxIPduGroupsRef[COM_RXIPDUGROUP_NUMBER] =
{

    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
    Com_RxPduGroup_CONTROLLER_0_IAM,
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
CONST(Com_TxIpduGroupIdType, COM_CONST) Com_TxIPduGroupsRef[COM_TXIPDUGROUP_NUMBER] =
{

    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
    Com_TxPduGroup_CONTROLLER_0_IAM,
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
CONST(Com_TxModePeriodType, COM_CONST) Com_TxModeTruePeriod[] =
{
    /* IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
    {1u,
    20u,
    },

    /* IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
    {1u,
    40u,
    },

    /* IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
    {1u,
    40u,
    },

    /* IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
    {1u,
    20u,
    },

    /* IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
    {1u,
    20u,
    },

    /* TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx*/
    {1u,
    4u,
    },

    /* IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
    {1u,
    200u,
    },

    /* synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/
    {1u,
    4u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57*/
    {1u,
    20u,
    },

};

CONST(Com_TxModeDirectRepetitionsType, COM_CONST) Com_TxModeTrueDirectRepetitions[] =
{
    {
    /* DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/
    4u,
    30u,
    },
    {
    /* IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* synthesized_IAM_ZONE__Event_FrS03_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* synthesized_IAM_ZONE__Event_FrS02_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* synthesized_IAM_ZONE__Event_FrS01_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
};

#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_TxIPduType, COM_CONST_PBCFG) Com_TxIPdu[COM_TXIPDU_NUMBER]=
{
    {   /* DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        0u, /*PduBufferId*/
        PDUR_SRCPDU_COM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx, /*PduId*/
        0u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        0u, /*ComIpduSignalRefStartId*/
        1u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        0u, /*ComIPduGroupsRefStartId*/
        1u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx - 0 + DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        8u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx, /*PduId*/
        0u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        1u, /*ComIpduSignalRefStartId*/
        9u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        1u, /*ComIPduGroupsRefStartId*/
        2u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx - 1 + IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        16u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx, /*PduId*/
        1u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        9u, /*ComIpduSignalRefStartId*/
        17u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        2u, /*ComIPduGroupsRefStartId*/
        3u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx - 2 + IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        24u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx, /*PduId*/
        2u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        17u, /*ComIpduSignalRefStartId*/
        25u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        3u, /*ComIPduGroupsRefStartId*/
        4u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx - 3 + IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        32u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx, /*PduId*/
        3u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        25u, /*ComIpduSignalRefStartId*/
        33u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        4u, /*ComIPduGroupsRefStartId*/
        5u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx - 4 + IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        40u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx, /*PduId*/
        4u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        33u, /*ComIpduSignalRefStartId*/
        41u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        5u, /*ComIPduGroupsRefStartId*/
        6u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx - 5 + IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        48u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx, /*PduId*/
        5u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        41u, /*ComIpduSignalRefStartId*/
        43u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        6u, /*ComIPduGroupsRefStartId*/
        7u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx - 6 + IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        56u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx, /*PduId*/
        6u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        43u, /*ComIpduSignalRefStartId*/
        51u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        7u, /*ComIPduGroupsRefStartId*/
        8u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx - 7 + IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/&IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        64u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, /*PduId*/
        7u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       0u, /*ComIPduSignalGroupsRefStartId*/
       1u,

        8u, /*ComIPduGroupsRefStartId*/
        9u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx - 8 + IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        72u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, /*PduId*/
        8u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        51u, /*ComIpduSignalRefStartId*/
        58u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        9u, /*ComIPduGroupsRefStartId*/
        10u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx - 9 + IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        80u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, /*PduId*/
        9u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        58u, /*ComIpduSignalRefStartId*/
        65u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        10u, /*ComIPduGroupsRefStartId*/
        11u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx - 10 + IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        20u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        88u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx, /*PduId*/
        1u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        65u, /*ComIpduSignalRefStartId*/
        67u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        11u, /*ComIPduGroupsRefStartId*/
        12u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx - 11 + IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        108u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx, /*PduId*/
        2u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        67u, /*ComIpduSignalRefStartId*/
        69u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        12u, /*ComIPduGroupsRefStartId*/
        13u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx - 12 + IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        32u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        116u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx, /*PduId*/
        10u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        69u, /*ComIpduSignalRefStartId*/
        84u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        13u, /*ComIPduGroupsRefStartId*/
        14u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx - 13 + IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        16u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        148u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx, /*PduId*/
        3u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        84u, /*ComIpduSignalRefStartId*/
        86u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        14u, /*ComIPduGroupsRefStartId*/
        15u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx - 14 + IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        12u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        164u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx, /*PduId*/
        4u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        86u, /*ComIpduSignalRefStartId*/
        90u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        15u, /*ComIPduGroupsRefStartId*/
        16u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx - 15 + IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        32u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        176u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, /*PduId*/
        5u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        90u, /*ComIpduSignalRefStartId*/
        132u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        16u, /*ComIPduGroupsRefStartId*/
        17u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx - 16 + IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        208u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx, /*PduId*/
        6u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        132u, /*ComIpduSignalRefStartId*/
        134u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        17u, /*ComIPduGroupsRefStartId*/
        18u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx - 17 + IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        216u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx, /*PduId*/
        7u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        134u, /*ComIpduSignalRefStartId*/
        135u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        18u, /*ComIPduGroupsRefStartId*/
        19u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx - 18 + IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx*/&IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        224u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx, /*PduId*/
        8u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        135u, /*ComIpduSignalRefStartId*/
        136u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        19u, /*ComIPduGroupsRefStartId*/
        20u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx - 19 + IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        232u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx, /*PduId*/
        COM_UNUSED_UINT16, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        136u, /*ComIpduSignalRefStartId*/
        144u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        20u, /*ComIPduGroupsRefStartId*/
        21u,

        COM_TX_MODE_DIRECT_WITHOUT_REPETITION, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx - 20 + IAM_SecOC_Log_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/&IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        240u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, /*PduId*/
        11u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       1u, /*ComIPduSignalGroupsRefStartId*/
       2u,

        21u, /*ComIPduGroupsRefStartId*/
        22u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx - 21 + IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        248u, /*PduBufferId*/
        PDUR_SRCPDU_COM_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx, /*PduId*/
        12u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        144u, /*ComIpduSignalRefStartId*/
        145u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        22u, /*ComIPduGroupsRefStartId*/
        23u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx - 22 + TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        256u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx, /*PduId*/
        13u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        145u, /*ComIpduSignalRefStartId*/
        153u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        23u, /*ComIPduGroupsRefStartId*/
        24u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx - 23 + IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        264u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx, /*PduId*/
        14u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        153u, /*ComIpduSignalRefStartId*/
        161u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        24u, /*ComIPduGroupsRefStartId*/
        25u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx - 24 + IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        272u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx, /*PduId*/
        15u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        161u, /*ComIpduSignalRefStartId*/
        169u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        25u, /*ComIPduGroupsRefStartId*/
        26u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx - 25 + IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        280u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx, /*PduId*/
        16u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        169u, /*ComIpduSignalRefStartId*/
        177u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        26u, /*ComIPduGroupsRefStartId*/
        27u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx - 26 + IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* synthesized_IAM_ZONE__Event_FrS03_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        16u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        288u, /*PduBufferId*/
        PDUR_SRCPDU_COM_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx, /*PduId*/
        9u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        177u, /*ComIpduSignalRefStartId*/
        180u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        27u, /*ComIPduGroupsRefStartId*/
        28u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx - 27 + synthesized_IAM_ZONE__Event_FrS03_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* synthesized_IAM_ZONE__Event_FrS02_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        48u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        304u, /*PduBufferId*/
        PDUR_SRCPDU_COM_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx, /*PduId*/
        10u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        180u, /*ComIpduSignalRefStartId*/
        190u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        28u, /*ComIPduGroupsRefStartId*/
        29u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx - 28 + synthesized_IAM_ZONE__Event_FrS02_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* synthesized_IAM_ZONE__Event_FrS01_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        48u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        352u, /*PduBufferId*/
        PDUR_SRCPDU_COM_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx, /*PduId*/
        11u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        190u, /*ComIpduSignalRefStartId*/
        200u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        29u, /*ComIPduGroupsRefStartId*/
        30u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx - 29 + synthesized_IAM_ZONE__Event_FrS01_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        400u, /*PduBufferId*/
        PDUR_SRCPDU_COM_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx, /*PduId*/
        17u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        200u, /*ComIpduSignalRefStartId*/
        202u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        30u, /*ComIPduGroupsRefStartId*/
        31u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx - 30 + synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        408u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu13, /*PduId*/
        18u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       2u, /*ComIPduSignalGroupsRefStartId*/
       3u,

        31u, /*ComIPduGroupsRefStartId*/
        32u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu13 - 31 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06*/&IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        416u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x377_Pdu06, /*PduId*/
        19u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        202u, /*ComIpduSignalRefStartId*/
        206u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        32u, /*ComIPduGroupsRefStartId*/
        33u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x377_Pdu06 - 32 + IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03*/&IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        424u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x3A2_Pdu03, /*PduId*/
        20u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        206u, /*ComIpduSignalRefStartId*/
        212u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        33u, /*ComIPduGroupsRefStartId*/
        34u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu03 - 33 + IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* PDU_COM_NMUSERDATA_IAM*/NULL_PTR, /* ComIPduCallout */

        6u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        432u, /*PduBufferId*/
        PDUR_SRCPDU_Com_NmUserDataPdu_IAM, /*PduId*/
        COM_UNUSED_UINT16, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        212u, /*ComIpduSignalRefStartId*/
        216u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        COM_UNUSED_TXIPDUGROUPID,0u,

        COM_TX_MODE_NONE, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_NmUserDataPdu_IAM - 34 + PDU_COM_NMUSERDATA_IAM */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07*/&IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        438u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x377_Pdu07, /*PduId*/
        21u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        216u, /*ComIpduSignalRefStartId*/
        221u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        34u, /*ComIPduGroupsRefStartId*/
        35u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x377_Pdu07 - 35 + IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08*/&IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08, /* ComIPduCallout */

        24u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        446u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x377_Pdu08, /*PduId*/
        22u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       3u, /*ComIPduSignalGroupsRefStartId*/
       4u,

        35u, /*ComIPduGroupsRefStartId*/
        36u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x377_Pdu08 - 36 + IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        470u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu34, /*PduId*/
        23u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       4u, /*ComIPduSignalGroupsRefStartId*/
       5u,

        36u, /*ComIPduGroupsRefStartId*/
        37u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu34 - 37 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        478u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu35, /*PduId*/
        24u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       5u, /*ComIPduSignalGroupsRefStartId*/
       6u,

        37u, /*ComIPduGroupsRefStartId*/
        38u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu35 - 38 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        486u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu39, /*PduId*/
        25u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        221u, /*ComIpduSignalRefStartId*/
        223u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        38u, /*ComIPduGroupsRefStartId*/
        39u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu39 - 39 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        494u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu40, /*PduId*/
        26u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       6u, /*ComIPduSignalGroupsRefStartId*/
       7u,

        39u, /*ComIPduGroupsRefStartId*/
        40u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu40 - 40 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04*/&IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        502u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x3A2_Pdu04, /*PduId*/
        27u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        223u, /*ComIpduSignalRefStartId*/
        228u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        40u, /*ComIPduGroupsRefStartId*/
        41u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu04 - 41 + IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41*/&IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        510u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x3A2_Pdu41, /*PduId*/
        28u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        228u, /*ComIpduSignalRefStartId*/
        240u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        41u, /*ComIPduGroupsRefStartId*/
        42u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu41 - 42 + IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57*/&IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57, /* ComIPduCallout */

        24u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        518u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x3A2_Pdu57, /*PduId*/
        29u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       7u, /*ComIPduSignalGroupsRefStartId*/
       8u,

        42u, /*ComIPduGroupsRefStartId*/
        43u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu57 - 43 + IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_RxSignalType, COM_CONST_PBCFG) Com_RxSignal[COM_RXSIGNAL_NUMBER]=
{
    {
        /* IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        541u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        0u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        542u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        0u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        27u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        28u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        29u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        30u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        31u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        19u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        32u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        23u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        33u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        27u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        34u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        31u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        35u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        35u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        36u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        39u, /*ComBitPosition*/

        1u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        37u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        38u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        39u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        40u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        41u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        19u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        42u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        23u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        43u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        27u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        44u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        31u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        45u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        35u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        46u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        39u, /*ComBitPosition*/

        2u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u, /* comBitSize & comBitPosition*/
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
        /* ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        200u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        201u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        3u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        6u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        4u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        7u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        202u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        12u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        203u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        12u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        55u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        12u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        5u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        13u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        543u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        544u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        545u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        56u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        57u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        11u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        204u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        205u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        546u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        206u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        547u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        548u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        549u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        550u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        551u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        552u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        58u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        11u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        207u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        553u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        554u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        208u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        555u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        209u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        59u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        556u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        557u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        558u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        559u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        560u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        561u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        562u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        13u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        563u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        14u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        210u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        14u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        564u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        14u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        565u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        211u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        18u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        212u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        18u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        566u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        18u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        567u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        18u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        568u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        18u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        569u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        18u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        570u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        18u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        571u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        19u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        60u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        20u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        213u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        214u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        215u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        216u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        217u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        218u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        219u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        220u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        221u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        222u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        223u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        224u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        225u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        226u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        227u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        228u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        229u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        230u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        231u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        232u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        233u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        234u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        235u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        236u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        237u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        238u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        239u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        240u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        241u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        242u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        243u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        244u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        572u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        573u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        61u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        62u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        574u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        32u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        245u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        32u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        575u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        34u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        63u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        35u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        246u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        35u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        64u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        35u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        247u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        35u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        576u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        65u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        66u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        3u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        248u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        67u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        68u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        249u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        250u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        251u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        69u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        252u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        253u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        254u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        577u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        70u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        71u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        3u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        255u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        72u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        37u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        73u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        256u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        257u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        258u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        578u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        74u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        75u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        3u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        259u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        76u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        260u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        261u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        262u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        263u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        264u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        265u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        579u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        580u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        581u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        582u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        583u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        584u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        585u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        39u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        586u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        587u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        588u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        266u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        267u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        268u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        269u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        270u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        271u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        589u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        590u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        591u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        592u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        40u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        77u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        41u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        12u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        272u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        41u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        593u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        41u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        594u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        41u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        273u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        41u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        78u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        41u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        11u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        274u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        42u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        275u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        42u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        595u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        43u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        79u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        14u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        596u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        80u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        14u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        276u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        277u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        597u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        598u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        599u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        47u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        600u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        48u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        601u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        49u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        602u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        603u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        52u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        278u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        53u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        81u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        53u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        11u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        604u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        53u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        605u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        606u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        607u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        608u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        609u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        610u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        611u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        279u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        57u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        612u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        57u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        280u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        57u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        613u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        58u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        614u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        58u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        615u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        82u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        11u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        616u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        281u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        617u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        618u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        619u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        282u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        61u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        620u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        61u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        621u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        61u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        283u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        61u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        622u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        623u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        624u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        625u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        626u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        627u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        284u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        64u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        83u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        64u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        628u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        64u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        629u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        66u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        630u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        66u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        631u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        66u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        285u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        66u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        286u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        67u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        287u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        68u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        632u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        288u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        633u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        634u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        289u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        635u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        70u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        636u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        70u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        637u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        70u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        638u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        70u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        639u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        84u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        15u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        290u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        640u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        291u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        292u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        293u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        641u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        642u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        643u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        644u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        645u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        646u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        294u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        13u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        295u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        296u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        647u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        75u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        297u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        298u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        648u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        78u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        649u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        79u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        650u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        79u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        651u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        79u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        652u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        81u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        299u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        81u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        653u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        81u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        300u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        81u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        301u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        81u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        302u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        81u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        654u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        83u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        655u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        656u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        657u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        658u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        659u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        660u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        661u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        662u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        663u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        303u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        664u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        665u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        666u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        667u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        668u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        669u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        670u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        671u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        672u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        673u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        674u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        675u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        676u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        677u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        678u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        679u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        680u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        681u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        682u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        13u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        683u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        18u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        684u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        19u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        685u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        20u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        686u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        21u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        687u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        24u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        688u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        24u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        689u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        24u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        690u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        30u, /*ComBitPosition*/

        84u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        691u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        85u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        692u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        693u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        694u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        695u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        696u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        697u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        698u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        699u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        700u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        701u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        702u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        703u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        13u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        85u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        704u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        705u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        706u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        707u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        708u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        709u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        710u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        711u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        712u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        89u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        713u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        89u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        714u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        89u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        715u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        90u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        716u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        14u, /*ComBitPosition*/

        90u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        717u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        91u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        718u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        91u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        86u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        93u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        15u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        87u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        93u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        719u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        94u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        720u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        94u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        721u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        94u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        722u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        94u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        723u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        724u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        725u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        726u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        727u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        728u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        729u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        730u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        731u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        732u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        733u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        734u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        735u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        736u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        737u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        738u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        739u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        96u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        740u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        97u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        741u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        97u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        304u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        98u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        742u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        98u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        88u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        99u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        305u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        99u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        306u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        99u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        743u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        99u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        307u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        100u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        308u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        100u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        309u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        100u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        310u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        100u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        744u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        100u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        745u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        101u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        746u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        101u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        747u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        101u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        748u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        101u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        749u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        101u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        750u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        101u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        6u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        102u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx, /*ComNotification*/

        7u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        103u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        40u, /*ComBitSize*/
        5u, /* comBitSize & comBitPosition*/
        COM_SINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        751u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        104u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        752u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        105u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        753u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        105u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        754u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        106u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        755u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        106u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        311u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        107u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        312u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        107u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        313u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        756u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        314u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        315u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        316u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        317u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        318u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        319u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        320u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        321u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        322u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        323u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        324u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        325u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        326u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        108u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        327u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        757u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        758u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        759u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        760u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        761u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        762u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        763u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        764u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        765u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        766u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        767u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        768u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        769u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        770u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        771u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        772u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        773u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        774u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        775u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        776u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        777u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        778u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        779u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        13u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        780u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        14u, /*ComBitPosition*/

        109u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        781u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        110u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        8u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        111u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        9u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        19u, /*ComBitPosition*/

        111u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        10u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        112u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        11u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        12u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        13u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        23u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        14u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        31u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        15u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        39u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        16u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        47u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        17u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        55u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        18u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        63u, /*ComBitPosition*/

        113u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        19u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        114u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        56u, /*ComBitSize*/
        7u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        20u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        115u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        56u, /*ComBitSize*/
        7u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        21u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        116u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        56u, /*ComBitSize*/
        7u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx*/
        &Rte_COMCbk_IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx, /*ComNotification*/

        22u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        117u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        56u, /*ComBitSize*/
        7u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"
CONST(Com_ErrorAndNotificationType, COM_CONST) Com_TxSignalErrorAndNotification[COM_TXSIG_ERROR_AND_NOTIFY_NUMBER] =
{
    /* IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx,
    /* ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
    /* ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
    /* ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
    /* ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
    /* ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
    /* ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx,
    /* ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx,
    /* ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
    /* IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
    /* IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
    /* IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
    /* IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
    /* IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
    /* IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
    /* IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
    /* INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx,
    /* IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx,
    /* IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,
    /* IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
    /* IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx,
    /* IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx,
    /* IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
    /* IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
    /* IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
    /* IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
    /* IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
    /* IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx,
    /* IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx,
    /* IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx,
    /* IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx,
    /* IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
    /* IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx,
    /* ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
    /* ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
    /* ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
    /* ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
    /* ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,
    /* IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,
    /* ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
    /* IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,
    /* IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,
    /* INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
    /* IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
    /* IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
    /* IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
    /* IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
    /* IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
    /* ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
    /* ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
};
#define COM_STOP_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_TxSignalType, COM_CONST_PBCFG) Com_TxSignal[COM_TXSIGNAL_NUMBER]=
{
    {
        /* IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx*/
        0u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        0u, /*TxPduId*/

        0u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        56u, /*ComBitSize*/
        7u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        378u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        1u, /*TxPduId*/

        1u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        379u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        1u, /*TxPduId*/

        2u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        380u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        1u, /*TxPduId*/

        3u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        381u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        1u, /*TxPduId*/

        4u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        23u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        1u, /*TxPduId*/

        5u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        382u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        1u, /*TxPduId*/

        6u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        383u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        1u, /*TxPduId*/

        7u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        24u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        1u, /*TxPduId*/

        8u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        384u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        2u, /*TxPduId*/

        9u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        385u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        2u, /*TxPduId*/

        10u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        386u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        2u, /*TxPduId*/

        11u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        387u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        2u, /*TxPduId*/

        12u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        25u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        2u, /*TxPduId*/

        13u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        388u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        2u, /*TxPduId*/

        14u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        389u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        2u, /*TxPduId*/

        15u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        26u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        2u, /*TxPduId*/

        16u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        390u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        3u, /*TxPduId*/

        17u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        391u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        3u, /*TxPduId*/

        18u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        392u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        3u, /*TxPduId*/

        19u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        393u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        3u, /*TxPduId*/

        20u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        27u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        3u, /*TxPduId*/

        21u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        394u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        3u, /*TxPduId*/

        22u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        395u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        3u, /*TxPduId*/

        23u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        28u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        3u, /*TxPduId*/

        24u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        396u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        4u, /*TxPduId*/

        25u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        397u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        4u, /*TxPduId*/

        26u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        398u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        4u, /*TxPduId*/

        27u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        399u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        4u, /*TxPduId*/

        28u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        29u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        4u, /*TxPduId*/

        29u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        400u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        4u, /*TxPduId*/

        30u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        401u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        4u, /*TxPduId*/

        31u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        30u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        4u, /*TxPduId*/

        32u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        402u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        5u, /*TxPduId*/

        33u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        403u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        5u, /*TxPduId*/

        34u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        404u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        5u, /*TxPduId*/

        35u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        405u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        5u, /*TxPduId*/

        36u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        31u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        5u, /*TxPduId*/

        37u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        406u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        5u, /*TxPduId*/

        38u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        407u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        5u, /*TxPduId*/

        39u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        32u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        5u, /*TxPduId*/

        40u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/
        408u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        6u, /*TxPduId*/

        41u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/
        409u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        6u, /*TxPduId*/

        42u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        410u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        7u, /*TxPduId*/

        43u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        411u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        7u, /*TxPduId*/

        44u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        412u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        7u, /*TxPduId*/

        45u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        413u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        7u, /*TxPduId*/

        46u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        33u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        7u, /*TxPduId*/

        47u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        414u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        7u, /*TxPduId*/

        48u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        415u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        7u, /*TxPduId*/

        49u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        34u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        7u, /*TxPduId*/

        50u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        416u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        9u, /*TxPduId*/

        51u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        187u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        9u, /*TxPduId*/

        52u, /*ComTxSignalErrorAndNotificationId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        417u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        9u, /*TxPduId*/

        53u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        418u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        9u, /*TxPduId*/

        54u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        419u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        9u, /*TxPduId*/

        55u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        420u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        9u, /*TxPduId*/

        56u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        421u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        9u, /*TxPduId*/

        57u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        422u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        10u, /*TxPduId*/

        58u, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        423u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        10u, /*TxPduId*/

        59u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        424u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        10u, /*TxPduId*/

        60u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        425u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        10u, /*TxPduId*/

        61u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        426u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        10u, /*TxPduId*/

        62u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        188u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        10u, /*TxPduId*/

        63u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        427u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        10u, /*TxPduId*/

        64u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/
        189u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        8u, /*ComBitPosition*/

        11u, /*TxPduId*/

        65u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/
        1u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        11u, /*TxPduId*/

        66u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx*/
        428u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        12u, /*TxPduId*/

        67u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx*/
        429u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        12u, /*TxPduId*/

        68u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        430u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        16u, /*ComBitPosition*/

        13u, /*TxPduId*/

        69u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        431u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        15u, /*ComBitPosition*/

        13u, /*TxPduId*/

        70u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        35u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        9u, /*ComBitPosition*/

        13u, /*TxPduId*/

        71u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        432u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        13u, /*TxPduId*/

        72u, /*ComTxSignalErrorAndNotificationId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        36u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        13u, /*TxPduId*/

        73u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        433u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        13u, /*TxPduId*/

        74u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        434u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        13u, /*TxPduId*/

        75u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        435u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        13u, /*TxPduId*/

        76u, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        436u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        13u, /*TxPduId*/

        77u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        437u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        13u, /*TxPduId*/

        78u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        438u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        13u, /*TxPduId*/

        79u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        439u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        13u, /*TxPduId*/

        80u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        440u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        13u, /*TxPduId*/

        81u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        441u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        13u, /*TxPduId*/

        82u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx*/
        442u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        13u, /*TxPduId*/

        83u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/
        443u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        14u, /*TxPduId*/

        84u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/
        444u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        14u, /*TxPduId*/

        85u, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
        190u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        15u, /*TxPduId*/

        86u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
        445u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        15u, /*TxPduId*/

        87u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
        446u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        15u, /*TxPduId*/

        88u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
        447u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        15u, /*TxPduId*/

        89u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        448u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        26u, /*ComBitPosition*/

        16u, /*TxPduId*/

        90u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        449u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        25u, /*ComBitPosition*/

        16u, /*TxPduId*/

        91u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        450u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        25u, /*ComBitPosition*/

        16u, /*TxPduId*/

        92u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        451u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        24u, /*ComBitPosition*/

        16u, /*TxPduId*/

        93u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        452u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        23u, /*ComBitPosition*/

        16u, /*TxPduId*/

        94u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        453u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        22u, /*ComBitPosition*/

        16u, /*TxPduId*/

        95u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        454u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        21u, /*ComBitPosition*/

        16u, /*TxPduId*/

        96u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        455u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        20u, /*ComBitPosition*/

        16u, /*TxPduId*/

        97u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        456u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        19u, /*ComBitPosition*/

        16u, /*TxPduId*/

        98u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        457u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        19u, /*ComBitPosition*/

        16u, /*TxPduId*/

        99u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        458u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        18u, /*ComBitPosition*/

        16u, /*TxPduId*/

        100u, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        459u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        18u, /*ComBitPosition*/

        16u, /*TxPduId*/

        101u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        460u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        17u, /*ComBitPosition*/

        16u, /*TxPduId*/

        102u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        461u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        17u, /*ComBitPosition*/

        16u, /*TxPduId*/

        103u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        462u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        16u, /*ComBitPosition*/

        16u, /*TxPduId*/

        104u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        463u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        16u, /*ComBitPosition*/

        16u, /*TxPduId*/

        105u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        464u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        15u, /*ComBitPosition*/

        16u, /*TxPduId*/

        106u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        465u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        14u, /*ComBitPosition*/

        16u, /*TxPduId*/

        107u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        466u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        13u, /*ComBitPosition*/

        16u, /*TxPduId*/

        108u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        467u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        12u, /*ComBitPosition*/

        16u, /*TxPduId*/

        109u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        191u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        12u, /*ComBitPosition*/

        16u, /*TxPduId*/

        110u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        468u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        11u, /*ComBitPosition*/

        16u, /*TxPduId*/

        111u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        469u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        11u, /*ComBitPosition*/

        16u, /*TxPduId*/

        112u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        470u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        10u, /*ComBitPosition*/

        16u, /*TxPduId*/

        113u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        471u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        9u, /*ComBitPosition*/

        16u, /*TxPduId*/

        114u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        472u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        9u, /*ComBitPosition*/

        16u, /*TxPduId*/

        115u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        473u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        8u, /*ComBitPosition*/

        16u, /*TxPduId*/

        116u, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        474u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        8u, /*ComBitPosition*/

        16u, /*TxPduId*/

        117u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        475u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        16u, /*TxPduId*/

        118u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        476u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        16u, /*TxPduId*/

        119u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        477u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        16u, /*TxPduId*/

        120u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        192u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        16u, /*TxPduId*/

        121u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        478u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        16u, /*TxPduId*/

        122u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        479u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        16u, /*TxPduId*/

        123u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        480u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        16u, /*TxPduId*/

        124u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        481u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        16u, /*TxPduId*/

        125u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        482u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        16u, /*TxPduId*/

        126u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        483u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        16u, /*TxPduId*/

        127u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        484u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        16u, /*TxPduId*/

        128u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        485u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        16u, /*TxPduId*/

        129u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        486u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        16u, /*TxPduId*/

        130u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        487u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        16u, /*TxPduId*/

        131u, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/
        488u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        17u, /*TxPduId*/

        132u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/
        489u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        17u, /*TxPduId*/

        133u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx*/
        2u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        18u, /*TxPduId*/

        134u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx*/
        193u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        19u, /*TxPduId*/

        135u, /*ComTxSignalErrorAndNotificationId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        2u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        20u, /*TxPduId*/

        136u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        24u, /*ComBitSize*/
        3u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        194u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        20u, /*TxPduId*/

        137u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        490u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        20u, /*TxPduId*/

        138u, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        195u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        20u, /*TxPduId*/

        139u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        37u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        20u, /*TxPduId*/

        140u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        491u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        20u, /*TxPduId*/

        141u, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        196u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        20u, /*TxPduId*/

        142u, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx*/
        38u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        20u, /*TxPduId*/

        143u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        11u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx*/
        492u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        22u, /*TxPduId*/

        144u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        493u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        23u, /*TxPduId*/

        145u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        494u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        23u, /*TxPduId*/

        146u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        495u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        23u, /*TxPduId*/

        147u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        496u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        23u, /*TxPduId*/

        148u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        39u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        23u, /*TxPduId*/

        149u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        497u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        23u, /*TxPduId*/

        150u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        498u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        23u, /*TxPduId*/

        151u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        40u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        23u, /*TxPduId*/

        152u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        499u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        24u, /*TxPduId*/

        153u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        500u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        24u, /*TxPduId*/

        154u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        501u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        24u, /*TxPduId*/

        155u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        502u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        24u, /*TxPduId*/

        156u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        41u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        24u, /*TxPduId*/

        157u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        503u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        24u, /*TxPduId*/

        158u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        504u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        24u, /*TxPduId*/

        159u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        42u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        24u, /*TxPduId*/

        160u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        505u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        25u, /*TxPduId*/

        161u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        506u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        25u, /*TxPduId*/

        162u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        507u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        25u, /*TxPduId*/

        163u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        508u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        25u, /*TxPduId*/

        164u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        43u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        25u, /*TxPduId*/

        165u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        509u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        25u, /*TxPduId*/

        166u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        510u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        25u, /*TxPduId*/

        167u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        44u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        25u, /*TxPduId*/

        168u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        511u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        26u, /*TxPduId*/

        169u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        512u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        26u, /*TxPduId*/

        170u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        513u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        26u, /*TxPduId*/

        171u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        514u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        26u, /*TxPduId*/

        172u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        45u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        26u, /*TxPduId*/

        173u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        515u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        26u, /*TxPduId*/

        174u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        516u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        26u, /*TxPduId*/

        175u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        46u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        26u, /*TxPduId*/

        176u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx*/
        3u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        8u, /*ComBitPosition*/

        27u, /*TxPduId*/

        177u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx*/
        517u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        27u, /*TxPduId*/

        178u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx*/
        4u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        27u, /*TxPduId*/

        179u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        5u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        39u, /*ComBitPosition*/

        28u, /*TxPduId*/

        180u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        6u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        35u, /*ComBitPosition*/

        28u, /*TxPduId*/

        181u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        7u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        31u, /*ComBitPosition*/

        28u, /*TxPduId*/

        182u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        8u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        27u, /*ComBitPosition*/

        28u, /*TxPduId*/

        183u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        9u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        23u, /*ComBitPosition*/

        28u, /*TxPduId*/

        184u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        10u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        19u, /*ComBitPosition*/

        28u, /*TxPduId*/

        185u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        11u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        15u, /*ComBitPosition*/

        28u, /*TxPduId*/

        186u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        12u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        11u, /*ComBitPosition*/

        28u, /*TxPduId*/

        187u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        13u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        28u, /*TxPduId*/

        188u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx*/
        14u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        28u, /*TxPduId*/

        189u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        15u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        15u, /*ComBitPosition*/

        29u, /*TxPduId*/

        190u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        16u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        39u, /*ComBitPosition*/

        29u, /*TxPduId*/

        191u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        17u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        35u, /*ComBitPosition*/

        29u, /*TxPduId*/

        192u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        18u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        31u, /*ComBitPosition*/

        29u, /*TxPduId*/

        193u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        19u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        27u, /*ComBitPosition*/

        29u, /*TxPduId*/

        194u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        20u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        23u, /*ComBitPosition*/

        29u, /*TxPduId*/

        195u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        21u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        19u, /*ComBitPosition*/

        29u, /*TxPduId*/

        196u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        22u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        11u, /*ComBitPosition*/

        29u, /*TxPduId*/

        197u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        23u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        29u, /*TxPduId*/

        198u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx*/
        24u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        29u, /*TxPduId*/

        199u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        32u, /*ComBitSize*/
        4u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/
        518u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        30u, /*TxPduId*/

        200u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx*/
        197u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        30u, /*TxPduId*/

        201u, /*ComTxSignalErrorAndNotificationId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        25u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        32u, /*TxPduId*/

        202u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        24u, /*ComBitSize*/
        3u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        26u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        32u, /*TxPduId*/

        203u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        24u, /*ComBitSize*/
        3u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        522u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        32u, /*TxPduId*/

        204u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        523u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        32u, /*TxPduId*/

        205u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        53u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        33u, /*TxPduId*/

        206u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        54u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        33u, /*TxPduId*/

        207u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        537u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        33u, /*TxPduId*/

        208u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        538u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        33u, /*TxPduId*/

        209u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        539u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        33u, /*TxPduId*/

        210u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        540u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        33u, /*TxPduId*/

        211u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        89u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        34u, /*TxPduId*/

        212u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        90u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        34u, /*TxPduId*/

        213u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        782u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        34u, /*TxPduId*/

        214u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        783u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        34u, /*TxPduId*/

        215u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        47u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        35u, /*TxPduId*/

        216u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        48u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        35u, /*TxPduId*/

        217u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        49u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        35u, /*TxPduId*/

        218u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        520u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        35u, /*TxPduId*/

        219u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        521u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        35u, /*TxPduId*/

        220u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        198u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        39u, /*TxPduId*/

        221u, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        519u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        39u, /*TxPduId*/

        222u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        536u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        41u, /*TxPduId*/

        223u, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        50u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        41u, /*TxPduId*/

        224u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        15u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        51u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        41u, /*TxPduId*/

        225u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        15u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        52u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        41u, /*TxPduId*/

        226u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        15u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        535u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        41u, /*TxPduId*/

        227u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        524u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        42u, /*TxPduId*/

        228u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        525u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        42u, /*TxPduId*/

        229u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        526u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        42u, /*TxPduId*/

        230u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        527u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        42u, /*TxPduId*/

        231u, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        528u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        42u, /*TxPduId*/

        232u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        199u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        42u, /*TxPduId*/

        233u, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        529u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        42u, /*TxPduId*/

        234u, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        530u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        42u, /*TxPduId*/

        235u, /*ComTxSignalErrorAndNotificationId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        531u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        42u, /*TxPduId*/

        236u, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        532u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        42u, /*TxPduId*/

        237u, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        533u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        42u, /*TxPduId*/

        238u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
    {
        /* ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        534u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        42u, /*TxPduId*/

        239u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_EN,  /*Notification*/

    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_RxSignalGroupType, COM_CONST) Com_RxSignalGroup[COM_RXSIGNALGROUP_NUMBER]=
{
    {
        /* IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        14u,

        4u,

    },
    {
        /* ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        14u,
        24u,

        5u,

    },
    {
        /* IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        24u,
        37u,

        8u,

    },
    {
        /* ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        37u,
        61u,

        9u,

    },
    {
        /* IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        61u,
        79u,

        10u,

    },
    {
        /* IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        79u,
        90u,

        11u,

    },
    {
        /* IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        90u,
        105u,

        16u,

    },
    {
        /* IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        105u,
        115u,

        17u,

    },
    {
        /* ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        115u,
        149u,

        21u,

    },
    {
        /* IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        149u,
        168u,

        23u,

    },
    {
        /* IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        168u,
        193u,

        24u,

    },
    {
        /* ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        193u,
        213u,

        25u,

    },
    {
        /* IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        213u,
        228u,

        26u,

    },
    {
        /* IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        228u,
        264u,

        27u,

    },
    {
        /* IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        264u,
        274u,

        28u,

    },
    {
        /* IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        274u,
        284u,

        29u,

    },
    {
        /* IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        284u,
        305u,

        31u,

    },
    {
        /* IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        305u,
        321u,

        33u,

    },
    {
        /* ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        321u,
        369u,

        44u,

    },
    {
        /* ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        369u,
        384u,

        45u,

    },
    {
        /* IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        384u,
        393u,

        46u,

    },
    {
        /* IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        393u,
        439u,

        50u,

    },
    {
        /* IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        439u,
        453u,

        55u,

    },
    {
        /* IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        453u,
        476u,

        56u,

    },
    {
        /* IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        476u,
        488u,

        59u,

    },
    {
        /* ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        488u,
        502u,

        62u,

    },
    {
        /* IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        502u,
        511u,

        65u,

    },
    {
        /* IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        511u,
        522u,

        71u,

    },
    {
        /* IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        522u,
        533u,

        76u,

    },
    {
        /* ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        533u,
        545u,

        80u,

    },
    {
        /* IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        545u,
        557u,

        82u,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        557u,
        567u,

        86u,

    },
    {
        /* IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        567u,
        581u,

        92u,

    },
    {
        /* IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/

        &Rte_COMCbk_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        581u,
        590u,

        95u,

    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"
CONST(Com_ErrorAndNotificationType, COM_CONST) Com_TxSignalGroupErrorAndNotification[COM_TXSIGGRP_ERROR_AND_NOTIFY_NUMBER] =
{
    /* IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,
    /* IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,
    /* IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
    /* IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
    /* IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
    /* IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
    /* IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
};
#define COM_STOP_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_TxSignalGroupType, COM_CONST) Com_TxSignalGroup[COM_TXSIGNALGROUP_NUMBER]=
{
    {
    /* IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/

        0u,
        6u,

        8u,

        0u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/

        6u,
        12u,

        21u,

        1u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        12u,
        18u,

        31u,

        2u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

        18u,
        24u,

        36u,

        3u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        24u,
        33u,

        37u,

        4u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        33u,
        38u,

        38u,

        5u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        38u,
        44u,

        40u,

        6u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

        44u,
        49u,

        43u,

        7u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_RxGroupSignalType, COM_CONST) Com_RxGroupSignal[COM_RXGROUPSIGNAL_NUMBER]=
{
    {
        /* IICBAD_ZONE_20ms_Group13_CRC_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        0u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_RC_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        1u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Reserve_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        0u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITJAICASysFltSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        2u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Re_0000_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        3u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILKASysFltSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        4u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Re_0001_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        5u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Re_0002_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        6u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITJAICASysSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        7u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILKASysSts_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        8u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Re_0003_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        9u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Re_0004_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        10u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Re_0005_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        11u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_ZONE_20ms_Group13_Re_0006_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx  IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx*/
        12u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITC_ZONE_10ms_Group01_CRC_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        13u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITC_ZONE_10ms_Group01_RC_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        14u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITC_ZONE_10ms_Group01_Reserved1_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        15u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITMDmpngCtrlToq_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        0u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ITMInvtrCrnt_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        1u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ITMInvtrVolV_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        1u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITMInvtrCrntV_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        2u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITMInvtrVol_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        2u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ITMPhaseCurrent_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        3u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ITC_ZONE_10ms_Group01_Reserved2_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        16u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IECM_010ms_Group00_CRC_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        17u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IECM_010ms_Group00_RC_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        18u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEnActuStdyStaToqV_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        3u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEnRunA_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        4u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEnSpdSts_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        19u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEnSpd_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        4u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IECM_010ms_Group00_Reserved2_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        5u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEnCtrlrRunCrkTrmlSts_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        6u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IECM_010ms_Group00_Reserved1_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        20u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEnActuStdyStaToq_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        5u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IECM_010ms_Group00_Reserved3_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        21u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEnToqResvA_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        22u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IECM_010ms_Group00_Reserved4_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        23u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_10ms_Group01_CRC_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        24u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_10ms_Group01_RC_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        25u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUFltLvlWarn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        26u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUDrvMd_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        27u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUExtdShiftrFlr_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        28u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUShiftrOpngRmndr_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        29u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IKeyAuthResp_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        7u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISCUParkLckReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        30u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUParkLckReqV_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        8u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILHZCU_10ms_Group01_Reserved1_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        31u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDigKeyAuthReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        9u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISCUShiftrLvrRawPosn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        32u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUParkLckReqVEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        10u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IScurtKeyInvd_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        11u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILHZCU_10ms_Group01_Reserved2_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        12u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISCUParkLckReqEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        33u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUShiftrPosnInvsn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        34u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUShiftrLvrPosn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        35u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDrvrReqParkBtn_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        36u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUShiftrLvrPosnLtchActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        13u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISecuKeyVldSts_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        14u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISCUDrvrIntrvnActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        15u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISCUAPAUnderCtrlActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        37u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDigKeyPEValidReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        38u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group01_CRC_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        39u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group01_RC_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        40u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IElecMotEmgcShutDwn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        16u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTHVEmgcPwrOffReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        17u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTMainRelayDrvReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        41u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTStCmdOn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        18u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTAccelActuPosV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        19u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutoChrgngMngmnt_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        42u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTBrkPdlDscrtInptStsV_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        20u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTBrkPdlDscrtInptSts_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        21u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRVSEPTRdy_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        22u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTCrkAbotd_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        23u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRZCU_10ms_Group01_Reserved1_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        43u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTHVDCDCMdReq_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        44u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTAccelActuPos_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        45u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTAccelEfctvPos_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        46u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group01_Reserved2_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        47u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group01_Reserved3_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        48u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_CRC_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        49u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_RC_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        50u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_Reserved1_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        51u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBrkPdlPos_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        52u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_Reserved2_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        53u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBrkSysBrkLghtsReqd_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        24u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBrkPdlPosV_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        25u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IIBS_10ms_Group04_Reserved3_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        54u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_Reserved4_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        55u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_Reserved5_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        56u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_Reserved6_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        57u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_CRC_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        58u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_RC_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        59u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_Reserved1_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        60u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTTrOtptShaftTotMinAvlblToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        26u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTTrOtptShaftTotMaxAvlblToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        27u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTTrOtptShaftTotMaxAvlblToq_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        6u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IEPTTrOtptShaftTotMinAvlblToq_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        7u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IEPTTrOtptShaftTotToq_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        8u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IEPTTrOtptShaftTotToqV_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        28u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRZCU_10ms_Group22_Reserved2_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        61u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_Reserved3_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        62u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_Reserved4_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        63u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_Reserved5_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        64u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_Reserved6_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        65u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group22_Reserved7_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx*/
        66u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_20ms_Group01_CRC_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        67u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_20ms_Group01_RC_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        68u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSMinVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        29u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSMaxVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        30u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSPackVolV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        31u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSPackCrntV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        32u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSPackCrnt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        9u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IBMSPackVol_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        10u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IBMSMaxVolLmt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        11u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        2u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IBMSMinVolLmt_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        12u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ISDM_20ms_Group01_CRC_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        69u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group01_RC_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        70u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group01_Reserved1_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        33u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAirbagSysFltForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        34u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAirbagDplInvsneForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        35u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAirbagDplForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        36u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSbltAudRmndr_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        37u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnFrtPsngSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        71u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFasnDrvrSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        72u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group01_Reserved2_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        38u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IDrvrSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        39u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IDrvrSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        40u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSecRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        41u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSecRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        42u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSecRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        43u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSecRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        44u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSecRowLSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        73u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFasnSecRowMidSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        74u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFasnThrdRowLSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        75u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFasnThrdRowLSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        45u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnThrdRowLSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        46u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSecRowRSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        76u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFasnSecRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        47u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnSecRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        48u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnThrdRowRSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        77u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFasnThrdRowRSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        49u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnThrdRowRSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        50u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnThrdRowMidSbltIndCmd_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        78u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFasnThrdRowMidSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        51u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFasnThrdRowMidSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        52u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFrtPsngSbltAtcV_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        53u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFrtPsngSbltAtc_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        54u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISDM_20ms_Group01_Reserved3_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        79u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group01_Reserved4_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        80u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group03_CRC_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        81u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group03_RC_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        82u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISAMHVInhd_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        55u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTSysCoolResp_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        83u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISAMSttrTem_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        84u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISAMInvtrTem_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        85u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group03_Reserved2_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        86u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        7u,
        2u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISAMAShrtCircuitRdy_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        56u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISAMSttrTemV_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        57u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISAMOvhtd_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        58u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISAMInvtrTemV_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        59u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IISGHVILSts_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        87u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group03_Reserved1_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        60u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEU_100ms_Group03_Reserved3_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        88u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISAMHVILSts_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        89u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISAMToqDrtng_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        61u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISAMOfstAngCalReq_PEU_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        62u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEU_100ms_Group03_Reserved4_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        90u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group03_Reserved5_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        91u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group07_CRC_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        92u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group07_RC_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        93u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IACCSdslReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        63u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IACCGoReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        64u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IACCAccReqSts_CH_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        94u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IACCAccReqVal_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        13u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IAPAEPBOPReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        95u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IACCSysFltSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        96u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAIPkgAPASCSAcclReqVal_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        14u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IACCSysSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        97u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAPASCSAcclReqSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        65u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAPAEPBOPReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        66u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysSCSSdslReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        67u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysSCSSdslReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        68u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysEmgcBrkReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        69u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysEmgcBrkReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        70u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAIPilotBrkRddyMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        71u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAIPkgBrkRddyMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        72u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBAD_20ms_Group07_Reserved1_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        98u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAutodDrvngSysSCSDrvOffReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        73u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysSCSDrvOffReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        74u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysMdReqV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        75u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysMdReq_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        76u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysFlrStsV_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        77u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutodDrvngSysFlrSts_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        99u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group02_CRC_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        100u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group02_RC_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        101u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAirbagSysFltIndCmd_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        102u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAirbagDplInvsn_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        78u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAirbagDpl_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        79u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISDM_20ms_Group02_Reserved1_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        80u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPedtrnProtnSysDplStsV_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        81u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPedtrnProtnSysDplSts_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        82u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPedtrnProtnSysIndrCmd_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        103u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAirbagSysFlt_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        83u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFrtPsngAirbagSwSts_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        104u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group02_Reserved2_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        105u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group02_Reserved3_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        106u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group02_Reserved4_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        107u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISDM_20ms_Group02_Reserved5_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        108u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        5u,
        7u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFrtPsngAirbagIndReq_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        109u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFrtPsngAirbagEnbIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        84u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFrtPsngAirbagDsblIndF_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        85u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISDM_20ms_Group02_Reserved6_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        110u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehCrshTyp_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        111u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_CRC_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        112u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_RC_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        113u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITrEstdGearV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        86u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTRdyV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        87u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        88u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITrShftLvrPosV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        89u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITrEstdGear_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        114u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITrShftLvrPos_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        115u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_Reserved2_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        90u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPreEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        91u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRZCU_20ms_Group06_Reserved1_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        116u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_Reserved3_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        117u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_Reserved4_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        118u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_Reserved5_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        119u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_Reserved6_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        120u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_20ms_Group07_CRC_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        121u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_20ms_Group07_RC_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        122u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHDCSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        123u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IABSIO_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        92u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVSESysA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        93u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBrkSysYlwBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        94u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVSESts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        124u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVSEMd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        125u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IMultColBrkEnbA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        95u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEBDFaultSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        96u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITCSOpngSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        126u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITCSOpngMd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        127u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBrkSysHillStAstAvlbl_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        97u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRgtvBrkFnFltSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        98u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IMSRF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        99u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IAutoHoldSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        128u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAutoHoldMsg_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        129u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEBDA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        100u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRgtvBrkFnSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        101u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITCSEnbd_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        102u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHBAActiveSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        103u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITCSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        104u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEnDragToqRducnA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        105u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IABSF_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        106u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IABSA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        107u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHBAValidSt_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        108u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IMSRA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        109u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEmgcBrkAV_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        110u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEmgcBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        111u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBrkSysRedBrkTlltReq_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        112u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBrkSysHillStAstSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        130u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAVHSigPdlSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        131u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAutoHoldMdSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        132u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISoftSpSysSts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        133u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IMulColBrkA_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        113u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IMulColBrkAvlblySts_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        114u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBAD_20ms_Group12_CRC_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        134u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group12_RC_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        135u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group12_Reserved1_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        136u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group12_Reserved2_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        137u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAPASts_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        138u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAutodDrvngSysSts_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        139u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group12_Reserved3_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        140u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group12_Reserved4_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        141u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group12_Reserved5_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        142u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBAD_20ms_Group12_Reserved6_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx  IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx*/
        143u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_20ms_Group11_CRC_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        144u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_20ms_Group11_RC_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        145u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_20ms_Group11_Reserved1_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        146u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehSpdAvgNonDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        115u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        15u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IVehSpdAvgV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        116u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVehSpdAvgDrvn_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        16u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        1u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IVehSpdAvgDrvnV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        117u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVehSpdAvgNonDrvn_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        17u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IVehSpdAvgDrvnSrc_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        118u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_20ms_Group03_CRC_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        147u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_20ms_Group03_RC_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        148u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAMRPrtensonReq_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        149u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_20ms_Group03_Reserved2_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        150u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISysVolMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        119u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_20ms_Group03_Reserved1_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        151u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_20ms_Group03_Reserved3_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        152u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        153u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISysVolV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        120u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISysPwrMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        121u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        122u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        123u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        154u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISysVol_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        155u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPwrMdMstrRunCrkA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        124u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISysPwrMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        156u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPwrMdMstrAccryA_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        125u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISysOpnlMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        157u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_20ms_Group03_Reserved4_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        158u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBPMMstrAvlbly_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        126u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISysVolMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        159u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_50ms_Group14_CRC_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        160u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_50ms_Group14_RC_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        161u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSVehicleEPO_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        162u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSHVReq_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        163u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSBscSta_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        164u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSFltLvl_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        165u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSPtIsltnRstcV_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        127u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_50ms_Group14_Reserved1_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        128u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSMainRelaySts_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        166u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSHVILClsd_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        129u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_50ms_Group14_Reserved2_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        167u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOfbdChrgRelayAdh_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        168u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_50ms_Group14_Reserved3_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        169u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSKeepSysAwkScene_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        170u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSPtIsltnRstc_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        18u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        2u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IBMSHVILSts_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        171u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_CRC_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        172u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_RC_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        173u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved1_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        174u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved2_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        175u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehIlluminateCtrlCmd_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        130u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved3_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        176u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBrkLghtSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        131u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRLChildProtnA_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        177u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved4_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        178u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBrkLghtFltSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        132u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRRChildProtnA_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        179u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved5_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        180u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved7_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        181u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        7u,
        3u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDircnLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        182u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved6_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        133u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRevsLghtFltSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        134u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRevsLghtSta_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        135u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRearFogLghtAcFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        136u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRearFogLghtAcSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        137u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRearFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        138u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ISideLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        139u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved8_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        140u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRRSideLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        141u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRLSideLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        142u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHdlmpLvlngFltSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        143u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHdlmpLvlngCrtl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        183u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        1u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDayTmRunngLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        144u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IDayTmRunngLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        145u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved9_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        184u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved10_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        185u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFrtFogLghtSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        146u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRFrtFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        147u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILFrtFogLghtCtrl_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        148u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHdlmpLvlngSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        186u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved12_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        187u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDircnLghtSwReq_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        188u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved11_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        189u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFrtFogLghtFltSts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        149u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved13_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        190u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved14_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        191u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDircnLghtFltsts_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        192u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved15_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        193u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved16_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        194u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved17_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        195u,
        0u,0u,
        COM_UNUSED_UINT16,

        15u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved18_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        196u,
        0u,0u,
        COM_UNUSED_UINT16,

        16u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved19_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        197u,
        0u,0u,
        COM_UNUSED_UINT16,

        17u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved20_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        198u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group24_Reserved21_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
        199u,
        0u,0u,
        COM_UNUSED_UINT16,

        19u,
        ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_CRC_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        200u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_RC_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        201u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDrvrDetSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        202u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRLDoorOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        203u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_Reserved1_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        150u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IDrvrDoorOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        204u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBntOpenSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        205u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehLckSts_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        206u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_Reserved2_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        207u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_Reserved3_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        208u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_Reserved4_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        209u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_Reserved6_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        210u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHDircnLghtFusaWrn_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        211u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        3u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_Reserved5_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        212u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILHZCU_50ms_Group06_Reserved7_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        213u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group33_CRC_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        214u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group33_RC_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        215u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group33_Reserved1_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        216u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSBatPrsSnsrValBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        19u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IBMSBatPrsSnsrVBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        151u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group33_Reserved2_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        217u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group33_Reserved3_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        218u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group33_Reserved4_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        219u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group33_Reserved5_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        220u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_CRC_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        221u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_RC_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        222u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEVMdDisb_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        223u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTEVMode_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        224u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEmmsnTestMdPCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        152u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybTrgtSOCUprLmt_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        225u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybElecVehMdRcmnd_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        153u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybTrgtSOCLowrLmt_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        226u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTEnStFail_HCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        154u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybTrgtSOCResp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        227u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTFrcEVStsDsp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        228u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved1_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        229u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTParkngPwrGennMdSts_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        155u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybLowSOCWrnng_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        230u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved2_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        231u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved3_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        156u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybParkngPwrGennTrgtSOCResp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        232u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTEVMdExitIPKDsp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        233u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybVehEnrgFlw_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        234u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTEVMdNoEntRsn_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        235u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybInfoDsp_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        236u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IV2XEnEnbDspCmd_HCU_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        237u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTParkngPwrGennLvlSts_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        238u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTParkngPwrGennMdNoEntRsn_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        239u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved4_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        240u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybEPTPwrDMdSwSts_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        241u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved5_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        242u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved6_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        243u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved7_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        244u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved8_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        245u,
        0u,0u,
        COM_UNUSED_UINT16,

        15u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved9_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        246u,
        0u,0u,
        COM_UNUSED_UINT16,

        16u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved10_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        247u,
        0u,0u,
        COM_UNUSED_UINT16,

        17u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved11_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        248u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved12_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        249u,
        0u,0u,
        COM_UNUSED_UINT16,

        19u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved13_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        250u,
        0u,0u,
        COM_UNUSED_UINT16,

        20u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved14_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        251u,
        0u,0u,
        COM_UNUSED_UINT16,

        21u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved15_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        252u,
        0u,0u,
        COM_UNUSED_UINT16,

        22u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved16_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        253u,
        0u,0u,
        COM_UNUSED_UINT16,

        23u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved17_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        254u,
        0u,0u,
        COM_UNUSED_UINT16,

        24u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved18_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        255u,
        0u,0u,
        COM_UNUSED_UINT16,

        25u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved19_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        256u,
        0u,0u,
        COM_UNUSED_UINT16,

        26u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved20_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        257u,
        0u,0u,
        COM_UNUSED_UINT16,

        27u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved21_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        258u,
        0u,0u,
        COM_UNUSED_UINT16,

        28u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved22_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        259u,
        0u,0u,
        COM_UNUSED_UINT16,

        29u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved23_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        260u,
        0u,0u,
        COM_UNUSED_UINT16,

        30u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_100ms_Group15_Reserved24_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        261u,
        0u,0u,
        COM_UNUSED_UINT16,

        31u,
        IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_CRC_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        262u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_RC_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        263u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_Reserved1_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        264u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSCMUFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        265u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSWrnngInfo_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        266u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSCellVoltFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        267u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_Reserved2_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        268u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSPackTemFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        269u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSPackVoltFlt_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        270u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSPreThrmFltInd_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        157u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group20_Reserved3_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        271u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_Reserved4_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        272u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_Reserved5_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        273u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_Reserved6_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        274u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group10_CRC_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        275u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group10_RC_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        276u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOfbdChrgRelaySts_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        277u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group10_Reserved1_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        278u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOfbdChrgrNgtvSktTem_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        279u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrSktPstvSnsrTem_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        280u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group10_Reserved2_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        281u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnbdChrgrSktElecLckEnable_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        282u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrSktPstvSnsrTemV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        158u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOfbdChrgrNgtvSktTemV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        159u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOfbdChrgrWkup_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        160u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRZCU_100ms_Group10_Reserved3_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        283u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOffBdChrgrPlugOn_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        284u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        7u,
        2u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOfbdRelayWeldFlt_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        161u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IIMU_Signal_status_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        285u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVCUCtrlS2Req_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        286u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group10_Reserved4_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        162u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOfbdChrgRelayStsV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        163u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICstRgtnBrkLgtReq_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        164u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICstRgtnBrkLgtReqV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        165u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOnBdChrgrSktElecLckStaV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        166u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOnBdChrgrSktElecLckSta_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        287u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOffBdChrgrPlugOnV_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx*/
        167u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group23_CRC_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        288u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group23_RC_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        289u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSHVILClsdBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        168u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSFltLvlBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        290u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSPackSOCBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        20u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IBMSPackSOCVBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        169u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSBscStaBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        291u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group23_Reserved1_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        292u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSMainRelayStsBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        293u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSMainRelayReqBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        21u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IESS_100ms_Group23_Reserved2_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        294u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group23_Reserved3_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        295u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group02_CRC_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        296u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group02_RC_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        297u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        170u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCSta_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        298u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCTem_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        299u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group02_Reserved1_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        300u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrHVILStsVal_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        301u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPDUHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        171u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPDUHVILSts_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        302u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrHVILStsValV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        172u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCHVILSts_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        303u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group02_Reserved2_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        304u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group02_Reserved3_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        305u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group02_Reserved4_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        306u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group32_CRC_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        307u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group32_RC_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        308u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group32_Reserved1_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        309u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSBatPrsSnsrVal_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        22u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IBMSBatPrsSnsrV_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        173u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group32_Reserved2_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        310u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group32_Reserved3_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        311u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group32_Reserved4_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        312u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group32_Reserved5_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        313u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_CRC_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        314u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_RC_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        315u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_Reserved1_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        316u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_Reserved2_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        317u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSWrnngInfoBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        318u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_Reserved3_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        319u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_Reserved4_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        320u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSPreThrmFltIndBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        174u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group27_Reserved5_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        321u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_Reserved6_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        322u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group27_Reserved7_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        323u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_100ms_Group80_CRC_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        324u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_100ms_Group80_RC_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        325u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehDrvngMd_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        326u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        0u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        0u,
        24u,
        3u,
        COM_BIG_ENDIAN,
        COM_UINT32,

    },
    {
        /* IICBVC_100ms_Group80_Reserved1_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        327u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehLdShedLvl_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        328u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        175u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_100ms_Group80_Reserved2_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        329u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFrtPsngAirbagSwStsReqV_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        176u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFrtPsngAirbagSwStsReq_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        177u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_100ms_Group80_Reserved3_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        330u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_Group03_CRC_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        331u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_Group03_RC_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        332u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_100ms_Group01_Reserved1_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        333u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_100ms_Group01_Reserved2_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        334u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_100ms_Group01_Reserved3_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        335u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_100ms_Group01_Reserved4_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        336u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_100ms_Group01_Reserved5_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        337u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_100ms_Group01_Reserved6_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        338u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBMAlrmSts_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        339u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBM_100ms_Group01_Reserved7_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        340u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBMHdwrFltSts_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        341u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBMFltLvl_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx  ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
        342u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_CRC_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        343u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_RC_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        344u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVCUBatPrsAlrmV_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        178u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVCUBatPrsAlrm_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        179u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVEstbCond_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        345u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_Reserved1_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        346u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVMCExtrePssMdInd_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        347u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_Reserved2_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        348u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_Reserved3_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        349u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_Reserved4_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        350u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_Reserved5_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        351u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group12_Reserved6_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
        352u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Group01_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        353u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0000_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        354u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0001_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        355u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0002_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        356u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVCUSecyWrnngInfo_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        357u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0003_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        358u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0004_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        359u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0005_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        360u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0006_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        361u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gr_0007_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        362u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_CRC_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        363u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_RC_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        364u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_Reserved1_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        365u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOffBdChrgrPlugOnBkup_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        366u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_Reserved2_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        367u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_Reserved3_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        368u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_Reserved4_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        369u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_Reserved6_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        370u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEmgyPwrdwnReq_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        371u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_Reserved5_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        180u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOffBdChrgrPlugOnVBkup_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        181u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRZCU_100ms_Group21_Reserved7_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        372u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOffBdPlugOnRepBkup_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        373u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        0u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_100ms_Group21_Reserved8_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx  IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx*/
        182u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_200ms_Group79_CRC_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        374u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_200ms_Group79_RC_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        375u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_200ms_Group79_Reserved1_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        183u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOdoPriyPrcsV_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        184u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTNotReadyReq_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        185u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IClstrDspdAirbagWrnng_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        186u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_200ms_Group79_Reserved2_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        376u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_200ms_Group79_Reserved3_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        377u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOdoPriyPrcs_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        1u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        0u,
        32u,
        4u,
        COM_BIG_ENDIAN,
        COM_UINT32,

    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_TxGroupSignalType, COM_CONST) Com_TxGroupSignal[COM_TXGROUPSIGNAL_NUMBER]=
{
    {
        /* IPitchSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        91u,
        0u,
        0u,

        0u,
        0u,

        7u,

        IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IHeadingSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        92u,
        0u,
        0u,

        0u,
        1u,

        5u,

        IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IPitchRTK_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        93u,
        0u,
        0u,

        0u,
        2u,

        3u,

        IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group18_Reserved1_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        784u,
        0u,
        0u,

        0u,
        0u,

        1u,

        IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_PDU18_RC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        785u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_PDU18_CRC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        786u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group56_Reserved2_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        787u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* ILatitudeRTK_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        23u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        6u,

        IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,

        0u,
        40u,
        5u,
        COM_BIG_ENDIAN,
        COM_SINT64,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        788u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group56_Reserved1_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        789u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group56_RC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        790u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group56_CRC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        791u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IGNSSUTCTimeH_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        94u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IGNSSSeq_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        47u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        5u,

        IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        32u,
        4u,
        COM_BIG_ENDIAN,
        COM_SINT32,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IFixType_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        792u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group13_Reserved_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        793u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group13_RC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        794u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group13_CRC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        795u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IAltSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        95u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* ILonSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        96u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        5u,

        IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* ILatSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        97u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        3u,

        IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group08_Reserved1_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        796u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,

        4u,
        4u,
        1u,
        COM_LITTLE_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group08_RC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        797u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_100ms_Group08_CRC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        798u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved2  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        799u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        2u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IHdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        98u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved3  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        800u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        4u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IVdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        99u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        5u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved4  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        801u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        6u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IPdop_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        100u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        3u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved1  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        802u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group34_RC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        803u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group34_CRC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        804u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_PDU35_RC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        805u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IGNSSF9HCounter_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        806u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IGNSSUTCTime_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        24u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        4u,
        44u,
        6u,
        COM_BIG_ENDIAN,
        COM_SINT64,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group35_Reserved1  IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        807u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_PDU35_CRC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        808u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group40_Reserved2  IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        809u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IHeadingRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        101u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        6u,

        IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IAltitudeRTK_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        48u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        4u,

        IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        24u,
        3u,
        COM_BIG_ENDIAN,
        COM_SINT32,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group40_Reserved1  IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        810u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group40_RC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        811u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group40_CRC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        812u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group57_Reserved2  IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        813u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        7u,

        IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* ILongitudeRTK_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        25u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        6u,

        IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,

        0u,
        40u,
        5u,
        COM_BIG_ENDIAN,
        COM_SINT64,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group57_Reserved1  IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        814u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group57_RC  IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        815u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        1u,

        IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
        /* IIAM_ZONE_100ms_Group57_CRC_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        816u,
        0u,
        0u,

        0u,
        COM_UNUSED_UINT16,

        0u,

        IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"
static const uint16 Com_MainFunctionRxRange[COM_NUMBER_OF_MAIN_FUNCTION_RX] =
{

    118u,
};

static const uint16 Com_MainFunctionTxRange[COM_NUMBER_OF_MAIN_FUNCTION_TX] =
{

    44u,
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
CONST(Com_ConfigType, COM_CONST_PBCFG) Com_PBConfigData =
{
    &Com_RxIPdu[0],
    &Com_TxIPdu[0],
    &Com_RxSignal[0],
    &Com_TxSignal[0],
    &Com_RxSignalGroup[0],
    &Com_TxSignalGroup[0],
    &Com_RxGroupSignal[0],
    &Com_TxGroupSignal[0],
    NULL_PTR,
    NULL_PTR,
    NULL_PTR,
    &Com_MainFunctionRxRange[0],
    &Com_MainFunctionTxRange[0],

    COM_TXSIGNAL_NUMBER,
    COM_RXSIGNAL_NUMBER,
    COM_TXIPDU_NUMBER,
    COM_RXIPDU_NUMBER,
    COM_TXGROUPSIGNAL_NUMBER,
    COM_RXGROUPSIGNAL_NUMBER,
    COM_TXSIGNALGROUP_NUMBER,
    COM_RXSIGNALGROUP_NUMBER,
    COM_IPDUGROUP_NUMBER,
    COM_NUMBER_OF_MAIN_FUNCTION_ROUTE_SIGNALS,
    COM_NUMBER_OF_MAIN_FUNCTION_RX,
    COM_NUMBER_OF_MAIN_FUNCTION_TX
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

/*******************************************************************************
**                    Global Configuration Function Definitions               **
*******************************************************************************/
void  Com_MainFunctionRx_ComMainFunctionRx(void)
{
    Com_MainFunctionRx(0u);
}

void Com_MainFunctionTx_ComMainFunctionTx(void)
{
    Com_MainFunctionTx(0u);
}

/* PRQA S 1531,1532,1533,1502 -- */
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/

