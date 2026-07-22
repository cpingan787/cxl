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
 * @file              : Os_Core_Cfg.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 13:41:51
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Core_Cfg.h"
#include "Os_Core_CfgData.h"
#include "Os_Mcu_Irq.h"

/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
/* ------------------Interrupt install-------------------- */
#define OS_START_SEC_CONST_UNSPECIFIED
#include "Os_MemMap.h"
const Os_IntInstallType Os_IntInstall[CFG_ISR_MAX] =
{
    {
		10U, /*IntPrio*/
		Os_ISR_SystemTimer_Core_0_Handler0, /*ISR*/
        OS_ID_TAUB0I0_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RCAN0ERR_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RCAN0ERR_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RCAN0TRX_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RCAN0TRX_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RCANGRECC0_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RCANGRECC0_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_WDTA1_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_WDTA1_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RLIN30UR0_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN30UR0_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RLIN30UR1_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN30UR1_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RLIN30UR2_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN30UR2_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RLIN32UR0_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN32UR0_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RLIN32UR1_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN32UR1_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RLIN32UR2_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN32UR2_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
};
#define OS_STOP_SEC_CONST_UNSPECIFIED
#include "Os_MemMap.h"
/*=======[E N D   O F   F I L E]==============================================*/
