/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: remoteControlCanSignal.c
 Author: Simon
 Created Time: 2025-09-24
 Description: 
 Others: 
 *************************************************/
 /****************************** include ***************************************/
#include "stdio.h"
#include "canHal.h"
#include "secocSdk.h"
#include "canParseSdk.h"
#include "vehicleSignalApp.h"
#include "remoteControlCanSignal.h"
#include "remoteControl.h"
/****************************** Macro Definitions ******************************/
#define REMOTE_CONTROL_SEND_BUF_SIZE    (8)
/****************************** Type Definitions ******************************/
typedef struct 
{
    RemoteControlReqSignalId_t reqId;
    CanParseSignal_t signalInfo;
  }SignalConfig_t;
typedef struct
{
    SignalConfig_t TEL_UnlockDoorReq;
    SignalConfig_t TEL_UnlockDoorReqVD;
    SignalConfig_t TEL_LockDoorReq;
    SignalConfig_t TEL_LockDoorReqVD;
    SignalConfig_t TEL_LowBeamLightOnReq;
    SignalConfig_t TEL_LowBeamLightOnReqVD;
    SignalConfig_t TEL_LowBeamLightOffReq;
    SignalConfig_t TEL_LowBeamLightOffReqVD;
    SignalConfig_t TEL_HornReq;
    SignalConfig_t TEL_HornReqVD;
    SignalConfig_t TEL_SeatHeatReq;
    SignalConfig_t TEL_SeatHeatReqVD;
    SignalConfig_t TEL_WindowsCloseReq;
    SignalConfig_t TEL_WindowsCloseReqVD;
    SignalConfig_t TEL_WindowsOpenReq;
    SignalConfig_t TEL_WindowsOpenReqVD;
    SignalConfig_t TEL_ParkingLampOnReq;
    SignalConfig_t TEL_ParkingLampOnReqVD;
    SignalConfig_t TEL_ParkingLampOffReq;
    SignalConfig_t TEL_ParkingLampOffReqVD;
    SignalConfig_t TEL_HazardLightOnReq;
    SignalConfig_t TEL_HazardLightOnReqVD;
    SignalConfig_t TEL_SunRoofOpenReq;
    SignalConfig_t TEL_SunRoofOpenReqVD;
    SignalConfig_t TEL_SunRoofCloseReq;
    SignalConfig_t TEL_SunRoofCloseReqVD;
    SignalConfig_t TEL_EngineStartReq;
    SignalConfig_t TEL_EngineStartReqVD;
    SignalConfig_t TEL_EngineStopReq;
    SignalConfig_t TEL_EngineStopReqVD;
    SignalConfig_t TEL_VoiceInput;
    SignalConfig_t TEL_VoiceInputVD;
    SignalConfig_t TEL_TrunkUnlockReq;
    SignalConfig_t TEL_TrunkUnlockReqVD;
    SignalConfig_t TEL_VehSearchReq;
    SignalConfig_t TEL_VehSearchReqVD;
    SignalConfig_t TEL_PowerOnReq;
    SignalConfig_t TEL_PowerOnReqVD;
    SignalConfig_t TEL_PowerOffReq;
    SignalConfig_t TEL_PowerOffReqVD;
    SignalConfig_t TEL_EngineForbidReq;
    SignalConfig_t TEL_EnginePermitReq;
    SignalConfig_t TEL_EngineForbidReqVD;
    SignalConfig_t TEL_EnginePermitReqVD;
    SignalConfig_t TEL_HornOffReq;
    SignalConfig_t TEL_HornOffReqVD;
    SignalConfig_t TEL_HazardLightOffReq;
    SignalConfig_t TEL_HazardLightOffReqVD;
    SignalConfig_t TEL_PLGMOpenReq;
    SignalConfig_t TEL_PLGMOpenReqVD;
    SignalConfig_t TEL_PLGMCloseReq;
    SignalConfig_t TEL_PLGMCloseReqVD;
    SignalConfig_t TEL_EngForceStartVD;
    SignalConfig_t TEL_EngForceStart;
    SignalConfig_t TEL_PowerOnTimerReq;
    SignalConfig_t TEL_AllHazardLightOffReq;
} RemoteControlReqSignal047_t;

