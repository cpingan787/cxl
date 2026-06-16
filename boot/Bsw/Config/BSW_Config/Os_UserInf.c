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
 * @date              : 2026-01-17 21:51:58
 * @customer          : iSoft
 * @description       : Configuration parameter of OS
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/

/* =================================================== inclusions =================================================== */
#include "Os.h"
#include "Os_Arch_Processor.h"
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
#ifdef TIME_TEST
#include "SignatureHeader.h"
#endif
/** DO NOT CHANGE THIS COMMENT!
* <USERBLOCK User Includes>
*/
/* custom code.... */
uint8 InitFlag = 0;

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
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */

    EcuMService_Init();

    SetRelAlarm(OsAlarm_0, 1, 1);
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
extern void TstCanSendMessage(uint32 canId, uint32 data);
TASK(OsTask_0)
{
    /* please insert your code here ... */
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK OsTask_0>
    */
    /* custom code.... */
    Comm_MainTick++;
   static uint32 sys_cnt = 201;
   static uint32 run_time = 0;
   static uint32 dataRead = 0;
    if (sys_cnt == 201) 
    {
        LogHalInit(1);
        FlsIf_Read(0x80000, 4, (uint8*)&dataRead);
        MpuHalInit();
        if(dataRead != 0xfe)
        {
          MpuHal_TriggerPowerOnSequence();
        }

        McuMpuSyncTaskInit();
        DID_Init();
        // uint8 flag = BootM_GetFlag();
        FirmwareUpdate_UnlockMcuFlashAck();
        TBOX_PRINT("boot start  SecBoot: %d\n",SecureBootCurrentStatus);
        sys_cnt = 0;
    }

#ifdef TIME_TEST
    /* 测试时间接口准确度 */
#if 0
    static uint32_t lastTick = 0;
    uint32_t current_time = 0;
    (void)GetCounterValue(0, &current_time);
    uint32_t elapsed_time = current_time - lastTick;
    lastTick = current_time;
    static uint32_t ulastTick = 0;
    uint32_t ucurrent_time = OSTM_GetUs();
    uint32_t uelapsed_time = OSTM_GetElapsedUs(ulastTick);
    ulastTick = ucurrent_time;
    TBOX_PRINT("etime: %d ms, uetime: %d us\r\n", elapsed_time, uelapsed_time);
#endif
    /* 测试SM3摘要耗时 */
    uint8_t sm3Digest[32] = {0};
    uint32_t startAddress = 0x80600;
    uint32_t dataLength = g_pSignatureHeader.pModuleAddressInfo->length;
    TBOX_PRINT("dataLength: %ld\n", dataLength);
    VssSM3Calc((const uint8_t*)startAddress, dataLength, sm3Digest);
    int ret1 = memcmp(g_pSignatureHeader.pSuffix->MessageDigestNational, sm3Digest, 32);
    TBOX_PRINT("SM3 ret = %d\n", ret1);
    /* 测试SM2签名耗时 */
#if 0
    uint32_t sm2DataLength = sizeof(SignatureHeaderPrefixType) + 
                            ModuleAddressInfoSize + 
                            sizeof(g_pSignatureHeader.pSuffix->SignerInfoNational) + 
                            sizeof(g_pSignatureHeader.pSuffix->MessageDigestNational); // 210字节
    static uint8_t sm2VerifyData[300] = {0};
    uint32_t copyOffset = 0;
    memcpy(sm2VerifyData, g_pSignatureHeader.pPrefix, sizeof(SignatureHeaderPrefixType));
    copyOffset += sizeof(SignatureHeaderPrefixType);
    memcpy(sm2VerifyData + copyOffset, g_pSignatureHeader.pModuleAddressInfo, ModuleAddressInfoSize);
    copyOffset += ModuleAddressInfoSize;
    memcpy(sm2VerifyData + copyOffset, &g_pSignatureHeader.pSuffix->SignerInfoNational, 
            sizeof(g_pSignatureHeader.pSuffix->SignerInfoNational));
    copyOffset += sizeof(g_pSignatureHeader.pSuffix->SignerInfoNational);
    memcpy(sm2VerifyData + copyOffset, &g_pSignatureHeader.pSuffix->MessageDigestNational, 
            sizeof(g_pSignatureHeader.pSuffix->MessageDigestNational));
    /* 使用SM2验证签名 */
    uint32_t ret = VssSM2_Verify(sm2VerifyData, sm2DataLength, g_pSignatureHeader.pSuffix->SignatureNational, 64, VSS_OTA_SM2_KEY);
    TBOX_PRINT("SM2 verify ret: %d\n", ret);
#endif
#endif


    sys_cnt++;
    MpuHalCycleProcess(5);
    if (sys_cnt == 5) // 1s
    {
        MpuHalTxTask();
        // TBOX_PRINT("boot1 cycle %ds\n",run_time);
        sys_cnt = 0;
        run_time++;
    }

    CanTp_MainFunction();
    Dcm_TimerFunction();
    Dcm_MainFunction_Post();
    Dcm_MainFunction();
    MpuHalUartTimerCallback();
    McuMpuSyncTaskMain();
	task_cnt++;
	if(task_cnt == 100)
	{
		task_cnt = 0;
    	//TstCanSendMessage();
		
		//Can_MainFunction_Read();
  		//Can_MainFunction_Write();
  		//Can_MainFunction_BusOff();
  		//Can_MainFunction_Wakeup();
 	 	//Can_MainFunction_Mode();
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);    //100ms trigger一次
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
	// Adc_Isr(ADC_ZERO, ADC_ONE);
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
	// Adc_Isr(ADC_ONE, ADC_ONE);
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
    // static uint16 ret = 1;
    // Gpt_CbkNotification(GPT_TAUD0_CH09);
    // if (ret < 100)
    // {
    //     ret++;
    // }
    // else
    // {
    //     WDG_59_DRIVERA_TRIGGERFUNCTION_ISR();
    //     ret = 1;
    // }

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
    // r_riic0_transmit_interrupt();
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
    // r_riic0_error_interrupt();
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
    // r_riic0_receive_interrupt();
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
    // r_riic0_transmitend_interrupt();
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"


/* PRQA S 1532-- */ /* MISRA Rule 8.7 */
/*=======[E N D   O F   F I L E]==============================================*/
