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
 *  @file               : EcuM_Generated_Types.h
 *  @author             : iSoft
 *  @date               : 2026-01-16 11:47:20
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/

#ifndef ECUM_GENERATED_TYPES_H
#define ECUM_GENERATED_TYPES_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define ECUM_WKSOURCE(sourceId) (uint32)((uint32)0x01u << (sourceId))
#define EcuMWakeupSource_CAN     ECUM_WKSOURCE(5)
#define EcuMWakeupSource_Local     ECUM_WKSOURCE(6)
#define EcuMWakeupSource_Time     ECUM_WKSOURCE(7)

#define ECUM_WKSOURCE_ALARMCLOCK  EcuMWakeupSource_Time
/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/*********************Generated Configuration Types***************************/
typedef struct
{
    P2CONST(void, TYPEDEF, ECUM_APPL_DATA) bswMPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) canPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) canIfPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) canSMPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) pduRPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) comPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) comMPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) nmPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) canNmPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) canTpPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) dcmPbCfg;
    P2CONST(void, TYPEDEF, ECUM_CONFIG_DATA) demPbCfg;
} EcuM_GenBSWPbCfgType;

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/

#endif /* ECUM_GENERATED_TYPES_H */
