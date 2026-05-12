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
 * @MCU               : R7F7015833
 * @file              : Os_Core_CfgData.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-17 21:52:00
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_CORE_CFGDATA_H
#define OS_CORE_CFGDATA_H

/* =================================================== inclusions =================================================== */
#include "Os_Mcu_Irq.h"
#include "Os_Types.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
extern void Os_ISR_SystemTimer_Core_0_Handler0(void);
extern void Os_ISR_RCAN1ERR_IRQ_Handler(void);
extern void Os_ISR_RCAN1TRX_IRQ_Handler(void);
extern void Os_ISR_RCANGRECC0_IRQ_Handler(void);
extern void Os_ISR_ADCA0I1_IRQ_Handler(void);
extern void Os_ISR_ADCA1I1_IRQ_Handler(void);
extern void Os_ISR_TAUJ0I0_IRQ_Handler(void);
extern void Os_ISR_TAUD0I9_IRQ_Handler(void);
extern void Os_ISR_TAUB0I12_IRQ_Handler(void);
extern void Os_ISR_RLIN34TX0_IRQ_Handler(void);
extern void Os_ISR_RLIN34RX1_IRQ_Handler(void);
extern void Os_ISR_RLIN34ERR2_IRQ_Handler(void);
extern void Os_ISR_RLIN35TX0_IRQ_Handler(void);
extern void Os_ISR_RLIN35RX1_IRQ_Handler(void);
extern void Os_ISR_RLIN35ERR2_IRQ_Handler(void);
extern void Os_ISR_RIIC0TI_IRQ_Handler(void);
extern void Os_ISR_RIIC0EE_IRQ_Handler(void);
extern void Os_ISR_RIIC0RI_IRQ_Handler(void);
extern void Os_ISR_RIIC0TEI_IRQ_Handler(void);
extern const Os_IntInstallType Os_IntInstall[CFG_ISR_MAX];

#endif /* OS_CORECFG_H */
/*=======[E N D   O F   F I L E]==============================================*/