typedef struct
{
    SignalConfig_t TEL_FLHeatingLevelReq;
    SignalConfig_t TEL_FLVentilatingLevelReq;
    SignalConfig_t TEL_FLHVSMAutoModeReq;
    SignalConfig_t TEL_FRHeatingLevelReq;
    SignalConfig_t TEL_FRVentilatingLevelReq;
    SignalConfig_t TEL_FRHVSMAutoModeReq;
    SignalConfig_t TEL_RLHeatingLevelReq;
    SignalConfig_t TEL_RLVentilatingLevelReq;
    SignalConfig_t TEL_RLHVSMAutoModeReq;
    SignalConfig_t TEL_RRHeatingLevelReq;
    SignalConfig_t TEL_RRVentilatingLevelReq;
    SignalConfig_t TEL_RRHVSMAutoModeReq;
    SignalConfig_t TEL_HVSMCtrlModeSt;
} RemoteControlReqSignal05B_t;

typedef struct
{
    SignalConfig_t TEL_HVACF_TempSelectManualReq;
    SignalConfig_t TEL_HVACF_DrTempSelectReq;
    SignalConfig_t TEL_HVACF_WindExitSpdReq;
    SignalConfig_t TEL_HVACF_WindExitModeReq;
    SignalConfig_t TEL_HVACF_RearDefrostReq;
    SignalConfig_t TEL_HVACF_ACReq;
    SignalConfig_t TEL_HVACF_AutoSt;
    SignalConfig_t TEL_HVACF_AirCirculationReq;
    SignalConfig_t TEL_HVACF_FrontDefReq;
    SignalConfig_t TEL_HVACF_ControlSt;
    SignalConfig_t TEL_HVACF_ACMaxReq;
    SignalConfig_t TEL_HVACF_IonReq;
    SignalConfig_t TEL_HVACF_DualReq;
    SignalConfig_t TEL_HVACF_TripleZoneReq;
    SignalConfig_t TEL_HVACF_PaTempSelectReq;
    SignalConfig_t TEL_HVACF_HVACCtrlModeSt;
    SignalConfig_t TEL_HVACF_RearTempSelectReq;
    SignalConfig_t TEL_HVACF_RearReq;
} RemoteControlReqSignal05C_t;

typedef struct
{
    SignalConfig_t TEL_WindowsVentilateModeReq;
    SignalConfig_t TEL_WindowsVentilateModeReqVD;
    SignalConfig_t TEL_WindowsVentilateModeCloseReq;
    SignalConfig_t TEL_WindowsVentilateModeCloseReqVD;
} RemoteControlReqSignal077_t;

typedef struct 
{
    SignalConfig_t TEL_LockDoorForceReq;
    SignalConfig_t TEL_LockDoorForceReqVD;
}RemoteControlReqSignal05A_t;

typedef struct
{
    SignalConfig_t TEL_IMMOCode1;
}RemoteControlReqSignal04F_t;

typedef struct
{
    SignalConfig_t TEL_IMMOCode2;
}RemoteControlReqSignal04E_t;
/****************************** Function Declarations *************************/

/****************************** Global Variables ******************************/
static const uint8_t g_CanSignalFormat = VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB;
static uint32_t g_remoteControlReqCanId = 0U;
static RemoteControlReqSignal04F_t g_04FCanConfigure = 
{
    .TEL_IMMOCode1 = 
    {
        .reqId = TEL_IMMOCode1,
        .signalInfo = {
            .msgBufferPointer = NULL,
            .canBufferIdIndex = 0,
            .dataType = (uint16_t)0,
            .startBit = (uint16_t)56,
            .bitLength = (uint16_t)64,
            .resulotion = (float)1.0,
            .offset = (float)0.0,
            .useInvalidFlag = 1,
        },
    }
};

static RemoteControlReqSignal04E_t g_04ECanConfigure = 
{
    .TEL_IMMOCode2 = 
    {
        .reqId = TEL_IMMOCode2,
        .signalInfo = {
            .msgBufferPointer = NULL,
            .canBufferIdIndex = 0,
            .dataType = (uint16_t)0,
            .startBit = (uint16_t)56,
            .bitLength = (uint16_t)64,
            .resulotion = (float)1.0,
            .offset = (float)0.0,
            .useInvalidFlag = 1,
        },
    }
};

