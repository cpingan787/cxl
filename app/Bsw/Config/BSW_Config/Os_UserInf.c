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
 * @date              : 2026-01-20 14:26:30
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os.h"
#include "Mcu.h"
#include "Adc.h"
#include "Gpt.h"
#include "Icu.h"

#include "Os_Arch_Processor.h"
#include "Os_Interrupt_CfgData.h"
#include "Can.h"
#include "EcuM.h"
#include "SchM_EcuM.h"
#include "SchM_BswM.h"
#include "SchM_ComM.h"
#include "SchM_Com.h"
#include "SchM_CanTp.h"
#include "SchM_CanSM.h"
#include "SchM_CanNm.h"
#include "SchM_Dem.h"
#include "SchM_Dcm.h"
#include "CanSM_BswM.h"
#include "BswM_CanSM.h"
#include "Can.h"
#include "Canif.h"
#include "ComM.h"
#include "IPduM.h"
#include "Rte_E2EXf_LCfg.h"
#include "Nm.h"
#include "Wdg_59_DriverA.h"
#include "Wdg_59_DriverA_PBTypes.h"
#include "WdgM.h"
#include "NVM.h"
#include "Fls.h"
#include "Crypto_ISoft.h"
#include "CryIf.h"
#include "Csm.h"
#include "SecOC.h"
#include "fvm.h"
#include "CanTsyn.h"
#include "Rte_SecOC.h"
#include "Com_Test.h"
#include "Mem_Test.h"
#include "Vss_Cfg.h"
#include "PowManager.h"
#include "Uds_Test.h"
#include "WDG_Test.h"

#include "r_port.h"
#include "peripheralHal.h"
#include "logHal.h"
#include "mpuHal.h"
#include "batteryHal.h"

#include "mcuMpuSyncTask.h"
#include "taskPowerManage.h"
#include "timerHal.h"
#include "ecallHal.h"
#include "taskEcallProcess.h"
#include "remoteControlTask.h"
#include "canPeriodTask.h"

/** DO NOT CHANGE THIS COMMENT!
* <USERBLOCK User Includes>
*/
/* custom code.... */
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
    EcuM_StartupTwo();
	
    Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup0);
	Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup1);

    /* Enabling the Notification */
    Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannelConfiguration0);
    Gpt_StartTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration0, 20000); //1ms

    Icu_EnableNotification(IcuConf_IcuChannel_IcuChannel_2_NAD);
    Icu_EnableNotification(IcuConf_IcuChannel_IcuChannel_3_EcallBtn);
    Icu_EnableNotification(IcuConf_IcuChannel_IcuChannel_6_Rtc_int);
    
    Icu_EnableEdgeDetection(IcuConf_IcuChannel_IcuChannel_2_NAD);
    Icu_EnableEdgeDetection(IcuConf_IcuChannel_IcuChannel_3_EcallBtn);
    Icu_EnableEdgeDetection(IcuConf_IcuChannel_IcuChannel_6_Rtc_int);

    Icu_EnableWakeup(IcuConf_IcuChannel_IcuChannel_0_Crash);
    Icu_EnableWakeup(IcuConf_IcuChannel_IcuChannel_2_NAD);
    Icu_EnableWakeup(IcuConf_IcuChannel_IcuChannel_3_EcallBtn);
    Icu_EnableWakeup(IcuConf_IcuChannel_IcuChannel_6_Rtc_int);

    Icu_StartSignalMeasurement(IcuConf_IcuChannel_IcuChannel_0_Crash); 

    LogHalInit(1);

    /**For K30 PowerON need to checck CAN wakeup */
    Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_WAKEUP);
    Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_START);
    
    ComM_CommunicationAllowed(0,TRUE);
	IpduM_Init(&IpduM_PBConfigData);
    E2EXf_Init(&E2EXf_Config);
	StbM_Init(&StbM_Config);
    CanTSyn_Init(&CanTSyn_config);

    Wdg_59_DriverB_Init(WdgSettingsConfig);
    WdgM_Init(&WdgMConfigRoot);
