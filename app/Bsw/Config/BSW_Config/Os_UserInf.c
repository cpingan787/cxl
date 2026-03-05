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

#include "r_cg_port.h"
#include "r_port.h"
#include "logHal.h"
#include "mpuHal.h"

#include "mcuMpuSyncTask.h"
#include "taskPowerManage.h"
#include "timerHal.h"
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
extern void Power_Detect(void);

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
    EcuM_SetWakeupEvent(EcuMWakeupSource_Local);
	
	Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup0);
	// Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup1);

    /* Enabling the Notification */
    Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannelConfiguration0);
    Gpt_StartTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration0, 20000); //1ms
    // Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannelConfiguration2);
    // Gpt_StartTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration2, 10000); //1ms
    // Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannelConfiguration3);
    // Gpt_StartTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration3, 0x1E8); //1s

    //Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_START);
    ComM_RequestComMode(0,COMM_FULL_COMMUNICATION);
    //BswM_CanSM_CurrentState(0,CANSM_BSWM_FULL_COMMUNICATION);
    //CanIf_SetPduMode(CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM, CANIF_ONLINE);
    ComM_CommunicationAllowed(0,TRUE);

	IpduM_Init(&IpduM_PBConfigData);
    E2EXf_Init(&E2EXf_Config);
	StbM_Init(&StbM_Config);
    CanTSyn_Init(&CanTSyn_config);

    Wdg_59_DriverA_Init(WdgSettingsConfig);
    WdgM_Init(&WdgMConfigRoot);
	
    Crypto_ISoft_Init(NULL_PTR);
    CryIf_Init(NULL_PTR);
    Csm_Init(NULL_PTR);
    SecOC_Init(&SecOC_ConfigData);
    Csm_KeySetValid(CsmKey_SecOC_Key);

    Fvm_InitConfig();
    //Gpt_EnableNotification(GptConf_GptChannelConfiguration_GptChannelConfiguration0);
    Gpt_StartTimer(GptConf_GptChannelConfiguration_GptChannelConfiguration3, 2147483647); //1ms
    queue_init(&SecOC_ErrorLogQueue,"SecOC_ErrorLogQueue",NULL_PTR);
    SetRelAlarm(OsAlarm_1ms, 1, 1);
    SetRelAlarm(OsAlarm_5ms, 2, 5);
    SetRelAlarm(OsAlarm_10ms, 3, 10);
    SetRelAlarm(OsAlarm_50ms, 4, 50);
    SetRelAlarm(OsAlarm_100ms, 5, 100);

    R_PORT_Create();
    LogHalInit(1);
    MpuHalInit();
    TimerHalInit();

    // C3��������ĳ�ʼ�����֣����ΪxxxInit�������ڴ˴�����
    MpuHalTxTaskInit();
    McuMpuSyncTaskInit();
    TaskPowerManageInit();
    TaskVehicleDataToCpuInit();
    TBOX_PRINT("system start\n");

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

uint8 wdgtest0 = 0;
uint8 wdgtest1 = 0;
TASK(OsTask_1ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_1ms>
    */
    test1++;
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
    CanSM_MainFunction();
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
    //CanNm_MainFunction();
    
    Com_MainFunctionRx_ComMainFunctionRx();
    #if COM_TESTMODE
    Com_Test();
    #endif
    #if COM_SECOC_TESTMODE
    Com_SecOC_Test();
    #endif
    
    Com_MainFunctionTx_ComMainFunctionTx();

    Csm_MainFunction();
    SecOC_MainFunctionRx();
    SecOC_MainFunctionTx();

    McuMpuSyncTaskMain();
    MpuHalTxTask();
    TaskPowerManage(5);
    TaskVehicleDataToCpu();

    MpuHalUartTimerCallback();

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
    ComM_MainFunction_ComMChannel_0();
	CanNm_MainFunction();
    CanTp_MainFunction();
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
    test50++;
	Power_Detect();

#if(Mem_testMODE == STD_ON)
    NvM_test();
    DTCMem_test();
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
/*OsTask_100ms: Core0(CPU),Type = BASIC, Priority = 2*/
TASK(OsTask_100ms)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_100ms>
    */

    if(wdgtest0 == 0)
    {
        WdgM_CheckpointReached(1,0);
    }

    test100++;
    IpduM_MainFunctionTx_IpduMMainFunctionTx();
    
    if(wdgtest1 == 0)
    {
        /*WdgM_MainFunction() call cycle to check the result of the WdgM module*/
        WdgM_MainFunction();
    }
    App_SecOC_ErrorLogProcess();

    if((test100 % 10) == 0)
    {
        R_PORT_ToggleGpioOutput(APort1, 1);
    }
    TimerHalTestMain(100);
    LogHalTestMain(100);
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
//    Mcu_SetMode(McuConf_McuModeSettingConf_McuModeSettingConf0);
//    Mcu_SequencerInit(McuConf_McuLowPowerSequencer_McuLowPowerSequencer0);

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
    Gpt_CbkNotification(GPT_TAUD0_CH09);
    if (ret < 100)
    {
        ret++;
    }
    else
    {
        WDG_59_DRIVERA_TRIGGERFUNCTION_ISR();
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