static RemoteControlReqSignal047_t g_047Configure = 
{
    .TEL_UnlockDoorReq = 
    {
      .reqId = TEL_UnlockDoorReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)0,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_UnlockDoorReqVD =
    {
      .reqId = TEL_UnlockDoorReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)1,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_LockDoorReq =
    {
      .reqId = TEL_LockDoorReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)2,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_LockDoorReqVD =
    {
      .reqId = TEL_LockDoorReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)3,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_LowBeamLightOnReq =
    {
      .reqId = TEL_LowBeamLightOnReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)4,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_LowBeamLightOnReqVD =
    {
      .reqId = TEL_LowBeamLightOnReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)5,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_LowBeamLightOffReq =
    {
      .reqId = TEL_LowBeamLightOffReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)6,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_LowBeamLightOffReqVD =
    {
      .reqId = TEL_LowBeamLightOffReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)7,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HornReq =
    {
      .reqId = TEL_HornReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)8,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HornReqVD =
    {
      .reqId = TEL_HornReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)9,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_SeatHeatReq =
    {
      .reqId = TEL_SeatHeatReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)10,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_SeatHeatReqVD =
    {
      .reqId = TEL_SeatHeatReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)11,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_WindowsCloseReq =
    {
      .reqId = TEL_WindowsCloseReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)12,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_WindowsCloseReqVD =
    {
      .reqId = TEL_WindowsCloseReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)13,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_WindowsOpenReq =
    {
      .reqId = TEL_WindowsOpenReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)14,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_WindowsOpenReqVD =
    {
      .reqId = TEL_WindowsOpenReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)15,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_ParkingLampOnReq =
    {
      .reqId = TEL_ParkingLampOnReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)16,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_ParkingLampOnReqVD =
    {
      .reqId = TEL_ParkingLampOnReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)17,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_ParkingLampOffReq =
    {
      .reqId = TEL_ParkingLampOffReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)18,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_ParkingLampOffReqVD =
    {
      .reqId = TEL_ParkingLampOffReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)19,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HazardLightOnReq =
    {
      .reqId = TEL_HazardLightOnReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)20,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HazardLightOnReqVD =
    {
      .reqId = TEL_HazardLightOnReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)21,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_SunRoofOpenReq =
    {
      .reqId = TEL_SunRoofOpenReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)22,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_SunRoofOpenReqVD =
    {
      .reqId = TEL_SunRoofOpenReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)23,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_SunRoofCloseReq =
    {
      .reqId = TEL_SunRoofCloseReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)24,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_SunRoofCloseReqVD =
    {
      .reqId = TEL_SunRoofCloseReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)25,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngineStartReq =
    {
      .reqId = TEL_EngineStartReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)26,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngineStartReqVD =
    {
      .reqId = TEL_EngineStartReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)27,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngineStopReq =
    {
      .reqId = TEL_EngineStopReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)28,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngineStopReqVD =
    {
      .reqId = TEL_EngineStopReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)29,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_VoiceInput =
    {
      .reqId = TEL_VoiceInput,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)30,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_VoiceInputVD =
    {
      .reqId = TEL_VoiceInputVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)31,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_TrunkUnlockReq =
    {
      .reqId = TEL_TrunkUnlockReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)32,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_TrunkUnlockReqVD =
    {
      .reqId = TEL_TrunkUnlockReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)33,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_VehSearchReq =
    {
      .reqId = TEL_VehSearchReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)34,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_VehSearchReqVD =
    {
      .reqId = TEL_VehSearchReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)35,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PowerOnReq =
    {
      .reqId = TEL_PowerOnReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)36,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PowerOnReqVD =
    {
      .reqId = TEL_PowerOnReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)37,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PowerOffReq =
    {
      .reqId = TEL_PowerOffReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)38,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PowerOffReqVD =
    {
      .reqId = TEL_PowerOffReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)39,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngineForbidReq =
    {
      .reqId = TEL_EngineForbidReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)40,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EnginePermitReq =
    {
      .reqId = TEL_EnginePermitReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)41,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngineForbidReqVD =
    {
      .reqId = TEL_EngineForbidReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)42,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EnginePermitReqVD =
    {
      .reqId = TEL_EnginePermitReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)43,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HornOffReq =
    {
      .reqId = TEL_HornOffReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)44,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HornOffReqVD =
    {
      .reqId = TEL_HornOffReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)45,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HazardLightOffReq =
    {
      .reqId = TEL_HazardLightOffReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)46,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_HazardLightOffReqVD =
    {
      .reqId = TEL_HazardLightOffReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)47,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PLGMOpenReq =
    {
      .reqId = TEL_PLGMOpenReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)50,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PLGMOpenReqVD =
    {
      .reqId = TEL_PLGMOpenReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)51,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PLGMCloseReq =
    {
      .reqId = TEL_PLGMCloseReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)52,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PLGMCloseReqVD =
    {
      .reqId = TEL_PLGMCloseReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)53,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngForceStartVD =
    {
      .reqId = TEL_EngForceStartVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)54,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_EngForceStart =
    {
      .reqId = TEL_EngForceStart,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)55,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_PowerOnTimerReq =
    {
      .reqId = TEL_PowerOnTimerReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)56,
        .bitLength = (uint16_t)6,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
    .TEL_AllHazardLightOffReq =
    {
      .reqId = TEL_AllHazardLightOffReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)62,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1.0,
        .offset = (float)0.0,
        .useInvalidFlag = 1,
        .InvalidData = 0,
      },
    },
};

