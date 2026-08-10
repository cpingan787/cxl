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
 *  @file               : Com_PBcfg.c
 *  @author             : iSoft
 *  @date               : 2026-07-14 20:21:16
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
    0x03,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF0,
    0xFF,
    0xFC,
    0x1C,
    0x00,
    0xFF,
    0x1E,
    0xF7,
    0xFC,
    0xF8,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFC,
    0xFC,
    0x80,
    0x00,
    0xE0,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF0,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x30,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
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
    0x10,
    0xFE,
    0xFF,
    0x24,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0xF0,
    0xFF,
    0xFE,
    0xEC,
    0x00,
    0xFE,
    0xFE,
    0xFE,
    0xFE,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x04,
    0x00,
    0xE0,
    0x00,
    0x00,
    0xE3,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x0F,
    0xFF,
    0xFB,
    0x01,
    0xFF,
    0x00,
    0x00,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x01,
    0xF0,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x0F,
    0xFF,
    0x04,
    0x00,
    0x00,
    0x00,
    0x03,
    0xFF,
    0x00,
    0x00,
    0x00,
    0xF0,
    0x00,
    0xFC,
    0xE0,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF8,
    0x7C,
    0x1E,
    0xF0,
    0x00,
    0x00,
    0x07,
    0xFF,
    0x00,
    0x07,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF0,
    0x80,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x20,
    0xFE,
    0xFF,
    0x00,
    0x0F,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0xF0,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x90,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x60,
    0xFF,
    0xFF,
    0x1F,
    0xFF,
    0x1F,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x3F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFC,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0xF0,
    0x00,
    0x18,
    0x03,
    0x0F,
    0xFF,
    0xFC,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xE0,
    0xFF,
    0xFF,
    0x3F,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF0,
    0x03,
    0xFF,
    0x7F,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0xF0,
    0x80,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x10,
    0xFE,
    0xFF,
    0x00,
    0x7F,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xE0,
    0x00,
    0x00,
    0x00,
    0x07,
    0xFF,
    0xFF,
    0xFC,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x7F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x50,
    0xFC,
    0x00,
    0x03,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0xF0,
    0x00,
    0x3F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    0x02,
    0x00,
    0x00,
    0x70,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    0x00,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x02,
    0x00,
    0x00,
    0x00,
    0xBB,
    0x00,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x30,
    0x78,
    0x00,
    0x2F,
    0x00,
    0x00,
    0x2F,
    0x00,
    0x00,
    0xFF,
    0xFE,
    0xFF,
    0xFC,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x7F,
    0xF8,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x03,
    0xDE,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x8F,
    0xFF,
    0xFC,
    0x13,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xB0,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x0F,
    0x12,
    0x00,
    0x00,
    0x1F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x02,
    0x37,
    0x37,
    0x00,
    0x37,
    0x00,
    0x37,
    0x5A,
    0x5A,
    0x5A,
    0x5A,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x73,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0x3A,
    0x0F,
    0x08,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xE1,
    0xFF,
    0xFF,
    0xFF,
    0xC7,
    0xFF,
    0x00,
    0x00,
    0x7F,
    0xFF,
    0x7F,
    0xFF,
    0x7F,
    0xFF,
    0x7F,
    0xFF,
    0x7F,
    0xFB,
    0xFF,
    0x1F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x7F,
    0xFF,
    0x00,
    0x00,
    0x7F,
    0xFF,
    0x00,
    0x00,
    0x7F,
    0xF7,
    0xFF,
    0x7F,
    0xF7,
    0xFF,
    0x7F,
    0xF7,
    0xFF,
    0x7F,
    0xF7,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x04,
    0xFE,
    0x00,
    0xF0,
    0x00,
    0x03,
    0xE8,
    0x7F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x0F,
    0xFE,
    0x0F,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF0,
    0x03,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x80,
    0x00,
    0x00,
    0xF0,
    0x0C,
    0x1F,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0x00,
    0xC0,
    0x75,
    0x30,
    0xFF,
    0xFB,
    0x75,
    0x30,
    0x75,
    0x30,
    0xFF,
    0xFF,
    0xFF,
    0x75,
    0x30,
    0x75,
    0x30,
    0x75,
    0x30,
    0xFF,
    0x75,
    0x30,
    0x75,
    0x30,
    0x00,
    0x20,
    0x00,
    0x1F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x20,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x50,
    0x20,
    0x00,
    0x00,
    0x00,
    0xFC,
    0xFF,
    0x00,
    0x40,
    0x01,
    0xFF,
    0xFF,
    0xFF,
    0x0F,
    0xE3,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
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
    /* IHVDCHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IPDUHVILStsV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IOnBdChrgrHVILStsValV_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IHVDCDCHVSideCrntV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IHVDCDCHVSideVolV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IHVDCDCLVSideVolV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IHVDCDCLVSideCrntV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IHVDCDCLVSideStptFdbkV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IHVDCDCOverHtd_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHVDCDCLdRatioV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICCUOnbdChrgrPlugOnV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOnBdChrgrWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICCU_100ms_Group07_Reserved3_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IOnbdChrgrOtptCrntV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IOnBdChrgrOtptVolV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICCUActiveWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IOnBdChrgrLastWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICCU_100ms_Group07_Reserved10_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IAirCtrlrHVILClsdV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IHVDCDCIntnlFlr_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHVDCDCHdwrFlr_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IESSPTCHVILStsV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICCUOfbdChrgrNgtvSktTemV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICCUOnBdChrgrSktPstvSnsrTemV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICCUOnBdChrgrSktElecLckStaV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IEnActuStdyStaToqV_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEnRunA_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPreThrmFltInd_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsSnsrV_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOfbdChrgrSktVolV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSOfbdChrgrPstvSktTemV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IESS_100ms_Group58_Reserved2_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOnbdChrgrSktNgtvSnsrTemV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOffBdChrgrPlugOnV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IESS_100ms_Group58_Reserved1_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSMinVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSMaxVolLmtV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSPackVolV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSPackCrntV_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSPtIsltnRstcV_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IESS_50ms_Group14_Reserved2_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSHVILClsd_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSHVILClsdBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPackSOCVBkup_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSPreThrmFltIndBkup_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsSnsrVBkup_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOfbdChrgrPstvSktTemVBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IRdundtHVCntarCmdStsV_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IRdundtHVBatFltSveritStsV_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOnbdChrgrSktNgtvSnsrTemV____IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOffBdChrgrPlugOnVBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOfbdChrgrWkupBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IADASLaunchTelematicsCall_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIBS_100ms_Group15_Reserved2_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBrkFltAlrm_GB_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIBS_100ms_Group15_Reserved1_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBrkFrc_GB_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDistRCAvgDrvnSrc_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDistRCAvgDrvnRstOcd_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDistRCAvgDrvnV_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkSysBrkLghtsReqd_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkPdlPosV_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
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
    TRUE,
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
    TRUE,
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
    /* IRgnLvReqFICMV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ILVBatChrgReqRaw_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILVBatChrgReqInhbt_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILVBatEnrgSufct_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILVBatEnrgLow_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IEnrgSplReqV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IEnrgSplReq_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehEnrgRdyLvlV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTToqCustSetngReqV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ILVBatSelfWakeupFlg_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEnrgSplReqRaw_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IFrtPsngAirbagSwStsReqV_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtPsngAirbagSwStsReq_Sfty_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IICBVC_200ms_Group79_Reserved2_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IOdoPriyPrcsV_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IEPTNotReadyReq_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IICBVC_200ms_Group79_Reserved1_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ISysVolMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ISysVolV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISysPwrMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
    TRUE,
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
    /* IKeyAuthResp_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISCUParkLckReqV_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IDigKeyAuthReq_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISCUParkLckReqVEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ISCUShiftrLvrPosnLtchActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCU_10ms_Group01_Reserved3_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ISCUDrvrIntrvnActv_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCU_50ms_Group06_Reserved1_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IPEUMotASpdV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IPEUMotBToqAchV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUMotBSpdV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUMotAToqAchV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUInvtrBDCVltV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUInvtrBDCCrntV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUInvtrADCVltV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUInvtrADCCrntV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTFlt_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybMotBRsovrOfstLrnEnblReq_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybMotARsovrOfstLrnEnblReq_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTCCFltPrst_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybLVEnbReqd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybLVGenrSysF_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHybRgnLvReqDisb_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMFltIO_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICampEPTCrkAbotd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICampEPTRdy_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTCCA_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IEPTCCEnbd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICampEPTRunAbotd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
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
    /* ITotActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IRrAxleActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IDrvrReqFrtAxleWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IEPTSecyAxleRgtvCstdnToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IEPTSecyAxleRgtvBrkFlt_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFrtAxleActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IDrvrReqRrAxleWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ITrEstdGearV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRZCU_20ms_Group06_Reserved1_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITrShftLvrPosV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITrEngdStaV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISDM_20ms_Group01_Reserved1_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IAirbagSysFltForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IAirbagDplInvsneForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IAirbagDplForeCall_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFasnSbltAudRmndr_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISDM_20ms_Group01_Reserved2_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
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
    /* IAirbagDplInvsn_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IAirbagDpl_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ISDM_20ms_Group02_Reserved1_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    TRUE,
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
    /* IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
    FALSE,
    /* IDCOverCurrentHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCOverCurrentLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCOverVoltHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCOverVoltLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCUnderVoltHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCUnderVoltLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCVoltFail_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHVDCDCActvDisOverTime_CONNC____CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHVDCDCDrtng_CONNCANFD_PTCANFD_CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IHVDCDCOverCurrProtLV_CONNCA____CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/
    TRUE,
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
    /* ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBMSPackSOCDspVBkup_ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOfbdChrgrOtptVolV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IBMSOfbdChrgrOtptCrnV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIBS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPICU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFVCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITPMSIdficnLrnCm_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IRLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IBrkLghtFltSta_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITPMSF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITPMSTirePrsLowIO_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITPMSSystemFault_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUMotATemV_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IPEUInvtrATemV_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IACInCarTemV_PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* IACOnOffDspCmd_LHBDCANFD_CON____PICU_RHZCU_RHBKBCANFD_100ms_____CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/
    TRUE,
    /* ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/
    FALSE,
    /* ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
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
    0xFE,
    0xFF,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0x03,
    0x03,
    0xFE,
    0xFE,
    0xFE,
    0xFE,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x07,
    0x00,
    0x00,
    0x00,
    0x00,
    0x07,
    0x00,
    0x00,
    0x07,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x00,
    0x0F,
    0x00,
    0xFF,
    0x03,
    0x1F,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x0F,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x07,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0xFE,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x03,
    0x00,
    0x0F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x07,
    0x1F,
    0x3F,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0x03,
    0x00,
    0xFF,
    0x7F,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0xFE,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x07,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x7F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x3F,
    0x03,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0x00,
    0x3F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x07,
    0x00,
    0x00,
    0x01,
    0x03,
    0x00,
    0x00,
    0x0F,
    0x01,
    0x00,
    0x00,
    0x07,
    0x02,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x00,
    0xFF,
    0x3F,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x07,
    0x0F,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x07,
    0x02,
    0x03,
    0x00,
    0x0F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x07,
    0xFF,
    0xFF,
    0xFF,
    0x07,
    0x00,
    0x03,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1F,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0x7F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x0F,
    0x7F,
    0x0F,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0x03,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x0F,
    0x03,
    0x1F,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x1F,
    0xFF,
    0xFF,
    0x03,
    0x0F,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0x7F,
    0x00,
    0x03,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x03,
    0x00,
    0x0F,
    0x03,
    0x07,
    0x07,
    0x07,
    0x07,
    0x00,
    0x07,
    0x00,
    0x00,
    0xFF,
    0x1E,
    0x00,
    0x07,
    0x1E,
    0x07,
    0x07,
    0x3E,
    0x00,
    0x3E,
    0x00,
    0x00,
    0x00,
    0x00,
    0x07,
    0x07,
    0x07,
    0x07,
    0x00,
    0x08,
    0x00,
    0x00,
    0x07,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3E,
    0x3E,
    0x1E,
    0x1E,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xBB,
    0x02,
    0x7F,
    0x3E,
    0x3E,
    0x00,
    0x1E,
    0x1E,
    0xFE,
    0x13,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x37,
    0x37,
    0x37,
    0x37,
    0x2D,
    0x2D,
    0x2D,
    0x2D,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x73,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0F,
    0x00,
    0x00,
    0x03,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
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
    0x7fe,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0xffff,
    0xfff,
    0x3ff,
    0x3ff,
    0x3fff,
    0x3ff,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x7fff,
    0x7fff,
    0x7fff,
    0x7fff,
    0x7ff,
    0x3ff,
    0x7fff,
    0x0,
    0x7fff,
    0x0,
    0x7ff,
    0x7ff,
    0x7ff,
    0x7ff,
    0x7ff,
    0x7ff,
    0x7ff,
    0x7ff,
    0x0,
    0x3e8,
    0x0,
    0x0,
    0x7530,
    0x7530,
    0x7530,
    0x7530,
    0x7530,
    0x7530,
    0x7530,
    0x7530,
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
    0x3ff,
    0x3ff,
    0x3ff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x1fff,
    0x3ff,
    0xfff,
    0x7ff,
    0x0,
    0xfffe,
    0x3fff,
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
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
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
    0x00,
    0x00
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
    0x00,
    0x00
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
        /* AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx */
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
        /* CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx */
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx */
        24u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx */
        16u,
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
        /* DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx */
        8u,
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
        /* ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx */
        8u,
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
        /* ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx */
        8u,
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
        /* ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx */
        8u,
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
        /* ESS_PTCANFD_Event_FrS62_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTCANFD_Event_FrS63_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx */
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
        /* ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx */
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
        /* FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx */
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx */
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
        /* IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx */
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
        /* ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx */
        12u,
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
        /* ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx */
        20u,
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
        /* ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx */
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
        /* ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx */
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
        /* ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP48_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP51_CONTROLLER_0_IAM_Rx */
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
        /* ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx */
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
        /* ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx */
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
        /* ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx */
        16u,
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
        /* ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx */
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx */
        32u,
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
        /* LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx */
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
        /* LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx */
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
        /* LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
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
        /* LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx */
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PICM_PTCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PICM_PTCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx */
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PICU_PTCANFD_200ms_FrP20_CONTROLLER_0_IAM_Rx */
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* PICU_RHZCU_RHBKBCANFD_100ms_____CONTROLLER_0_IAM_Rx */
        8u,
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
        /* RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx */
        8u,
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
        /* RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx */
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
        /* RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx */
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
        /* RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx */
        24u,
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
        /* RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx */
        20u,
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
        /* SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx */
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
        /* SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx */
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
        /* ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx */
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
        /* IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
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
        /* TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx*/
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
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_RxIPduType, COM_CONST_PBCFG) Com_RxIPdu[COM_RXIPDU_NUMBER]=
{
    {
        /* AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        0u, /*PduBufferId*/

        0u, /*ComIpduSignalRefStartId*/
        1u,

        0u, /*ComIPduGroupsRefStartId*/
        1u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        8u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        1u, /*ComIPduGroupsRefStartId*/
        2u,

        0u, /*ComIPduSignalGroupsRefStartId*/
        1u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/

        &CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        12u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        16u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        2u, /*ComIPduGroupsRefStartId*/
        3u,

        1u, /*ComIPduSignalGroupsRefStartId*/
        2u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        28u, /*PduBufferId*/

        1u, /*ComIpduSignalRefStartId*/
        9u,

        3u, /*ComIPduGroupsRefStartId*/
        4u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        36u, /*PduBufferId*/

        9u, /*ComIpduSignalRefStartId*/
        12u,

        4u, /*ComIPduGroupsRefStartId*/
        5u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/

        &CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        24u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        44u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        5u, /*ComIPduGroupsRefStartId*/
        6u,

        2u, /*ComIPduSignalGroupsRefStartId*/
        3u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/

        &CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        68u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        6u, /*ComIPduGroupsRefStartId*/
        7u,

        3u, /*ComIPduSignalGroupsRefStartId*/
        4u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        84u, /*PduBufferId*/

        12u, /*ComIpduSignalRefStartId*/
        14u,

        7u, /*ComIPduGroupsRefStartId*/
        8u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        100u, /*PduBufferId*/

        14u, /*ComIpduSignalRefStartId*/
        15u,

        8u, /*ComIPduGroupsRefStartId*/
        9u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        108u, /*PduBufferId*/

        15u, /*ComIpduSignalRefStartId*/
        16u,

        9u, /*ComIPduGroupsRefStartId*/
        10u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        116u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        10u, /*ComIPduGroupsRefStartId*/
        11u,

        4u, /*ComIPduSignalGroupsRefStartId*/
        5u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        124u, /*PduBufferId*/

        16u, /*ComIpduSignalRefStartId*/
        21u,

        11u, /*ComIPduGroupsRefStartId*/
        12u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        132u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        12u, /*ComIPduGroupsRefStartId*/
        13u,

        5u, /*ComIPduSignalGroupsRefStartId*/
        6u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        140u, /*PduBufferId*/

        21u, /*ComIpduSignalRefStartId*/
        23u,

        13u, /*ComIPduGroupsRefStartId*/
        14u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        148u, /*PduBufferId*/

        23u, /*ComIpduSignalRefStartId*/
        29u,

        14u, /*ComIPduGroupsRefStartId*/
        15u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        156u, /*PduBufferId*/

        29u, /*ComIpduSignalRefStartId*/
        33u,

        15u, /*ComIPduGroupsRefStartId*/
        16u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        164u, /*PduBufferId*/

        33u, /*ComIpduSignalRefStartId*/
        34u,

        16u, /*ComIPduGroupsRefStartId*/
        17u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        172u, /*PduBufferId*/

        34u, /*ComIpduSignalRefStartId*/
        35u,

        17u, /*ComIPduGroupsRefStartId*/
        18u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        180u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        18u, /*ComIPduGroupsRefStartId*/
        19u,

        6u, /*ComIPduSignalGroupsRefStartId*/
        7u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        188u, /*PduBufferId*/

        35u, /*ComIpduSignalRefStartId*/
        38u,

        19u, /*ComIPduGroupsRefStartId*/
        20u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        196u, /*PduBufferId*/

        38u, /*ComIpduSignalRefStartId*/
        43u,

        20u, /*ComIPduGroupsRefStartId*/
        21u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/

        &ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        204u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        21u, /*ComIPduGroupsRefStartId*/
        22u,

        7u, /*ComIPduSignalGroupsRefStartId*/
        8u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        212u, /*PduBufferId*/

        43u, /*ComIpduSignalRefStartId*/
        46u,

        22u, /*ComIPduGroupsRefStartId*/
        23u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        220u, /*PduBufferId*/

        46u, /*ComIpduSignalRefStartId*/
        54u,

        23u, /*ComIPduGroupsRefStartId*/
        24u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        228u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        24u, /*ComIPduGroupsRefStartId*/
        25u,

        8u, /*ComIPduSignalGroupsRefStartId*/
        9u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        236u, /*PduBufferId*/

        54u, /*ComIpduSignalRefStartId*/
        61u,

        25u, /*ComIPduGroupsRefStartId*/
        26u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        244u, /*PduBufferId*/

        61u, /*ComIpduSignalRefStartId*/
        67u,

        26u, /*ComIPduGroupsRefStartId*/
        27u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        252u, /*PduBufferId*/

        67u, /*ComIpduSignalRefStartId*/
        82u,

        27u, /*ComIPduGroupsRefStartId*/
        28u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        268u, /*PduBufferId*/

        82u, /*ComIpduSignalRefStartId*/
        91u,

        28u, /*ComIPduGroupsRefStartId*/
        29u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        276u, /*PduBufferId*/

        91u, /*ComIpduSignalRefStartId*/
        100u,

        29u, /*ComIPduGroupsRefStartId*/
        30u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        284u, /*PduBufferId*/

        100u, /*ComIpduSignalRefStartId*/
        113u,

        30u, /*ComIPduGroupsRefStartId*/
        31u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        292u, /*PduBufferId*/

        113u, /*ComIpduSignalRefStartId*/
        126u,

        31u, /*ComIPduGroupsRefStartId*/
        32u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        300u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        32u, /*ComIPduGroupsRefStartId*/
        33u,

        9u, /*ComIPduSignalGroupsRefStartId*/
        10u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        308u, /*PduBufferId*/

        126u, /*ComIpduSignalRefStartId*/
        128u,

        33u, /*ComIPduGroupsRefStartId*/
        34u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_Event_FrS62_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        316u, /*PduBufferId*/

        128u, /*ComIpduSignalRefStartId*/
        129u,

        34u, /*ComIPduGroupsRefStartId*/
        35u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_Event_FrS63_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        324u, /*PduBufferId*/

        129u, /*ComIpduSignalRefStartId*/
        130u,

        35u, /*ComIPduGroupsRefStartId*/
        36u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        64u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        332u, /*PduBufferId*/

        130u, /*ComIpduSignalRefStartId*/
        138u,

        36u, /*ComIPduGroupsRefStartId*/
        37u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        396u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        37u, /*ComIPduGroupsRefStartId*/
        38u,

        10u, /*ComIPduSignalGroupsRefStartId*/
        11u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        404u, /*PduBufferId*/

        138u, /*ComIpduSignalRefStartId*/
        140u,

        38u, /*ComIPduGroupsRefStartId*/
        39u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        412u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        39u, /*ComIPduGroupsRefStartId*/
        40u,

        11u, /*ComIPduSignalGroupsRefStartId*/
        12u,

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

        420u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        40u, /*ComIPduGroupsRefStartId*/
        41u,

        12u, /*ComIPduSignalGroupsRefStartId*/
        13u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/

        &ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        428u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        41u, /*ComIPduGroupsRefStartId*/
        42u,

        13u, /*ComIPduSignalGroupsRefStartId*/
        14u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        436u, /*PduBufferId*/

        140u, /*ComIpduSignalRefStartId*/
        142u,

        42u, /*ComIPduGroupsRefStartId*/
        43u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        444u, /*PduBufferId*/

        142u, /*ComIpduSignalRefStartId*/
        147u,

        43u, /*ComIPduGroupsRefStartId*/
        44u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/

        &FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        12u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        452u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        44u, /*ComIPduGroupsRefStartId*/
        45u,

        14u, /*ComIPduSignalGroupsRefStartId*/
        15u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        &IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        464u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        45u, /*ComIPduGroupsRefStartId*/
        46u,

        15u, /*ComIPduSignalGroupsRefStartId*/
        16u,

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

        472u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        46u, /*ComIPduGroupsRefStartId*/
        47u,

        16u, /*ComIPduSignalGroupsRefStartId*/
        17u,

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

        480u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        47u, /*ComIPduGroupsRefStartId*/
        48u,

        17u, /*ComIPduSignalGroupsRefStartId*/
        18u,

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

        488u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        48u, /*ComIPduGroupsRefStartId*/
        49u,

        18u, /*ComIPduSignalGroupsRefStartId*/
        19u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        12u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        496u, /*PduBufferId*/

        147u, /*ComIpduSignalRefStartId*/
        149u,

        49u, /*ComIPduGroupsRefStartId*/
        50u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        508u, /*PduBufferId*/

        149u, /*ComIpduSignalRefStartId*/
        169u,

        50u, /*ComIPduGroupsRefStartId*/
        51u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        528u, /*PduBufferId*/

        169u, /*ComIpduSignalRefStartId*/
        184u,

        51u, /*ComIPduGroupsRefStartId*/
        52u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        548u, /*PduBufferId*/

        184u, /*ComIpduSignalRefStartId*/
        188u,

        52u, /*ComIPduGroupsRefStartId*/
        53u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        556u, /*PduBufferId*/

        188u, /*ComIpduSignalRefStartId*/
        189u,

        53u, /*ComIPduGroupsRefStartId*/
        54u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        564u, /*PduBufferId*/

        189u, /*ComIpduSignalRefStartId*/
        191u,

        54u, /*ComIPduGroupsRefStartId*/
        55u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        572u, /*PduBufferId*/

        191u, /*ComIpduSignalRefStartId*/
        193u,

        55u, /*ComIPduGroupsRefStartId*/
        56u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/

        &ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        580u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        56u, /*ComIPduGroupsRefStartId*/
        57u,

        19u, /*ComIPduSignalGroupsRefStartId*/
        20u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        588u, /*PduBufferId*/

        193u, /*ComIpduSignalRefStartId*/
        195u,

        57u, /*ComIPduGroupsRefStartId*/
        58u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        596u, /*PduBufferId*/

        195u, /*ComIpduSignalRefStartId*/
        196u,

        58u, /*ComIPduGroupsRefStartId*/
        59u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        604u, /*PduBufferId*/

        196u, /*ComIpduSignalRefStartId*/
        202u,

        59u, /*ComIPduGroupsRefStartId*/
        60u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP48_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        612u, /*PduBufferId*/

        202u, /*ComIpduSignalRefStartId*/
        203u,

        60u, /*ComIPduGroupsRefStartId*/
        61u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_100ms_FrP51_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        620u, /*PduBufferId*/

        203u, /*ComIpduSignalRefStartId*/
        204u,

        61u, /*ComIPduGroupsRefStartId*/
        62u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        628u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        62u, /*ComIPduGroupsRefStartId*/
        63u,

        20u, /*ComIPduSignalGroupsRefStartId*/
        21u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        636u, /*PduBufferId*/

        204u, /*ComIpduSignalRefStartId*/
        210u,

        63u, /*ComIPduGroupsRefStartId*/
        64u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        644u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        64u, /*ComIPduGroupsRefStartId*/
        65u,

        21u, /*ComIPduSignalGroupsRefStartId*/
        22u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        652u, /*PduBufferId*/

        210u, /*ComIpduSignalRefStartId*/
        220u,

        65u, /*ComIPduGroupsRefStartId*/
        66u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        660u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        66u, /*ComIPduGroupsRefStartId*/
        67u,

        22u, /*ComIPduSignalGroupsRefStartId*/
        23u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        668u, /*PduBufferId*/

        220u, /*ComIpduSignalRefStartId*/
        221u,

        67u, /*ComIPduGroupsRefStartId*/
        68u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        684u, /*PduBufferId*/

        221u, /*ComIpduSignalRefStartId*/
        222u,

        68u, /*ComIPduGroupsRefStartId*/
        69u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        32u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        692u, /*PduBufferId*/

        222u, /*ComIpduSignalRefStartId*/
        253u,

        69u, /*ComIPduGroupsRefStartId*/
        70u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        32u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        724u, /*PduBufferId*/

        253u, /*ComIpduSignalRefStartId*/
        254u,

        70u, /*ComIPduGroupsRefStartId*/
        71u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        756u, /*PduBufferId*/

        254u, /*ComIpduSignalRefStartId*/
        255u,

        71u, /*ComIPduGroupsRefStartId*/
        72u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        764u, /*PduBufferId*/

        255u, /*ComIpduSignalRefStartId*/
        264u,

        72u, /*ComIPduGroupsRefStartId*/
        73u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        772u, /*PduBufferId*/

        264u, /*ComIpduSignalRefStartId*/
        272u,

        73u, /*ComIPduGroupsRefStartId*/
        74u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        780u, /*PduBufferId*/

        272u, /*ComIpduSignalRefStartId*/
        273u,

        74u, /*ComIPduGroupsRefStartId*/
        75u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        800u, /*PduBufferId*/

        273u, /*ComIpduSignalRefStartId*/
        274u,

        75u, /*ComIPduGroupsRefStartId*/
        76u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        808u, /*PduBufferId*/

        274u, /*ComIpduSignalRefStartId*/
        275u,

        76u, /*ComIPduGroupsRefStartId*/
        77u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        816u, /*PduBufferId*/

        275u, /*ComIpduSignalRefStartId*/
        284u,

        77u, /*ComIPduGroupsRefStartId*/
        78u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        824u, /*PduBufferId*/

        284u, /*ComIpduSignalRefStartId*/
        287u,

        78u, /*ComIPduGroupsRefStartId*/
        79u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        844u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        79u, /*ComIPduGroupsRefStartId*/
        80u,

        23u, /*ComIPduSignalGroupsRefStartId*/
        24u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        852u, /*PduBufferId*/

        287u, /*ComIpduSignalRefStartId*/
        288u,

        80u, /*ComIPduGroupsRefStartId*/
        81u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        860u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        81u, /*ComIPduGroupsRefStartId*/
        82u,

        24u, /*ComIPduSignalGroupsRefStartId*/
        25u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/

        &PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        868u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        82u, /*ComIPduGroupsRefStartId*/
        83u,

        25u, /*ComIPduSignalGroupsRefStartId*/
        26u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        888u, /*PduBufferId*/

        288u, /*ComIpduSignalRefStartId*/
        292u,

        83u, /*ComIPduGroupsRefStartId*/
        84u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/

        &PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        32u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        908u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        84u, /*ComIPduGroupsRefStartId*/
        85u,

        26u, /*ComIPduSignalGroupsRefStartId*/
        27u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PICM_PTCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        940u, /*PduBufferId*/

        292u, /*ComIpduSignalRefStartId*/
        293u,

        85u, /*ComIPduGroupsRefStartId*/
        86u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PICM_PTCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        948u, /*PduBufferId*/

        293u, /*ComIpduSignalRefStartId*/
        294u,

        86u, /*ComIPduGroupsRefStartId*/
        87u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        956u, /*PduBufferId*/

        294u, /*ComIpduSignalRefStartId*/
        296u,

        87u, /*ComIPduGroupsRefStartId*/
        88u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        &PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        964u, /*PduBufferId*/

        296u, /*ComIpduSignalRefStartId*/
        298u,

        88u, /*ComIPduGroupsRefStartId*/
        89u,

        27u, /*ComIPduSignalGroupsRefStartId*/
        28u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PICU_PTCANFD_200ms_FrP20_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        984u, /*PduBufferId*/

        298u, /*ComIpduSignalRefStartId*/
        299u,

        89u, /*ComIPduGroupsRefStartId*/
        90u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* PICU_RHZCU_RHBKBCANFD_100ms_____CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1000u, /*PduBufferId*/

        299u, /*ComIpduSignalRefStartId*/
        300u,

        90u, /*ComIPduGroupsRefStartId*/
        91u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        16u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1008u, /*PduBufferId*/

        300u, /*ComIpduSignalRefStartId*/
        301u,

        91u, /*ComIPduGroupsRefStartId*/
        92u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1024u, /*PduBufferId*/

        301u, /*ComIpduSignalRefStartId*/
        305u,

        92u, /*ComIPduGroupsRefStartId*/
        93u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1032u, /*PduBufferId*/

        305u, /*ComIpduSignalRefStartId*/
        306u,

        93u, /*ComIPduGroupsRefStartId*/
        94u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        1040u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        94u, /*ComIPduGroupsRefStartId*/
        95u,

        28u, /*ComIPduSignalGroupsRefStartId*/
        29u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1048u, /*PduBufferId*/

        306u, /*ComIpduSignalRefStartId*/
        308u,

        95u, /*ComIPduGroupsRefStartId*/
        96u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        1056u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        96u, /*ComIPduGroupsRefStartId*/
        97u,

        29u, /*ComIPduSignalGroupsRefStartId*/
        30u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/

        &RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,  /* ComIPduCallout */
        24u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1064u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        97u, /*ComIPduGroupsRefStartId*/
        98u,

        30u, /*ComIPduSignalGroupsRefStartId*/
        31u,

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

        1088u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        98u, /*ComIPduGroupsRefStartId*/
        99u,

        31u, /*ComIPduSignalGroupsRefStartId*/
        32u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        20u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1096u, /*PduBufferId*/

        308u, /*ComIpduSignalRefStartId*/
        309u,

        99u, /*ComIPduGroupsRefStartId*/
        100u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1116u, /*PduBufferId*/

        309u, /*ComIpduSignalRefStartId*/
        310u,

        100u, /*ComIPduGroupsRefStartId*/
        101u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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

        1124u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        101u, /*ComIPduGroupsRefStartId*/
        102u,

        32u, /*ComIPduSignalGroupsRefStartId*/
        33u,

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

        1132u, /*PduBufferId*/

        COM_UNUSED_RXSIGNALID,0u,

        102u, /*ComIPduGroupsRefStartId*/
        103u,

        33u, /*ComIPduSignalGroupsRefStartId*/
        34u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1140u, /*PduBufferId*/

        310u, /*ComIpduSignalRefStartId*/
        312u,

        103u, /*ComIPduGroupsRefStartId*/
        104u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1148u, /*PduBufferId*/

        312u, /*ComIpduSignalRefStartId*/
        316u,

        104u, /*ComIPduGroupsRefStartId*/
        105u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

        0u,
        FALSE,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
        /* ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/

        NULL_PTR,  /* ComIPduCallout */
        8u, /* ComIpduLength */
        0u, /* ComMaxIpduLength */
        0u, /*ComFirstTimeout*/

        0u, /*ComTimeout*/

        1156u, /*PduBufferId*/

        316u, /*ComIpduSignalRefStartId*/
        321u,

        105u, /*ComIPduGroupsRefStartId*/
        106u,

        COM_UNUSED_RXSIGNALGROUPID,0u,

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
};
#define COM_STOP_SEC_PBCONFIG_DATA_16
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
CONST(Com_TxModePeriodType, COM_CONST) Com_TxModeTruePeriod[] =
{
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

    /* IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
    {1u,
    20u,
    },

    /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06*/
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

    /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13*/
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

    /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03*/
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
    /* IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/
    4u,
    10u,
    },
    {
    /* TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx*/
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
    {   /* IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        8u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx, /*PduId*/
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

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx - 1 + IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        16u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx, /*PduId*/
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

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx - 2 + IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        24u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx, /*PduId*/
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

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx - 3 + IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        32u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx, /*PduId*/
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

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx - 4 + IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        40u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx, /*PduId*/
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

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx - 5 + IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        48u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx, /*PduId*/
        5u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        41u, /*ComIpduSignalRefStartId*/
        49u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        6u, /*ComIPduGroupsRefStartId*/
        7u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx - 6 + IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        56u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx, /*PduId*/
        6u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        49u, /*ComIpduSignalRefStartId*/
        57u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        7u, /*ComIPduGroupsRefStartId*/
        8u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx - 7 + IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        64u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx, /*PduId*/
        7u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        57u, /*ComIpduSignalRefStartId*/
        65u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        8u, /*ComIPduGroupsRefStartId*/
        9u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx - 8 + IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        72u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx, /*PduId*/
        8u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        65u, /*ComIpduSignalRefStartId*/
        73u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        9u, /*ComIPduGroupsRefStartId*/
        10u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx - 9 + IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        80u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx, /*PduId*/
        9u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        73u, /*ComIpduSignalRefStartId*/
        75u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        10u, /*ComIPduGroupsRefStartId*/
        11u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx - 10 + IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        88u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx, /*PduId*/
        10u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        75u, /*ComIpduSignalRefStartId*/
        83u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        11u, /*ComIPduGroupsRefStartId*/
        12u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx - 11 + IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        16u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        96u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx, /*PduId*/
        1u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        83u, /*ComIpduSignalRefStartId*/
        84u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        12u, /*ComIPduGroupsRefStartId*/
        13u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx - 12 + IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        12u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        112u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx, /*PduId*/
        2u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        84u, /*ComIpduSignalRefStartId*/
        86u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        13u, /*ComIPduGroupsRefStartId*/
        14u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx - 13 + IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        32u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        124u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx, /*PduId*/
        3u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        86u, /*ComIpduSignalRefStartId*/
        121u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        14u, /*ComIPduGroupsRefStartId*/
        15u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx - 14 + IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        156u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx, /*PduId*/
        4u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        121u, /*ComIpduSignalRefStartId*/
        124u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        15u, /*ComIPduGroupsRefStartId*/
        16u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx - 15 + IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        164u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx, /*PduId*/
        5u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        124u, /*ComIpduSignalRefStartId*/
        125u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        16u, /*ComIPduGroupsRefStartId*/
        17u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx - 16 + IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        172u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, /*PduId*/
        6u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        125u, /*ComIpduSignalRefStartId*/
        136u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        17u, /*ComIPduGroupsRefStartId*/
        18u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx - 17 + IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/&IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        180u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, /*PduId*/
        11u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       0u, /*ComIPduSignalGroupsRefStartId*/
       1u,

        18u, /*ComIPduGroupsRefStartId*/
        19u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx - 18 + IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        188u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, /*PduId*/
        12u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        136u, /*ComIpduSignalRefStartId*/
        143u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        19u, /*ComIPduGroupsRefStartId*/
        20u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx - 19 + IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        196u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, /*PduId*/
        13u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        143u, /*ComIpduSignalRefStartId*/
        150u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        20u, /*ComIPduGroupsRefStartId*/
        21u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx - 20 + IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        20u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        204u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx, /*PduId*/
        7u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        150u, /*ComIpduSignalRefStartId*/
        151u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        21u, /*ComIPduGroupsRefStartId*/
        22u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx - 21 + IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/&IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        224u, /*PduBufferId*/
        PDUR_SRCPDU_COM_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, /*PduId*/
        14u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       1u, /*ComIPduSignalGroupsRefStartId*/
       2u,

        22u, /*ComIPduGroupsRefStartId*/
        23u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx - 22 + IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx*/NULL_PTR, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        232u, /*PduBufferId*/
        PDUR_SRCPDU_COM_TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx, /*PduId*/
        8u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        151u, /*ComIpduSignalRefStartId*/
        152u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        23u, /*ComIPduGroupsRefStartId*/
        24u,

        COM_TX_MODE_DIRECT, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_COM_TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx - 23 + TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06*/&IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        240u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x377_Pdu06, /*PduId*/
        15u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        152u, /*ComIpduSignalRefStartId*/
        156u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        24u, /*ComIPduGroupsRefStartId*/
        25u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x377_Pdu06 - 24 + IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07*/&IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        248u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x377_Pdu07, /*PduId*/
        16u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        156u, /*ComIpduSignalRefStartId*/
        161u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        25u, /*ComIPduGroupsRefStartId*/
        26u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x377_Pdu07 - 25 + IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08*/&IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08, /* ComIPduCallout */

        24u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        256u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x377_Pdu08, /*PduId*/
        17u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       2u, /*ComIPduSignalGroupsRefStartId*/
       3u,

        26u, /*ComIPduGroupsRefStartId*/
        27u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x377_Pdu08 - 26 + IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        280u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu13, /*PduId*/
        18u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       3u, /*ComIPduSignalGroupsRefStartId*/
       4u,

        27u, /*ComIPduGroupsRefStartId*/
        28u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu13 - 27 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        288u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu34, /*PduId*/
        19u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       4u, /*ComIPduSignalGroupsRefStartId*/
       5u,

        28u, /*ComIPduGroupsRefStartId*/
        29u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu34 - 28 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        296u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu35, /*PduId*/
        20u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       5u, /*ComIPduSignalGroupsRefStartId*/
       6u,

        29u, /*ComIPduGroupsRefStartId*/
        30u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu35 - 29 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        304u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu39, /*PduId*/
        21u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        161u, /*ComIpduSignalRefStartId*/
        163u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        30u, /*ComIPduGroupsRefStartId*/
        31u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu39 - 30 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40*/&IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        312u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x36A_Pdu40, /*PduId*/
        22u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       6u, /*ComIPduSignalGroupsRefStartId*/
       7u,

        31u, /*ComIPduGroupsRefStartId*/
        32u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x36A_Pdu40 - 31 + IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03*/&IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        320u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x3A2_Pdu03, /*PduId*/
        23u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        163u, /*ComIpduSignalRefStartId*/
        169u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        32u, /*ComIPduGroupsRefStartId*/
        33u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu03 - 32 + IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41*/&IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41, /* ComIPduCallout */

        8u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        328u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x3A2_Pdu41, /*PduId*/
        24u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        169u, /*ComIpduSignalRefStartId*/
        181u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        33u, /*ComIPduGroupsRefStartId*/
        34u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu41 - 33 + IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57*/&IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57, /* ComIPduCallout */

        24u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        336u, /*PduBufferId*/
        PDUR_SRCPDU_Com_Contained_Tx_0x3A2_Pdu57, /*PduId*/
        25u, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        COM_UNUSED_TXSIGNALID,0u,

       7u, /*ComIPduSignalGroupsRefStartId*/
       8u,

        34u, /*ComIPduGroupsRefStartId*/
        35u,

        COM_TX_MODE_PERIODIC, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_Contained_Tx_0x3A2_Pdu57 - 34 + IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57 */
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {   /* PDU_COM_NMUSERDATA_IAM*/NULL_PTR, /* ComIPduCallout */

        6u,  /* ComIpduLength */
        0u,  /* ComMaxIpduLength */
        0u, /*ComTimeout*/
        0u, /*ComMinimumDelayTime*/

        360u, /*PduBufferId*/
        PDUR_SRCPDU_Com_NmUserDataPdu_IAM, /*PduId*/
        COM_UNUSED_UINT16, /*ComTxModeTrue*/
        COM_UNUSED_UINT16, /*ComTxModeFalse*/
        181u, /*ComIpduSignalRefStartId*/
        182u,

       COM_UNUSED_TXSIGNALGROUPID,0u,

        COM_UNUSED_TXIPDUGROUPID,0u,

        COM_TX_MODE_NONE, /*ComTxModeModeTrue*/
        COM_TX_MODE_NONE, /*ComTxModeModeFalse*/
        0u, /*MetaDataItemLength*/

        FALSE, /*ComIPduCancellationSupport*/

        /* COM_TXPDU_Com_NmUserDataPdu_IAM - 35 + PDU_COM_NMUSERDATA_IAM */
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
        /* IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/

        3u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        0u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCCurrentMaxHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        486u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCOverCurrentHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        204u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCOverCurrentLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        205u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCOverVoltHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        206u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCOverVoltLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        207u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCUnderVoltHV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        208u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCUnderVoltLV_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        209u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCVoltFail_CCU_PTCANFD_100ms_FrP04_CONTROLLER_0_IAM_Rx*/

        210u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        3u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IHVDCDCActvDisOverTime_CONNC____CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        211u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        4u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IHVDCDCDrtng_CONNCANFD_PTCANFD_CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        212u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        4u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IHVDCDCOverCurrProtLV_CONNCA____CCU_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        213u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        4u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/

        214u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        7u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx*/

        215u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        7u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDTCinfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx*/

        4u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        8u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        56u, /*ComBitSize*/
        7u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx*/

        5u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        9u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPTCHeatReqDspCmd_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        487u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        11u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        216u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        11u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        71u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        11u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPTCHeatResp_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        488u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        11u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        489u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        11u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDschrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/

        490u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        13u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDsChrgCtrlDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx*/

        491u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        13u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        492u, /*BufferId*/
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
        /* IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        493u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        494u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        495u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        496u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx*/

        497u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        14u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        72u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        217u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        73u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        218u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        15u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx*/

        498u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        16u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        499u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        17u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/

        219u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        19u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/

        500u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        19u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx*/

        220u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        19u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        501u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        20u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        502u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        20u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        503u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        20u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgCtrlDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        504u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        20u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx*/

        505u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        20u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/

        506u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/

        507u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx*/

        508u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        22u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        509u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        510u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        511u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        512u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        513u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        514u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        515u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx*/

        516u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        23u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        221u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        25u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        222u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        25u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        517u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        25u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        518u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        25u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        519u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        25u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        520u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        25u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        521u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        25u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        223u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        26u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        224u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        26u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        522u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        26u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        523u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        26u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        74u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        26u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx*/

        75u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        26u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        225u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        524u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        226u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        227u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        228u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        229u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        230u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        231u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        232u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        233u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        234u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        235u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        236u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        237u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx*/

        238u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        27u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        525u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        76u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        77u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        3u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        239u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        78u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        79u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        240u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        241u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        242u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        28u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        80u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        243u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        244u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        245u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        526u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        81u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        82u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        3u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        246u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx*/

        83u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        29u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        13u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        527u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        528u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        529u, /*BufferId*/
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
        /* ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        247u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        248u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        249u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        250u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        251u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        252u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        530u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        531u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        532u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx*/

        533u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        30u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        253u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        254u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        255u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        256u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        257u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        258u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        534u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        535u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        536u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        537u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        538u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        539u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx*/

        540u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        31u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx*/

        541u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        33u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx*/

        542u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        33u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtBattWarmResp_ESS_ESS_PTCANFD_Event_FrS62_CONTROLLER_0_IAM_Rx*/

        543u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        34u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtBattWarmCompResp_ESS_ESS_PTCANFD_Event_FrS63_CONTROLLER_0_IAM_Rx*/

        544u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        35u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        6u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        7u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        8u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        23u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        9u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        31u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        10u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        39u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        11u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        47u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        12u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        55u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        13u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        63u, /*ComBitPosition*/

        36u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/

        259u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx*/

        260u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        38u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCDspBkup_ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx*/

        84u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        42u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        10u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSPackSOCDspVBkup_ESS_PTEXTDCAN_200ms_FrP37_CONTROLLER_0_IAM_Rx*/

        261u, /*BufferId*/
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
        /* IBMSOfbdChrgrOtptVol_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/

        85u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        43u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        12u, /*ComBitSize*/
        3u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOfbdChrgrOtptCrnt_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/

        86u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        43u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        11u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOfbdChrgrOtptVolV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/

        262u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        43u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IBMSOfbdChrgrOtptCrnV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/

        263u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        43u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx*/

        545u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        43u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAIParkngDsp_ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        546u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        49u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAIParkngSts_ICBAD_BKPCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        547u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        49u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        264u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        548u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        549u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        550u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        551u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        552u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        553u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        554u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        555u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        556u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        557u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        558u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        559u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        560u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        561u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        562u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        563u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        564u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        565u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        13u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx*/

        566u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        14u, /*ComBitPosition*/

        50u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        567u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        568u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        569u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        570u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtPsngSeatVenttCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        571u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        572u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        573u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        574u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        575u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        576u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        577u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        578u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        579u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        580u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx*/

        581u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        51u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/

        265u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        52u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/

        582u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        52u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/

        583u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        52u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx*/

        266u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        52u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx*/

        584u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        53u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/

        87u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx*/

        267u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        54u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IEBSBatSOC_ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx*/

        585u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        55u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEBSBatSOCSts_ICBVC_RZCUCANFD_1000ms_FrP53_CONTROLLER_0_IAM_Rx*/

        586u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        55u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEBSBatCrnt_ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx*/

        88u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        57u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IEBSBatVol_ICBVC_RZCUCANFD_100ms_FrP37_CONTROLLER_0_IAM_Rx*/

        89u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        57u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        14u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
        /* IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx*/

        268u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        58u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        587u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        59u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        588u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        59u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        589u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        59u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        590u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        59u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        591u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        59u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        2u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx*/

        592u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        59u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IDCDCVolStpt_ICBVC_RZCUCANFD_100ms_FrP48_CONTROLLER_0_IAM_Rx*/

        593u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        60u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEnrgSplReqScene_ICBVC_RZCUCANFD_100ms_FrP51_CONTROLLER_0_IAM_Rx*/

        14u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        61u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        594u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        595u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        596u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        597u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        598u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx*/

        599u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        63u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        269u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        270u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIBS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        271u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPICU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        272u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        273u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        274u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        275u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        276u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        277u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFVCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx*/

        278u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        65u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx*/

        15u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        67u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        16u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        68u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        600u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        601u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        602u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        603u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        604u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        605u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        606u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        607u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        608u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        279u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        609u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        610u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        611u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        612u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        613u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        614u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        8u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        615u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        616u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        9u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        617u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        618u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        10u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        619u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        620u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        621u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        622u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        18u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        623u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        19u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        624u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        20u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        625u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        21u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        626u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        24u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        627u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        24u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        628u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        24u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx*/

        629u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        30u, /*ComBitPosition*/

        69u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IDschrgTrgtSOCVal_CONNCANFD_____ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx*/

        630u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        20u, /*ComBitPosition*/

        70u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx*/

        17u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        71u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u, /* comBitSize & comBitPosition*/
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
        /* ITPMSIdficnLrnCm_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        280u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        631u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        632u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        281u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        633u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        282u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        283u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        634u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx*/

        284u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        72u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        285u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        635u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        286u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        636u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        287u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        637u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        288u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx*/

        638u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        73u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IBrkLghtFltSta_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx*/

        289u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        74u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx*/

        639u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        75u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx*/

        640u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        76u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITPMSF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        290u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITPMSTirePrsLowIO_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        291u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITPMSSystemFault_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        292u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        641u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        642u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        643u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        644u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITPMSFrtAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        645u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        4u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITPMSRrAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx*/

        646u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        77u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        647u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        78u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        648u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        11u, /*ComBitPosition*/

        78u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IIntrusionAlrmCounter_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        649u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        19u, /*ComBitPosition*/

        78u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx*/

        650u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        80u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEUInvtrATem_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx*/

        651u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        83u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEUMotATem_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx*/

        652u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        83u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEUMotATemV_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx*/

        293u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        83u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IPEUInvtrATemV_PEU_PTCANFD_200ms_FrP32_CONTROLLER_0_IAM_Rx*/

        294u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        12u, /*ComBitPosition*/

        83u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACResp_PICM_PICM_PTCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx*/

        653u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        85u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACCompResp_PICM_PICM_PTCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx*/

        654u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        86u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IACInCarTemV_PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx*/

        295u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IACFrtInCarTem_PICU_PTCANFD_1000ms_FrP22_CONTROLLER_0_IAM_Rx*/

        655u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        87u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICampEPTCrkAbotdRsn_PTCANFD_____PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        656u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        15u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ICampEPTRunAbotdRsn_PTCANFD_____PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        657u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        17u, /*ComBitPosition*/

        88u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IV2XEnEnbResp_PICU_PTCANFD_200ms_FrP20_CONTROLLER_0_IAM_Rx*/

        658u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        89u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IACOnOffDspCmd_LHBDCANFD_CON____PICU_RHZCU_RHBKBCANFD_100ms_____CONTROLLER_0_IAM_Rx*/

        296u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        90u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx*/

        659u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        91u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        660u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        92u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        661u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        92u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        662u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        92u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx*/

        297u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        92u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/

        663u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        93u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/

        298u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        95u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx*/

        299u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        95u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IV2XEnEnbDspCmd_PTCANFD_CONN____RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx*/

        664u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        99u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/

        665u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        0u, /*ComBitPosition*/

        100u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx*/

        666u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        6u, /*ComBitPosition*/

        103u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx*/

        667u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        7u, /*ComBitPosition*/

        103u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        300u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        3u, /*ComBitPosition*/

        104u,  /*RxPduId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        301u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        104u,  /*RxPduId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        302u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        104u,  /*RxPduId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx*/

        303u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        5u, /*ComBitPosition*/

        104u,  /*RxPduId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/

        304u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        105u,  /*RxPduId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/

        305u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        105u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/

        306u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        105u,  /*RxPduId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/

        307u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        1u, /*ComBitPosition*/

        105u,  /*RxPduId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
        /* IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx*/

        668u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/
        COM_UNUSED_UINT16, /*GwBufferId*/

        2u, /*ComBitPosition*/

        105u,  /*RxPduId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u, /* comBitSize & comBitPosition*/
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"
CONST(Com_ErrorAndNotificationType, COM_CONST) Com_TxSignalErrorAndNotification[COM_TXSIG_ERROR_AND_NOTIFY_NUMBER] =
{
    /* INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
    /* ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
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
    /* IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
};
#define COM_STOP_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_TxSignalType, COM_CONST_PBCFG) Com_TxSignal[COM_TXSIGNAL_NUMBER]=
{
    {
        /* IDTCinfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx*/
        0u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        0u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        56u, /*ComBitSize*/
        7u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        49u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        371u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        372u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        50u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        373u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        374u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        375u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx*/
        376u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        1u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        51u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        377u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        378u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        52u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        379u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        380u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        381u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx*/
        382u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        2u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        53u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        383u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        384u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        54u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        385u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        386u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        387u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx*/
        388u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        3u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        55u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        389u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        390u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        56u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        391u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        392u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        393u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx*/
        394u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        4u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        57u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        395u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        396u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        58u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        397u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        398u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        399u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx*/
        400u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        5u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        59u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        401u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        402u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        60u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        403u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        404u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        405u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx*/
        406u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        6u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        61u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        407u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        408u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        62u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        409u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        410u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        411u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx*/
        412u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        7u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        63u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        413u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        414u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        64u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        415u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        416u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        417u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx*/
        418u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        8u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        65u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        419u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        420u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        66u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        421u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        422u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        423u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx*/
        424u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        9u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/
        425u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        10u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx*/
        426u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        10u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        67u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        427u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        428u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        68u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        9u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        429u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        430u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        431u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx*/
        432u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        11u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx*/
        433u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        12u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
        434u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        13u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx*/
        435u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        13u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        436u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        437u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        438u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        439u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        440u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        441u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        442u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        443u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        444u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        445u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        192u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        446u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        447u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        448u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        449u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        8u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        450u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        8u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        451u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        9u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        452u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        9u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        453u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        10u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        454u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        11u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        455u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        11u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        193u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        12u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        456u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        12u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        7u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        457u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        13u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        458u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        14u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        459u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        15u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        460u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        16u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        461u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        16u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        462u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        17u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        463u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        17u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        464u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        18u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        465u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        18u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        466u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        19u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        467u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        19u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx*/
        468u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        20u, /*ComBitPosition*/

        14u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        3u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/
        469u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        15u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/
        470u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        15u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IRmtReserChrgSts_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx*/
        471u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        15u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx*/
        1u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        16u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        194u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        195u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        196u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        197u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        3u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        198u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        199u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        200u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        201u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        7u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        472u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        69u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        70u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        17u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        16u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        473u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        19u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        474u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        19u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        475u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        19u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        476u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        19u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        477u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        19u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        202u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        19u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        6u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx*/
        478u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        19u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        479u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        20u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        203u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        20u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        1u, /*ComBitPosition*/
        1u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        480u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        20u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        481u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        20u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        5u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        2u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        482u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        20u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        2u, /*ComBitPosition*/
        6u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        483u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        20u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        5u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx*/
        484u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        20u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        4u, /*ComBitPosition*/
        4u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx*/
        2u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        21u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        64u, /*ComBitSize*/
        8u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IeCallSysSta_TBOX_CONNCAN_Event_FrS02_CONTROLLER_0_IAM_Tx*/
        485u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        23u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        2u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        2u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        24u, /*TxPduId*/

        0u, /*ComTxSignalErrorAndNotificationId*/

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
        3u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        24u, /*TxPduId*/

        1u, /*ComTxSignalErrorAndNotificationId*/

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
        671u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        24u, /*TxPduId*/

        2u, /*ComTxSignalErrorAndNotificationId*/

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
        672u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        24u, /*TxPduId*/

        3u, /*ComTxSignalErrorAndNotificationId*/

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
        /* IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        90u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        25u, /*TxPduId*/

        4u, /*ComTxSignalErrorAndNotificationId*/

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
        91u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        25u, /*TxPduId*/

        5u, /*ComTxSignalErrorAndNotificationId*/

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
        92u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        25u, /*TxPduId*/

        6u, /*ComTxSignalErrorAndNotificationId*/

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
        669u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        25u, /*TxPduId*/

        7u, /*ComTxSignalErrorAndNotificationId*/

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
        670u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        25u, /*TxPduId*/

        8u, /*ComTxSignalErrorAndNotificationId*/

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
        4u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        30u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        24u, /*ComBitSize*/
        3u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        673u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        30u, /*TxPduId*/

        COM_UNUSED_TXSIGERRANDNOTIFYID, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        COM_TX_SIGNAL_NOTIFICATION_NONE,  /*Notification*/

    },
    {
        /* IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/
        93u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        32u, /*TxPduId*/

        9u, /*ComTxSignalErrorAndNotificationId*/

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
        94u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        32u, /*TxPduId*/

        10u, /*ComTxSignalErrorAndNotificationId*/

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
        685u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        32u, /*TxPduId*/

        11u, /*ComTxSignalErrorAndNotificationId*/

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
        686u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        32u, /*TxPduId*/

        12u, /*ComTxSignalErrorAndNotificationId*/

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
        687u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        32u, /*TxPduId*/

        13u, /*ComTxSignalErrorAndNotificationId*/

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
        688u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        32u, /*TxPduId*/

        14u, /*ComTxSignalErrorAndNotificationId*/

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
        674u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        7u, /*ComBitPosition*/

        33u, /*TxPduId*/

        15u, /*ComTxSignalErrorAndNotificationId*/

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
        675u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        6u, /*ComBitPosition*/

        33u, /*TxPduId*/

        16u, /*ComTxSignalErrorAndNotificationId*/

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
        676u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        5u, /*ComBitPosition*/

        33u, /*TxPduId*/

        17u, /*ComTxSignalErrorAndNotificationId*/

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
        677u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        33u, /*TxPduId*/

        18u, /*ComTxSignalErrorAndNotificationId*/

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
        678u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        4u, /*ComBitPosition*/

        33u, /*TxPduId*/

        19u, /*ComTxSignalErrorAndNotificationId*/

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
        308u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        33u, /*TxPduId*/

        20u, /*ComTxSignalErrorAndNotificationId*/

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
        679u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        3u, /*ComBitPosition*/

        33u, /*TxPduId*/

        21u, /*ComTxSignalErrorAndNotificationId*/

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
        680u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        33u, /*TxPduId*/

        22u, /*ComTxSignalErrorAndNotificationId*/

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
        681u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        2u, /*ComBitPosition*/

        33u, /*TxPduId*/

        23u, /*ComTxSignalErrorAndNotificationId*/

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
        682u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        33u, /*TxPduId*/

        24u, /*ComTxSignalErrorAndNotificationId*/

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
        683u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        1u, /*ComBitPosition*/

        33u, /*TxPduId*/

        25u, /*ComTxSignalErrorAndNotificationId*/

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
        684u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        33u, /*TxPduId*/

        26u, /*ComTxSignalErrorAndNotificationId*/

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
        /* IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx*/
        689u, /*BufferId*/
        0u, /*ComSignalLength*/
        0u, /*ComSignalLength|ComSignalInitValue*/

        0u, /*ComBitPosition*/

        35u, /*TxPduId*/

        27u, /*ComTxSignalErrorAndNotificationId*/

        0u, /*ComBitPosition*/
        8u, /*ComBitSize*/
        1u,  /*ComBitSize & ComBitPosition*/

        FALSE,
        COM_BIG_ENDIAN,
        COM_UINT8,
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
        /* ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/

        0u,
        14u,

        1u,

    },
    {
        /* ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/

        14u,
        34u,

        2u,

    },
    {
        /* ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/

        34u,
        71u,

        5u,

    },
    {
        /* ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/

        71u,
        98u,

        6u,

    },
    {
        /* IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/

        98u,
        108u,

        10u,

    },
    {
        /* IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/

        108u,
        122u,

        12u,

    },
    {
        /* IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/

        122u,
        131u,

        18u,

    },
    {
        /* IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/

        131u,
        145u,

        21u,

    },
    {
        /* IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/

        145u,
        155u,

        24u,

    },
    {
        /* IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/

        155u,
        171u,

        32u,

    },
    {
        /* IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/

        171u,
        183u,

        37u,

    },
    {
        /* IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/

        183u,
        194u,

        39u,

    },
    {
        /* IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/

        194u,
        203u,

        40u,

    },
    {
        /* IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/

        203u,
        221u,

        41u,

    },
    {
        /* IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/

        221u,
        238u,

        44u,

    },
    {
        /* IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/

        238u,
        253u,

        45u,

    },
    {
        /* IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/

        253u,
        264u,

        46u,

    },
    {
        /* IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/

        264u,
        300u,

        47u,

    },
    {
        /* IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/

        300u,
        310u,

        48u,

    },
    {
        /* IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/

        310u,
        333u,

        56u,

    },
    {
        /* IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/

        333u,
        344u,

        62u,

    },
    {
        /* IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/

        344u,
        353u,

        64u,

    },
    {
        /* IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/

        353u,
        374u,

        66u,

    },
    {
        /* ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        374u,
        397u,

        79u,

    },
    {
        /* ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/

        397u,
        412u,

        81u,

    },
    {
        /* IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/

        412u,
        433u,

        82u,

    },
    {
        /* IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/

        433u,
        461u,

        84u,

    },
    {
        /* IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/

        461u,
        494u,

        88u,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/

        494u,
        504u,

        94u,

    },
    {
        /* IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/

        504u,
        520u,

        96u,

    },
    {
        /* IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/

        520u,
        545u,

        97u,

    },
    {
        /* IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/

        545u,
        560u,

        98u,

    },
    {
        /* ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/

        560u,
        594u,

        101u,

    },
    {
        /* ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/

        594u,
        614u,

        102u,

    },
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_32
#include "Com_MemMap.h"
CONST(Com_ErrorAndNotificationType, COM_CONST) Com_TxSignalGroupErrorAndNotification[COM_TXSIGGRP_ERROR_AND_NOTIFY_NUMBER] =
{
    /* IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

    &Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
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

        18u,

        COM_UNUSED_TXSIGNALGROUPID,

        COM_TX_SIGNAL_NOTIFICATION_NONE,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/

        6u,
        12u,

        22u,

        COM_UNUSED_TXSIGNALGROUPID,

        COM_TX_SIGNAL_NOTIFICATION_NONE,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/

        12u,
        18u,

        26u,

        0u,

        COM_TX_SIGNAL_NOTIFICATION_EN,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        18u,
        24u,

        27u,

        COM_UNUSED_TXSIGNALGROUPID,

        COM_TX_SIGNAL_NOTIFICATION_NONE,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        24u,
        33u,

        28u,

        COM_UNUSED_TXSIGNALGROUPID,

        COM_TX_SIGNAL_NOTIFICATION_NONE,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        33u,
        38u,

        29u,

        COM_UNUSED_TXSIGNALGROUPID,

        COM_TX_SIGNAL_NOTIFICATION_NONE,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/

        38u,
        44u,

        31u,

        COM_UNUSED_TXSIGNALGROUPID,

        COM_TX_SIGNAL_NOTIFICATION_NONE,

        FALSE,
        COM_PENDING,
     },
    {
    /* IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx*/

        44u,
        49u,

        34u,

        COM_UNUSED_TXSIGNALGROUPID,

        COM_TX_SIGNAL_NOTIFICATION_NONE,

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
        /* ICCU_100ms_Group02_CRC_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx*/
        0u,
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
        1u,
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
        0u,
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
        2u,
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
        3u,
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
        4u,
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
        5u,
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
        1u,
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
        6u,
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
        2u,
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
        7u,
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
        8u,
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
        9u,
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
        10u,
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
        /* ICCU_100ms_Group03_CRC_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        11u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group03_RC_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        12u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group03_Reserved1_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        13u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCHVSideCrnt_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        0u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IHVDCDCHVSideCrntV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        3u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCHVSideVolV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        4u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCLVSideVolV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        5u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCLVSideCrntV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        6u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCLVSideStptFdbkV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        7u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCHVSideVol_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        1u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ICCU_100ms_Group03_Reserved3_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        14u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCOverHtd_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        8u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCLdRatioV_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        9u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCU_100ms_Group03_Reserved2_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        15u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCLVSideStptFdbk_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        16u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCLdRatio_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        17u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCLVSideCrnt_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        18u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCLVSideVol_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        19u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group03_Reserved4_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        20u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group03_Reserved5_ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx*/
        21u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        ICCU_100ms_Group03_CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_CRC_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        22u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_RC_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        23u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUOnbdChrgrPlugOnV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        10u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCU_100ms_Group07_Reserved1_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        24u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrCtrlPilotPWMSts_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        25u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        11u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOnBdChrgrSts_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        26u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnbdChrgrAltrCrntInptHVCrntLmt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        27u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved3_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        12u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOnbdChrgrOtptCrntV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        13u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOnbdChrgrOpngMd_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        28u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved2_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        29u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrAltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        30u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrAltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        31u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnbdChrgrOtptCrntVal_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        2u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ICCU_100ms_Group07_Reserved4_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        32u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrOtptVolV_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        14u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOnbdChrgrOtptVolVal_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        3u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IOnBdChrgrL1AltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        33u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrL1AltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        34u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrL2AltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        35u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrL2AltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        36u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrL3AltrCrntInptCrnt_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        37u,
        0u,0u,
        COM_UNUSED_UINT16,

        15u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrL3AltrCrntInptVol_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        38u,
        0u,0u,
        COM_UNUSED_UINT16,

        16u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUActiveWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        15u,
        0u,0u,
        COM_UNUSED_UINT16,

        17u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCUOnbdChrgrMaxChrgPwr_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        39u,
        0u,0u,
        COM_UNUSED_UINT16,

        17u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved5_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        40u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUOnbdChrgrPlugOn_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        41u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved6_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        42u,
        0u,0u,
        COM_UNUSED_UINT16,

        19u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUOnbdChrgrSpRsn_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        43u,
        0u,0u,
        COM_UNUSED_UINT16,

        19u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved7_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        44u,
        0u,0u,
        COM_UNUSED_UINT16,

        20u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved9_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        45u,
        0u,0u,
        COM_UNUSED_UINT16,

        21u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IOnBdChrgrLastWkup_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        16u,
        0u,0u,
        COM_UNUSED_UINT16,

        21u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCU_100ms_Group07_Reserved8_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        46u,
        0u,0u,
        COM_UNUSED_UINT16,

        21u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved10_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        17u,
        0u,0u,
        COM_UNUSED_UINT16,

        22u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IOnBdChrgrCtrlPilotPWMDuty_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        47u,
        0u,0u,
        COM_UNUSED_UINT16,

        22u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group07_Reserved11_ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx*/
        48u,
        0u,0u,
        COM_UNUSED_UINT16,

        23u,
        ICCU_100ms_Group07_CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_CRC_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        49u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_RC_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        50u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUOnBdChrgrSktElecLckSta_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        51u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAirCtrlrHVILClsd_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        52u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUOfbdChrgrNgtvSktTem_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        53u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUClntFlowReq_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        54u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUOnBdChrgrSktPstvSnsrTem_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        55u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCClntPumpPWMReq_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        56u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IAirCtrlrHVILClsdV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        18u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESSPTCHVILSts_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        57u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUOnbdChrgrSktEleccLckEnable_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        58u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUEleccLckCtrlResp_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        59u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCUEleccLckCtrlDspCmd_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        60u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHVDCDCIntnlFlr_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        19u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHVDCDCHdwrFlr_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        20u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESSPTCHVILStsV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        21u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCUOfbdChrgrNgtvSktTemV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        22u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCUOnBdChrgrSktPstvSnsrTemV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        23u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCUOnBdChrgrSktElecLckStaV_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        24u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICCU_100ms_Group11_Reserved1_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        61u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_Reserved2_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        62u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_Reserved3_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        63u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_Reserved4_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        64u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_Reserved5_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        65u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_Reserved6_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        66u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_Reserved7_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        67u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICCU_100ms_Group11_Reserved8_ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx  ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx*/
        68u,
        0u,0u,
        COM_UNUSED_UINT16,

        15u,
        ICCU_100ms_Group11_CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IECM_010ms_Group00_CRC_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        69u,
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
        70u,
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
        25u,
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
        26u,
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
        71u,
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
        /* IECM_010ms_Group00_Reserved1_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        72u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
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
        /* IECM_010ms_Group00_Reserved2_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        73u,
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
        /* IECM_010ms_Group00_Reserved3_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx  IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx*/
        74u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group20_CRC_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx  IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx*/
        75u,
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
        76u,
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
        77u,
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
        78u,
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
        79u,
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
        80u,
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
        81u,
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
        82u,
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
        83u,
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
        27u,
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
        84u,
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
        85u,
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
        86u,
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
        87u,
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
        /* IESS_100ms_Group32_CRC_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx  IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx*/
        88u,
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
        89u,
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
        90u,
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
        6u,
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
        28u,
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
        91u,
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
        92u,
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
        93u,
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
        94u,
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
        /* IESS_100ms_Group58_CRC_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        95u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group58_RC_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        96u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOfbdChrgrSktVolV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        29u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSOfbdChrgrPstvSktTemV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        30u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSOffBdChrgrPlugOn_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        97u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOfbdChrgrPstvSktTem_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        98u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOnbdChrgrSktNgtvSnsrTem_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        99u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOfbdChrgrSktVol_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        7u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IESS_100ms_Group58_Reserved2_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        31u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSOnbdChrgrSktNgtvSnsrTemV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        32u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSOffBdChrgrPlugOnV_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        33u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group58_Reserved1_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        34u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group58_Reserved3_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        100u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group58_Reserved4_IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx  IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx*/
        101u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_100ms_Group58_ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_20ms_Group01_CRC_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        102u,
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
        103u,
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
        35u,
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
        36u,
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
        37u,
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
        38u,
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
        8u,
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
        9u,
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
        10u,
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
        11u,
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
        /* IESS_50ms_Group14_CRC_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        104u,
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
        105u,
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
        /* IESS_50ms_Group14_Reserved1_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        106u,
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
        107u,
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
        108u,
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
        109u,
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
        39u,
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
        /* IESS_50ms_Group14_Reserved2_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        40u,
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
        110u,
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
        41u,
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
        /* IESS_50ms_Group14_Reserved3_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        111u,
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
        112u,
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
        /* IESS_50ms_Group14_Reserved4_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx  IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx*/
        113u,
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
        114u,
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
        12u,
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
        115u,
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
        /* IESS_100ms_Group23_CRC_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        116u,
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
        117u,
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
        42u,
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
        /* IESS_100ms_Group23_Reserved1_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        118u,
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
        13u,
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
        43u,
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
        /* IESS_100ms_Group23_Reserved2_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        119u,
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
        /* IESS_100ms_Group23_Reserved3_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        120u,
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
        121u,
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
        /* IESS_100ms_Group23_Reserved4_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        122u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group23_Reserved5_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        123u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group23_Reserved6_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx  IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx*/
        124u,
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
        /* IESS_100ms_Group27_CRC_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx  IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx*/
        125u,
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
        126u,
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
        127u,
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
        128u,
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
        129u,
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
        130u,
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
        131u,
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
        44u,
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
        132u,
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
        133u,
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
        134u,
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
        /* IESS_100ms_Group33_CRC_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx  IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx*/
        135u,
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
        136u,
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
        137u,
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
        14u,
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
        45u,
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
        138u,
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
        139u,
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
        140u,
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
        141u,
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
        /* IESS_100ms_Group59_CRC_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        142u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group59_RC_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        143u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOfbdChrgrPstvSktTemVBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        46u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRdundtHVCntarCmdSts_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        144u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOfbdChrgrPstvSktTemBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        145u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOnbdChrgrSktNgtvSnsrTemBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        146u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRdundtHVCntarShtdwnReq_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        147u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRdundtHVBatFltSveritSts_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        148u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRdundtHVAIsltnRstcSts_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        149u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IBMSOffBdChrgrPlugOnBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        150u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group59_Reserved1_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        151u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRdundtHVCntarCmdStsV_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        47u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRdundtHVBatFltSveritStsV_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        48u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSOnbdChrgrSktNgtvSnsrTemV____IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        49u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSOffBdChrgrPlugOnVBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        50u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBMSOfbdChrgrWkupBkup_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        51u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IESS_100ms_Group59_Reserved2_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        152u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IESS_100ms_Group59_Reserved3_IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx  IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx*/
        153u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IESS_100ms_Group59_ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_CRC_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        154u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_RC_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        155u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IKeepPwrRsnFVCM_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        156u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_PwrWinLazyMdCtrlReq_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        157u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITLRTrafficLightsRightCircleDsp_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        158u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITLRTrafficLightsLeftCircleDsp_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        159u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITLRTrafficLightsCircleDsp_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        160u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved1_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        161u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IADASLaunchTelematicsCall_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        52u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IFVCM_50ms_Group03_Reserved2_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        162u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved3_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        163u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved4_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        164u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved5_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        165u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved6_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        166u,
        0u,0u,
        COM_UNUSED_UINT16,

        8u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved7_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        167u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved8_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        168u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFVCM_50ms_Group03_Reserved9_IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx  IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx*/
        169u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IFVCM_50ms_Group03_FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_100ms_Group15_CRC_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        170u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_100ms_Group15_RC_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        171u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_100ms_Group15_Reserved2_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        53u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBrkFltAlrm_GB_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        54u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IIBS_100ms_Group15_Reserved1_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        55u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IBrkFrc_GB_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        56u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IDistRCAvgDrvnSrc_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        57u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IDistRCAvgDrvnRstOcd_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        58u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IIBS_100ms_Group15_Reserved3_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        172u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDistRCAvgDrvn_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        15u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        3u,
        13u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IIBS_100ms_Group15_Reserved4_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        173u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDistRCAvgDrvnV_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        59u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IIBS_100ms_Group15_Reserved5_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        174u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_100ms_Group15_Reserved6_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        175u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_100ms_Group15_Reserved7_IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx  IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx*/
        176u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IIBS_100ms_Group15_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIBS_10ms_Group04_CRC_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx  IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx*/
        177u,
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
        178u,
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
        179u,
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
        180u,
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
        181u,
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
        60u,
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
        61u,
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
        182u,
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
        183u,
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
        184u,
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
        185u,
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
        /* IIBS_20ms_Group07_CRC_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx*/
        186u,
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
        187u,
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
        188u,
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
        62u,
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
        63u,
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
        64u,
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
        189u,
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
        190u,
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
        65u,
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
        66u,
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
        191u,
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
        192u,
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
        67u,
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
        68u,
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
        69u,
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
        193u,
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
        194u,
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
        70u,
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
        71u,
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
        72u,
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
        73u,
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
        74u,
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
        75u,
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
        76u,
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
        77u,
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
        78u,
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
        79u,
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
        80u,
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
        81u,
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
        82u,
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
        195u,
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
        196u,
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
        197u,
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
        198u,
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
        83u,
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
        84u,
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
        /* IIBS_20ms_Group11_CRC_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx  IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx*/
        199u,
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
        200u,
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
        201u,
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
        85u,
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
        16u,
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
        86u,
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
        17u,
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
        87u,
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
        18u,
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
        88u,
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
        /* IICBVC_100ms_Group19_CRC_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        202u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_100ms_Group19_RC_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        203u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRgnLvReqFICMV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        89u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRgnLvReqFICM_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        204u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBatChrgReqRaw_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        90u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILVBatChrgReqInhbt_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        91u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILVBatEnrgSufct_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        92u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ILVBatEnrgLow_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        93u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_100ms_Group19_Reserved1_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        205u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEnrgSplReqV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        94u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEnrgSplReq_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        95u,
        0u,0u,
        COM_UNUSED_UINT16,

        2u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPMDCSta_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        206u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPMOprtMd_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        207u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_100ms_Group19_Reserved2_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        208u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IVehEnrgRdyLvlV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        96u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IVehEnrgRdyLvl_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        209u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPMCurEstdCapct_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        210u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPMMaxEstdCapct_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        211u,
        0u,0u,
        COM_UNUSED_UINT16,

        6u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IICBVC_100ms_Group19_Reserved3_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        212u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTToqCustSetngReqV_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        97u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTToqCustSetngReq_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        213u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ILVBatSelfWakeupFlg_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        98u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEnrgSplReqRaw_IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx*/
        99u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IICBVC_100ms_Group19_ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IICBVC_100ms_Group80_CRC_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx  IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx*/
        214u,
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
        215u,
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
        216u,
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
        217u,
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
        218u,
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
        100u,
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
        219u,
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
        101u,
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
        102u,
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
        220u,
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
        /* IICBVC_200ms_Group79_CRC_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        221u,
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
        222u,
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
        /* IICBVC_200ms_Group79_Reserved2_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        103u,
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
        104u,
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
        105u,
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
        /* IICBVC_200ms_Group79_Reserved1_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        106u,
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
        /* IICBVC_200ms_Group79_Reserved3_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        223u,
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
        /* IICBVC_200ms_Group79_Reserved4_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx  IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx*/
        224u,
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
    {
        /* IICBVC_20ms_Group03_CRC_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx  IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx*/
        225u,
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
        226u,
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
        227u,
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
        228u,
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
        107u,
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
        229u,
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
        230u,
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
        231u,
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
        108u,
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
        109u,
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
        110u,
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
        111u,
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
        232u,
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
        233u,
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
        112u,
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
        234u,
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
        113u,
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
        235u,
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
        236u,
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
        114u,
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
        237u,
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
        /* ILHZCU_10ms_Group01_CRC_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        238u,
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
        239u,
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
        240u,
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
        241u,
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
        242u,
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
        243u,
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
        115u,
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
        244u,
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
        116u,
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
        245u,
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
        117u,
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
        246u,
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
        118u,
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
        /* ILHZCU_10ms_Group01_Reserved2_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        247u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ISCUParkLckReqEPMCU_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        248u,
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
        249u,
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
        250u,
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
        251u,
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
        119u,
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
        /* ILHZCU_10ms_Group01_Reserved3_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        120u,
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
        121u,
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
        252u,
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
        253u,
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
        /* ILHZCU_50ms_Group06_CRC_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx  ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx*/
        254u,
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
        255u,
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
        256u,
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
        257u,
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
        122u,
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
        258u,
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
        259u,
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
        260u,
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
        261u,
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
        262u,
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
        263u,
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
        264u,
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
        265u,
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
        266u,
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
        267u,
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
        /* IPEU_10ms_Group25_CRC_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        268u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_10ms_Group25_RC_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        269u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEUMotBSpdSts_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        270u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEUMotASpdSts_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        271u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEUMotADampTrqCmdd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        19u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotASpd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        20u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotBDampTrqCmdd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        21u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotBSpd_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        22u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotAToqAch_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        23u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotBToqAch_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        24u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotASpdV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        123u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEU_10ms_Group25_Reserved1_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        272u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEUMotBToqAchV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        124u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEUMotBSpdV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        125u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEUMotAToqAchV_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        126u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEU_10ms_Group25_Reserved2_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        273u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_10ms_Group25_Reserved3_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        274u,
        0u,0u,
        COM_UNUSED_UINT16,

        15u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_10ms_Group25_Reserved4_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        275u,
        0u,0u,
        COM_UNUSED_UINT16,

        16u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_10ms_Group25_Reserved5_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        276u,
        0u,0u,
        COM_UNUSED_UINT16,

        17u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_10ms_Group25_Reserved6_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        277u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_10ms_Group25_Reserved7_IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx  IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx*/
        278u,
        0u,0u,
        COM_UNUSED_UINT16,

        19u,
        IPEU_10ms_Group25_PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_CRC_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        279u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_RC_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        280u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEUInvtrBDCVltV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        127u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEUInvtrBDCCrntV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        128u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEUInvtrADCVltV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        129u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEUInvtrADCCrntV_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        130u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPEUInvtrADCCrnt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        25u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUInvtrADCVlt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        26u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUInvtrBDCCrnt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        27u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUInvtrBDCVlt_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        28u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotAMaxToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        29u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotAMaxToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        30u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotAMinToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        31u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotAMinToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        32u,
        0u,0u,
        COM_UNUSED_UINT16,

        15u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotBMaxToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        33u,
        0u,0u,
        COM_UNUSED_UINT16,

        17u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotBMaxToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        34u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotBMinToqCapLongTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        35u,
        0u,0u,
        COM_UNUSED_UINT16,

        20u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEUMotBMinToqCapShtrTerm_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        36u,
        0u,0u,
        COM_UNUSED_UINT16,

        21u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IPEU_50ms_Group28_Reserved1_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        281u,
        0u,0u,
        COM_UNUSED_UINT16,

        22u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved2_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        282u,
        0u,0u,
        COM_UNUSED_UINT16,

        23u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved3_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        283u,
        0u,0u,
        COM_UNUSED_UINT16,

        24u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved4_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        284u,
        0u,0u,
        COM_UNUSED_UINT16,

        25u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved5_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        285u,
        0u,0u,
        COM_UNUSED_UINT16,

        26u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved6_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        286u,
        0u,0u,
        COM_UNUSED_UINT16,

        27u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved7_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        287u,
        0u,0u,
        COM_UNUSED_UINT16,

        28u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved8_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        288u,
        0u,0u,
        COM_UNUSED_UINT16,

        29u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved9_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        289u,
        0u,0u,
        COM_UNUSED_UINT16,

        30u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPEU_50ms_Group28_Reserved10_IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx  IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx*/
        290u,
        0u,0u,
        COM_UNUSED_UINT16,

        31u,
        IPEU_50ms_Group28_PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPICU_100ms_Group29_CRC_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        291u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPICU_100ms_Group29_RC_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        292u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPICU_100ms_Group29_Reserved1_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        293u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTCCTrgtSpd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        37u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IEPTSysPwr_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        38u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IEPTSysPwrPcnt_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        294u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybLVOtptPwrLmt_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        39u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IHybLVStptCmdd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        40u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IEPTFlt_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        131u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybDrvrItndHVBatSOCAch_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        295u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybHVCircuitFltIO_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        296u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybVehSysMd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        297u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybMotBRsovrOfstLrnEnblReq_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        132u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybMotARsovrOfstLrnEnblReq_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        133u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybVehOpnlMdRVM_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        298u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IHybVehFrtTMStsRVM_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        299u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTCCFltPrst_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        134u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybLVEnbReqd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        135u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybLVGenrSysF_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        136u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybRgnLvReqDisb_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        137u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITMFltIO_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        138u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IHybVehSysStsInd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        300u,
        0u,0u,
        COM_UNUSED_UINT16,

        13u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPICU_100ms_Group29_Reserved2_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        301u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICampEPTCrkAbotd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        139u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ICampEPTRdy_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        140u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTCCA_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        141u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTCCEnbd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        142u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPICU_100ms_Group29_Reserved3_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        302u,
        0u,0u,
        COM_UNUSED_UINT16,

        15u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ICampEPTRunAbotd_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        143u,
        0u,0u,
        COM_UNUSED_UINT16,

        16u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IPICU_100ms_Group29_Reserved4_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        303u,
        0u,0u,
        COM_UNUSED_UINT16,

        16u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPICU_100ms_Group29_Reserved5_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        304u,
        0u,0u,
        COM_UNUSED_UINT16,

        17u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPICU_100ms_Group29_Reserved6_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        305u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPICU_100ms_Group29_Reserved7_IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx  IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx*/
        306u,
        0u,0u,
        COM_UNUSED_UINT16,

        19u,
        IPICU_100ms_Group29_PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IIMCU_100ms_VCUSecyWrnng_Gro____IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        307u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__1_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        308u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__2_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        309u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__3_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        310u,
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
        311u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__4_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        312u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__5_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        313u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__6_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        314u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__7_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        315u,
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
        /* IIMCU_100ms_VCUSecyWrnng_Gro__8_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx  IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx*/
        316u,
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
        /* IRZCU_10ms_Group01_CRC_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        317u,
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
        318u,
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
        /* IRZCU_10ms_Group01_Reserved1_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        319u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTStCmdOn_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        144u,
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
        145u,
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
        /* IRZCU_10ms_Group01_Reserved2_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        320u,
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
        146u,
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
        147u,
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
        148u,
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
        149u,
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
        /* IRZCU_10ms_Group01_Reserved3_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        321u,
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
        322u,
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
        323u,
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
        324u,
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
        /* IRZCU_10ms_Group01_Reserved4_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        325u,
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
        /* IRZCU_10ms_Group01_Reserved5_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx*/
        326u,
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
        /* IRZCU_10ms_Group05_CRC_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        327u,
        0u,0u,
        COM_UNUSED_UINT16,

        0u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group05_RC_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        328u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IPtHVCntarReq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        329u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITotActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        150u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRrAxleActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        151u,
        0u,0u,
        COM_UNUSED_UINT16,

        1u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTSecyAxleRgtvCstdnToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        41u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IRZCU_10ms_Group05_Reserved1_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        330u,
        0u,0u,
        COM_UNUSED_UINT16,

        4u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDrvrReqFrtAxleWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        152u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTSecyAxleRgtvCstdnToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        153u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IEPTSecyAxleRgtvBrkFlt_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        154u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRZCU_10ms_Group05_Reserved2_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        331u,
        0u,0u,
        COM_UNUSED_UINT16,

        5u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IEPTSecyAxleRgtvBrkActuToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        42u,
        0u,0u,
        COM_UNUSED_UINT16,

        7u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IEPTSecyAxleRgtvBrkToqLmt_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        43u,
        0u,0u,
        COM_UNUSED_UINT16,

        9u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IRZCU_10ms_Group05_Reserved3_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        332u,
        0u,0u,
        COM_UNUSED_UINT16,

        10u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group05_Reserved4_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        333u,
        0u,0u,
        COM_UNUSED_UINT16,

        11u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_10ms_Group05_Reserved6_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        334u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IFrtAxleActuWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        155u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IDrvrReqRrAxleWhlToqV_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        156u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* IRZCU_10ms_Group05_Reserved5_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        335u,
        0u,0u,
        COM_UNUSED_UINT16,

        12u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IDrvrReqFrtAxleWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        44u,
        0u,0u,
        COM_UNUSED_UINT16,

        14u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IDrvrReqRrAxleWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        45u,
        0u,0u,
        COM_UNUSED_UINT16,

        16u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IFrtAxleActuWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        46u,
        0u,0u,
        COM_UNUSED_UINT16,

        18u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IRZCU_10ms_Group05_Reserved14_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        336u,
        0u,0u,
        COM_UNUSED_UINT16,

        19u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRrAxleActuWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        47u,
        0u,0u,
        COM_UNUSED_UINT16,

        21u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* ITotActuWhlToq_IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx  IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx*/
        48u,
        0u,0u,
        COM_UNUSED_UINT16,

        23u,
        IRZCU_10ms_Group05_RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
        /* IRZCU_20ms_Group06_CRC_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        337u,
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
        338u,
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
        157u,
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
        /* IRZCU_20ms_Group06_Reserved1_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        158u,
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
        159u,
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
        160u,
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
        339u,
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
        340u,
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
        341u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* ITrEngdStaV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        161u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
        /* ITrEngdSta_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        342u,
        0u,0u,
        COM_UNUSED_UINT16,

        3u,
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
        /* IRZCU_20ms_Group06_Reserved3_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx  IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx*/
        343u,
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
        344u,
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
        345u,
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
        346u,
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
        /* ISDM_20ms_Group01_CRC_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx*/
        347u,
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
        348u,
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
        162u,
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
        163u,
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
        164u,
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
        165u,
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
        166u,
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
        349u,
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
        350u,
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
        167u,
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
        168u,
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
        169u,
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
        170u,
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
        171u,
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
        172u,
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
        173u,
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
        351u,
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
        352u,
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
        353u,
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
        174u,
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
        175u,
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
        354u,
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
        176u,
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
        177u,
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
        355u,
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
        178u,
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
        179u,
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
        356u,
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
        180u,
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
        181u,
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
        182u,
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
        183u,
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
        357u,
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
        358u,
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
        /* ISDM_20ms_Group02_CRC_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx  ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx*/
        359u,
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
        360u,
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
        361u,
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
        184u,
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
        185u,
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
        186u,
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
        187u,
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
        188u,
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
        362u,
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
        189u,
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
        363u,
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
        364u,
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
        365u,
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
        366u,
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
        367u,
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
        368u,
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
        190u,
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
        191u,
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
        369u,
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
        370u,
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
};
#define COM_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"

#define COM_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"
static CONST(Com_TxGroupSignalType, COM_CONST) Com_TxGroupSignal[COM_TXGROUPSIGNAL_NUMBER]=
{
    {
        /* IIAM_100ms_Group18_CRC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        690u,
        0u,
        0u,

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
        /* IIAM_100ms_Group18_RC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        691u,
        0u,
        0u,

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
        /* IIAM_100ms_Group18_Reserved1_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        692u,
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
        /* IPitchRTK_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        95u,
        0u,
        0u,

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
        /* IHeadingSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        96u,
        0u,
        0u,

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
        /* IPitchSigma_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx*/
        97u,
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
        /* IIAM_100ms_Group56_CRC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        693u,
        0u,
        0u,

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
        /* IIAM_100ms_Group56_RC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        694u,
        0u,
        0u,

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
        /* IIAM_100ms_Group56_Reserved1_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        695u,
        0u,
        0u,

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
        /* IIAM_GNSS_Signal_Status_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        696u,
        0u,
        0u,

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
        /* ILatitudeRTK_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        18u,
        0u,
        0u,

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
        /* IIAM_100ms_Group56_Reserved2_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx*/
        697u,
        0u,
        0u,

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
        /* IAltSigma_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx  IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx*/
        98u,
        0u,
        0u,

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
        99u,
        0u,
        0u,

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
        100u,
        0u,
        0u,

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
        698u,
        0u,
        0u,

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
        699u,
        0u,
        0u,

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
        700u,
        0u,
        0u,

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
        /* IGNSSUTCTimeH_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        101u,
        0u,
        0u,

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
        5u,
        0u,
        0u,

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
        701u,
        0u,
        0u,

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
        702u,
        0u,
        0u,

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
        703u,
        0u,
        0u,

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
        704u,
        0u,
        0u,

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
        /* IIAM_ZONE_100ms_Group34_IIAM_ZONE_100ms_Group34_Reserved2  IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        705u,
        0u,
        0u,

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
        102u,
        0u,
        0u,

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
        706u,
        0u,
        0u,

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
        103u,
        0u,
        0u,

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
        707u,
        0u,
        0u,

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
        104u,
        0u,
        0u,

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
        708u,
        0u,
        0u,

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
        709u,
        0u,
        0u,

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
        710u,
        0u,
        0u,

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
        711u,
        0u,
        0u,

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
        712u,
        0u,
        0u,

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
        /* IGNSSUTCTime_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        19u,
        0u,
        0u,

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
        713u,
        0u,
        0u,

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
        /* IIAM_ZONE_100ms_PDU35_CRC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx  IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx*/
        714u,
        0u,
        0u,

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
        715u,
        0u,
        0u,

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
        105u,
        0u,
        0u,

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
        6u,
        0u,
        0u,

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
        716u,
        0u,
        0u,

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
        717u,
        0u,
        0u,

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
        718u,
        0u,
        0u,

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
        719u,
        0u,
        0u,

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
        20u,
        0u,
        0u,

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
        720u,
        0u,
        0u,

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
        721u,
        0u,
        0u,

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
        722u,
        0u,
        0u,

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

    106u,
};

static const uint16 Com_MainFunctionTxRange[COM_NUMBER_OF_MAIN_FUNCTION_TX] =
{

    36u,
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

