/*
 * BswM_Ext.c
 *
 *  Created on: 20260111
 *      Author: PTAH
 */
#include "BswM.h"
#include "BswM_Ext.h"
#include "EcuM_Cbk.h"
#include "EcuM_Externals.h"
#include "Can_GeneralTypes.h"
#include "Com.h"
#include "Dem.h"
#include "BswM_Ext.h"
#include "Dio.h"
#include "BswM_EcuM.h"
void Communication_ON(void)
{
    BswM_RequestMode(66u, GENERIC_COMCONTROL_ON);
}

void Communication_OFF(void)
{
    BswM_RequestMode(66u, GENERIC_COMCONTROL_OFF);
}

void BswM_CanTrcv_ModeShift(void)
{
	/*comment because the whole circle needs to keep Trcv normal,except going to sleep*/

	/*CanTrcv_SetOpMode(0, CANTRCV_TRCVMODE_NORMAL);*/
}

void BswM_AllowECU_Sleep(void)
{
	BswM_RequestMode(95u, GENERIC_ECU_SLEEP_ALLOWED);
}

void BswM_NotAllowECU_Sleep(void)
{
	BswM_RequestMode(95u, GENERIC_ECU_SLEEP_NOT_ALLOWED);
}


void WakeupSource_Disable(void)
{
	EcuM_DisableWakeupSources(EcuMWakeupSource_CAN);

}

void WakeupSource_Enable(void)
{
	EcuM_EnableWakeupSources(EcuMWakeupSource_CAN);
	/*CanTrcv_SetOpMode(0, CANTRCV_TRCVMODE_STANDBY);*/

}


void GenericSwitch_CanSmBusOff_NoCom_CanChannel_0(void)
{
     BswM_RequestMode(240u, GENERIC_CANSMBUSOFF_NO_COM);
}

void GenericSwitch_CanSmBusOff_BusOffSilent_CanChannel_0(void)
{

    BswM_RequestMode(240u, GENERIC_CANSMBUSOFF_BUSOFF_SILENT);
  
}
void GenericSwitch_CanSmBusOff_NoCom_Can3(void)
{
     BswM_RequestMode(241u, GENERIC_CANSMBUSOFF_NO_COM);
}


void GenericSwitch_CanSmBusOff_BusOffSilent_Can3(void)
{
    BswM_RequestMode(240u, GENERIC_CANSMBUSOFF_BUSOFF_SILENT);
}

void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN(void)
{
    EcuM_ClearWakeupEvent(EcuMWakeupSource_CAN);
    EcuM_ClearWakeupEvent(EcuMWakeupSource_Local);
}

void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_Local(void)
{
	EcuM_ClearWakeupEvent(EcuMWakeupSource_Local);
}

static boolean EcuMRunTrigFlag = FALSE;
void BswM_EcuM_RequestRun(void)
{
    if(TRUE != EcuMRunTrigFlag)
    {
    	EcuMRunTrigFlag = TRUE;
//        EcuM_RequestRUN(0u);
    }
}

void BswM_EcuM_ReleaseRun(void)
{
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6, STD_HIGH);
    if(FALSE != EcuMRunTrigFlag)
    {
    	EcuMRunTrigFlag = FALSE;
//        EcuM_ReleaseRUN(0u);
    }
}


void BswM_EcuM_RequestPostRun(void)
{
//	EcuM_RequestPOST_RUN(0u);

	BswM_AllowECU_Sleep();
}

void BswM_EcuM_ReleasePostRun(void)
{
//	EcuM_ReleasePOST_RUN(0u);
}

void ECUMode_Normal_Notification(void)
{

}
void ECUNet_Repeat_Req(void)
{

//    uint8 tmp_uint8_WriteData;
    /*uint8 * tmp_uint8_WriteDataRef = NULL_PTR;*/
//
//	CanNm_RepeatMessageRequest(0);
//
//    tmp_uint8_WriteData = RTE_MODE_ECU_NET_CONTROL_ECU_NETCONTROL_NONE;
//    Rte_IWrite_BswM_NetControl_Mainfunction_Pport_BswM_DataElement_SR_Ecu_Net_Repeat_Control(tmp_uint8_WriteData);
    /* Get Write address */
    /*tmp_uint8_WriteDataRef = Rte_IWriteRef_BswM_NetControl_Mainfunction_Pport_BswM_DataElement_SR_Ecu_Net_Repeat_Control();*/
}

void Act_Bsw_Allow_GoDown_Function(void)
{
    BswM_RequestMode(RPort_AppInd_3,COND_APP_ALLOWED_SLEEP);
}

void WakeupSource_Validated(void)
{
    BswM_EcuM_CurrentWakeup(EcuMWakeupSource_CAN,ECUM_WKSTATUS_EXPIRED);
}