static RemoteControlReqSignal05B_t g_05BConfigure = 
{
    .TEL_FLHeatingLevelReq = 
    {
      .reqId = TEL_FLHeatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)0,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_FLVentilatingLevelReq = 
    {
      .reqId = TEL_FLVentilatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)3,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_FLHVSMAutoModeReq = 
    {
      .reqId = TEL_FLHVSMAutoModeReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)6,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_FRHeatingLevelReq = 
    {
      .reqId = TEL_FRHeatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)8,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_FRVentilatingLevelReq = 
    {
      .reqId = TEL_FRVentilatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)11,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_FRHVSMAutoModeReq = 
    {
      .reqId = TEL_FRHVSMAutoModeReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)14,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_RLHeatingLevelReq = 
    {
      .reqId = TEL_RLHeatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)16,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_RLVentilatingLevelReq = 
    {
      .reqId = TEL_RLVentilatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)19,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_RLHVSMAutoModeReq = 
    {
      .reqId = TEL_RLHVSMAutoModeReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)22,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_RRHeatingLevelReq = 
    {
      .reqId = TEL_RRHeatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)24,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_RRVentilatingLevelReq = 
    {
      .reqId = TEL_RRVentilatingLevelReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)27,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_RRHVSMAutoModeReq = 
    {
      .reqId = TEL_RRHVSMAutoModeReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)30,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVSMCtrlModeSt = 
    {
      .reqId = TEL_HVSMCtrlModeSt,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)32,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
};


static RemoteControlReqSignal05C_t g_05CConfigure = 
{
    .TEL_HVACF_TempSelectManualReq = 
    {
      .reqId = TEL_HVACF_TempSelectManualReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)0,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_DrTempSelectReq = 
    {
      .reqId = TEL_HVACF_DrTempSelectReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)3,
        .bitLength = (uint16_t)5,
        .resulotion = (float)0.5,
        .offset = (float)18,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_WindExitSpdReq = 
    {
      .reqId = TEL_HVACF_WindExitSpdReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)8,
        .bitLength = (uint16_t)4,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_WindExitModeReq = 
    {
      .reqId = TEL_HVACF_WindExitModeReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)12,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_RearDefrostReq = 
    {
      .reqId = TEL_HVACF_RearDefrostReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)16,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_ACReq = 
    {
      .reqId = TEL_HVACF_ACReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)18,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_AutoSt = 
    {
      .reqId = TEL_HVACF_AutoSt,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)20,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_AirCirculationReq = 
    {
      .reqId = TEL_HVACF_AirCirculationReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)22,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_FrontDefReq = 
    {
      .reqId = TEL_HVACF_FrontDefReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)29,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 1,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_ControlSt = 
    {
      .reqId = TEL_HVACF_ControlSt,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)31,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 1,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_ACMaxReq = 
    {
      .reqId = TEL_HVACF_ACMaxReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)32,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_IonReq = 
    {
      .reqId = TEL_HVACF_IonReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)34,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_DualReq = 
    {
      .reqId = TEL_HVACF_DualReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)36,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_TripleZoneReq = 
    {
      .reqId = TEL_HVACF_TripleZoneReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)38,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_PaTempSelectReq = 
    {
      .reqId = TEL_HVACF_PaTempSelectReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)40,
        .bitLength = (uint16_t)5,
        .resulotion = (float)0.5,
        .offset = (float)18,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_HVACCtrlModeSt = 
    {
      .reqId = TEL_HVACF_HVACCtrlModeSt,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)45,
        .bitLength = (uint16_t)3,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_RearTempSelectReq = 
    {
      .reqId = TEL_HVACF_RearTempSelectReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)48,
        .bitLength = (uint16_t)5,
        .resulotion = (float)0.5,
        .offset = (float)18,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_HVACF_RearReq = 
    {
      .reqId = TEL_HVACF_RearReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)53,
        .bitLength = (uint16_t)2,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
};

