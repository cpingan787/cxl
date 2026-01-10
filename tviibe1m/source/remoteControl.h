
#ifndef _TEST_MODE_H
#define _TEST_MODE_H





typedef enum
{
    REMOTE_CONTROL_NO_BUSINESS = 0,
    REMOTE_CONTROL_CAR = 0x01,    //OPEN/CLOSE CAR
    REMOTE_CONTROL_AC = 0x02,    //OPEN/CLOSE AC
	REMOTE_CONTROL_FIND_CAR = 0x03,    //FIND CAR
    REMOTE_CONTROL_DOOR = 0x04,    //OPEN/CLOSE DOOR
    REMOTE_CONTROL_WINDOW = 0x05,    //OPEN/CLOSE WINDOW
    REMOTE_CONTROL_CHAR = 0x06,    //OPEN/CLOSE CHAR
    REMOTE_CONTROL_CHARGING = 0x07,    //Scheduled Charging
    REMOTE_CONTROL_COMPENSATION = 0x08,    //Intelligent Power Compensation
    REMOTE_CONTROL_BODY = 0x09,    //OPEN/CLOSE CAR CONTROL
    REMOTE_CONTROL_OTA = 0x0A, //OTA
	REMOTE_CONTROL_HEATING = 0x0B, //Battery Heating
    REMOTE_CONTROL_REDUCE_POWER = 0x0C,    //Reduce Power
    REMOTE_CONTROL_FENCE = 0x0D,    //OPEN/CLOSE Virtual Fence
	REMOTE_CONTROL_CAR_READY = 0x0E,	//OPEN/CLOSE CARSTART
	OTA_CONTROL_FINANCIAL_FLAG = 0x0F,
	OTA_CONTROL_OTA_CHANGE = 0x11,
	OTA_CONTROL_OTA_ONOFF = 0x12, //OTA POWER
	OTA_CONTROL_OTA_GET_OBD_LINK = 0x13,
    REMOTE_CONTROL_BUSINESS_END
    
}VehicleRemoteControlBusiness_e;

typedef struct
{
  uint8_t FenceCommand;
  uint8_t HeatingCommand;
  uint8_t AcCommand;
}control_Status_t;

typedef enum
{
  REMOTE_CONTROL_STATE_IDLE = 0,
  //unlock process
  REMOTE_CONTROL_STATE_LVA_CHECK,
  REMOTE_CONTROL_STATE_GET_SEED_CHECK,
  REMOTE_CONTROL_STATE_BODY_STATUS_RESULT,
  //start engine
  REMOTE_CONTROL_STATE_POWER_ON_REQUEST,
  REMOTE_CONTROL_STATE_POWER_ON_RESPONSE,
  REMOTE_CONTROL_STATE_POWER_ON_GET_RESULT,
  REMOTE_CONTROL_STATE_POWER_OFF_REQUEST,
  REMOTE_CONTROL_STATE_POWER_OFF_RESPONSE,
  REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT,
  //control air conditioner
  REMOTE_CONTROL_GENERAL_REQUEST,
  REMOTE_CONTROL_GENERAL_RESPONSE,
  REMOTE_CONTROL_GENERAL_GET_RESULT,
  
}remote_control_state_t;
typedef struct
{
  uint32_t CanId; 
  uint8_t SendCount;
}control_can_t;


typedef struct
{
    uint8_t ACM_AirCondONOFF_Sts;
    uint8_t ACM_PTCSwitch_Sts;
    uint8_t ACM_ACSwitch_Sts;
    uint8_t ACM_AirCircln_Sts;
    uint8_t ACM_FrontDefrost_Sts;
    uint8_t ACM_AirDistributionMode_Sts;
    uint8_t ACM_BlowerSpd_Sts;
    uint8_t ACM_Temp_Sts;
	uint8_t BCM_CentralLock_Sts;
	uint8_t BCM_DoorFL_Sts;
	uint8_t BCM_DoorFR_Sts;
	uint8_t BCM_TurnIndcrLe_Sts;
	uint8_t BCM_TurnIndcrRi_Sts;
	uint8_t BCM_SildDoorRR_Sts;
	uint8_t ACU_CrashOutput_Sts;
	uint16_t VCU_Range;
	uint8_t VCU_VehicleFault_Sts;
    uint8_t BCM_PowerMode;
    uint8_t BCM_RemoteCarSearch_Sts;
	uint16_t BCM_TBOXRandomRX_1;
	uint16_t BCM_TBOXRandomRX_2;
	uint16_t BCM_TBOXRandomRX_3;
	uint16_t BCM_TBOXRandomRX_4;
	uint8_t BCM_TBOXAuthResult;
	uint8_t BCM_PINValid;
    uint8_t BMS_RemoteHeat_Sts;
    uint8_t VCU_HV_Sts;
	uint8_t BCM_FotaMode;
    uint8_t VCU_MaxSpdLimit_Sts;
	uint8_t VCU_VehicleSpeed;
}REMOTE_CONTROL_SIGNAL_INFO;

typedef enum
{
	TBOX_NOMOL = 0,
	TBOX_VOL,//A1
	TBOX_CANSTATUS,//A2
	TBOX_SUPPORTSTATUS,//A3
	TBOX_REMOTESTATUS,//A4
	TBOX_PINSTATUS,//A5
	TBOX_READYSTATUS,//A6
	TBOX_POWERSTATUS,//A7
	TBOX_SPEEDSTATUS,//A8
}remote_control_tbox_status_e;

void setRemoteCertifystatus();
void RemoteControlPorcess(void);
void MpuCommnicationTest(void);
void SetRemoteSkNum(uint8_t *key);
void SetRemoteFinancialFlag(uint8_t Flag);

void TaskVehicleRemoteControl( void *pvParameters );

uint8_t RemoteControlRecvBcmMessage();



#endif//

