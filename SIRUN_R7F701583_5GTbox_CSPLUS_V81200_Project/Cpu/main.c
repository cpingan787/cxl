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
#include "CanIf.h"
#include "Std_Types.h"

#include "Com.h"
#include "CanIf.h"
#include "CanSM.h"
#include "PduR.h"
#include "ComM.h"
#include "ComM_BswM.h"
#include "EcuM.h"
#include "ComM.h"

#include "peripheralHal.h"

extern AdConvertBuffer_t g_adBuffer[];
Adc_ValueGroupType Adc0_Group0_Buffer[16] = {0};
Adc_ValueGroupType Adc1_Group1_Buffer[8] = {0};

void main(void);

void IoHwAb_Adc_Notification_Group0()
{
    Adc_ReadGroup(AdcConf_AdcGroup_AdcGroup0, Adc0_Group0_Buffer);
    g_adBuffer[AD_CHANNEL_KL30].adValue = Adc0_Group0_Buffer[13];
}

void IoHwAb_Adc_Notification_Group1()
{
    Adc_ReadGroup(AdcConf_AdcGroup_AdcGroup1, Adc1_Group1_Buffer);
}

void IoHwAb_Adc_Notification_Group2()
{
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

uint8 NmSleepMode = 0;
uint8 gIOHwAbDI_KL30_St = 0;
uint8 gIOHwAbDI_ACC_St = 0;
uint8 gIOHwAbDI_IG1_St = 0;
void Power_Detect(void)
{
    // uint8 gIOHwAbDI_KL30_St = 0;
    // uint8 gIOHwAbDI_ACC_St = 0;
    // uint8 gIOHwAbDI_IG1_St = 0;

    gIOHwAbDI_KL30_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_KL30_Voltage_DET_INT_Pin0_9);
	gIOHwAbDI_ACC_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ACC_INT_Pin8_5);
	gIOHwAbDI_IG1_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8);
	
	//if((gIOHwAbDI_IG1_St == STD_HIGH) && (NmSleepMode == 1))
	if((gIOHwAbDI_IG1_St == STD_HIGH))
    	{
		//Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_HIGH);
		ComM_RequestComMode(0,COMM_NO_COMMUNICATION);/**go to sleep*/
		//Nm_NetworkRelease(0);
	}
	else
	{
		Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);
		ComM_RequestComMode(0,COMM_FULL_COMMUNICATION);/**go to sleep*/
	}
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

    /* Initialize the Port pins */
    Port_Init(PortConfigSet0);

    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_KL30_Voltage_DET_EN_Pin0_12, STD_HIGH);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6, STD_HIGH);

    Adc_Init(AdcConfigSet0);
    Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup0, Adc0_Group0_Buffer);
    Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup1, Adc1_Group1_Buffer);
    Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup0);
    Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup1);    

    EcuM_Init();
    /* Initialize CAN Driver */
    // Can_Init(CanConfigSet0);
	// Can_SetControllerMode(CanConf_CanController_CanController, CAN_T_START);
    // /* Initialize BSW Modue */

    // CanIf_Init(&CanIf_InitCfgSet);
    // CanSM_Init(&CanSM_Config);

    // PduR_Init(&PduR_PBConfigData);
    // Com_Init(&Com_PBConfigData);

    // ComM_Init(&ComM_Config);

    // Com_IpduGroupVector IPDUGroupVector;
    // Com_SetIpduGroup(IPDUGroupVector,0,TRUE);
    // Com_SetIpduGroup(IPDUGroupVector,1,TRUE);

    // ComM_RequestComMode(ComMUser_0, COMM_FULL_COMMUNICATION);

    // ComM_CommunicationAllowed(ComMUser_0,TRUE);

    // CanIf_SetControllerMode(CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM, CANIF_CS_STARTED);
    // CanIf_SetPduMode(CANIF_CANDRV_0_CANIF_CONTROLLER_0_IAM, CANIF_ONLINE);

    // Com_IpduGroupControl(Com_RxPduGroup_CONTROLLER_0_IAM,TRUE);
    // Com_IpduGroupControl(Com_TxPduGroup_CONTROLLER_0_IAM,TRUE);

//	TstCanSendMessage();
	
//	Can_MainFunction_Write();

    //StartOS(OSDEFAULTAPPMODE);
    while (1)
    {
    }
}