#if (WDG_TEST_ENABLE == 1)
    WDGInitStartTime = Gpt_GetTimeElapsed(GptConf_GptChannelConfiguration_GptChannelConfiguration0);
    #endif	
    Crypto_ISoft_Init(NULL_PTR);
    CryIf_Init(NULL_PTR);
    Csm_Init(NULL_PTR);
    SecOC_Init(&SecOC_ConfigData);
    Csm_KeySetValid(CsmKey_SecOC_Key);
    Vss_InitConfig();
   
    Fvm_InitConfig();
    //Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannelConfiguration0);
    Gpt_StartTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration3, 4294967295); //1ms
    queue_init(&SecOC_ErrorLogQueue,"SecOC_ErrorLogQueue",NULL_PTR);
    SetRelAlarm(OsAlarm_1ms, 1, 1);
    SetRelAlarm(OsAlarm_5ms, 2, 5);
    SetRelAlarm(OsAlarm_10ms, 3, 10);
    SetRelAlarm(OsAlarm_50ms, 4, 50);
    SetRelAlarm(OsAlarm_100ms, 5, 100);

    PeripheralHalInit();
    MpuHalInit();
    TimerHalInit();
    BatteryHalInit();

    // C3��������ĳ�ʼ�����֣����ΪxxxInit�������ڴ˴�����
    MpuHalTxTaskInit();
    McuMpuSyncTaskInit();
    TaskPowerManageInit();
    TaskVehicleDataToCpuInit();
    EcallHalInit();
    RemoteControlTaskInit();
    DtcDetectProcessInit();
    CanPassthroughWithMpuInit();
    TBOX_PRINT("system start %X\r\n", Mcu_GetResetReason());
    SYSTEM_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_INIT_START, "system start %X\r\n", Mcu_GetResetReason());
    uint32_t rtcTime = 0;
    TimerHalGetRtcTime(&rtcTime);
    TBOX_PRINT("rtcTime = %d\r\n", rtcTime);
    SYSTEM_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RTC_TIME, "rtcTime: %d\r\n", rtcTime);
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
/*OsTask_1ms: Core0(CPU),Type = BASIC, Priority = 6*/
uint16 test1=0;
uint16 test5=0;
uint16 test10=0;
uint16 test50=0;
uint16 test100=0;
TASK(OsTask_1ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_1ms>
    */
    test1++;
    Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup1);
    
#if (WDG_TEST_ENABLE == 1)
    /* 每1毫秒发送一次0x112报文 */
    SendMsg_112();
#endif
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
    os1msTimer();
    CanSM_MainFunction();/**passwakeup -Second: Start canif and controller */
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
    /* custom code.... */
    test5++;
    CanNm_MainFunction();/**passwakeup -third: Process NM passive start，and send NM message */
    
    Com_MainFunctionRx_ComMainFunctionRx();/**passwakeup -Fourth: send COM message */
    #if COM_TESTMODE
    Com_Test();
    #endif

    
    Com_MainFunctionTx_ComMainFunctionTx();

    Csm_MainFunction();
    CanTp_MainFunction();
    SecOC_MainFunctionRx();
    SecOC_MainFunctionTx();

    McuMpuSyncTaskMain();
    if(test5%200==0)
    {
        uint32_t rtcTime=0;
        TimerHalGetRtcTime(&rtcTime);
        // TBOX_PRINT("rtcTime: %d\r\n", rtcTime);
        SYSTEM_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RTC_TIME, "rtcTime: %d\r\n", rtcTime);
    }
    MpuHalTxTask();
    TaskPowerManage(5);
    TaskVehicleDataToCpu();
    RemoteControlTask();

    MpuHalUartTimerCallback();
    CanPeriodCycleProcess();

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
    /* custom code.... */
    test10++;
    BswM_MainFunction();
    Power_Detect();
    //CanNm_MainFunction();/**passwakeup -third:Process NM passive start，and send NM message */
    ComM_MainFunction_ComMChannel_0();/**passwakeup -First:change to Full com */
    // CanSM_MainFunction();/**passwakeup -Second:Start canif and controller */
    Dcm_MainFunction();
    Dem_MainFunction();
    EcuM_MainFunction();

    NvM_MainFunction();
    Fee_MainFunction();
    Fls_MainFunction();

    CanTSyn_MainFunction();
    StbM_MainFunction();
