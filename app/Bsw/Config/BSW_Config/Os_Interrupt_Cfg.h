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
 * @file              : Os_Interrupt_Cfg.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-06-18 17:22:56
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

#ifndef OS_INTERRUPT_CFG_H
#define OS_INTERRUPT_CFG_H

/* =================================================== inclusions =================================================== */

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
#define     CFG_ISR_MAX								(25U)
#define     CFG_ISR2_MAX							(25U)
/* wether support interrupt nest */
#define     CFG_INT_NEST_ENABLE             		TRUE
/* highest ISR2 interrupt priority */
#define     CFG_ISR2_IPL_MAX_CORE0                	(10U)


/* Core0*/
#define     CFG_ISR_MAX_CORE0						(25U)
#define     CFG_ISR2_MAX_CORE0						(25U)

/* PRQA S 0722, 0724, 1271, 1434, 0723, 0784 ++ *//* VL_Os_0722, VL_Os_0724, VL_Os_1271, VL_Os_1434, VL_Os_0723, VL_Os_0784 */
typedef enum
{
    /* Core0 ISR2 */
    CFG_ISR2_ID_CORE0_BEGIN = 0,
    CFG_SYS_TIMER_CORE0_ID = CFG_ISR2_ID_CORE0_BEGIN, /*system timer core0*/
    CFG_ISR_RCAN0ERR_IRQ_ID,
    CFG_ISR_RCAN0TRX_IRQ_ID,
    CFG_ISR_RCANGRECC0_IRQ_ID,
    CFG_ISR_P0_IRQ_ID,
    CFG_ISR_P8_IRQ_ID,
    CFG_ISR_P9_IRQ_ID,
    CFG_ISR_ADCA0I0_IRQ_ID,
    CFG_ISR_ADCA0ERR_IRQ_ID,
    CFG_ISR_WDTA1_IRQ_ID,
    CFG_ISR_RLIN30UR0_IRQ_ID,
    CFG_ISR_RLIN30UR1_IRQ_ID,
    CFG_ISR_RLIN30UR2_IRQ_ID,
    CFG_ISR_RLIN32UR0_IRQ_ID,
    CFG_ISR_RLIN32UR1_IRQ_ID,
    CFG_ISR_RLIN32UR2_IRQ_ID,
    CFG_ISR_RIIC0TI_IRQ_ID,
    CFG_ISR_RIIC0EE_IRQ_ID,
    CFG_ISR_RIIC0RI_IRQ_ID,
    CFG_ISR_RIIC0TEI_IRQ_ID,
    CFG_ISR_DMA0_IRQ_ID,
    CFG_ISR_DMA1_IRQ_ID,
    CFG_ISR_CSIH2IC_IRQ_ID,
    CFG_ISR_CSIH2IR_IRQ_ID,
    CFG_ISR_CSIH2IRE_IRQ_ID,
    CFG_ISR2_ID_CORE0_END,

    INVALID_ISR = 0xFFFFU,
} Os_IsrType;
/* PRQA S 0722, 0724, 1271, 1434, 0723, 0784 -- */

#endif /* OS_INTERRUPT_CFG_H */
