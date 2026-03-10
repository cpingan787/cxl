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
 *  @file               : Rte_Dem.h
 *  @author             : iSoft
 *  @date               : 2026-01-19 21:44:12
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef RTEDEM_H
#define RTEDEM_H

#include "Dem_Types.h"

extern Std_ReturnType  Rte_ReadData_0112( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_E101( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_010B( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_E010( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_D002( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_BE80( uint8* Buffer );

#endif /*RTEDEM_H*/
