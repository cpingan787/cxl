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
#include "Gpt.h"
#include "Port.h"
#include "Dio.h"
#include "Adc.h"
#include "Fls.h"
#include "Wdg_59_DriverA.h"
#include "Wdg_59_DriverA_PBTypes.h"
#include "Wdg_59_DriverB.h"
#include "Wdg_59_DriverB_PBTypes.h"
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
#include "Fee.h"
#include "Nvm.h"
#include "BswM_EcuM.h"
#include "CanNm.h"
#include "BswM_Ext.h"
#include "peripheralHal.h"

extern void Fls_test(void);

Adc_ValueGroupType Adc0_Group0_Buffer[16] = {0};
Adc_ValueGroupType Adc1_Group1_Buffer[8] = {0};
extern AdConvertBuffer_t g_adBuffer;

void main(void);

void IoHwAb_Adc_Notification_Group0()
{
    Adc_ReadGroup(AdcConf_AdcGroup_AdcGroup0, Adc0_Group0_Buffer);
    for(uint8_t i = 0; i < 16; i++)
    {
        g_adBuffer.adValue[i] = Adc0_Group0_Buffer[i];
        g_adBuffer.adValid = 1;
    }
}

void IoHwAb_Adc_Notification_Group1()
{
    Adc_ReadGroup(AdcConf_AdcGroup_AdcGroup1, Adc1_Group1_Buffer);
    for(uint8_t i = 0; i < 8; i++)
    {
        g_adBuffer.adValue[i+16] = Adc1_Group1_Buffer[i];
        g_adBuffer.adValid = 1;
    }
}

void IoHwAb_Adc_Notification_Group2()
{
}

void Gpt_WriteVerifyErrorCallback( Dem_EventIdType LddWVErrId, uint8 LucApiId)
{
    
}

void TstCanSendMessage(void);

uint8 Gpt0Index = 0;
void Gpt_Notification_0 (void)
{
    Gpt0Index++;
    // TstCanSendMessage();
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
uint8 gIOHwAbDI_CanRx_St = 0;
uint8 gIOHwAbDI_NAD_WAKEUP_MCU_St = 0;
uint8 gIOHwAbDI_CDS_St = 0;
uint8 gIOHwAbDI_ECALL_BUTTON_St = 0;
uint8 gIOHwAbDI_IMU_INT1_St = 0;
uint8 gIOHwAbDI_IMU_INT2_St = 0;
uint8 gIOHwAbDI_RTC_St = 0;

uint8 CAN_WK_FLG=0;
uint8 IGN_WK_FLG=0;
uint8 wkupsrc=0;
uint8 keepsrc=0;
void Power_Detect(void)
{
    // uint8 gIOHwAbDI_KL30_St = 0;
    // uint8 gIOHwAbDI_ACC_St = 0;
    // uint8 gIOHwAbDI_IG1_St = 0;

    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    gIOHwAbDI_KL30_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_KL30_Voltage_DET_INT_Pin0_9);
	gIOHwAbDI_ACC_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ACC_INT_Pin8_5);
	gIOHwAbDI_IG1_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8);

    gIOHwAbDI_CanRx_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CanRx_DET_INT_Pin0_2);
    gIOHwAbDI_NAD_WAKEUP_MCU_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_NAD_WAKEUP_MCU_Pin8_2);
    gIOHwAbDI_CDS_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CDS_STATE_Pin0_11);
    gIOHwAbDI_ECALL_BUTTON_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ECALL_BUTTON_DET_Pin9_5);
    gIOHwAbDI_IMU_INT1_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IMU_INT1_Pin8_1);
    gIOHwAbDI_IMU_INT2_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IMU_INT2_Pin8_3);
    gIOHwAbDI_RTC_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_RTC_INT_Pin0_6);
	
	//if((gIOHwAbDI_IG1_St == STD_HIGH) && (NmSleepMode == 1))
	if((gIOHwAbDI_IG1_St == STD_HIGH))
    {
        BswM_RequestMode(RPort_KL15_2,COND_KL15_OFF);

        CanNm_GetState(0,&nmStatePtr,&nmModePtr);
        if(NM_STATE_BUS_SLEEP == nmStatePtr )
        {
            BswM_RequestMode(RPort_CanNMIndi_1,COND_NM_ALLOWED_SLEEP);
            Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_HIGH);
        }
        else
        {
            if((CAN_WK_FLG==0)&&(IGN_WK_FLG==0))
            {
                BswM_EcuM_CurrentWakeup(EcuMWakeupSource_CAN,ECUM_WKSTATUS_VALIDATED);
                wkupsrc=2;
                Com_SendSignal(IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,&wkupsrc);
                CAN_WK_FLG=1;
            }
            keepsrc=2;
            Com_SendSignal(IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,&keepsrc);
        }
	}
	else
	{
        BswM_RequestMode(RPort_KL15_2,COND_KL15_ON);
        if((IGN_WK_FLG==0)&&(CAN_WK_FLG==0))
        {
        wkupsrc=1;
        Com_SendSignal(IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,&wkupsrc);
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);
        IGN_WK_FLG=1;
        }
        CanNm_GetState(0,&nmStatePtr,&nmModePtr);
        if((nmStatePtr!=NM_STATE_BUS_SLEEP))
        {
            keepsrc=3;
            Com_SendSignal(IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,&keepsrc);
        }else
        {
            keepsrc=1;
            Com_SendSignal(IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,&keepsrc);  
        }
		// Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);
		// ComM_RequestComMode(0,COMM_FULL_COMMUNICATION);/**go to sleep*/
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
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7, STD_HIGH);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3, STD_HIGH);
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CALL_BUTTON_PWR_EN_Pin1_0, STD_HIGH);

    Adc_Init(AdcConfigSet0);
    Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup0, Adc0_Group0_Buffer);
    Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup1, Adc1_Group1_Buffer);
    Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup0);
    Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup1); 

    // Mcu_SetMode(McuConf_McuModeSettingConf_McuModeSettingConf0);
    // Mcu_SequencerInit(McuConf_McuLowPowerSequencer_McuLowPowerSequencer0);
	
	Gpt_Init(GptChannelConfigSet0);  

    Fls_Init(FlsConfigSet);
   // Fls_test();

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
