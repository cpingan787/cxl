/**
 * Copyright (C) 2008-2025 isoft Infrastructure Software Co., Ltd.
 * SPDX-License-Identifier: LGPL-2.1-only-with-exception
 *
 * This library is free software; you can redistribute it and/or modify it under the terms of the
 * GNU Lesser General Public License as published by the Free Software Foundation; version 2.1.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License along with this library;
 * if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 * or see <https://www.gnu.org/licenses/>.
 */

/*******************************************************************************
 **                        Revision Control History                           **
******************************************************************************/

/*******************************************************************************
 **                        Version Information                                **
******************************************************************************/

/*******************************************************************************
 **                        Include Section                                    **
******************************************************************************/
#include "Os.h"
#include "PowManager.h"
#include "Dio.h"
#include "BswM.h"
#include "BswM_Swc.h"
#include "NM.h"
#include "Dem.h"
#include "EcuM_Externals.h"

#include "powerManageSdk.h"

#define APP_UDSED

/*******************************************************************************
 **                        Global Variables                                    **
******************************************************************************/
uint8 APP_WakeupHold = 	TRUE;
uint8 APP_WakeupNotified = FALSE;
uint16 APP_WakeupHoldCnt = 	1000;
Mcu_WakeSourceType Mcu_WakeSource = {
	.Can_WakeFlag = FALSE,
	.KL30_WakeFlag = FALSE,
	.NAD_WakeFlag = FALSE,
	.Crash_WakeFlag = FALSE,
	.Ecall_WakeFlag = FALSE,
	.Imu_Int1_WakeFlag = FALSE,
	.Imu_Int2_WakeFlag = FALSE,
	.Rtc_WakeFlag = FALSE,
};
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

// uint8 CAN_WK_FLG=0;
// uint8 IGN_WK_FLG=0;
// uint8 wkupsrc=0;
// uint8 keepsrc=0;
// extern uint8 SLEEP_WAKE;
extern uint8 validNmMsgFlag;
// uint8 NMCount=0;
// extern uint32 delay_count;
 uint8 CAN_STATUS=9;

Icu_ValueType CrashTimeElapsed;

