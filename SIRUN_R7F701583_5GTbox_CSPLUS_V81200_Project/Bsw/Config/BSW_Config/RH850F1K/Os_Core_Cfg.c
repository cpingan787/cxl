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
 * @date              : 2026-02-25 15:50:42
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
        Os_ISR_RCAN1ERR_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RCAN1ERR_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_RCAN1TRX_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RCAN1TRX_IRQ,/*IntNumber*/
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
        Os_ISR_ADCA0I1_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_ADCA0I1_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        3U,  /*IntPrio*/
        Os_ISR_ADCA1I1_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_ADCA1I1_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        1U,  /*IntPrio*/
        Os_ISR_RLIN34UR0_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN34UR0_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    { 
        1U,  /*IntPrio*/
        Os_ISR_RLIN34UR1_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN34UR1_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        1U,  /*IntPrio*/
        Os_ISR_RLIN34UR2_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN34UR2_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        2U,  /*IntPrio*/
        Os_ISR_RLIN35TX_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN35UR0_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        5U,  /*IntPrio*/
        Os_ISR_RLIN35RX_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN35UR1_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        2U,  /*IntPrio*/
        Os_ISR_RLIN35ERR_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RLIN35UR2_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        1U,  /*IntPrio*/
        Os_ISR_RIIC0TI_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RIIC0TI_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        1U,  /*IntPrio*/
        Os_ISR_RIIC0EE_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RIIC0EE_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        1U,  /*IntPrio*/
        Os_ISR_RIIC0RI_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RIIC0RI_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
    {
        1U,  /*IntPrio*/
        Os_ISR_RIIC0TEI_IRQ_Handler,  /*cat2 ISR*/
        OS_ID_RIIC0TEI_IRQ,/*IntNumber*/
        INVALID_SELECTION_BIT, /*intc2SelectionBit*/
    },
};
#define OS_STOP_SEC_CONST_UNSPECIFIED
#include "Os_MemMap.h"
/*=======[E N D   O F   F I L E]==============================================*/