#if(CanTSyn_SlaveTestMODE == STD_ON)
    CanTSyn_SlaveTest();
#endif
    LogHal_FlushOfflineLogs();

    // Uds_Test();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
    TaskEcallProcess();
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
    test50++;
    CanNM_RepeatReqTest();
    //SystemTimeMs();
#if(Mem_testMODE == STD_ON)
    NvM_test();
    DTCMem_test();
#endif  
         
#if COM_SECOC_TESTMODE
    Com_SecOC_Test();
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

extern uint8 gIOHwAbDI_IG1_St;
/*OsTask_100ms: Core0(CPU),Type = BASIC, Priority = 2*/
TASK(OsTask_100ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_100ms>
    */

#ifdef TIME_TEST
#if 0
    static uint32_t lastTick = 0;
    uint32_t current_time = EcuM_CurrentTimestampMS();
    uint32_t elapsed_time = EcuM_CalculateElapsedMS(lastTick);
    lastTick = current_time;

    static uint32_t ulastTick = 0;
    uint32_t ucurrent_time = OSTM_GetUs();
    uint32_t uelapsed_time = OSTM_GetElapsedUs(ulastTick);
    ulastTick = ucurrent_time;

    TBOX_PRINT("etime: %d ms, uetime: %d us\r\n", elapsed_time, uelapsed_time);
#endif
#endif

#if (WDG_TEST_ENABLE == 1)
    for(uint16 i = 0; i < WDGCPCount; i++)
    {
#endif
        WdgM_CheckpointReached(1,0);
#if (WDG_TEST_ENABLE == 1)
    }
#endif

    test100++;
    IpduM_MainFunctionTx_IpduMMainFunctionTx();
    
#if (WDG_TEST_ENABLE == 1)    
    if(WDGRunMainFuc == 1)
    {
#endif
        /*WdgM_MainFunction() call cycle to check the result of the WdgM module*/
        WdgM_MainFunction();
#if (WDG_TEST_ENABLE == 1)
        if(WdgM_FirstRun == 1)
        {
            WDGInitEndTime = Gpt_GetTimeElapsed(GptConf_GptChannelConfiguration_GptChannelConfiguration0);
            WDGInitTotalTime = WDGInitEndTime - WDGInitStartTime;
            /* 首次执行时发送0x111报文 */
            SendMsg_111(MSG_STATUS_POSITIVE);
            WdgM_FirstRun = 0;
        }
    }

    if(WDGRunPerformReset == 1)
    {
        WdgM_PerformReset();
    }
#endif
    App_SecOC_ErrorLogProcess();

    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */

    if(test100 % 10 == 0)
    {
        // CrashTimeElapsed = Icu_GetTimeElapsed(IcuConf_IcuChannel_IcuChannel_0_Crash);
        R_PORT_ToggleGpioOutput(APort1, 1);
        // Dv_Test();
    }
    //TimerHalTestMain(100);
    TaskDtcDetect100ms();
    // LogHalTestMain(100);
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
    //EcuM_Shutdown();
    // Mcu_SetMode(McuConf_McuModeSettingConf_McuModeSettingConf0);

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
 *ISR(ISR_RCAN1ERR_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RCAN1ERR_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RCAN1ERR_IRQ>
    */
    /* custom code.... */
    CAN_CONTROLLER1_BUSOFF_CAT2_ISR();
    EcuM_SetWakeupEvent(EcuMWakeupSource_CAN);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RCAN1TRX_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RCAN1TRX_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RCAN1TRX_IRQ>
    */
    /* custom code.... */
    CAN_CONTROLLER1_TX_CAT2_ISR();
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

    EcuM_SetWakeupEvent(EcuMWakeupSource_CAN);

    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_ADCA0I1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_ADCA0I1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK ADCA0I1_IRQ>
    */
    /* custom code.... */
	Adc_Isr(ADC_ZERO, ADC_ONE);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_ADCA1I1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_ADCA1I1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK ADCA1I1_IRQ>
    */
    /* custom code.... */
	Adc_Isr(ADC_ONE, ADC_ONE);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_TAUJ0I0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_TAUJ0I0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK TAUJ0I0_IRQ>
    */
    //Gpt_CbkNotification(GPT_TAUJ0_CH00);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_TAUD0I9_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_TAUD0I9_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK TAUD0I9_IRQ>
    */
    static uint16 ret = 1;
#if (WDG_TEST_ENABLE == 1)
    WDGCurrentTime++;
#endif
    Gpt_CbkNotification(GPT_TAUD0_CH09);
    if (ret < 100)
    {
        ret++;
    }
    else
    {
        WDG_59_DRIVERB_TRIGGERFUNCTION_ISR();
        ret = 1;
    }
    
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_TAUB0I12_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_TAUB0I12_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK TAUB0I12_IRQ>
    */
    //Gpt_CbkNotification(GPT_TAUB0_CH12);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_TAUB0I8_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_TAUB0I8_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK TAUB0I8_IRQ>
    */
    /* custom code.... */
    // Gpt_CbkNotification(GPT_TAUB0_CH08);
    Icu_TimerIsr(ICU_TAUB0_CH08);
    Icu_Edge_Detect_Crash();

    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_TAUB0I9_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_TAUB0I9_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK TAUB0I9_IRQ>
    */
    /* custom code.... */
    Icu_TimerIsr(ICU_TAUB0_CH09);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P1_IRQ>
    */
    /* custom code.... */
    //Icu_ExternalInterruptIsr(ICU_EXT_INTP_CH01);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P2_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P2_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P2_IRQ>
    */
    /* custom code.... */
    Icu_ExternalInterruptIsr(ICU_EXT_INTP_CH02);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P5_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P5_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P5_IRQ>
    */
    /* custom code.... */
    // Icu_ExternalInterruptIsr(ICU_EXT_INTP_CH05);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P6_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P6_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P6_IRQ>
    */
    /* custom code.... */
    Icu_ExternalInterruptIsr(ICU_EXT_INTP_CH06);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P7_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P7_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P7_IRQ>
    */
    /* custom code.... */
    // Icu_ExternalInterruptIsr(ICU_EXT_INTP_CH07);
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
    Icu_ExternalInterruptIsr(ICU_EXT_INTP_CH09);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_P14_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_P14_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK P14_IRQ>
    */
    /* custom code.... */
    // Icu_ExternalInterruptIsr(ICU_EXT_INTP_CH14);
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN34TX0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN34TX0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN34TX0_IRQ>
    */
    /* custom code.... */
    r_uart4_interrupt_send();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN34RX1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN34RX1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN34RX1_IRQ>
    */
    /* custom code.... */
    r_uart4_interrupt_receive();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN34ERR2_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN34ERR2_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN34ERR2_IRQ>
    */
    /* custom code.... */
    r_uart4_interrupt_error();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN35TX0_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN35TX0_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN35TX0_IRQ>
    */
    /* custom code.... */
    r_uart5_interrupt_send();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN35RX1_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN35RX1_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN35RX1_IRQ>
    */
    /* custom code.... */
    r_uart5_interrupt_receive();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
/*
 *ISR(ISR_RLIN35ERR2_IRQ_Handler: Core0(CPU))
 */
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
ISR(ISR_RLIN35ERR2_IRQ_Handler)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK RLIN35ERR2_IRQ>
    */
    /* custom code.... */
    r_uart5_interrupt_error();
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

/* PRQA S 1532-- */ /* MISRA Rule 8.7 */
/*=======[E N D   O F   F I L E]==============================================*/