/*******************************************************************************
 **                        Private Function                                    **
******************************************************************************/
 /*******************************************************************************
*Function-Name        void Power_Init(void)
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Rte_ModeType_EcuM_Mode
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
uint8 Power_WakeUpSrcIsValid(void)
{
	uint8  WakeUpSrc = FALSE ;
    if( //Mcu_WakeSource.KL30_WakeFlag || 
		//Mcu_WakeSource.NAD_WakeFlag ||
		Mcu_WakeSource.Crash_WakeFlag ||
		Mcu_WakeSource.Ecall_WakeFlag ||
		//Mcu_WakeSource.Imu_Int1_WakeFlag ||
		//Mcu_WakeSource.Imu_Int2_WakeFlag ||
		//Mcu_WakeSource.Rtc_WakeFlag||
		Mcu_WakeSource.Can_WakeFlag)
		{
			WakeUpSrc = TRUE ;
		}
		else
		{
			WakeUpSrc = FALSE ;
		}

		return WakeUpSrc;
}

/*******************************************************************************
 **                        Global Function                                    **
******************************************************************************/
/*******************************************************************************
*Function-Name        Rte_Switch_EcuM_CurrentMode_currentMode
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Std_ReturnType
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
EcuM_WakeupSourceType Mcu_CheckWakeSource(void)
{
	EcuM_WakeupSourceType WK_Type = 0;

	/* CAN_RX为低电平时，触发唤醒 */
	if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CanRx_DET_INT_Pin0_2) == STD_LOW)
		Mcu_WakeSource.Can_WakeFlag = TRUE;
	else
		Mcu_WakeSource.Can_WakeFlag = FALSE;

	/* KL30 断开时为高，触发唤醒*/
	// if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8) == STD_HIGH)
	// 	Mcu_WakeSource.KL30_WakeFlag = TRUE;
	// else
	// 	Mcu_WakeSource.KL30_WakeFlag = FALSE;

	/* NAD_WAKEUP_MCU休眠前为低，高电平唤醒 */
	if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_NAD_WAKEUP_MCU_Pin8_2) == STD_LOW)
		Mcu_WakeSource.NAD_WakeFlag = TRUE;
	else
		Mcu_WakeSource.NAD_WakeFlag = FALSE;

	/* Crash正常为低，高电平唤醒 */
	// if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CDS_STATE_Pin0_11) == STD_HIGH)
	// 	Mcu_WakeSource.Crash_WakeFlag = TRUE;
	// else
	// 	Mcu_WakeSource.Crash_WakeFlag = FALSE;

	/* ECALL_BUTTON正常为低，高电平唤醒 */
	if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ECALL_BUTTON_DET_Pin9_5) == STD_HIGH)
	{
		Mcu_WakeSource.Ecall_WakeFlag = TRUE;
	}
	else
	{
		Mcu_WakeSource.Ecall_WakeFlag = FALSE;
	}
	/* IMU_INT1正常为高，低电平唤醒 */
	if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IMU_INT1_Pin8_1) == STD_LOW)
		Mcu_WakeSource.Imu_Int1_WakeFlag = TRUE;
	else
		Mcu_WakeSource.Imu_Int1_WakeFlag = FALSE;

	/* IMU_INT2正常为高，低电平唤醒 */
	if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IMU_INT2_Pin8_3) == STD_LOW)
		Mcu_WakeSource.Imu_Int2_WakeFlag = TRUE;
	else
		Mcu_WakeSource.Imu_Int2_WakeFlag = FALSE;

	/* RTC_INT正常为高，低电平唤醒 */
	if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_RTC_INT_Pin0_6) == STD_LOW)
		Mcu_WakeSource.Rtc_WakeFlag = TRUE;
	else
		Mcu_WakeSource.Rtc_WakeFlag = FALSE;



	if(Power_WakeUpSrcIsValid() == TRUE)
	{
		if(Mcu_WakeSource.Can_WakeFlag == TRUE)
		{
			WK_Type |= EcuMWakeupSource_CAN; 
			EcuM_SetWakeupEvent(EcuMWakeupSource_CAN);
		}
		else
		{
			WK_Type |= EcuMWakeupSource_Local;
			EcuM_SetWakeupEvent(EcuMWakeupSource_Local);
		}

		BswM_RequestMode(RPort_AppInd_3,COND_APP_NOALLOWED_SLEEP);
	}
	else
	{

	}

	return WK_Type;
}
/*******************************************************************************
*Function-Name        Icu_Edge_Detect_Crash
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Std_ReturnType
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void Icu_Edge_Detect_Crash (void)
{
    Mcu_WakeSource.Crash_WakeFlag = TRUE;
    Icu_CheckWakeup(EcuMWakeupSource_Local);
}

void Icu_Edge_Detect_KL30 (void)
{
	Mcu_WakeSource.KL30_WakeFlag = TRUE;
    Icu_CheckWakeup(EcuMWakeupSource_Local);
}

void Icu_Edge_Detect_NAD (void)
{
    Mcu_WakeSource.NAD_WakeFlag = TRUE;
    Icu_CheckWakeup(EcuMWakeupSource_Local);
}

void Icu_Edge_Detect_EcallBtn (void)
{
    Mcu_WakeSource.Ecall_WakeFlag = TRUE;
    Icu_CheckWakeup(EcuMWakeupSource_Local);
}

void Icu_Edge_Detect_Imu_Int1 (void)
{
    Mcu_WakeSource.Imu_Int1_WakeFlag = TRUE;
    Icu_CheckWakeup(EcuMWakeupSource_Local);
}

void Icu_Edge_Detect_Imu_int2 (void)
{
    Mcu_WakeSource.Imu_Int2_WakeFlag = TRUE;
    Icu_CheckWakeup(EcuMWakeupSource_Local);
}

void Icu_Edge_Detect_Rtc_Int (void)
{
    Mcu_WakeSource.Rtc_WakeFlag = TRUE;
    Icu_CheckWakeup(EcuMWakeupSource_Time);
}

/*******************************************************************************
*Function-Name        void Power_Init(void)
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Rte_ModeType_EcuM_Mode
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void Power_Init(void)
{
    APP_WakeupHold = 	TRUE;
	APP_WakeupHoldCnt = 	1000;
	APP_WakeupNotified = FALSE;
	NmSleepMode = 0;
	gIOHwAbDI_KL30_St = 0;
	gIOHwAbDI_CanRx_St = 0;
	gIOHwAbDI_NAD_WAKEUP_MCU_St = 0;
	gIOHwAbDI_CDS_St = 0;
	gIOHwAbDI_ECALL_BUTTON_St = 0;
	gIOHwAbDI_IMU_INT1_St = 0;
	gIOHwAbDI_IMU_INT2_St = 0;
	gIOHwAbDI_RTC_St = 0;

	CAN_STATUS=9;
	validNmMsgFlag = 0;
	Mcu_WakeSource.Can_WakeFlag = FALSE;
	Mcu_WakeSource.KL30_WakeFlag = FALSE;
	Mcu_WakeSource.NAD_WakeFlag = FALSE;
	Mcu_WakeSource.Crash_WakeFlag = FALSE;
	Mcu_WakeSource.Ecall_WakeFlag = FALSE;
	Mcu_WakeSource.Imu_Int1_WakeFlag = FALSE;
	Mcu_WakeSource.Imu_Int2_WakeFlag = FALSE;
	Mcu_WakeSource.Rtc_WakeFlag = FALSE;
}
/*******************************************************************************
*Function-Name        void Power_Detect(void)
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Rte_ModeType_EcuM_Mode
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void Power_Detect(void)
{
    Nm_StateType nmStatePtr = 0;
    Nm_ModeType nmModePtr = 0;

    // gIOHwAbDI_KL30_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_KL30_Voltage_DET_INT_Pin0_9);
	// gIOHwAbDI_ACC_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ACC_INT_Pin8_5);
	// gIOHwAbDI_IG1_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8);
    gIOHwAbDI_KL30_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8);

    gIOHwAbDI_CanRx_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CanRx_DET_INT_Pin0_2);
    gIOHwAbDI_NAD_WAKEUP_MCU_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_NAD_WAKEUP_MCU_Pin8_2);
    gIOHwAbDI_CDS_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_CDS_STATE_Pin0_11);
    gIOHwAbDI_ECALL_BUTTON_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ECALL_BUTTON_DET_Pin9_5);
    gIOHwAbDI_IMU_INT1_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IMU_INT1_Pin8_1);
    gIOHwAbDI_IMU_INT2_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IMU_INT2_Pin8_3);
    gIOHwAbDI_RTC_St = Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_RTC_INT_Pin0_6);

	CanNm_GetState(0,&nmStatePtr,&nmModePtr);
	CAN_STATUS = BswM_GetEcuMWakeSrcStatus(0);

    /**When the CANNM module enters the bussleep state, it shall notify the BSWM**/
	if(NM_STATE_BUS_SLEEP == nmStatePtr )
	{
		if((APP_GetWakeupHold() == TRUE) && (APP_WakeupNotified == FALSE))/**Check Wakeup dealy 2s */
		{
			Mcu_CheckWakeSource();  /*During the wake-up hold phase, it is required to check whether there is a new wake-up source.*/
		}
		else
		{

		}

		if((APP_GetWakeupHold() == FALSE))
		{
			User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN();
			BswM_RequestMode(RPort_CanNMIndi_1,COND_NM_ALLOWED_SLEEP);
		}
		else
		{

		}
	}
	else
	{

	}

