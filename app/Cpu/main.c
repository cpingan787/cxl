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
#include "Adc.h"
#include "Dio.h"
#include "Dem.h"
#include "Fls.h"
#include "Fee.h"
#include "NvM.h"
#include "peripheralHal.h"
#include "r_port.h"

#define MPU_LEVEL_SHIFT_EN_PORT         Port9
#define MPU_LEVEL_SHIFT_EN_PIN          6U      /* LEVEL_SHIFT_EN */
#define MPU_LTE_PWR_EN_PORT             Port8
#define MPU_LTE_PWR_EN_PIN              12U     /* LTE_3V8_PWR_EN */
Adc_ValueGroupType Adc0_Group0_Buffer[16] = {0};
extern AdConvertBuffer_t g_adBuffer;

void main(void);
void IoHwAb_Adc_Notification_Group0()
{
    Adc_ReadGroup(AdcConf_AdcGroup_AdcGroup, Adc0_Group0_Buffer);
    for(uint8_t i = 0; i < 16; i++)
    {
        g_adBuffer.adValue[i] = Adc0_Group0_Buffer[i];
    }
    g_adBuffer.adValid = 1;
}

uint8 Gpt0Index = 0;
void Gpt_Notification_0 (void)
{
    Gpt0Index++;
    // TstCanSendMessage();
    TimerHalInterruptCallback();
}

uint8 Gpt2Index = 0;
void Gpt_Notification_1 (void)
{
    Gpt2Index++;
    // TstCanSendMessage();
}

uint8 Gpt3Index = 0;
void Gpt_Notification_2 (void)
{
	Gpt3Index++;
    //TstCanSendMessage();
}


void WVErrorNotification(uint8 WVErrId, uint8 ApiId)
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

void Gpt_WriteVerifyErrorCallback( Dem_EventIdType LddWVErrId, uint8 LucApiId)
{
    
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

    /* Get the wakeup source */
    APP_GetWakeupSource();

    /* Initialize the Port pins */
    Port_Init(PortConfigSet0);
    
    // R_PORT_SetGpioOutput(MPU_LTE_PWR_EN_PORT, MPU_LTE_PWR_EN_PIN, 1U);
    // R_PORT_SetGpioOutput(MPU_LEVEL_SHIFT_EN_PORT, MPU_LEVEL_SHIFT_EN_PIN, 1U);
    // R_PORT_SetGpioOutput(Port0, 11, 1U);
    // R_PORT_SetGpioOutput(Port0,9, 1U);

    Adc_Init(AdcConfigSet0);
    Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup, Adc0_Group0_Buffer);
    Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup);

    /* Wake up the CAN controller */
   	Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);

    Fls_Init(FlsConfigSet);
    Fee_Init(&Fee_ConfigData);
    NvM_Init(NULL_PTR);

    NvM_RequestResultType InitNvMReadAllStatus = NVM_REQ_PENDING;
    uint32 NVM_USE_InitTIME=0;
    NvM_ReadAll();

    do
     {
        NVM_USE_InitTIME++;
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_MainFunction();
        NvM_GetErrorStatus(0,&InitNvMReadAllStatus);
        if (NVM_USE_InitTIME == 5000)
            break;
     }while(InitNvMReadAllStatus == NVM_REQ_PENDING);

    /* Initialize the other modules, start the OS */
    EcuM_Init();
    while (1)
    {
    }
}
