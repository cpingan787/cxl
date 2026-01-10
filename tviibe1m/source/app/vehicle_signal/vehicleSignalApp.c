#include "vehicleSignalApp.h"
#include "logHal.h"
#include "taskDtcProcess.h"

/*******************************************************************************/
                                            
#define CAN_ID_CONFIGURE_DEFINE_BEGIN(canChannel)                       typedef struct \
                                                                        {\

#define CAN_ID_CONFIGURE_DEFINE(canIdName)                                  canId_map_configure_t s##canIdName;
                                              
#define CAN_ID_CONFIGURE_DEFINE_END(canChannel)                         }struct_can##canChannel##Id_define_t;\

                                              
                                              
/*****************************************************************************/
#define CAN_ID_CONFIGURE_BEGIN(CanChannel)     const static struct_can##CanChannel##Id_define_t m_can##CanChannel##IdList =         \
                                          {                                                               \
                                            
#define CAN_V_ID_ELEMENT(canIdName,cycleTime,Id)    .s##canIdName = {Id,cycleTime},

#define CAN_ID_CONFIGURE_END(CanChannel)    };                                                              \
                                          static can_signal_msg_buffer_t m_can##CanChannel##RxMsgBuffer[sizeof(m_can##CanChannel##IdList)/sizeof(canId_map_configure_t)];\

/******************************************************************************/

#define CAN_MSG_BUFFER_ADDRESS(canChannel)      (m_can##canChannel##RxMsgBuffer)                                              
#define CAN_ID_TO_BUFFER_INDEX(canChannel,CanIdName)       ((&m_can##canChannel##IdList.s##CanIdName - (canId_map_configure_t*)&m_can##canChannel##IdList))                                            

/********************************************************************************/                                            

/*

typedef struct
{
    canId_map_configure_t s[T_BOX_FD1];

}struct_can[0]
*/
CAN_ID_CONFIGURE_DEFINE_BEGIN(1) 
	CAN_ID_CONFIGURE_DEFINE(can1_E0)	
	CAN_ID_CONFIGURE_DEFINE(can1_EB)
	CAN_ID_CONFIGURE_DEFINE(can1_EC)
    CAN_ID_CONFIGURE_DEFINE(can1_101)
    CAN_ID_CONFIGURE_DEFINE(can1_204)
	CAN_ID_CONFIGURE_DEFINE(can1_2B0)	
	CAN_ID_CONFIGURE_DEFINE(can1_2A0)
	CAN_ID_CONFIGURE_DEFINE(can1_2A1)
	CAN_ID_CONFIGURE_DEFINE(can1_260)
CAN_ID_CONFIGURE_DEFINE_END(1)

CAN_ID_CONFIGURE_DEFINE_BEGIN(0)    
	CAN_ID_CONFIGURE_DEFINE(can0_364)
	CAN_ID_CONFIGURE_DEFINE(can0_635)
	CAN_ID_CONFIGURE_DEFINE(can0_230)
	CAN_ID_CONFIGURE_DEFINE(can0_215)
	CAN_ID_CONFIGURE_DEFINE(can0_100)
	CAN_ID_CONFIGURE_DEFINE(can0_360)
	CAN_ID_CONFIGURE_DEFINE(can0_221)
CAN_ID_CONFIGURE_DEFINE_END(0)                                  

CAN_ID_CONFIGURE_BEGIN(1)  //BD
    CAN_V_ID_ELEMENT(can1_E0,100,0xE0)
    CAN_V_ID_ELEMENT(can1_EB,100,0xEB)
    CAN_V_ID_ELEMENT(can1_EC,10,0xEC)
    CAN_V_ID_ELEMENT(can1_101,10,0x101)
	CAN_V_ID_ELEMENT(can1_2B0,100,0x2B0)	
	CAN_V_ID_ELEMENT(can1_2A0,10,0x2A0)
	CAN_V_ID_ELEMENT(can1_2A1,100,0x2A1)
	CAN_V_ID_ELEMENT(can1_260,50,0x260)
	CAN_V_ID_ELEMENT(can1_204,100,0x204)
CAN_ID_CONFIGURE_END(1) 

CAN_ID_CONFIGURE_BEGIN(0)  //PT

	CAN_V_ID_ELEMENT(can0_100,10,0x100)
	CAN_V_ID_ELEMENT(can0_221,20,0x221)
	CAN_V_ID_ELEMENT(can0_215,100,0x215)
	CAN_V_ID_ELEMENT(can0_230,100,0x230)
	CAN_V_ID_ELEMENT(can0_364,100,0x364)
	CAN_V_ID_ELEMENT(can0_635,1000,0x635)
	CAN_V_ID_ELEMENT(can0_360,100,0x360)
CAN_ID_CONFIGURE_END(0) 

static const can_signal_configure_t m_can0SignalConfigure =
{
	.BCM_PowerMode={//POWERMODE
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A0),
	.dataType = 0,
	.startBit = 0,
	.bitLength = 3,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.VCU_VehicleSpeed={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_101),
	.dataType = 0,
	.startBit = 16,
	.bitLength = 13,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.IPK_OdometerInfor={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2B0),
	.dataType = 0,
	.startBit = 32,
	.bitLength = 24,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_BatTotalVolt={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_364),
	.dataType = 0,
	.startBit = 24,
	.bitLength = 16,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_RealSOC={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_635),
	.dataType = 0,
	.startBit = 40,
	.bitLength = 16,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_CentralLock_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A0),
	.dataType = 0,
	.startBit = 7,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_DoorFL_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A0),
	.dataType = 0,
	.startBit = 3,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_DoorFR_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A0),
	.dataType = 0,
	.startBit = 4,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_SildDoorRR_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A0),
	.dataType = 0,
	.startBit = 5,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_TurnIndcrLe_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A0),
	.dataType = 0,
	.startBit = 16,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_TurnIndcrRi_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A0),
	.dataType = 0,
	.startBit = 17,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.ACU_CrashOutput_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_230),
	.dataType = 0,
	.startBit = 2,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.VCU_Range={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_204),
	.dataType = 0,
	.startBit = 32,
	.bitLength = 10,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.VCU_VehicleFault_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_100),
	.dataType = 0,
	.startBit = 35,
	.bitLength = 3,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_RemoteCarSearch_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_EB),
	.dataType = 0,
	.startBit = 2,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_TBOXRandomRX_1={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_EC),
	.dataType = 0,
	.startBit = 8,
	.bitLength = 16,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_TBOXRandomRX_2={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_EC),
	.dataType = 0,
	.startBit = 24,
	.bitLength = 16,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_TBOXRandomRX_3={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_EC),
	.dataType = 0,
	.startBit = 40,
	.bitLength = 16,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_TBOXRandomRX_4={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_EC),
	.dataType = 0,
	.startBit = 56,
	.bitLength = 16,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_TBOXAuthResult={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A1),
	.dataType = 0,
	.startBit = 2,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_FotaMode={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_2A1),
	.dataType = 0,
	.startBit = 13,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.VCU_HV_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_100),
	.dataType = 0,
	.startBit = 17,
	.bitLength = 3,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BCM_PINValid={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_100),
	.dataType = 0,
	.startBit = 17,
	.bitLength = 3,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.VCU_MaxSpdLimit_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_E0),
	.dataType = 0,
	.startBit = 2,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	
	.BMS_RemoteHeat_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_215),
	.dataType = 0,
	.startBit = 0,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_AirCondONOFF_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 4,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_PTCSwitch_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 25,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_ACSwitch_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 2,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_AirCircln_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 3,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_FrontDefrost_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 12,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_AirDistributionMode_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 5,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_BlowerSpd_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 8,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},

	.ACM_Temp_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(1),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(1,can1_260),
	.dataType = 0,
	.startBit = 26,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	
	.BMS_FaultInfoDeltaTemp={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 0,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoOverTemp={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 2,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoPackOverVolt={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 4,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoPackUdVolt={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 6,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoPackLowSOC={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 8,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoCellOverVolt={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 10,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoCellUdVolt={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 12,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoLowInsRes={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 14,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoUCellIncon={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 16,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoPackOverChrg={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 18,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoPackHighSOC={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 20,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoPkFastChgSOC={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 22,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_FaultInfoBatSysNotMtc={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 24,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_HVInterLock_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 26,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.BMS_ThermalRunaway_Fault={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_360),
	.dataType = 0,
	.startBit = 28,
	.bitLength = 2,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	
	.MCU_McuHeat_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_221),
	.dataType = 0,
	.startBit = 2,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.MCU_MotorHeat_Sts={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_221),
	.dataType = 0,
	.startBit = 3,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.MCU_bnDeltaLim={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_221),
	.dataType = 0,
	.startBit = 7,
	.bitLength = 1,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
	.MCU_MCUErrLevel={
	.msgBufferPointer = CAN_MSG_BUFFER_ADDRESS(0),
	.canBufferIdIndex = CAN_ID_TO_BUFFER_INDEX(0,can0_221),
	.dataType = 0,
	.startBit = 8,
	.bitLength = 3,
	.resulotion = 1,
	.offset = 0,
	.useInvalidFlag = 0,
	.InvalidData = 0,
	},
};


#define CAN_MSG_BUFFER_SIZE(canChannel)          (sizeof(m_can##canChannel##RxMsgBuffer)/sizeof(m_can##canChannel##RxMsgBuffer[0]))
#define CAN_MSG_BUFFER_GET_ELEMENT(canChannel,index)  m_can##canChannel##RxMsgBuffer[index]         
#define CAN_ID_CONFIGURE_POINTER(canChannel)   (&m_can##canChannel##IdList)

const can_signal_configure_t * GetCan0SignalConfigure(void)
{
  return &m_can0SignalConfigure;
}


int16_t Can0RxCanMsgDispatch(uint32_t canId,uint8_t dlc,uint8_t *pData)
{
    int16_t ret;
    ret = 1;
    uint32_t i;
    //uint32_t j;
    canId_map_configure_t *pCanConfigure;

    pCanConfigure = (canId_map_configure_t *)CAN_ID_CONFIGURE_POINTER(0);
    for(i=0;i<CAN_MSG_BUFFER_SIZE(0);i++)
    {
        if(pCanConfigure[i].canId==canId)
        {
			for(int j=0;j<dlc;j++)
			{
				CAN_MSG_BUFFER_GET_ELEMENT(0,i).canData[j] = pData[j];
			}
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag = 1;

            ret = 0;
            break;
        }
    }
    return ret;
}

int16_t Can1RxCanMsgDispatch(uint32_t canId,uint8_t dlc,uint8_t *pData)
{
    int16_t ret;
    ret = 1;
    uint32_t i;
    //uint32_t j;
    canId_map_configure_t *pCanConfigure;

    pCanConfigure = (canId_map_configure_t *)CAN_ID_CONFIGURE_POINTER(1);
    for(i=0;i<CAN_MSG_BUFFER_SIZE(1);i++)
    {
        if(pCanConfigure[i].canId==canId)
        {
			for(int j=0;j<dlc;j++)
			{
				CAN_MSG_BUFFER_GET_ELEMENT(1,i).canData[j] = pData[j];
			}
            CAN_MSG_BUFFER_GET_ELEMENT(1,i).rxFlag = 1;
            ret = 0;
            break;
        }
    }
    return ret;
}
int16_t Can0RxCanMsgCycleCheck(uint32_t cycleTime)
{
	uint32_t i;
    canId_map_configure_t *pCanConfigure;
    
    pCanConfigure = (canId_map_configure_t *)CAN_ID_CONFIGURE_POINTER(0);
	for(i=0;i<CAN_MSG_BUFFER_SIZE(0);i++)
	{
        if(CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag)
        {    
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag = 0;
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount = 0;
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).cycleTimeOutFlag = 0;
        }
        else
        {
            CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount += cycleTime;
            if((CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount)>(10*pCanConfigure[i].timeOutValue))
            {
                CAN_MSG_BUFFER_GET_ELEMENT(0,i).cyleTimeCount = 0;
                CAN_MSG_BUFFER_GET_ELEMENT(0,i).cycleTimeOutFlag = 1;
                CAN_MSG_BUFFER_GET_ELEMENT(0,i).rxFlag = 0;
            }
        }
	}
	return 0;
}
int16_t Can1RxCanMsgCycleCheck(uint32_t cycleTime)
{
	uint32_t i;
    canId_map_configure_t *pCanConfigure;
    
    pCanConfigure = (canId_map_configure_t *)CAN_ID_CONFIGURE_POINTER(1);
	for(i=0;i<CAN_MSG_BUFFER_SIZE(1);i++)
	{
        if(CAN_MSG_BUFFER_GET_ELEMENT(1,i).rxFlag)
        {    
            CAN_MSG_BUFFER_GET_ELEMENT(1,i).rxFlag = 0;
            CAN_MSG_BUFFER_GET_ELEMENT(1,i).cyleTimeCount = 0;
            CAN_MSG_BUFFER_GET_ELEMENT(1,i).cycleTimeOutFlag = 0;
        }
        else
        {
            CAN_MSG_BUFFER_GET_ELEMENT(1,i).cyleTimeCount += cycleTime;
            if((CAN_MSG_BUFFER_GET_ELEMENT(1,i).cyleTimeCount)>(10*pCanConfigure[i].timeOutValue))
            {
                CAN_MSG_BUFFER_GET_ELEMENT(1,i).cyleTimeCount = 0;
                CAN_MSG_BUFFER_GET_ELEMENT(1,i).cycleTimeOutFlag = 1;
                CAN_MSG_BUFFER_GET_ELEMENT(1,i).rxFlag = 0;
            }
        }
	}
	return 0;
}

