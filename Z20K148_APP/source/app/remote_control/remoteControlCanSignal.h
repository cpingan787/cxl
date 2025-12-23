#ifndef _REMOTE_CONTROL_CAN_SIGNAL_H_
#define _REMOTE_CONTROL_CAN_SIGNAL_H_
#include "remoteControl.h"
typedef struct
{
    uint8_t BCM_RemoteControlSt;   
    uint8_t EMS_EngSt;  
    uint8_t EBS_SOC;   
    uint8_t BCS_VehSpd; 
    uint8_t BCS_VehSpdVD;        
    //PEPS
    uint8_t PEPS_TELMode;
    uint8_t PEPS_FeedbackToTBOX;
    uint8_t PEPS_TeleAuthentSt;
    uint8_t PEPS_RemoteControlSt;
    uint8_t PEPS_Crankallow;
    uint8_t PEPS_EngForbidSt;
    uint8_t PEPS_TEL_ChallengeCode0;
    uint8_t PEPS_TEL_ChallengeCode1;
    uint8_t PEPS_TEL_ChallengeCode2;
    uint8_t PEPS_TEL_ChallengeCode3;
    uint8_t PEPS_TEL_ChallengeCode4;
    uint8_t PEPS_TEL_ChallengeCode5;
    uint8_t PEPS_TEL_ChallengeCode6;
    uint8_t PEPS_TEL_ChallengeCode7;
    //HVAC
    uint8_t HVACF_TelematicsSt;
    uint8_t HVACF_WindExitSpd;
    uint8_t HVACF_WindExitMode;
    uint8_t HVACF_RearDefrostSt;
    uint8_t HVACF_DriverTempSelect;
    uint8_t HVACF_AirCirculationSt;
    uint8_t HVACF_ACSt;
    uint8_t HVACF_AutoSt;
    uint8_t HVACF_IonMode;
    uint8_t HVACF_TempSelectAuto;
    //BCM
    uint8_t BCM_TEL_IMMOCode0;
    uint8_t BCM_TEL_IMMOCode1;
    uint8_t BCM_TEL_IMMOCode2;
    uint8_t BCM_TEL_IMMOCode3;
    uint8_t BCM_TEL_IMMOCode4;
    uint8_t BCM_TEL_IMMOCode5;
    uint8_t BCM_TEL_IMMOCode6;
    uint8_t BCM_TEL_IMMOCodeSt;
    uint8_t BCM_ATWS_St;
    uint8_t BCM_KeySt;
    uint8_t BCM_DriverDoorAjarSt;
    uint8_t BCM_PsngrDoorAjarSt;
    uint8_t BCM_RLDoorAjarSt;
    uint8_t BCM_RRDoorAjarSt;
    uint8_t BCM_BonnetAjarSt;
    uint8_t BCM_TrunkAjarSt;
    uint8_t BCM_DriverDoorLockSt;
    uint8_t BCM_PsngrDoorLockSt;
    uint8_t BCM_LowBeamSt;
    uint8_t BCM_HornSt;
    uint8_t BCM_HazardLampSt;
    uint8_t BCM_TEL_HazLampCtrlSt;
    uint8_t BCM_SunRoofPstSt;
    uint8_t BCM_LeftTurnLampSt;
    uint8_t BCM_ParkingLampSt;
    uint8_t BCM_RLSWarning_Rain;
    //FLDCM
    uint8_t FLDCM_FLWinSt;
    uint8_t FLDCM_RLWinSt;
    uint8_t FRDCM_FRWinSt;
    uint8_t FRDCM_RRWinSt;
    uint8_t FLDCM_FLWinVentilateModeSt;
    uint8_t FLDCM_RLWinVentilateModeSt;
    uint8_t FRDCM_FRWinVentilateModeSt;
    uint8_t FRDCM_RRWinVentilateModeSt;
    //HVSM
    uint8_t HVSM_FLHeatingActLevel;
    uint8_t HVSM_FRHeatingActLevel;
    uint8_t HVSM_FLVentilatingActLevel;
    uint8_t HVSM_FRVentilatingActLevel;
    uint8_t HVSMR_RLHeatingActLevel;
    uint8_t HVSMR_RRHeatingActLevel;
    uint8_t HVSMR_RLVentilatingActLevel;
    uint8_t HVSMR_RRVentilatingActLevel;
    //PLGM
    uint8_t PLGM_ModeSW;
    uint8_t PLGM_DoorSt;
    uint8_t PLGM_RemoteControlSt;
}RemoteControlStatusSignalInfo_t;

typedef enum
{
    REMOTE_CONTROL_TEL_IMMOCode1_E          = 0x04F,
    REMOTE_CONTROL_TEL_IMMOCode2_E          = 0x04E,
    REMOTE_CONTROL_TEL_RemoteControlReq_1_E = 0x047,
    REMOTE_CONTROL_TEL_HVSM_1_E             = 0x05B,
    REMOTE_CONTROL_TEL_16_B_T_E             = 0x077,
    REMOTE_CONTROL_TEL_HVACF_1_E            = 0x05C,
    REMOTE_CONTROL_TEL_MSM_1_T_E            = 0x05A, 
}RemoteControlReqCanId_t;

