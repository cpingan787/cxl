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


#define RPort_CanNMIndi_1                               1
#define COND_NM_NOALLOWED_SLEEP                         1
#define COND_NM_ALLOWED_SLEEP                           2

#define RPort_KL15_2                                    2
#define COND_KL15_OFF                                   1
#define COND_KL15_ON                                    2

#define RPort_AppInd_3                                  3
#define COND_APP_NOALLOWED_SLEEP                        1
#define COND_APP_ALLOWED_SLEEP                          2

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

void Act_Bsw_Allow_GoDown_Function(void);

void WakeupSource_Validated(void);

extern void BswM_WakeupSourcePending(void);
extern uint8 CAN_transceiver_OK;
#endif /* BSW_SOURCE_COMMONINCLUDE_BSWM_EXT_H_ */