static RemoteControlReqSignal077_t g_077Configure = 
{
    .TEL_WindowsVentilateModeReq = 
    {
      .reqId = TEL_WindowsVentilateModeReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)7,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_WindowsVentilateModeReqVD = 
    {
      .reqId = TEL_WindowsVentilateModeReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)8,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_WindowsVentilateModeCloseReq = 
    {
      .reqId = TEL_WindowsVentilateModeCloseReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)9,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_WindowsVentilateModeCloseReqVD = 
    {
      .reqId = TEL_WindowsVentilateModeCloseReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)10,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
};

static RemoteControlReqSignal05A_t g_05AConfigure = 
{
    .TEL_LockDoorForceReq = 
    {
      .reqId = TEL_LockDoorForceReq,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)2,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
    .TEL_LockDoorForceReqVD = 
    {
      .reqId = TEL_LockDoorForceReqVD,
      .signalInfo = {
        .msgBufferPointer = NULL,
        .canBufferIdIndex = 0,
        .dataType = (uint16_t)0,
        .startBit = (uint16_t)3,
        .bitLength = (uint16_t)1,
        .resulotion = (float)1,
        .offset = (float)0,
        .useInvalidFlag = 0,
        .InvalidData = 0u,
      },
    },
};

/****************************** Public Function Implementations ***************/
/***************************************************************************
 * @Function    RemoteControlGetSignalValue
 * @Description Get the remote control status signal values from CAN bus
 * @Input       stRemoteCtrlSignalVal - Pointer to store the remote control status signal information
 * @Output      stRemoteCtrlSignalVal - Updated with remote control status signal values
 * @Return      None
 * @Others      This function reads various remote control related signals from CAN bus
 *              including BCM, EMS, EBS, BCS and PEPS signals
 ******************************************************************************/ 