typedef enum
{
    TEL_IMMOCode1,
    TEL_IMMOCode2,
    TEL_UnlockDoorReq,
    TEL_UnlockDoorReqVD,
    TEL_LockDoorReq,
    TEL_LockDoorReqVD,
    TEL_LowBeamLightOnReq,
    TEL_LowBeamLightOnReqVD,
    TEL_LowBeamLightOffReq,
    TEL_LowBeamLightOffReqVD,
    TEL_HornReq,
    TEL_HornReqVD,
    TEL_SeatHeatReq,
    TEL_SeatHeatReqVD,
    TEL_WindowsCloseReq,
    TEL_WindowsCloseReqVD,
    TEL_WindowsOpenReq,
    TEL_WindowsOpenReqVD,
    TEL_ParkingLampOnReq,
    TEL_ParkingLampOnReqVD,
    TEL_ParkingLampOffReq,
    TEL_ParkingLampOffReqVD,
    TEL_HazardLightOnReq,
    TEL_HazardLightOnReqVD,
    TEL_SunRoofOpenReq,
    TEL_SunRoofOpenReqVD,
    TEL_SunRoofCloseReq,
    TEL_SunRoofCloseReqVD,
    TEL_EngineStartReq,
    TEL_EngineStartReqVD,
    TEL_EngineStopReq,
    TEL_EngineStopReqVD,
    TEL_VoiceInput,
    TEL_VoiceInputVD,
    TEL_TrunkUnlockReq,
    TEL_TrunkUnlockReqVD,
    TEL_VehSearchReq,
    TEL_VehSearchReqVD,
    TEL_PowerOnReq,
    TEL_PowerOnReqVD,
    TEL_PowerOffReq,
    TEL_PowerOffReqVD,
    TEL_EngineForbidReq,
    TEL_EnginePermitReq,
    TEL_EngineForbidReqVD,
    TEL_EnginePermitReqVD,
    TEL_HornOffReq,
    TEL_HornOffReqVD,
    TEL_HazardLightOffReq,
    TEL_HazardLightOffReqVD,
    TEL_LockDoorForceReq,
    TEL_LockDoorForceReqVD,
    TEL_PLGMOpenReq,
    TEL_PLGMOpenReqVD,
    TEL_PLGMCloseReq,
    TEL_PLGMCloseReqVD,
    TEL_EngForceStartVD,
    TEL_EngForceStart,
    TEL_PowerOnTimerReq,
    TEL_AllHazardLightOffReq,
    TEL_FLHeatingLevelReq,
    TEL_FLVentilatingLevelReq,
    TEL_FLHVSMAutoModeReq,
    TEL_FRHeatingLevelReq,
    TEL_FRVentilatingLevelReq,
    TEL_FRHVSMAutoModeReq,
    TEL_RLHeatingLevelReq,
    TEL_RLVentilatingLevelReq,
    TEL_RLHVSMAutoModeReq,
    TEL_RRHeatingLevelReq,
    TEL_RRVentilatingLevelReq,
    TEL_RRHVSMAutoModeReq,
    TEL_HVSMCtrlModeSt,
    TEL_HVACF_TempSelectManualReq,
    TEL_HVACF_DrTempSelectReq,
    TEL_HVACF_WindExitSpdReq,
    TEL_HVACF_WindExitModeReq,
    TEL_HVACF_RearDefrostReq,
    TEL_HVACF_ACReq,
    TEL_HVACF_AutoSt,
    TEL_HVACF_AirCirculationReq,
    TEL_HVACF_FrontDefReq,
    TEL_HVACF_ControlSt,
    TEL_HVACF_ACMaxReq,
    TEL_HVACF_IonReq,
    TEL_HVACF_DualReq,
    TEL_HVACF_TripleZoneReq,
    TEL_HVACF_PaTempSelectReq,
    TEL_HVACF_HVACCtrlModeSt,
    TEL_HVACF_RearTempSelectReq,
    TEL_HVACF_RearReq,
    TEL_WindowsVentilateModeReq,
    TEL_WindowsVentilateModeReqVD,
    TEL_WindowsVentilateModeCloseReq,
    TEL_WindowsVentilateModeCloseReqVD,

    TEL_RemoteControlReqSignalIdMax,
} RemoteControlReqSignalId_t;

void RemoteControlGetSignalValue(RemoteControlStatusSignalInfo_t *stRemoteCtrlSignalVal);
void RemoteCtrlSignalValToCanFrame(uint8_t* pMsgData, RemoteControlReqSignalId_t signalId, double signalValue);

/*************************************************
   Function:        RemoteControlGetReqCanId
   Description:     Get the current remote control request CAN ID
   Input:           None
   Output:          None
   Return:          Current remote control request CAN ID
   Others:          
 *************************************************/
uint32_t RemoteControlGetReqCanId(void);

#endif


