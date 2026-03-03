/*
 * BswM_Ext.c
 *
 *  Created on: 20260111
 *      Author: PTAH
 */
#ifndef BSWM_EXT_H_
#define BSWM_EXT_H_

#define GENERIC_CANSMBUSOFF_NO_COM 						0
#define GENERIC_CANSMBUSOFF_BUSOFF_SILENT				1

#define GENERIC_COMCONTROL_ON      				        1
#define GENERIC_COMCONTROL_OFF              			0

#define GENERIC_ECU_SLEEP_ALLOWED 			            1
#define GENERIC_ECU_SLEEP_NOT_ALLOWED               	0


extern uint8 EcuShutdownFlag;

void Communication_ON(void);

void Communication_OFF(void);

void BswM_AllowECU_Sleep(void);
void BswM_NotAllowECU_Sleep(void);

void BswM_CanTrcv_ModeShift(void);
void WakeupSource_Disable(void);
void WakeupSource_Enable(void);

void GenericSwitch_CanSmBusOff_NoCom_CanChannel_0(void);

void GenericSwitch_CanSmBusOff_BusOffSilent_CanChannel_0(void);


void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN(void);
void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_Local(void);

void BSW_User_Shutdown(void);

void BswM_EcuM_RequestRun(void);

void BswM_EcuM_ReleaseRun(void);

void BswM_EcuM_RequestPostRun(void);

void BswM_EcuM_ReleasePostRun(void);

void ECUMode_Normal_Notification(void);

void ECUNet_Repeat_Req(void);
#endif /* BSW_SOURCE_COMMONINCLUDE_BSWM_EXT_H_ */
