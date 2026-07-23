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
 * @file              : Os_UserInf.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-13 13:41:50
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os.h"
#include "Os_Arch_Processor.h"

/** DO NOT CHANGE THIS COMMENT!
* <USERBLOCK User Includes>
*/
/* custom code.... */
#include "Wdg_59_DriverB.h"
#include "Wdg_59_DriverB_PBTypes.h"
#include "Can.h"
#include "BootM.h"
#include "Common.h"
#include "logHal.h"
#include "mpuHal.h"
#include "mcuMpuSyncTask.h"
#include "firmwareUpdateSdk.h"
#include "SecureBoot.h"
#include "logHal.h"
/** DO NOT CHANGE THIS COMMENT!
* </USERBLOCK>
*/
/* ===================================================== macros ===================================================== */

/* ================================================ type definitions ================================================ */

/* ========================================== internal function declarations ======================================== */

/* ============================================ internal data definitions =========================================== */

/* ============================================ external data definitions =========================================== */

/* ========================================== external function definitions ========================================= */

/* ========================================== internal function definitions ========================================= */
/*=======[T A S K S]==========================================*/
/* PRQA S 1532++ */ /* VL_QAC_OneFunRef */
/*OsTask_Init: Core0(CPU),Type = BASIC, Priority = 1*/
TASK(OsTask_Init)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_Init>
    */
    /* custom code.... */
    EcuMService_Init();
    LogHalInit(1);
    MpuHalInit();

    MpuHalStart();

    TBOX_PRINT("BOOT INIT\r\n");
    SetRelAlarm(OsAlarm_1ms, 1, 1);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */

    if (E_OK != TerminateTask())
    {
        while (1)
        {
            /* dead loop */
        }
    }
}
/*OsTask_0: Core0(CPU),Type = BASIC, Priority = 1*/
uint32 task_cnt = 0;
extern void TstCanSendMessage(void);
TASK(OsTask_1ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_1ms>
    */
    Comm_MainTick++;

    static uint16 init_cnt = 0;
    static uint32 run_time = 0;
    static uint32 dataRead = 0;
    static uint32 sys_cnt = 0;

    
    if (init_cnt == 0) 
    {
        FlsIf_Read(0x80000, 4, (uint8*)&dataRead);
        if (dataRead != 0xfe)
        {
            MpuHal_TriggerPowerOnSequence();
        }

        McuMpuSyncTaskInit();
        DID_Init();
        FirmwareUpdate_UnlockMcuFlashAck();
        TBOX_PRINT("boot start SecBoot: %d\n", SecureBootCurrentStatus);
        
        init_cnt = 1;
    }

    sys_cnt++;
    if (sys_cnt % 5 == 0)
    {
        MpuHalTxTask();
    }

    // if (sys_cnt == 1000) // 1s
    // {
    //     TBOX_PRINT("BOOT RUN\r\n");
    //     // TBOX_PRINT("boot1 cycle %ds\n", run_time);
    //     sys_cnt = 0;
    //     run_time++;
    // }
    
    MpuHalCycleProcess(5);
    CanTp_MainFunction();
    Dcm_TimerFunction();
    Dcm_MainFunction_Post();
    Dcm_MainFunction();
    MpuHalUartTimerCallback();
    McuMpuSyncTaskMain();
	
	// task_cnt++;
    // if (task_cnt >= 100)
    // {
    //     task_cnt = 0;
    //     Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION); // 100ms trigger一次22
    // }
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */

    if (E_OK != TerminateTask())
    {
        while (1)
        {
            /* dead loop */
        }
    }
}

/*=======[H O O K S]================================================*/
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
void IdleHook_Core0(void)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK IdleHook_Core0>
    */
    /* custom code.... */
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

/*=======[ALARM CALL BACK]==========================================*/

/*=======[IOC CALL BACK]==========================================*/




/*=======[P A N I C H A N D L E R]================================*/
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
void Os_PanicHandler(void)
{
    /* please insert your code here ... */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

/*=======[I S R S]================================================*/
/*
 *ISR(ISR_RCAN0ERR_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RCAN0ERR_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RCAN0ERR_IRQ>
    */
    CAN_CONTROLLER0_BUSOFF_CAT2_ISR();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RCAN0TRX_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RCAN0TRX_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RCAN0TRX_IRQ>
    */
    CAN_CONTROLLER0_TX_CAT2_ISR();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RCANGRECC0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RCANGRECC0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RCANGRECC0_IRQ>
    */
    /* custom code.... */
    CAN_RSCAN0_RXFIFO_CAT2_ISR();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_WDTA1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_WDTA1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK WDTA1_IRQ>
    */
    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

/*
 *ISR(ISR_RLIN30UR0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN30UR0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN30UR0_IRQ>
    */
    /* UART0 TX ISR */
    r_uart0_interrupt_send();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN30UR1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN30UR1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN30UR1_IRQ>
    */
    /* UART0 RX ISR */
    r_uart0_interrupt_receive();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN30UR2_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN30UR2_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN30UR2_IRQ>
    */
    /* UART0 ERR ISR */
    r_uart0_interrupt_error();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN32UR0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN32UR0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN32UR0_IRQ>
    */
    /* UART2 TX ISR */
    r_uart2_interrupt_send();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN32UR1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN32UR1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN32UR1_IRQ>
    */
    /* UART2 RX ISR */
    r_uart2_interrupt_receive();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN32UR2_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN32UR2_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN32UR2_IRQ>
    */
    /* UART2 ERR ISR */
    r_uart2_interrupt_error();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"

/* PRQA S 1532-- */ /* MISRA Rule 8.7 */
/*=======[E N D   O F   F I L E]==============================================*/
