/**********************************************************************************************************************
 * DISCLAIMER
 * This software is supplied by Renesas Electronics Corporation and is only intended for use with Renesas products. No
 * other uses are authorized. This software is owned by Renesas Electronics Corporation and is protected under all
 * applicable laws, including copyright laws.
 * THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIES REGARDING
 * THIS SOFTWARE, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED. TO THE MAXIMUM
 * EXTENT PERMITTED NOT PROHIBITED BY LAW, NEITHER RENESAS ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES
 * SHALL BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR ANY REASON RELATED TO
 * THIS SOFTWARE, EVEN IF RENESAS OR ITS AFFILIATES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
 * Renesas reserves the right, without notice, to make changes to this software and to discontinue the availability of
 * this software. By using this software, you agree to the additional terms and conditions found by accessing the
 * following link:
 * http://www.renesas.com/disclaimer
 *
 * Copyright (C) 2020, 2021 Renesas Electronics Corporation. All rights reserved.
 *********************************************************************************************************************/
/***********************************************************************/
/*                                                                     */
/*  FILE        :Main.c                                                */
/*  DATE        :Wed, Sep 08, 2021                                     */
/*  DESCRIPTION :Main Program                                          */
/*  CPU TYPE    :                                                      */
/*                                                                     */
/*  NOTE:THIS IS A TYPICAL EXAMPLE.                                    */
/*                                                                     */
/***********************************************************************/
#include "Os.h"
#include "Mcu.h"
#include "Port.h"
#include "Dio.h"
#include "Adc.h"
#include "Can.h"
#include "Fls.h"
#include "MemIf_Types.h"
#include "CanIf.h"
#include "Std_Types.h"
#include "SecureBoot.h"
#include "Wdg_59_DriverB.h"

uint8 ReadAppBuffer[32] = {0};
uint8 WriteAppBuffer[32] = {0};

extern void FLc_Test(void);

void main(void);

void IoHwAb_Adc_Notification_Group0()
{
}

void IoHwAb_Adc_Notification_Group1()
{
}

void IoHwAb_Adc_Notification_Group2()
{
}

void Gpt_WriteVerifyErrorCallback( Dem_EventIdType LddWVErrId, uint8 LucApiId)
{
}
void Gpt_Notification_0 (void)
{
}
void Gpt_Notification_1 (void)
{
}
void Gpt_Notification_2 (void)
{
}

void JobOkNotification(void)
{

}
void JobErrorNotification(void)
{

}
void EccSedNotification(uint32 ErrAddress)
{

}
void EccDedNotification(uint32 ErrAddress)
{

}

Std_ReturnType FlsLoopCount = 0;
void Fls_test(void)
{
    Std_ReturnType GenReturnValue;
    

    for(FlsLoopCount = 0; FlsLoopCount < 8; FlsLoopCount++)
    {
        WriteAppBuffer[FlsLoopCount] = (0x55+FlsLoopCount);
    }

    /**************************/
    /* Request Read Operation */
    /**************************/
    /* Read 512B from address 0x4000 */
    GenReturnValue = Fls_Read(0x00, (uint8 *)&ReadAppBuffer[0], 0x10);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
        Fls_MainFunction();
        FlsLoopCount ++;
    }

    /***************************/
    /* Request Erase Operation */
    /***************************/
    /* Erase 1KB Data Flash starting from address 0x4000 */    
    GenReturnValue = Fls_Erase(0x00, 0x0400);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
        Fls_MainFunction();
        FlsLoopCount++;
    }

    /***************************/
    /* Request Write Operation */
    /***************************/
    /* Write 512B to address 0x4000 */	
    GenReturnValue = Fls_Write(0x00, (const uint8 *)&WriteAppBuffer[0], 0x10);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
      Fls_MainFunction();
       FlsLoopCount++;
    }

    /**************************/
    /* Request Read Operation */
    /**************************/
    /* Read 512B from address 0x4000 */
    GenReturnValue = Fls_Read(0x00, (uint8 *)&ReadAppBuffer[0], 0x10);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
        Fls_MainFunction();
        FlsLoopCount ++;
    }

}

void TstCanSendMessage(void)
{
    Can_PduType tPduInfo;
    uint8       aData[12] = { 0x01U, 0x02U, 0x05U, 0x04U, 0x03U, 0x32U, 0x07U, 0x76U , 0x09, 0x10,0x11,0x12};
    tPduInfo.swPduHandle = 0U;
    tPduInfo.length      = 12U;
    tPduInfo.sdu         = aData;
    tPduInfo.id          = 0x40000000 | 0x100U;

    Std_ReturnType tRet = Can_Write(CanConf_CanHardwareObject_CanHardwareObject_Tx0, &tPduInfo);
}

void TstCanSendMessageRx(void)
{
    Can_PduType tPduInfo;
    uint8       aData[12] = { 0x22U, 0x22U, 0x22U, 0x04U, 0x03U, 0x32U, 0x07U, 0x76U , 0x09, 0x10,0x11,0x12};
    tPduInfo.swPduHandle = 0U;
    tPduInfo.length      = 12U;
    tPduInfo.sdu         = aData;
    tPduInfo.id          = 0x40000000 | 0x201U;

    Std_ReturnType tRet = Can_Write(CanConf_CanHardwareObject_CanHardwareObject_Tx1, &tPduInfo);
}
uint8_t TstSendRestartCanMsg(void)
{
    Can_PduType tPduInfo;
    uint8 aData[16] = {0}; 
    aData[4] = 0x01U;
    tPduInfo.swPduHandle = 0U;
    tPduInfo.length      = 16U;
    tPduInfo.id          = 0x40000000 | 0x59U;
    tPduInfo.sdu         = aData;

    Std_ReturnType tRet = Can_Write(CanConf_CanHardwareObject_CanHardwareObject_Tx1, &tPduInfo);
    return tRet;
}

void main(void)
{
    Std_ReturnType GenReturnValue;
    
    /* Initialise MCU Driver */
    Mcu_Init(McuModuleConfiguration0);
    /* Set the CPU Clock to the PLL */
    GenReturnValue = Mcu_InitClock(McuConf_McuClockSettingConfig_McuClockSettingConfig0);
    /* Wait until the PLL is locked */
    while (Mcu_GetPllStatus() != MCU_PLL_LOCKED);
    /* Activate the PLL Clock */
    Mcu_DistributePllClock();

    StartOS(OSDEFAULTAPPMODE);
    while (1)
    {
    }
}
