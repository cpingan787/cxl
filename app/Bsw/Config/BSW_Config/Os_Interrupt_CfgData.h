/**
 * COPYRIGHT
 * ---------------------------------------------------------------------------------------------------------------------
 * Copyright (c) iSOFT INFRASTRUCTURE SOFTWARE CO., LTD. This software is proprietary to
 * iSOFT INFRASTRUCTURE SOFTWARE CO., LTD., and all rights are reserved by iSOFT INFRASTRUCTURE SOFTWARE CO., LTD.
 * Without the express written permission of the company, no organization or individual may copy, install, trial,
 * distribute, or reverse engineer this software. For terms of use and further details, please refer to the End User
 * License Agreement (EULA) or contact us business@i-soft.com.cn for more assistance.
 *
 * This file contains code from iSoft, which is licensed under the LGPL-2.1. However, due to a special exception,
 * you are not required to comply with the provisions of section 6a of LGPL-2.1. Specifically, you may distribute
 * your software, including this file, under terms of your choice, including proprietary licenses, without needing to
 * provide the source code or object code as specified in section 6a. For more details, please refer to the project's
 * LICENSE and EXCEPTION files and the specific exception statement.
 * ---------------------------------------------------------------------------------------------------------------------
 * FILE DESCRIPTION
 * ---------------------------------------------------------------------------------------------------------------------
 * @MCU               : R7F7015813
 * @file              : Os_Interrupt_CfgData.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-06-18 17:22:56
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_INTERRUPT_CFGDATA_H
#define OS_INTERRUPT_CFGDATA_H

/* =================================================== inclusions =================================================== */
#include "Os_Types.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
extern const uint16 Os_CfgIsrMax_Inf[OS_AUTOSAR_CORES];
extern const uint16 Os_CfgIsr2Max_Inf[OS_AUTOSAR_CORES];
extern const Os_IsrPropertyType Os_IsrIdRange[OS_AUTOSAR_CORES];
extern const Os_StackType Os_ISR2Stack[CFG_ISR_MAX];
extern const Os_IsrCfgType Os_IsrCfg[CFG_ISR_MAX];
extern const Os_IPLType Os_CfgIsr2ExcludeTplMax_Inf[OS_AUTOSAR_CORES];
extern Os_ICBType* const Os_ICB[CFG_ISR_MAX];
extern Os_IsrType* const Os_SysIsrNestQueue_Inf[OS_AUTOSAR_CORES];

/* PRQA S 1753 ++ */ /* VL_Os_1753 */
/*
 * DeclareISR
 */
DeclareISR(ISR_RCAN0ERR_IRQ_Handler);
DeclareISR(ISR_RCAN0TRX_IRQ_Handler);
DeclareISR(ISR_RCANGRECC0_IRQ_Handler);
DeclareISR(ISR_P0_IRQ_Handler);
DeclareISR(ISR_P8_IRQ_Handler);
DeclareISR(ISR_P9_IRQ_Handler);
DeclareISR(ISR_ADCA0I0_IRQ_Handler);
DeclareISR(ISR_ADCA0ERR_IRQ_Handler);
DeclareISR(ISR_WDTA1_IRQ_Handler);
DeclareISR(ISR_RLIN30UR0_IRQ_Handler);
DeclareISR(ISR_RLIN30UR1_IRQ_Handler);
DeclareISR(ISR_RLIN30UR2_IRQ_Handler);
DeclareISR(ISR_RLIN32UR0_IRQ_Handler);
DeclareISR(ISR_RLIN32UR1_IRQ_Handler);
DeclareISR(ISR_RLIN32UR2_IRQ_Handler);
DeclareISR(ISR_RIIC0TI_IRQ_Handler);
DeclareISR(ISR_RIIC0EE_IRQ_Handler);
DeclareISR(ISR_RIIC0RI_IRQ_Handler);
DeclareISR(ISR_RIIC0TEI_IRQ_Handler);
DeclareISR(ISR_DMA0_IRQ_Handler);
DeclareISR(ISR_DMA1_IRQ_Handler);
DeclareISR(ISR_CSIH2IC_IRQ_Handler);
DeclareISR(ISR_CSIH2IR_IRQ_Handler);
DeclareISR(ISR_CSIH2IRE_IRQ_Handler);
/* PRQA S 1753 -- */

#endif /* OS_INTERRUPT_CFGDATA_H */
