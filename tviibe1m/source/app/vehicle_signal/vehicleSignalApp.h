#ifndef _VEHICLESIGNALAPP_H
#define _VEHICLESIGNALAPP_H

#include "stdint.h"
#include "canParseSDK.h"

#define VEHICLE_GET_CAN_DATA_OK				 0
#define VEHICLE_GET_CAN_DATA_INVALID_INDEX	-1
#define VEHICLE_GET_CAN_DATA_CYCLE_TIMEOUT	-2

#define CAN_V_SIGNAL_INDEX_INVALID                0xFF
#define CAN_V_ID_INVALID                          0xFFFFFFFF

#define CAN_V_FD_MAX_DATA_SIZE     64
/*
typedef struct
{
  void*  msgBufferPointer;
  uint32_t canBufferIdIndex;
  uint16_t dataType;
  uint16_t startBit;
  uint16_t bitLength;
  float    resulotion;
  float    offset;
  uint8_t  useInvalidFlag;
  uint32_t InvalidData;
}can_signal_configure_t;
*/
typedef struct
{
	const uint32_t canId;
	const uint32_t timeOutValue;
}canId_map_configure_t;//canId_map_configure_t

typedef struct
{
	uint8_t        canData[CAN_V_FD_MAX_DATA_SIZE];	
	uint32_t       cyleTimeCount;
	uint8_t        cycleTimeOutFlag;
	uint8_t        rxFlag;
}can_signal_msg_buffer_t;//can_signal_msg_buffer_t

typedef struct
{
	CanParseSignal_t BCM_PowerMode;
	CanParseSignal_t VCU_VehicleSpeed;
	CanParseSignal_t IPK_OdometerInfor;
	CanParseSignal_t BMS_BatTotalVolt;
	CanParseSignal_t BMS_RealSOC;
	CanParseSignal_t BCM_CentralLock_Sts;
	CanParseSignal_t BCM_DoorFL_Sts;
	CanParseSignal_t BCM_DoorFR_Sts;
	CanParseSignal_t BCM_SildDoorRR_Sts;
	CanParseSignal_t BCM_TurnIndcrLe_Sts;
	CanParseSignal_t BCM_TurnIndcrRi_Sts;
	CanParseSignal_t ACU_CrashOutput_Sts;
	CanParseSignal_t VCU_Range;
	CanParseSignal_t VCU_VehicleFault_Sts;
	CanParseSignal_t VCU_HV_Sts;
	CanParseSignal_t BCM_FotaMode;
	CanParseSignal_t BCM_PINValid;
	CanParseSignal_t BCM_RemoteCarSearch_Sts;
	CanParseSignal_t VCU_MaxSpdLimit_Sts;
	CanParseSignal_t BMS_RemoteHeat_Sts;
	CanParseSignal_t ACM_AirCondONOFF_Sts;
	CanParseSignal_t ACM_PTCSwitch_Sts;
	CanParseSignal_t ACM_ACSwitch_Sts;
	CanParseSignal_t ACM_AirCircln_Sts;
	CanParseSignal_t ACM_FrontDefrost_Sts;
	CanParseSignal_t ACM_AirDistributionMode_Sts;
	CanParseSignal_t ACM_BlowerSpd_Sts;
	CanParseSignal_t ACM_Temp_Sts;
	CanParseSignal_t BCM_TBOXRandomRX_1;
	CanParseSignal_t BCM_TBOXRandomRX_2;
	CanParseSignal_t BCM_TBOXRandomRX_3;
	CanParseSignal_t BCM_TBOXRandomRX_4;
	CanParseSignal_t BCM_TBOXAuthResult;
	
	CanParseSignal_t BMS_FaultInfoDeltaTemp;
	CanParseSignal_t BMS_FaultInfoOverTemp;
	CanParseSignal_t BMS_FaultInfoPackOverVolt;
	CanParseSignal_t BMS_FaultInfoPackUdVolt;
	CanParseSignal_t BMS_FaultInfoPackLowSOC;
	CanParseSignal_t BMS_FaultInfoCellOverVolt;
	CanParseSignal_t BMS_FaultInfoCellUdVolt;
	CanParseSignal_t BMS_FaultInfoLowInsRes;
	CanParseSignal_t BMS_FaultInfoUCellIncon;
	CanParseSignal_t BMS_FaultInfoPackOverChrg;
	CanParseSignal_t BMS_FaultInfoPackHighSOC;
	CanParseSignal_t BMS_FaultInfoPkFastChgSOC;
	CanParseSignal_t BMS_FaultInfoBatSysNotMtc;
	CanParseSignal_t BMS_HVInterLock_Sts;
	CanParseSignal_t BMS_ThermalRunaway_Fault;
	CanParseSignal_t MCU_McuHeat_Sts;
	CanParseSignal_t MCU_MotorHeat_Sts;
	CanParseSignal_t MCU_bnDeltaLim;
	CanParseSignal_t MCU_MCUErrLevel;
}can_signal_configure_t;

typedef struct
{
	const uint32_t canId;
	uint8_t canData;
	uint8_t canAlErr;
	uint8_t canCrcErr;
}canId_E2E_configure_t;//canId_E2E_configure_t


//Intel��ʽ��Motorola��ʽ

const can_signal_configure_t *GetCan0SignalConfigure(void);

int16_t Can0RxCanMsgDispatch(uint32_t canId,uint8_t dlc,uint8_t *pData);
int16_t Can0RxCanMsgCycleCheck(uint32_t cycleTime);


#endif  //_VEHICLESIGNALAPP_H
