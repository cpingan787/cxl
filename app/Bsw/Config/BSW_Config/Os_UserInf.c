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
 * @file              : Os_UserInf.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-07-08 15:11:16
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
#include "Can.h"
#include "Adc.h"
#include "CanIf.h"
#include "IpduM.h"
#include "WdgM.h"
#include "StbM.h"
#include "Rte_E2EXf_LCfg.h"
#include "Com_Test.h"
#include "CanTSyn.h"
#include "r_cg_uart.h"
#include "logHal.h"
#include "mpuHal.h"
#include "timeSyncSdk.h"
#include "mcuMpuSyncTask.h"
#include "powerManageSdk.h"
#include "batteryHal.h"

uint32 counter_1ms = 0;
uint32 counter_5ms = 0;
uint32 counter_10ms = 0;
uint32 counter_50ms = 0;
uint32 counter_100ms = 0;
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
    EcuM_StartupTwo();

    Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup);

    /**For K30 PowerON need to checck CAN wakeup */
    Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_WAKEUP);
    Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_START);

    Wdg_59_DriverB_Init(WdgSettingsConfig);
    WdgM_Init(&WdgMConfigRoot);

    ComM_CommunicationAllowed(0,TRUE);
    IpduM_Init(&IpduM_PBConfigData);
    E2EXf_Init(&E2EXf_Config);
	StbM_Init(&StbM_Config);
    CanTSyn_Init(&CanTSyn_config);
    



    SetRelAlarm(OsAlarm_1ms, 1, 1);
    SetRelAlarm(OsAlarm_5ms, 2, 5);
    SetRelAlarm(OsAlarm_10ms, 3, 10);
    SetRelAlarm(OsAlarm_50ms, 4, 50);
    SetRelAlarm(OsAlarm_100ms, 5, 100);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
    /* Hal Init */
    LogHalInit(1);
    PeripheralHalInit();
    MpuHalInit();
    TimerHalInit();
    BatteryHalInit();

    
    /* Task Init */
    MpuHalTxTaskInit();
    McuMpuSyncTaskInit();
    TaskVehicleDataToCpuInit();
    DtcDetectProcessInit();
    CanPassthroughWithMpuInit();
    TaskPowerManageInit();

    TBOX_PRINT("OsTask_Init\n");

    if (E_OK != TerminateTask())
    {
        while (1)
        {
            /* dead loop */
        }
    }
    // DtcDetectProcessInit();
}
/*OsTask_1ms: Core0(CPU),Type = BASIC, Priority = 6*/
TASK(OsTask_1ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_1ms>
    */
    counter_1ms++;

    Can_MainFunction_Mode();
    /**passwakeup -Second: Start canif and controller */
    CanSM_MainFunction();
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
/*OsTask_5ms: Core0(CPU),Type = BASIC, Priority = 5*/
TASK(OsTask_5ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_5ms>
    */
    counter_5ms++;

    /**passwakeup -third: Process NM passive start，and send NM message */
    CanNm_MainFunction();
    /**passwakeup -Fourth: send COM message */
    Com_MainFunctionRx_ComMainFunctionRx();
    Com_MainFunctionTx_ComMainFunctionTx();

    CanTp_MainFunction();

    McuMpuSyncTaskMain();
   	MpuHalTxTask();
    TaskPowerManage(5);
    TaskVehicleDataToCpu();
    MpuHalUartTimerCallback();
    CanPeriodCycleProcess();
    if(counter_5ms%200 == 0)
    {
        uint32_t rtcTime = 0;
        TimerHalGetRtcTime(&rtcTime);
        TBOX_PRINT("rtcTime: %u\r\n", rtcTime);
        // SYSTEM_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RTC_TIME, "rtcTime: %u\r\n", rtcTime);

        // 时间未同步时，外发报文时间从2000年1月1日 00:00:00起始 当前RTC在冷启动后的时间戳
        if(TimeSyncSdkGetFirstTimeSyncStatus() == 0)
        {
            TimeSyncSdkSendTimeSignalToCanWithoutTimeSync(rtcTime);
        }
    }

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
/*OsTask_10ms: Core0(CPU),Type = BASIC, Priority = 4*/
TASK(OsTask_10ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_10ms>
    */
    counter_10ms++;

    BswM_MainFunction();
    Power_Detect();
    ComM_MainFunction_ComMChannel_0();/**passwakeup -First:change to Full com */
    Dcm_MainFunction();
    Dem_MainFunction();
    EcuM_MainFunction();
    Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup);
    NvM_MainFunction();
    Fee_MainFunction();
    Fls_MainFunction();

    CanTSyn_MainFunction();
    StbM_MainFunction();
#if(CanTSyn_SlaveTestMODE == STD_ON)
    CanTSyn_SlaveTest();
#endif
    
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
/*OsTask_50ms: Core0(CPU),Type = BASIC, Priority = 3*/
TASK(OsTask_50ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_50ms>
    */
    /* custom code.... */
    counter_50ms++;
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
/*OsTask_100ms: Core0(CPU),Type = BASIC, Priority = 2*/
TASK(OsTask_100ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_100ms>
    */
    /* custom code.... */
    counter_100ms++;
    IpduM_MainFunctionTx_IpduMMainFunctionTx();

    WdgM_CheckpointReached(1,0);
    WdgM_MainFunction();
    
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
    //TBOX_PRINT("OsTask_100ms\n");
    if(counter_100ms % 10 == 0)
    {

    }
    TaskDtcDetect100ms();
    Dv_Test();
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

#define OS_START_SEC_CODE
#include "Os_MemMap.h"
void ShutdownHook(StatusType Error)
{
   	/***The code below is just for deleting the complier warning.***
	 ***Please remove it and use your own code****/
	(void)Error;
	/***The code above is just for deleting the complier warning*/

    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK ShutdownHook>
    */
    /* custom code.... */
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"



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
    /* custom code.... */
    CAN_CONTROLLER0_BUSOFF_CAT2_ISR();
    EcuM_SetWakeupEvent(EcuMWakeupSource_CAN);
    //EcuM_SetWakeupEvent(EcuMWakeupSource_CAN);
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
    /* custom code.... */

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
    PowerManageSdkIsrSetWakeUpSource(PM_HAL_WAKEUP_SOURCE_CAN1);
    EcuM_SetWakeupEvent(EcuMWakeupSource_CAN);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_ADCA0I0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_ADCA0I0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK ADCA0I1_IRQ>
    */
    /* custom code.... */
	Adc_Isr(ADC_ZERO, ADC_ZERO);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_ADCA0ERR_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_ADCA0ERR_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK ADCA0ERR_IRQ>
    */
    /* custom code.... */
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
    WDG_59_DRIVERB_TRIGGERFUNCTION_ISR();

    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P0_IRQ>
    */
    /* custom code.... */
    CAN_CONTROLLER0_WAKEUP_CAT2_ISR();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P8_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P8_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P8_IRQ>
    */
    /* custom code.... */
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P9_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P9_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P9_IRQ>
    */
    /* custom code.... */
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
/*
 *ISR(ISR_RIIC0TI_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RIIC0TI_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RIIC0TI_IRQ>
    */
    /* custom code.... */
    r_riic0_transmit_interrupt();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RIIC0EE_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RIIC0EE_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RIIC0EE_IRQ>
    */
    /* custom code.... */
    r_riic0_error_interrupt();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RIIC0RI_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RIIC0RI_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RIIC0RI_IRQ>
    */
    /* custom code.... */
    r_riic0_receive_interrupt();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RIIC0TEI_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RIIC0TEI_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RIIC0TEI_IRQ>
    */
    /* custom code.... */
    r_riic0_transmitend_interrupt();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_DMA0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_DMA0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK DMA0_IRQ>
    */
    /* custom code.... */
    r_dmac00_interrupt();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_DMA1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_DMA1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK DMA1_IRQ>
    */
    r_dmac01_interrupt();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_CSIH2IC_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_CSIH2IC_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK CSIH2IC_IRQ>
    */
    /* custom code.... */
    r_csih2_interrupt_send();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_CSIH2IR_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_CSIH2IR_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK CSIH2IR_IRQ>
    */

    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_CSIH2IRE_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_CSIH2IRE_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK CSIH2IRE_IRQ>
    */

    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"


/* PRQA S 1532-- */ /* MISRA Rule 8.7 */
/*=======[E N D   O F   F I L E]==============================================*/