void RemoteControlGetSignalValue(RemoteControlStatusSignalInfo_t *stRemoteCtrlSignalVal)
{
    double dataVaule = 0U;    
    const can0_signal_configure_t *pCan0SignalConfigure = NULL;    
    RemoteControlStatusSignalInfo_t *stRemoteCtrlSignalValTemp = NULL;

    pCan0SignalConfigure = GetCan0SignalConfigure();
    stRemoteCtrlSignalValTemp = stRemoteCtrlSignalVal;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_RemoteControlSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_RemoteControlSt = (uint8_t)dataVaule;
    /* EMS / EBS */
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->EMS_EngSt, &dataVaule);
    stRemoteCtrlSignalValTemp->EMS_EngSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->EBS_SOC, &dataVaule);
    stRemoteCtrlSignalValTemp->EBS_SOC = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCS_VehSpdVD, &dataVaule);
    stRemoteCtrlSignalValTemp->BCS_VehSpdVD = (uint8_t)dataVaule;

    /* PEPS */
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode0, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode0 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode1, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode1 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode2, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode2 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode3, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode3 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode4, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode4 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode5, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode5 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode6, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode6 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TEL_ChallengeCode7, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TEL_ChallengeCode7 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TELMode, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TELMode = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_FeedbackToTBOX, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_FeedbackToTBOX = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_TeleAuthentSt, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_TeleAuthentSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_RemoteControlSt, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_RemoteControlSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_Crankallow, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_Crankallow = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PEPS_EngForbidSt, &dataVaule);
    stRemoteCtrlSignalValTemp->PEPS_EngForbidSt = (uint8_t)dataVaule;

    /* HVAC */
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_TelematicsSt, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_TelematicsSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_WindExitSpd, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_WindExitSpd = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_WindExitMode, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_WindExitMode = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_RearDefrostSt, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_RearDefrostSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_DriverTempSelect, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_DriverTempSelect = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_AirCirculationSt, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_AirCirculationSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_ACSt, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_ACSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_AutoSt, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_AutoSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_IonMode, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_IonMode = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVACF_TempSelectAuto, &dataVaule);
    stRemoteCtrlSignalValTemp->HVACF_TempSelectAuto = (uint8_t)dataVaule;
    /* BCM / BCS */
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCode0, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCode0 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCode1, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCode1 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCode2, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCode2 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCode3, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCode3 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCode4, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCode4 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCode5, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCode5 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCode6, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCode6 = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_IMMOCodeSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_IMMOCodeSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_ATWS_St, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_ATWS_St = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCS_VehSpd, &dataVaule);
    stRemoteCtrlSignalValTemp->BCS_VehSpd = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_KeySt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_KeySt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_DriverDoorAjarSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_DriverDoorAjarSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_PsngrDoorAjarSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_PsngrDoorAjarSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_RLDoorAjarSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_RLDoorAjarSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_RRDoorAjarSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_RRDoorAjarSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_BonnetAjarSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_BonnetAjarSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TrunkAjarSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TrunkAjarSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_DriverDoorLockSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_DriverDoorLockSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_PsngrDoorLockSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_PsngrDoorLockSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_LowBeamSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_LowBeamSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_HornSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_HornSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_HazardLampSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_HazardLampSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_TEL_HazLampCtrlSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_TEL_HazLampCtrlSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_SunRoofPstSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_SunRoofPstSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_LeftTurnLampSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_LeftTurnLampSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_ParkingLampSt, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_ParkingLampSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->BCM_RLSWarning_Rain, &dataVaule);
    stRemoteCtrlSignalValTemp->BCM_RLSWarning_Rain = (uint8_t)dataVaule;

    /* FLDCM / FRDCM */
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FLDCM_FLWinSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FLDCM_FLWinSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FLDCM_RLWinSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FLDCM_RLWinSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FRDCM_FRWinSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FRDCM_FRWinSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FRDCM_RRWinSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FRDCM_RRWinSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FLDCM_FLWinVentilateModeSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FLDCM_FLWinVentilateModeSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FLDCM_RLWinVentilateModeSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FLDCM_RLWinVentilateModeSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FRDCM_FRWinVentilateModeSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FRDCM_FRWinVentilateModeSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->FRDCM_RRWinVentilateModeSt, &dataVaule);
    stRemoteCtrlSignalValTemp->FRDCM_RRWinVentilateModeSt = (uint8_t)dataVaule;

    /* HVSM */
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSM_FLHeatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSM_FLHeatingActLevel = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSM_FRHeatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSM_FRHeatingActLevel = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSM_FLVentilatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSM_FLVentilatingActLevel = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSM_FRVentilatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSM_FRVentilatingActLevel = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSMR_RLHeatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSMR_RLHeatingActLevel = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSMR_RRHeatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSMR_RRHeatingActLevel = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSMR_RLVentilatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSMR_RLVentilatingActLevel = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->HVSMR_RRVentilatingActLevel, &dataVaule);
    stRemoteCtrlSignalValTemp->HVSMR_RRVentilatingActLevel = (uint8_t)dataVaule;

    /* PLGM */
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PLGM_ModeSW, &dataVaule);
    stRemoteCtrlSignalValTemp->PLGM_ModeSW = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PLGM_Doorst, &dataVaule);
    stRemoteCtrlSignalValTemp->PLGM_DoorSt = (uint8_t)dataVaule;

    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->PLGM_Remotecontrolst, &dataVaule);
    stRemoteCtrlSignalValTemp->PLGM_RemoteControlSt = (uint8_t)dataVaule;

    /*GWM*/
    CanParseSdkReadSignal(g_CanSignalFormat, &pCan0SignalConfigure->GWM_HazardLampSt, &dataVaule);
    stRemoteCtrlSignalValTemp->GWM_HazardLampSt = (uint8_t)dataVaule;
}


