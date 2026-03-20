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
 * @file              : Os_Intvet.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-03-03 20:34:15
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os_Arch_Processor.h"
#include "Os_Arch_Irq.h"
#include "Os_Interrupt.h"
#include "Os_Counter.h"
#include "Os_Rpc.h"
#include "Os_Tprot.h"
#include "Os_Sprot.h"
#include "Os_Kernel.h"

/* ===================================================== macros ===================================================== */
#define     OS_ARCH_INT_CORE0                  OS_ARCH_INT_CPU

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
/* PRQA S 1532, 3006, 0306, 2743, 3138, 3141, 3442, 6070, 3408, 1252, 1512, 3200, 3209 ++ */  /* VL_QAC_OneFunRef, VL_Os_3006, VL_Os_0306, VL_Os_2743, VL_Os_3138, VL_Os_3141, VL_Os_3442, VL_MTR_Os_STCAL, VL_Os_3408, VL_Os_1252, VL_Os_1512, VL_Os_3200, VL_Os_3209 */
/* --------------------CORE0-------------------- */
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_SystemTimer_Core_0_Handler0(void)
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_SYS_TIMER_CORE0_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    Os_McuClearSysTimer(OS_CORE_ID_0);
    Os_ArchSystemTimerCore0();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_SYS_TIMER_CORE0_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"

#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RCAN1ERR_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RCAN1ERR_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RCAN1ERR_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RCAN1ERR_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RCAN1TRX_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RCAN1TRX_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RCAN1TRX_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RCAN1TRX_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RCANGRECC0_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RCANGRECC0_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RCANGRECC0_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RCANGRECC0_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_ADCA0I1_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_ADCA0I1_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_ADCA0I1_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_ADCA0I1_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_ADCA1I1_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_ADCA1I1_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_ADCA1I1_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_ADCA1I1_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_TAUJ0I0_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_TAUJ0I0_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_TAUJ0I0_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_TAUJ0I0_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_TAUD0I9_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_TAUD0I9_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_TAUD0I9_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_TAUD0I9_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_TAUB0I12_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_TAUB0I12_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_TAUB0I12_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_TAUB0I12_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RLIN34TX0_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RLIN34TX0_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RLIN34TX0_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RLIN34TX0_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RLIN34RX1_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RLIN34RX1_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RLIN34RX1_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RLIN34RX1_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RLIN34ERR2_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RLIN34ERR2_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RLIN34ERR2_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RLIN34ERR2_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RLIN35TX0_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RLIN35TX0_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RLIN35TX0_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RLIN35TX0_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RLIN35RX1_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RLIN35RX1_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RLIN35RX1_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RLIN35RX1_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RLIN35ERR2_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RLIN35ERR2_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RLIN35ERR2_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RLIN35ERR2_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RIIC0TI_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RIIC0TI_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RIIC0TI_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RIIC0TI_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RIIC0EE_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RIIC0EE_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RIIC0EE_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RIIC0EE_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RIIC0RI_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RIIC0RI_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RIIC0RI_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RIIC0RI_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
#define OS_START_SEC_CODE_FAST
#include "Os_MemMap.h"
void Os_ISR_RIIC0TEI_IRQ_Handler(void) 
{
    /* PRQA S 0306, 1006, 2991 ++ */ /* VL_Os_0306, VL_Os_1006, VL_Os_2991 */
    OS_ARCH_ISR2_PROLOGUE(CFG_ISR_RIIC0TEI_IRQ_ID);
    /* PRQA S 0306, 1006, 2991 -- */
    ISR_RIIC0TEI_IRQ_Handler();
    /* PRQA S 0310, 0306, 1006 ++ */ /* VL_Os_0310, VL_Os_0306, VL_Os_1006 */
    /* PRQA S 0404, 3415 ++ */ /* VL_Os_VolatileAccess, VL_Os_3415 */
    OS_ARCH_ISR2_EPILOGUE(CFG_ISR_RIIC0TEI_IRQ_ID);
    /* PRQA S 0404, 3415 -- */
    /* PRQA S 0310, 0306, 1006 -- */
}
#define OS_STOP_SEC_CODE_FAST
#include "Os_MemMap.h"
/* PRQA S 1532, 3006, 0306, 2743, 3138, 3141, 3442, 6070, 3408, 1252, 1512, 3200, 3209 -- */
/*=======[E N D   O F   F I L E]==============================================*/
/* PRQA S 0553, 6510, 6520 EOF */ /* VL_QAC_UnUsedFiles, VL_MTR_Os_CONF, VL_MTR_Os_STVAR */