#ifndef APP_UDSED  /**for No APP test*/ 
	/* The application layer controls sleep and wake-up based on the actual power management status.*
	 * This is an example of determining whether to enter sleep mode based on the presence of a local wake-up source. *
	 */
    if((gIOHwAbDI_ECALL_BUTTON_St == STD_HIGH)||(CrashTimeElapsed > 1))
    {
        /* code */
        APP_RequestNetWork();

    }
    else 
    {
        APP_ReleaseNetWork();
    }

	/**for wakeup hold delay**/
	if(APP_GetWakeupHold() == TRUE) 
	{
		if((APP_WakeupHoldCnt--) == 0)
		{
			APP_ClearWakeupHold() ;	/**Wakeup dealy 2s */
		}
		else
		{
			
		}
	}
#endif
}
/*******************************************************************************
*Function-Name        APP_RequestNetWork
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Rte_ModeType_EcuM_Mode
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void APP_RequestNetWork(void)
{	
	BswM_RequestMode(RPort_KL15_2,COND_KL15_ON);
}
/*******************************************************************************
*Function-Name        APP_ReleaseNetWork
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Rte_ModeType_EcuM_Mode
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void APP_ReleaseNetWork(void)
{
	if(APP_GetWakeupHold() == FALSE)
	{
		BswM_RequestMode(RPort_KL15_2,COND_KL15_OFF);
	}
	else
	{

	}
}
/*******************************************************************************
*Function-Name        void APP_AllowedGodown(void)
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               void APP_AllowedGodown(void)
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void APP_AllowedGodown(void)
{   
	validNmMsgFlag = FALSE;
	Power_Init();
	EcuM_OnGoOffOne();
	Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_HIGH);
    BswM_RequestMode(RPort_AppInd_3,COND_APP_ALLOWED_SLEEP);
	BswM_RequestMode(RPort_KL15_2,0); /**clear */       
    BswM_RequestMode(RPort_CanNMIndi_1,0);/**clear */  
	BswM_RequestMode(RPort_AppInd_3,0); /**clear */  
	Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_LOW);
	Dem_PreInit();
	Dem_Init(&DemPbCfg);
	
}
/*******************************************************************************
*Function-Name        WakeupHold
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               Rte_ModeType_EcuM_Mode
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void APP_SetWakeupHold(void)  
{
	APP_WakeupHold = TRUE;
}
void  APP_ClearWakeupHold(void)
{
	APP_WakeupHold = FALSE;
}

uint8  APP_GetWakeupHold(void)
{
	return APP_WakeupHold;
}

#ifndef APP_UDSED  /**for No APP test*/ 
/*******************************************************************************
*Function-Name        APP_SetWakeupSource
*Service ID           <None>
*Sync/Async           <Synchronous>
*Reentrancy           <Non Reentrant>
*param-Name[in]       <None>
*Param-Name[out]      <None>
*Param-Name[in/out]   <None>
*return               APP_SetWakeupSource
*PreCondition         <None>
*CallByAPI            <None>
******************************************************************************/
void APP_SetWakeupSource(uint8 WakeupSrc)
{
	PowerManageSdkSetWakeupSource(WakeupSrc);
}
void APP_GotoSleep(void)
{
    /***for APP Close the 5G*/

	/***for APP Close the 5G*/
	APP_AllowedGodown();/***After APP Close the 5G invoke this*/
}
#endif