/***************************************************************************//**
 * @Function    RemoteCtrlSignalValToCanFrame
 * @Description Pack remote control signal value into CAN frame based on signal ID
 * @Input       pMsgData - Pointer to CAN message data buffer
 *              signalId - Remote control request signal ID
 *              signalValue - Signal value to be packed
 * @Output      pMsgData - Updated CAN message data buffer with packed signal value
 * @Return      None
 * @Others      This function handles various remote control signals including door lock/unlock,
 *              lighting control, seat heating/ventilation, HVAC control, and other vehicle functions.
 *              It sets the appropriate CAN ID and uses PackSignalToFrame to encode the signal value.
 ******************************************************************************/
void RemoteCtrlSignalValToCanFrame(uint8_t* pMsgData, RemoteControlReqSignalId_t signalId, double signalValue)
{
    uint8_t i = 0U;
    uint8_t ret = 1U;
    uint8_t signalSize = 0U;
    SignalConfig_t *pSignalConfig = NULL;
    
    switch(signalId)
    {
        case TEL_IMMOCode1:
            pSignalConfig = (SignalConfig_t *)&g_04FCanConfigure;
            signalSize = sizeof(g_04FCanConfigure)/sizeof(SignalConfig_t);
            g_remoteControlReqCanId = REMOTE_CONTROL_TEL_IMMOCode1_E;
            ret = 0U;
            break;
        case TEL_IMMOCode2:
            pSignalConfig = (SignalConfig_t *)&g_04ECanConfigure;
            signalSize = sizeof(g_04ECanConfigure)/sizeof(SignalConfig_t);
            g_remoteControlReqCanId = REMOTE_CONTROL_TEL_IMMOCode2_E;
            ret = 0U;
            break;
        case TEL_UnlockDoorReq:
        case TEL_UnlockDoorReqVD:
        case TEL_LockDoorReq:
        case TEL_LockDoorReqVD:
        case TEL_LowBeamLightOnReq:
        case TEL_LowBeamLightOnReqVD:
        case TEL_LowBeamLightOffReq:
        case TEL_LowBeamLightOffReqVD:
        case TEL_HornReq:
        case TEL_HornReqVD:
        case TEL_SeatHeatReq:
        case TEL_SeatHeatReqVD:
        case TEL_WindowsCloseReq:
        case TEL_WindowsCloseReqVD:
        case TEL_WindowsOpenReq:
        case TEL_WindowsOpenReqVD:
        case TEL_ParkingLampOnReq:
        case TEL_ParkingLampOnReqVD:
        case TEL_ParkingLampOffReq:
        case TEL_ParkingLampOffReqVD:
        case TEL_HazardLightOnReq:
        case TEL_HazardLightOnReqVD:
        case TEL_SunRoofOpenReq:
        case TEL_SunRoofOpenReqVD:
        case TEL_SunRoofCloseReq:
        case TEL_SunRoofCloseReqVD:
        case TEL_EngineStartReq:
        case TEL_EngineStartReqVD:
        case TEL_EngineStopReq:
        case TEL_EngineStopReqVD:
        case TEL_VoiceInput:
        case TEL_VoiceInputVD:
        case TEL_TrunkUnlockReq:
        case TEL_TrunkUnlockReqVD:
        case TEL_VehSearchReq:
        case TEL_VehSearchReqVD:
        case TEL_PowerOnReq:
        case TEL_PowerOnReqVD:
        case TEL_PowerOffReq:
        case TEL_PowerOffReqVD:
        case TEL_EngineForbidReq:
        case TEL_EnginePermitReq:
        case TEL_EngineForbidReqVD:
        case TEL_EnginePermitReqVD:
        case TEL_HornOffReq:
        case TEL_HornOffReqVD:
        case TEL_HazardLightOffReq:
        case TEL_HazardLightOffReqVD:
        case TEL_PLGMOpenReq:
        case TEL_PLGMOpenReqVD:
        case TEL_PLGMCloseReq:
        case TEL_PLGMCloseReqVD:
        case TEL_EngForceStartVD:
        case TEL_EngForceStart:
            pSignalConfig = (SignalConfig_t *)&g_047Configure;
            signalSize = sizeof(g_047Configure)/sizeof(SignalConfig_t);
            g_remoteControlReqCanId = REMOTE_CONTROL_TEL_RemoteControlReq_1_E;
            ret = 0U;
            break;
        case TEL_FLHeatingLevelReq:
        case TEL_FLVentilatingLevelReq:
        case TEL_FLHVSMAutoModeReq:
        case TEL_FRHeatingLevelReq:
        case TEL_FRVentilatingLevelReq:
        case TEL_FRHVSMAutoModeReq:
        case TEL_RLHeatingLevelReq:
        case TEL_RLVentilatingLevelReq:
        case TEL_RLHVSMAutoModeReq:
        case TEL_RRHeatingLevelReq:
        case TEL_RRVentilatingLevelReq:
        case TEL_RRHVSMAutoModeReq:
        case TEL_HVSMCtrlModeSt:
            pSignalConfig = (SignalConfig_t *)&g_05BConfigure;
            signalSize = sizeof(g_05BConfigure)/sizeof(SignalConfig_t);
            g_remoteControlReqCanId = REMOTE_CONTROL_TEL_HVSM_1_E;
            ret = 0U;
            break;
        case TEL_HVACF_TempSelectManualReq:
        case TEL_HVACF_DrTempSelectReq:
        case TEL_HVACF_WindExitSpdReq:
        case TEL_HVACF_WindExitModeReq:
        case TEL_HVACF_RearDefrostReq:
        case TEL_HVACF_ACReq:
        case TEL_HVACF_AutoSt:
        case TEL_HVACF_AirCirculationReq:
        case TEL_HVACF_FrontDefReq:
        case TEL_HVACF_ControlSt:
        case TEL_HVACF_ACMaxReq:
        case TEL_HVACF_IonReq:
        case TEL_HVACF_DualReq:
        case TEL_HVACF_TripleZoneReq:
        case TEL_HVACF_PaTempSelectReq:
        case TEL_HVACF_HVACCtrlModeSt:
        case TEL_HVACF_RearTempSelectReq:
        case TEL_HVACF_RearReq:
            pSignalConfig = (SignalConfig_t *)&g_05CConfigure;
            signalSize = sizeof(g_05CConfigure)/sizeof(SignalConfig_t);
            g_remoteControlReqCanId = REMOTE_CONTROL_TEL_HVACF_1_E;
            ret = 0U;
            break;   
        case TEL_WindowsVentilateModeReq:
        case TEL_WindowsVentilateModeReqVD:
        case TEL_WindowsVentilateModeCloseReq:
        case TEL_WindowsVentilateModeCloseReqVD:
            pSignalConfig = (SignalConfig_t *)&g_077Configure;
            signalSize = sizeof(g_077Configure)/sizeof(SignalConfig_t);
            g_remoteControlReqCanId = REMOTE_CONTROL_TEL_16_B_T_E;
            ret = 0U;
            break;
        case TEL_LockDoorForceReq:
        case TEL_LockDoorForceReqVD:
            pSignalConfig = (SignalConfig_t *)&g_05AConfigure;
            signalSize = sizeof(g_05AConfigure)/sizeof(SignalConfig_t);
            g_remoteControlReqCanId = REMOTE_CONTROL_TEL_MSM_1_T_E;
            ret = 0U;
            break;
        default:
            break;
    }
    
    if((ret == 0U) && (pMsgData != NULL) && (pSignalConfig != NULL))
    {
        ret = 1U;
        for(i = 0; i < signalSize; i++)
        {   
            if(signalId == pSignalConfig->reqId)
            {
                PackSignalToFrame(pMsgData, g_CanSignalFormat, (const CanParseSignal_t*)&pSignalConfig->signalInfo, signalValue);
                ret = 0U;
                break;  
            }
            pSignalConfig++;
        }
    }
}

/*************************************************
   Function:        RemoteControlGetReqCanId
   Description:     Get the current remote control request CAN ID
   Input:           None
   Output:          None
   Return:          Current remote control request CAN ID
   Others:          
 *************************************************/
uint32_t RemoteControlGetReqCanId(void)
{
    return g_remoteControlReqCanId;
};






