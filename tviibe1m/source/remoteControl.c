#include "stdlib.h"
#include "canHal.h"
#include "mpuHal.h"
#include "logHal.h"
#include "peripheralHal.h"
#include "PowerManageHal.h"
#include "ParameterStoreManageApp.h"
#include "remoteControl.h"
#include "powerManageSdk.h"
#include "autosarNmSdk.h"
#include "vehicleSignalApp.h"
#include "canPeriodTask.h"
#include "canParseSDK.h"
#include "FreeRTOS.h"
#include "task.h"
#include "taskDtcProcess.h"

#define REMOTE_CONTROL_AID                       0x02
#define REMOTE_CONTROL_MID                       0x03

#define REMOTE_CONTROL_SUBCOMMAND_ACK            0x6E
#define REMOTE_CONTROL_SUBCOMMAND_RESULT         0x6F
#define REMOTE_CONTROL_SUBCOMMAND_CMD            0x81

//static uint16_t g_cycleTime = 10; //单位ms
static int16_t g_mpuRemoteControlHandle = -1;  //mpu通信句柄
//static int16_t g_RemoteControlSleepHandle = -1;
static uint8_t g_RemoteControlSeverData[20] = {0};
static MpuHalDataPack_t g_mpuRemoteControlPack;
static uint8_t g_RemoteCertifystatus = 0;
static uint16_t g_RemoteControlDisableTimeCount	=   0;                      //禁止时间计数
static uint8_t g_recvMpuRemoteControlBuf[50];
static VehicleRemoteControlBusiness_e gRemoteControlSub;
static uint8_t g_PowerOncnt = 0; 
static uint8_t g_PowerOnNGcnt = 0;
static control_Status_t g_RemoteMessageSatus = {0}; 
static control_can_t g_CanSendMessage[3] = {0};  //E6 E7 E8
static uint8_t g_Kl15Status = 0; 
static uint8_t g_sknum[16] = {0};
static uint8_t g_skSendFlag = 0; 
static uint8_t g_FinancialFlag = 0;
static uint8_t g_RemotepowerFlag = {0};

typedef struct
{
  remote_control_state_t controlState;//REMOTE_CONTROL_STATE_GET_SEED_REQUEST,REMOTE_CONTROL_STATE_START_ENGINE_REQUEST
  uint32_t controlTimerCount;
  uint32_t msgSendCount;
  uint8_t preconditionCheck; //先决条件
  uint8_t retryCount;
  uint8_t authKey[8];
  uint8_t lastcontrolState;
  uint8_t trainedParkingInCommad;
  uint8_t trainedParkingOutCommad;
  uint8_t callCommand;
  uint8_t remoteCommand;
  uint32_t parkingTimeCount;
  uint8_t CommandResponseOKNum;
}control_variant_t;

static control_variant_t m_controlVariable;

void RemoteControlInit(void)
{
  	MpuHalFilter_t filter;
	CanHalMsgFilter_t canFilter; 
	TBOX_MESSAGE message = {0};

	g_mpuRemoteControlHandle = MpuHalOpen();
	if(g_mpuRemoteControlHandle<0)//invalid handle
    {
        for(;;)
        {
            TBOX_PRINT("RemoteControl uart handle open failed\r\n");
            vTaskDelay(1000);
        }
    }
	filter.aid = 0x02;
    filter.midMin = 0x03;
    filter.midMax = 0x03;
    MpuHalSetRxFilter(g_mpuRemoteControlHandle,&filter);
    MpuHalSetRxBuffer(g_mpuRemoteControlHandle,g_recvMpuRemoteControlBuf,sizeof(g_recvMpuRemoteControlBuf));
    g_mpuRemoteControlPack.pDataBuffer = g_RemoteControlSeverData;
    g_mpuRemoteControlPack.dataBufferSize = sizeof(g_RemoteControlSeverData);

	GetCanMessageData(message.data);
	g_RemotepowerFlag = message.TBOX.TBOX_PowerMode_Req;
}

#define REMOTE_CONTROL_AID                       0x02
#define REMOTE_CONTROL_MID                       0x03

#define OTA_CONTROL_AID                       	   0x07
#define OTA_CONTROL_POWER_MID                       0x01
#define OTA_CONTROL_CHANGE_MID                       0x02

int8_t SendMsgToCpu(int16_t uartHandle,uint8_t subCmd,uint8_t* pu8Data, uint16_t u16Len)
{
	MpuHalDataPack_t txData;
    uint8_t lucSendBuf[64];
	txData.aid = (uint8_t)REMOTE_CONTROL_AID;
	txData.mid = (uint8_t)REMOTE_CONTROL_MID;
	txData.subcommand = REMOTE_CONTROL_SUBCOMMAND_RESULT;
	
    memset(lucSendBuf,0,sizeof(lucSendBuf));
	lucSendBuf[0] = subCmd;
	memcpy(&lucSendBuf[1],pu8Data,u16Len);
	txData.dataBufferSize = u16Len;
	txData.dataLength = u16Len;
	txData.pDataBuffer = lucSendBuf;
	
	MpuHalTransmit(uartHandle,&txData);
	
	return 0;
}

static int16_t RemoteControlSendAck(int16_t uartHandle,uint8_t subCmd,MpuHalDataPack_t* puData, uint16_t u16Len)
{    
	MpuHalDataPack_t txData;
    uint8_t lucSendBuf[64];
	
	txData.aid = (uint8_t)puData->aid;
	txData.mid = (uint8_t)puData->mid;
	txData.subcommand = REMOTE_CONTROL_SUBCOMMAND_ACK;
	
    memset(lucSendBuf,0,sizeof(lucSendBuf));
	lucSendBuf[0] = subCmd;
    memcpy(&lucSendBuf[1],puData->pDataBuffer,u16Len);
	txData.dataBufferSize = u16Len;
	txData.dataLength = u16Len;
	txData.pDataBuffer = lucSendBuf;
	
	MpuHalTransmit(uartHandle,&txData);
	return 0;
}
static void RemoteCtrlSendCanMessage()
{
	uint8_t i;
	static uint8_t SendCnt[3];
	for(i=0;i<3;i++)
	{
		if(g_CanSendMessage[i].SendCount>0)
		{
			g_CanSendMessage[i].SendCount --;
			SendCanMessage(g_CanSendMessage[i].CanId);
		}
	}
}

static void TboxSendBussinessCmdResultToCpu(int16_t uartHandle1,uint8_t subCmd,uint8_t* u8RespCode)
{
      SendMsgToCpu(uartHandle1,subCmd,u8RespCode,15);
}

static void enciher(uint8_t num_rounds,uint32_t *v, uint32_t *k)
{
	uint32_t v0=v[0],v1=v[1],i;
	uint32_t sum=0,delta=0x9e3779b9;
	
	for(i=0;i<num_rounds;i++) 
	{ 
		v0+=(((v1<<4)^ (v1>>5))+v1) ^ (sum+k[sum&3]);
		sum+=delta;
		v1+=(((v0<<4)^ (v0>>5))+v0)^ (sum+k[(sum>>11)&3]);
	}
	v[0] = v0;
	v[1] = v1;
}
// 辅助函数：发送防盗请求
static void SendAntiTheftRequest()
{
    TBOX_MESSAGE message = {0};
	GetCanMessageData(message.data);
	
    message.TBOX.TBOX_AntiTheft_Req = 0x01;
	message.TBOX.TBOX_AuthRespone_Sts = 0xFF;
	message.TBOX.TBOX_BCMRandomResponse_1 = 0xFF;
	message.TBOX.TBOX_BCMRandomResponse_2 = 0xFF;
	message.TBOX.TBOX_BCMRandomResponse_3 = 0x00;
	message.TBOX.TBOX_BCMRandomResponse_4 = 0x00;
	message.TBOX.TBOX_BCMRandomResponse_5 = 0x00;
	message.TBOX.TBOX_BCMRandomResponse_6 = 0x00;
	
    g_skSendFlag = 1;
    g_CanSendMessage[0].CanId = 0xE6;
    g_CanSendMessage[0].SendCount = 3;
    SetCanMessageData(message.data);
}

static void SendSkCheackRes(uint8_t status)
{
    TBOX_MESSAGE message = {0};
	
	GetCanMessageData(message.data);
    message.TBOX.TBOX_AuthRespone_Sts = status;
    
    g_CanSendMessage[0].CanId = 0xE6;
    g_CanSendMessage[0].SendCount = 3;
    SetCanMessageData(message.data);
}

static uint8_t RemoteControlCheckBcmNum(uint32_t *keydata_1,uint32_t *keydata_2)
{
	TBOX_MESSAGE message = {0};
	
	GetCanMessageData(message.data);
	enciher(32,keydata_1,keydata_2);
    message.TBOX.TBOX_AntiTheft_Req = 0x00;
	message.TBOX.TBOX_AuthRespone_Sts = 0x00;
	message.TBOX.TBOX_BCMRandomResponse_1 = keydata_1[0]>>8;
	message.TBOX.TBOX_BCMRandomResponse_2 = keydata_1[0];
	message.TBOX.TBOX_BCMRandomResponse_3 = keydata_1[1]>>24;
	message.TBOX.TBOX_BCMRandomResponse_4 = keydata_1[1]>>16;
	message.TBOX.TBOX_BCMRandomResponse_5 = keydata_1[1]>>8;
	message.TBOX.TBOX_BCMRandomResponse_6 = keydata_1[1];
	
    g_CanSendMessage[0].CanId = 0xE6;
    g_CanSendMessage[0].SendCount = 3;
    SetCanMessageData(message.data);
	
	return 0;
}

void GetRemoteControlSignalValue(REMOTE_CONTROL_SIGNAL_INFO *stRemoteCtrlSignalVal)
{
    double dataVaule = 0;    
    const can_signal_configure_t *pCanSignalConfigure = NULL; 
    REMOTE_CONTROL_SIGNAL_INFO *stRemoteCtrlSignalValTemp = NULL;
	uint8_t CANSignalFormat = VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB;
	//BatHeatMod
    pCanSignalConfigure = GetCan0SignalConfigure();
	
    stRemoteCtrlSignalValTemp = stRemoteCtrlSignalVal;
    
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_CentralLock_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_CentralLock_Sts = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_DoorFL_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_DoorFL_Sts = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_DoorFR_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_DoorFR_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_SildDoorRR_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_SildDoorRR_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_TurnIndcrLe_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_TurnIndcrLe_Sts = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_TurnIndcrRi_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_TurnIndcrRi_Sts = (uint8_t)dataVaule;
		
	ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACU_CrashOutput_Sts,&dataVaule);   
	stRemoteCtrlSignalValTemp->ACU_CrashOutput_Sts = (uint8_t)dataVaule;
	
	ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->VCU_Range,&dataVaule);   
	stRemoteCtrlSignalValTemp->VCU_Range = (uint16_t)dataVaule;
	
	ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->VCU_VehicleFault_Sts,&dataVaule);   
	stRemoteCtrlSignalValTemp->VCU_VehicleFault_Sts = (uint8_t)dataVaule;
	
	ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->VCU_VehicleSpeed,&dataVaule);   
	stRemoteCtrlSignalValTemp->VCU_VehicleSpeed = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_PINValid,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_PINValid = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->VCU_MaxSpdLimit_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->VCU_MaxSpdLimit_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_PowerMode,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_PowerMode = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_RemoteCarSearch_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_RemoteCarSearch_Sts = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BMS_RemoteHeat_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->BMS_RemoteHeat_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_AirCondONOFF_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_AirCondONOFF_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_PTCSwitch_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_PTCSwitch_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_ACSwitch_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_ACSwitch_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_AirCircln_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_AirCircln_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_FrontDefrost_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_FrontDefrost_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_AirDistributionMode_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_AirDistributionMode_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_BlowerSpd_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_BlowerSpd_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACM_Temp_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->ACM_Temp_Sts = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_TBOXRandomRX_1,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_TBOXRandomRX_1 = (uint16_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_TBOXRandomRX_2,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_TBOXRandomRX_2 = (uint16_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_TBOXRandomRX_3,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_TBOXRandomRX_3 = (uint16_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_TBOXRandomRX_4,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_TBOXRandomRX_4 = (uint16_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_TBOXAuthResult,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_TBOXAuthResult = (uint8_t)dataVaule;
	
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->VCU_HV_Sts,&dataVaule);   
    stRemoteCtrlSignalValTemp->VCU_HV_Sts = (uint8_t)dataVaule;

    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->BCM_FotaMode,&dataVaule);   
    stRemoteCtrlSignalValTemp->BCM_FotaMode = (uint8_t)dataVaule;
}
static uint8_t RemoteCtrlBodyStatus()
{
	TBOX_MESSAGE message = {0};
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
	GetCanMessageData(message.data);
	
	if(PeripheralHalGetKl15Status()==1)//KLOFF->ON BCM+TBOX
	{
		if((g_Kl15Status == 0)&&((stRemoteControlSignalVal.BCM_TBOXAuthResult != 1)&&(GetBcmMessageState() ==1)))
		{
			g_RemoteCertifystatus = 0;
			g_Kl15Status = 1;
			CleanBcmRemoteState();
			CleanBcmMessageState();
			SendAntiTheftRequest();
		}
	}
	else if(PeripheralHalGetKl15Status()==0)
	{
		if(g_Kl15Status == 1)
		{
			g_RemoteCertifystatus = 0;	
			CleanBcmRemoteState();
			CleanNmState();
			g_Kl15Status = 0;
		}
	}
	
	if((stRemoteControlSignalVal.BCM_PowerMode == 2)&&(REMOTE_CONTROL_STATE_IDLE == m_controlVariable.controlState))//not remote on
	{
		if((g_PowerOncnt != 0)||(g_PowerOnNGcnt != 0))
		{
			g_PowerOncnt = 0; 
			g_PowerOnNGcnt = 0;
		}
	}
			
	if((g_RemoteMessageSatus.AcCommand != 0)||(g_RemoteMessageSatus.HeatingCommand != 0))
	{
		if(stRemoteControlSignalVal.BCM_PowerMode != 3)
		{
			if(g_RemoteMessageSatus.AcCommand != 0)//close AC
			{
				message.TBOX.TBOX_RemoteAirConONOFF_Req = 1;
				message.TBOX.TBOX_RemoteACONOFF_Req = 2;
				message.TBOX.TBOX_RemotePTC_Req = 0;
				message.TBOX.TBOX_RemoteAirCirclin_Req = 0;
				message.TBOX.TBOX_RemoteFrontDefrost_Req = 0;
				message.TBOX.TBOX_RemoteBlowerStepsSpd_Req = 0;
				message.TBOX.TBOX_RemoteAirDistributionMode_Req = 0;
				message.TBOX.TBOX_RemoteTempSteps_Req = 0;
				g_RemoteMessageSatus.AcCommand = 0;
			}
			if(g_RemoteMessageSatus.HeatingCommand != 0)//CLOSE HEAT
			{
				message.TBOX.TBOX_RemoteBatHeat_Req = 0;
				g_RemoteMessageSatus.HeatingCommand = 0;
			}
			g_CanSendMessage[2].CanId = 0xE8;
			g_CanSendMessage[2].SendCount = 3;
			SetCanMessageData(message.data);
		}
		else
		{
			if(stRemoteControlSignalVal.VCU_HV_Sts == 2)
			{
				if((stRemoteControlSignalVal.BMS_RemoteHeat_Sts == 0)&&(stRemoteControlSignalVal.ACM_AirCondONOFF_Sts == 0))
				{
					g_RemoteMessageSatus.HeatingCommand = 0;
					g_RemoteMessageSatus.AcCommand = 0;
					message.TBOX.TBOX_PowerMode_Req = 0;
					g_CanSendMessage[1].CanId = 0xE7;
					g_CanSendMessage[1].SendCount = 3;
					SetCanMessageData(message.data);
				}
			}
		}
	}
	if(message.TBOX.TBOX_PowerMode_Req != g_RemotepowerFlag)
	{
		g_RemotepowerFlag = message.TBOX.TBOX_PowerMode_Req;
		WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_POWER_FLAG,&g_RemotepowerFlag,1);
	}
}

static uint8_t RemoteCtrlResultFailProcess()
{		
	TBOX_MESSAGE message = {0};
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
	
	GetCanMessageData(message.data);
	m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
	m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_IDLE;
	switch(gRemoteControlSub) //REMOTE_CONTROL_POWER_ON
	{
		case REMOTE_CONTROL_AC:
			{
				m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_REQUEST;
				m_controlVariable.lastcontrolState = REMOTE_CONTROL_GENERAL_GET_RESULT;
			}
			break;
		case REMOTE_CONTROL_DOOR:
			{
				message.TBOX.TBOX_RemoteLockCtrl_Req = 0;
				SetCanMessageData(message.data);
			}
			break;
		case REMOTE_CONTROL_FIND_CAR:
			{
				message.TBOX.TBOX_RemoteCarSearch_Req = 2;
				SetCanMessageData(message.data);
			}
			break;
		case REMOTE_CONTROL_BODY:
			{
				message.TBOX.TBOX_MaxSpdLimit_Req = 2;
				SetCanMessageData(message.data);
			}
			break;
		case REMOTE_CONTROL_HEATING:
			{
				m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_REQUEST;
				m_controlVariable.lastcontrolState = REMOTE_CONTROL_GENERAL_GET_RESULT;
			}
			break;
		case REMOTE_CONTROL_FENCE:
			break;
		case REMOTE_CONTROL_CAR_READY:
			{
				message.TBOX.TBOX_RemoteForbiddenOn = 2;
				SetCanMessageData(message.data);
			}
			break;
		default:
			break;
	}
	return 0;
}
static uint8_t RemoteCtrlResultSuccessProcess()
{
	TBOX_MESSAGE message = {0};
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
	
	GetCanMessageData(message.data);
	m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
	m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_IDLE;
	switch(gRemoteControlSub) //REMOTE_CONTROL_POWER_ON
	{
		case REMOTE_CONTROL_AC:
			{
				if(g_RemoteControlSeverData[1] == 0x2)
				{
					m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_REQUEST;
					m_controlVariable.lastcontrolState = REMOTE_CONTROL_GENERAL_GET_RESULT;
				}
			}
			break;
		case REMOTE_CONTROL_DOOR:
			{
				message.TBOX.TBOX_RemoteLockCtrl_Req = 0;
				SetCanMessageData(message.data);
			}
			break;
		case REMOTE_CONTROL_FIND_CAR:
			{
				message.TBOX.TBOX_RemoteCarSearch_Req = 2;
				SetCanMessageData(message.data);
			}
			break;
		case REMOTE_CONTROL_BODY:
			{
			}
			break;
		case REMOTE_CONTROL_HEATING:
			{
				if(g_RemoteControlSeverData[1] == 0x00)
				{
					m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_REQUEST;
					m_controlVariable.lastcontrolState = REMOTE_CONTROL_GENERAL_GET_RESULT;
				}
			}
			break;
		case REMOTE_CONTROL_FENCE:
			break;
		case REMOTE_CONTROL_CAR_READY:
			break;
		default:
			break;
	}
	return 0;
}


void RemoteControlRecvPorcess(int16_t mpuSendHandle,MpuHalDataPack_t  RemoteControlDataPack)
{
	int16_t ret = -1;
	uint8_t carShareBookState = 0;
	int8_t Obdstatus = 0;
	uint32_t liveTime;
	
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
	TBOX_MESSAGE wubRemoteControlMessage = {0};
	
	ret = MpuHalReceive(mpuSendHandle,&RemoteControlDataPack,0);
	if(ret == MPU_HAL_STATUS_OK)    
    {
    
	  	if(REMOTE_CONTROL_STATE_IDLE != m_controlVariable.controlState)
        {
            return ;
        }
		
		if((RemoteControlDataPack.aid == REMOTE_CONTROL_AID) && (RemoteControlDataPack.mid == REMOTE_CONTROL_MID)  \
		   && (RemoteControlDataPack.subcommand == REMOTE_CONTROL_SUBCOMMAND_CMD))
		{			
            //memset(g_RemoteControlSeverData,0,sizeof(g_RemoteControlSeverData));
			//memcpy(g_RemoteControlSeverData, RemoteControlDataPack.pDataBuffer, 20 );
			//gRemoteControlSub = (VehicleRemoteControlBusiness_e)(RemoteControlDataPack.subcommand & 0x7F);//ACK
			gRemoteControlSub = g_RemoteControlSeverData[0]&0x7F;
            RemoteControlSendAck(mpuSendHandle,gRemoteControlSub, &RemoteControlDataPack,4);
			SetRemoteWakeupFlag(1);
			
			memset(&m_controlVariable,0,sizeof(control_variant_t));
			liveTime = (5*60*1000);
			switch(gRemoteControlSub)
            {
				case REMOTE_CONTROL_AC:
						{
							 m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
						}
						break;
				case REMOTE_CONTROL_DOOR:
						{
						   m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
						}
						break;

				case REMOTE_CONTROL_FIND_CAR:
						{
						   m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
						}
						break;

				case REMOTE_CONTROL_BODY:
						{
							if(g_FinancialFlag != 1)
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
							}
							else
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
							}
						}
						break;
				case REMOTE_CONTROL_HEATING:
						{
						   m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
						}
						break;
				case REMOTE_CONTROL_FENCE:
						{
							if(g_FinancialFlag != 1)
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
							}
							else
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
							}
						}
						break;
				case REMOTE_CONTROL_CAR_READY:
						{
							if(g_FinancialFlag != 1)
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
							}
							else
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
							}
						}
						break;
				case OTA_CONTROL_OTA_ONOFF:
						{
							 m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_REQUEST;
						}
						break;
				case OTA_CONTROL_OTA_CHANGE:
						{
						   m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
						}
						break;
				case OTA_CONTROL_OTA_GET_OBD_LINK:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
			
				case OTA_CONTROL_FINANCIAL_FLAG:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
                default:
                      {
                          m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
                      }
                      break;
			}
            PowerManageSdkSetWakeDelay(liveTime);
			PowerManageSdkResetWake(0);
		}
	}
}
static uint8_t RemoteControlTboxStatus(uint8_t RemoteControlSub)
{
	uint8_t ret = TBOX_NOMOL;
    uint32_t u16BAT_VOL;
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
    PeripheralHalAdGet(AD_CHANNEL_KL30,&u16BAT_VOL);   
	if((u16BAT_VOL > 16000)||(u16BAT_VOL < 9000))//A1
	{
		ret = TBOX_VOL;
	}
	else if(GetBusOffState() != 0)//A2
	{
		ret = TBOX_CANSTATUS;
	}
	else if(RemoteControlSub >= 0x14)//A3
	{
		ret = TBOX_SUPPORTSTATUS;
	}
	else if(0)//A4
	{
		ret = TBOX_REMOTESTATUS;
	}
	else if(stRemoteControlSignalVal.BCM_PINValid ==0)//A5
	{
		//ret = TBOX_PINSTATUS;
	}
	else if(stRemoteControlSignalVal.VCU_HV_Sts ==0x03)//A6
	{
		if((RemoteControlSub == REMOTE_CONTROL_BODY)||
			(RemoteControlSub == REMOTE_CONTROL_CAR_READY)||
			(RemoteControlSub == REMOTE_CONTROL_FENCE))
		{
			//pass
		}
		else
		{
			ret = TBOX_READYSTATUS;
		}
	}
	else if(stRemoteControlSignalVal.VCU_HV_Sts ==0x02)//A7
	{
		if((RemoteControlSub == REMOTE_CONTROL_AC)||
			(RemoteControlSub == REMOTE_CONTROL_DOOR)||
			(RemoteControlSub == REMOTE_CONTROL_FIND_CAR)||
			(RemoteControlSub == REMOTE_CONTROL_BODY)||
			(RemoteControlSub == REMOTE_CONTROL_CAR_READY)||
			(RemoteControlSub == REMOTE_CONTROL_HEATING)||
			(RemoteControlSub == REMOTE_CONTROL_FENCE))
		{
			//pass
		}
		else
		{
			ret = TBOX_POWERSTATUS;

		}
	}
	else if(stRemoteControlSignalVal.VCU_VehicleSpeed >= 0x36)//A8
	{
		if(RemoteControlSub == REMOTE_CONTROL_FENCE)
		{
			//pass
		}
		else
		{
			ret = TBOX_SPEEDSTATUS;
		}
	}
	else
	{
		ret = TBOX_NOMOL;
	}
	return ret;
}
// 辅助函数：处理挑战数据和安全密钥
// 返回值: 成功返回1，失败返回0
static uint8_t ProcessChallengeAndKey(REMOTE_CONTROL_SIGNAL_INFO *signalVal, 
                                     uint8_t* sknum, 
                                     uint32_t* challegedata, 
                                     uint32_t* skdata)
{
    // 输入参数检查
    if (!signalVal || !sknum || !challegedata || !skdata) {
        return 0; // 无效参数
    }
    
    // 处理挑战数据
    challegedata[0] = (signalVal->BCM_TBOXRandomRX_1 << 16) | signalVal->BCM_TBOXRandomRX_2;
    challegedata[1] = (signalVal->BCM_TBOXRandomRX_3 << 16) | signalVal->BCM_TBOXRandomRX_4;
    
    // 处理安全密钥数据
    for (int i = 0; i < 4; i++) {
        skdata[i] = 0;
        for (int j = 0; j < 4; j++) {
            if ((i*4 + j) < 16) { // 确保不越界
                skdata[i] |= (uint32_t)sknum[i*4 + j] << ((3-j) * 8);
            } else {
                return 0; // 安全密钥数据不足
            }
        }
    }
    
    return 1; // 处理成功
}

uint8_t RemoteControlRecvBcmMessage()
{
    static uint16_t cnt = 0;
    static uint8_t retrycnt = 0;
    static uint32_t timeOutTime = 0;
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    
    uint8_t ret = 0;
    uint32_t challegedata[2] = {0};
    uint32_t skdata[4] = {0}; // 存储处理后的安全密钥
	uint8_t sknum[16] = {0};
    TBOX_MESSAGE wubRemoteControlMessage = {0};

    // 获取信号配置和远程控制信号值
    const can_signal_configure_t *pCanSignalConfigure = GetCan0SignalConfigure();
    
    // 清空信号值结构体并获取最新值
    memset(&stRemoteControlSignalVal, 0, sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
    memcpy(&sknum, &g_sknum, sizeof(sknum));
    // 处理认证结果
    if ((stRemoteControlSignalVal.BCM_TBOXAuthResult == 1)&&(GetBcmMessageState() ==1)&&(g_RemoteCertifystatus != 2))
    {
        // 认证成功，重置状态
        cnt = 0;
        retrycnt = 0;
        g_RemoteCertifystatus = 2;
		CleanBcmMessageState();
    }
    else
    {
        // 状态机处理不同阶段
        switch (g_RemoteCertifystatus)
        {
            case 0: // 初始状态
                if ((GetNmState() == 1)||(GetBcmMessageState() ==1))
                {
                    timeOutTime = 500;
                    
                    if (cnt <= timeOutTime)
                    {
                    	if(g_skSendFlag ==1)
                    	{
                        	cnt++;
                    	}
                        if (GetBcmRemoteState() == 1)
                        {
                            // 处理挑战数据和安全密钥
                            if (ProcessChallengeAndKey(&stRemoteControlSignalVal, sknum, challegedata, skdata))
                            {
                                // 验证BCM编号
                                RemoteControlCheckBcmNum(challegedata, skdata);
                                
                                // 更新状态和清理标志
                                g_RemoteCertifystatus = 1;
                                cnt = 0;
                                timeOutTime = 200;
								g_skSendFlag = 0;
                                CleanBcmRemoteState();
                                CleanNmState();
								CleanBcmMessageState();
                            }
                            else
                            {
                                // 处理密钥处理失败的情况
                                g_RemoteCertifystatus = 3; // 错误状态
                            }
                        }
                        else
                        {
                            // 定时发送防盗请求
                            if ((cnt == 200) || (cnt == 400))
                            {
                                SendAntiTheftRequest();
                            }
                        }
                    }
                    else
                    {
                        // 超时处理
                        cnt = 0;
                        retrycnt = 0;
						g_skSendFlag = 0;
                        g_RemoteCertifystatus = 3;
                    }
                }
                break;
                
            case 1: // 验证中状态
                if (cnt <= timeOutTime)
                {
                    cnt++;
                    
                    if (GetBcmRemoteState() == 1 && GetNmState() == 1)
                    {
                        if (retrycnt <= 3)
                        {
                            retrycnt++;
                        }
                        else
                        {
                            // 重试次数超限
                            retrycnt = 0;
                            cnt = 0;
                            g_RemoteCertifystatus = 3;
                            break;
                        }
                        
                        // 处理挑战数据和安全密钥
                        if (ProcessChallengeAndKey(&stRemoteControlSignalVal, sknum, challegedata, skdata))
                        {
                            // 验证BCM编号
                            RemoteControlCheckBcmNum(challegedata, skdata);
                            
                            // 重置计数器和清理标志
                            cnt = 0;
                            CleanBcmRemoteState();
                            CleanNmState();
                            // 保持当前状态(修正原代码中的赋值错误)
                            g_RemoteCertifystatus = 1;
                        }
                        else
                        {
                            // 处理密钥处理失败的情况
                            g_RemoteCertifystatus = 3;
                        }
                    }
                }
                else
                {
                    // 超时处理
                    cnt = 0;
                    retrycnt = 0;
                    g_RemoteCertifystatus = 3;
                }
                break;
                
            case 2: // 认证成功状态
            	//SendSkCheackRes(0x00);
                break;
                
            case 3: // 错误/超时状态
				//SendSkCheackRes(0x5F);
                break;
                
            default:
                // 未知状态处理
                cnt = 0;
                retrycnt = 0;
                g_RemoteCertifystatus = 0; // 重置为初始状态
                break;
        }
    }
    
    return 0;
}

void SetRemoteSkNum(uint8_t *key)
{
	memcpy(g_sknum,key,sizeof(g_sknum));
}
void SetRemoteFinancialFlag(uint8_t Flag)
{
	g_FinancialFlag = Flag;
}
void setRemoteCertifystatus()
{
	g_RemoteCertifystatus = 0;
	CleanBcmRemoteState();
	CleanNmState();//CLEAN
	
}
/******************************************************************************
***
*** Function Name:
***     TboxGetRemoteControlResult
***
*** Function Description:
***     远程控制业务的执行情况汇报
***
*** Inputs:
***　　0:执行失败
***    1:执行成功　
***    2:条件不满足
*** Returns:
***
***
*** Comments:
***
***
*******************************************************************************/
static uint8_t TboxGetRemoteControlPowerResult(uint8_t *RemoteCtrlResultCode)
{
	uint8_t u8RespCode = 0;
	uint8_t severDataTemp[20]={0};
	
	uint8_t ACResult = 0;
	
	static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
	memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
	GetRemoteControlSignalValue(&stRemoteControlSignalVal);
	
	const can_signal_configure_t *pCanSignalConfigure = NULL; 
	pCanSignalConfigure = GetCan0SignalConfigure();
	
	if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_POWER_ON_RESPONSE)
	{
		
		switch (gRemoteControlSub) 
		{	 
			case REMOTE_CONTROL_AC:
					{
						severDataTemp[0] = 0x02;
						severDataTemp[1] = 0xD3;
						u8RespCode = 1;
					}
					break;
			case REMOTE_CONTROL_HEATING:
					{
						severDataTemp[0] = 0x02;
						severDataTemp[1] = 0xD3;
						u8RespCode = 1;
					}
					break;
			default:
					break;
		}
	}
	else if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_POWER_OFF_RESPONSE)
	{
		switch (gRemoteControlSub) 
		{	 
			case REMOTE_CONTROL_AC:
					{
						if(PeripheralHalGetKl15Status()!=0)
						{
							severDataTemp[14] = 0x02;
							severDataTemp[15] = 0xD4;
							u8RespCode = 1;
						}
						else
						{
							severDataTemp[14] = 0x01;
							severDataTemp[15] = 0x00;
							u8RespCode = 0;
						}
					}
					break;
			case REMOTE_CONTROL_HEATING:
					{
							if(PeripheralHalGetKl15Status()!=0)
							{
								if(1==g_RemoteControlSeverData[1])
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0xD4;
									u8RespCode = 1;
								}
								else
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0xD4;
									u8RespCode = 1;
								}
							}
							else
							{
								if(1==g_RemoteControlSeverData[1])
								{
									severDataTemp[0] = 0x01;
									severDataTemp[1] = 0x00;
									u8RespCode = 0;
								}
								else
								{
									severDataTemp[2] = 0x01;
									severDataTemp[3] = 0x00;
									u8RespCode = 0;
								}
							}
					}
					break;
			default:
					break;
		}
	}
	
	else if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_POWER_OFF_REQUEST)
	{
		switch (gRemoteControlSub) 
		{	 
			case REMOTE_CONTROL_AC:
					{
						severDataTemp[0] = 0x01;
						severDataTemp[1] = 0x00;
						u8RespCode = 1;
					}
					break;
			case REMOTE_CONTROL_HEATING:
					{
						severDataTemp[0] = 0x01;
						severDataTemp[1] = 0x00;
						u8RespCode = 1;
					}
					break;
			default:
					break;
		}
	}
	memcpy(RemoteCtrlResultCode,severDataTemp,sizeof(severDataTemp));
    return u8RespCode;

}
static uint8_t TboxGetRemoteControlResult(uint8_t *RemoteCtrlResultCode)
{
    uint8_t u8RespCode = 0;
    uint8_t severDataTemp[20]={0};
    uint8_t FlashResult = 0;
    uint8_t ACResult = 0;
	uint32_t length;
	
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
	
    const can_signal_configure_t *pCanSignalConfigure = NULL; 
    pCanSignalConfigure = GetCan0SignalConfigure();

	
    switch (gRemoteControlSub) 
    {    
    	
		case OTA_CONTROL_OTA_GET_OBD_LINK:
				{
					severDataTemp[0] = GetOBDFlag();
					u8RespCode = 1;
				}
				break;
		case OTA_CONTROL_FINANCIAL_FLAG:
				{
					
					if(0==g_RemoteControlSeverData[1])//
					{
						severDataTemp[0] = 0x01;
						severDataTemp[1] = g_FinancialFlag;
					}
					else if(1==g_RemoteControlSeverData[1])//
					{
						if(g_FinancialFlag != 1)
						{
							g_FinancialFlag = 1;
							FlashResult = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_REMOTE_CONFIG,&g_FinancialFlag,1);
							if(FlashResult == 0)
							{
								severDataTemp[2] = 0x01;
								severDataTemp[3] = 0x00;
							}
							else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0xD3;
							}
						}
						else
						{
							severDataTemp[2] = 0x01;
							severDataTemp[3] = 0x00;
						}
					}
					else if(2==g_RemoteControlSeverData[1])//
					{
						if(g_FinancialFlag != 0)
						{
							g_FinancialFlag = 0;
							FlashResult = WorkFlashVehicleInforStore(E_PARAMETER_INFO_ECU_REMOTE_CONFIG,&g_FinancialFlag,1);
							if(FlashResult == 0)
							{
								severDataTemp[4] = 0x01;
								severDataTemp[5] = 0x00;
							}
							else
							{
								severDataTemp[4] = 0x02;
								severDataTemp[5] = 0xD3;
							}
						}
						else
						{
							severDataTemp[4] = 0x01;
							severDataTemp[5] = 0x00;
						}
					}
					u8RespCode = 1;
				}
				break;
		case OTA_CONTROL_OTA_ONOFF:
				{
					if(0==g_RemoteControlSeverData[1])//
					{
						if(stRemoteControlSignalVal.VCU_HV_Sts ==1)
						{
							severDataTemp[0] = 0x01;
							severDataTemp[1] = 0x00;
							u8RespCode = 1;
						}
						else
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x1D;
							u8RespCode = 0;
						}
					}
					else if(1==g_RemoteControlSeverData[1])//
					{
						if(stRemoteControlSignalVal.VCU_HV_Sts ==2)
						{
							severDataTemp[0] = 0x01;
							severDataTemp[1] = 0x00;
							u8RespCode = 1;
						}
						else
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x1D;
							u8RespCode = 0;
						}
					}
					else if(2==g_RemoteControlSeverData[1])//
					{
						severDataTemp[0] = 0x01;
						severDataTemp[1] = 0x00;
						u8RespCode = 1;
					}
				}
				break;
		case OTA_CONTROL_OTA_CHANGE:
				{
					if(0==g_RemoteControlSeverData[1])//
					{
						if(stRemoteControlSignalVal.BCM_FotaMode ==0)
						{
							severDataTemp[0] = 0x01;
							severDataTemp[1] = 0x00;
							u8RespCode = 1;
						}
						else
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x1D;
							u8RespCode = 0;
						}
					}
					else if(1==g_RemoteControlSeverData[1])//
					{
						if(stRemoteControlSignalVal.BCM_FotaMode ==1)
						{
							severDataTemp[0] = 0x01;
							severDataTemp[1] = 0x00;
							u8RespCode = 1;
						}
						else
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x1D;
							u8RespCode = 0;
						}
					}
				}
				break;
        case REMOTE_CONTROL_DOOR:  
            {
				if(m_controlVariable.lastcontrolState != REMOTE_CONTROL_STATE_LVA_CHECK)
				{
					if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_GET_SEED_CHECK)
					{
						if(1==g_RemoteControlSeverData[1])
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x02;
							u8RespCode = 1;
						}else
						{
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0x02;
							u8RespCode = 1;
						}
					}
					else
					{
						if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_BODY_STATUS_RESULT)
						{
							if(2==g_RemoteControlSeverData[1])//open door
							{
								if(stRemoteControlSignalVal.BCM_CentralLock_Sts == 1)
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x04;
									u8RespCode = 1;
								}
							}
							else if(1==g_RemoteControlSeverData[1])//close door
							{
								if((stRemoteControlSignalVal.BCM_DoorFL_Sts != 0)||(stRemoteControlSignalVal.BCM_DoorFR_Sts != 0)
									||(stRemoteControlSignalVal.BCM_SildDoorRR_Sts != 0))
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x14;
									u8RespCode = 1;
								}
								if(stRemoteControlSignalVal.ACU_CrashOutput_Sts != 0)
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x1E;
									u8RespCode = 1;
								}
							}
						}
						else 
						{
							if(CanSignalIsValid(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&(pCanSignalConfigure->BCM_CentralLock_Sts)) == 0 )
							{
								if((0 == stRemoteControlSignalVal.BCM_CentralLock_Sts)&&(1==g_RemoteControlSeverData[1]))
								{
									u8RespCode = 1;
									severDataTemp[0] = 0x01;
									severDataTemp[1] = 0x00;
								}
								else if((1 == stRemoteControlSignalVal.BCM_CentralLock_Sts)&&(2==g_RemoteControlSeverData[1]))
								{
									u8RespCode = 1;
									severDataTemp[2] = 0x01;
									severDataTemp[3] = 0x00;
								}
								else 
								{
									if(1==g_RemoteControlSeverData[1])
									{
										severDataTemp[0] = 0x02;
										severDataTemp[1] = 0x1C;
										u8RespCode = 0;
									}else
									{
										severDataTemp[2] = 0x02;
										severDataTemp[3] = 0x1C;
										u8RespCode = 0;
									}
								}
							}
							else
							{
								if(1==g_RemoteControlSeverData[1])
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x1D;
									u8RespCode = 0;
								}else
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x1D;
									u8RespCode = 0;
								}
							}
						}
					}
				}
				else
				{
					if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_VOL)
					{
						if(1==g_RemoteControlSeverData[1])
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x03;
							u8RespCode = 1;
						}else
						{
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0x03;
							u8RespCode = 1;
						}
					}
					else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_CANSTATUS)
					{
							if(1==g_RemoteControlSeverData[1])
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1A;
								u8RespCode = 1;
							}else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x1A;
								u8RespCode = 1;
							}
					}
					else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_PINSTATUS)
					{
							if(1==g_RemoteControlSeverData[1])
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x01;
								u8RespCode = 1;
							}else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x01;
								u8RespCode = 1;
							}
					}
					else if((RemoteControlTboxStatus(gRemoteControlSub) == TBOX_READYSTATUS)||(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_POWERSTATUS))
					{
							if(1==g_RemoteControlSeverData[1])
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x06;
								u8RespCode = 1;
							}else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x06;
								u8RespCode = 1;
							}
					}
					else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_SPEEDSTATUS)
					{
							if(1==g_RemoteControlSeverData[1])
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x10;
								u8RespCode = 1;
							}else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x10;
								u8RespCode = 1;
							}
					}
				}
            }
            break;
		case REMOTE_CONTROL_FIND_CAR:
				{
					if(m_controlVariable.lastcontrolState != REMOTE_CONTROL_STATE_LVA_CHECK)
					{
						if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_GET_SEED_CHECK)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x02;
							u8RespCode = 0;
						}else
						{	
							
							if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_BODY_STATUS_RESULT)
							{
								if((stRemoteControlSignalVal.BCM_DoorFL_Sts != 0)||(stRemoteControlSignalVal.BCM_DoorFR_Sts != 0)
									||(stRemoteControlSignalVal.BCM_SildDoorRR_Sts != 0))
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x14;
									u8RespCode = 1;
								}
								if(stRemoteControlSignalVal.BCM_CentralLock_Sts != 0)
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x04;
									u8RespCode = 1;
								}
								
								if((stRemoteControlSignalVal.BCM_TurnIndcrLe_Sts == 1)&&(stRemoteControlSignalVal.BCM_TurnIndcrRi_Sts == 1))
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x1F;
									u8RespCode = 1;
								}
							}
							else
							{
								if(CanSignalIsValid(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&(pCanSignalConfigure->BCM_RemoteCarSearch_Sts)) == 0 )
								{
									if(0 == stRemoteControlSignalVal.BCM_RemoteCarSearch_Sts)
									{
										severDataTemp[0] = 0x02;
										severDataTemp[1] = 0x1C;
										u8RespCode = 1;
									}
									else if(1 == stRemoteControlSignalVal.BCM_RemoteCarSearch_Sts)
									{
										severDataTemp[0] = 0x01;
										severDataTemp[1] = 0x00;
										u8RespCode = 1;
									}
								}
								else 
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x1D;
									u8RespCode = 0;
								}
							}
						}
					
					}
					else
					{
						if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_VOL)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x03;
							u8RespCode = 1;
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_CANSTATUS)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x1A;
							u8RespCode = 1;
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_PINSTATUS)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x01;
							u8RespCode = 1;
						}
						else if((RemoteControlTboxStatus(gRemoteControlSub) == TBOX_READYSTATUS)||(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_POWERSTATUS))
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x06;
							u8RespCode = 1;
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_SPEEDSTATUS)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x10;
							u8RespCode = 1;
						}
					}
				}
				break;
		case REMOTE_CONTROL_CAR_READY:
				{
						if(m_controlVariable.lastcontrolState != REMOTE_CONTROL_STATE_LVA_CHECK)
						{
							if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_GET_SEED_CHECK)
							{
								if(g_RemoteControlSeverData[1] !=0)//
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x02;
									u8RespCode = 0;
								}
								else
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x02;
									u8RespCode = 0;
								}
							}
							else
							{
								
								if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_BODY_STATUS_RESULT)
								{
									if(stRemoteControlSignalVal.ACU_CrashOutput_Sts != 0)
									{
										severDataTemp[0] = 0x02;
										severDataTemp[1] = 0x1E;
										u8RespCode = 1;
									}
									
									if(stRemoteControlSignalVal.VCU_VehicleFault_Sts == 5)
									{
										severDataTemp[0] = 0x02;
										severDataTemp[1] = 0x1B;
										u8RespCode = 1;
									}
								}
								else
								{
									if(g_RemoteControlSeverData[1] !=0)//
									{
										severDataTemp[0] = 0x01;
										severDataTemp[1] = 0x00;
										u8RespCode = 1;
									}
									else
									{
										severDataTemp[2] = 0x01;
										severDataTemp[3] = 0x00;
										u8RespCode = 1;
									}
								}
							}
						}	
						else
						{
							if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_VOL)
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x03;
								u8RespCode = 1;
							}
							else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_CANSTATUS)
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1A;
								u8RespCode = 1;
							}
							else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_PINSTATUS)
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x01;
								u8RespCode = 1;
							}
							else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_SPEEDSTATUS)
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x10;
								u8RespCode = 1;
							}
						}
				}
				break;
		case REMOTE_CONTROL_BODY:
				{
					severDataTemp[4] = GetRemoteDtcStatus();
					if(m_controlVariable.lastcontrolState != REMOTE_CONTROL_STATE_LVA_CHECK)
					{
						if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_GET_SEED_CHECK)
						{
							if(g_RemoteControlSeverData[2] !=0)//
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x02;
								u8RespCode = 0;
							}
							else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x02;
								u8RespCode = 0;
							}
						}
						else
						{
							
							if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_BODY_STATUS_RESULT)
							{
								
								if(g_RemoteControlSeverData[2] !=0)//
								{
									if(stRemoteControlSignalVal.ACU_CrashOutput_Sts != 0)
									{
										severDataTemp[0] = 0x02;
										severDataTemp[1] = 0x1E;
										u8RespCode = 1;
									}
									
									if(stRemoteControlSignalVal.VCU_VehicleFault_Sts == 5)
									{
										severDataTemp[0] = 0x02;
										severDataTemp[1] = 0x1B;
										u8RespCode = 1;
									}
								}
								else
								{
									if(stRemoteControlSignalVal.ACU_CrashOutput_Sts != 0)
									{
										severDataTemp[2] = 0x02;
										severDataTemp[3] = 0x1E;
										u8RespCode = 1;
									}
									
									if(stRemoteControlSignalVal.VCU_VehicleFault_Sts == 5)
									{
										severDataTemp[2] = 0x02;
										severDataTemp[3] = 0x1B;
										u8RespCode = 1;
									}
								}
				
							}
							else
							{
								if(CanSignalIsValid(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&(pCanSignalConfigure->VCU_MaxSpdLimit_Sts)) == 0 )
								{
									
									if(g_RemoteControlSeverData[2] !=0)//
									{
										if(stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts != 1)
										{
											severDataTemp[0] = 0x02;
											severDataTemp[1] = 0x1C;
											u8RespCode = 0;
										}
										else if(stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts == 1)
										{
											severDataTemp[0] = 0x01;
											severDataTemp[1] = 0x00;
											u8RespCode = 1;
										}
									}
									else
									{
										if(stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts != 0)
										{
											severDataTemp[2] = 0x02;
											severDataTemp[3] = 0x1C;
											u8RespCode = 0;
										}
										else if(stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts ==0)
										{
											severDataTemp[2] = 0x01;
											severDataTemp[3] = 0x00;
											u8RespCode = 1;
										}
									}
								}
								else 
								{
									
									if(g_RemoteControlSeverData[2] !=0)//
									{
										severDataTemp[0] = 0x02;
										severDataTemp[1] = 0x1D;
										u8RespCode = 0;
									}
									else
									{
										severDataTemp[2] = 0x02;
										severDataTemp[3] = 0x1D;
										u8RespCode = 0;
									}
								}
							}
						}
					}	
					else
					{
						if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_VOL)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x03;
							u8RespCode = 1;
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_CANSTATUS)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x1A;
							u8RespCode = 1;
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_PINSTATUS)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x01;
							u8RespCode = 1;
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_SPEEDSTATUS)
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x10;
							u8RespCode = 1;
						}
					}
				}
				break;
		case REMOTE_CONTROL_HEATING:
				{
					
					if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_GENERAL_REQUEST)
					{
						if(1==g_RemoteControlSeverData[1])
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0xA9;
							u8RespCode = 1;
						}else
						{
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0xA9;
							u8RespCode = 1;
						}
					}
					else if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_LVA_CHECK)
					{
						if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_VOL)
						{
							if(1==g_RemoteControlSeverData[1])
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x03;
								u8RespCode = 1;
							}else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x03;
								u8RespCode = 1;
							}
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_CANSTATUS)
						{
								if(1==g_RemoteControlSeverData[1])
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x1A;
									u8RespCode = 1;
								}else
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x1A;
									u8RespCode = 1;
								}
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_PINSTATUS)
						{
								if(1==g_RemoteControlSeverData[1])
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x01;
									u8RespCode = 1;
								}else
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x01;
									u8RespCode = 1;
								}
						}
						else if((RemoteControlTboxStatus(gRemoteControlSub) == TBOX_READYSTATUS)||(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_POWERSTATUS))
						{
								if(1==g_RemoteControlSeverData[1])
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x06;
									u8RespCode = 1;
								}else
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x06;
									u8RespCode = 1;
								}
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_SPEEDSTATUS)
						{
								if(1==g_RemoteControlSeverData[1])
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x10;
									u8RespCode = 1;
								}else
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x10;
									u8RespCode = 1;
								}
						}
					}
					else if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_BODY_STATUS_RESULT)
					{
						if(g_PowerOncnt >= 5)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x0B;
								u8RespCode = 1;
							}else if(0==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x0B;
								u8RespCode = 1;
							}
						}
						else if(g_PowerOnNGcnt >= 8)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x0A;
								u8RespCode = 1;
							}else if(0==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x0A;
								u8RespCode = 1;
							}
						}
						else if(stRemoteControlSignalVal.ACU_CrashOutput_Sts != 0)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1E;
								u8RespCode = 1;
							}else if(0==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x1E;
								u8RespCode = 1;
							}
						}
						else if(stRemoteControlSignalVal.VCU_VehicleFault_Sts == 5)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1B;
								u8RespCode = 1;
							}else if(0==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x1B;
								u8RespCode = 1;
							}
						}
					}
					else if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_GET_SEED_CHECK)
					{									
						if(1==g_RemoteControlSeverData[1])//open
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x02;
							u8RespCode = 1;
						}else if(0==g_RemoteControlSeverData[1])//close
						{									
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0x02;
							u8RespCode = 1;
						}
					}
					else
					{
						if(CanSignalIsValid(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&(pCanSignalConfigure->BMS_RemoteHeat_Sts)) == 0 )
						{
							if(stRemoteControlSignalVal.BMS_RemoteHeat_Sts == 1)
							{
								if(1==g_RemoteControlSeverData[1])//open
								{
									severDataTemp[0] = 0x01;
									severDataTemp[1] = 0x00;
									u8RespCode = 1;
									g_RemoteMessageSatus.HeatingCommand = 1;
								}else if(0==g_RemoteControlSeverData[1])//close
								{									
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x1C;
									u8RespCode = 0;
								}
							}
							else 
							{
								if(1==g_RemoteControlSeverData[1])//open
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x1C;
									u8RespCode = 0;
								}else if(0==g_RemoteControlSeverData[1])//close
								{									
									severDataTemp[2] = 0x01;
									severDataTemp[3] = 0x00;
									u8RespCode = 1;
									g_RemoteMessageSatus.HeatingCommand = 0;
								}
							}
						}
						else
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1D;
								u8RespCode = 0;
							}else if(0==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x0D;
								u8RespCode = 0;
							}
						}
					}
				}
				break;
				
		case REMOTE_CONTROL_FENCE:
				{
					if(m_controlVariable.lastcontrolState != REMOTE_CONTROL_STATE_LVA_CHECK)
					{
						if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_GET_SEED_CHECK)
						{
							if(g_RemoteControlSeverData[1] !=0)//
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x02;
								u8RespCode = 0;
							}
							else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x02;
								u8RespCode = 0;
							}
						}
						else
						{
							
							if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_BODY_STATUS_RESULT)
							{
								//do noting
							}
							else
							{
								
									if(CanSignalIsValid(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&(pCanSignalConfigure->VCU_MaxSpdLimit_Sts)) == 0 )
									{
										
										if(g_RemoteControlSeverData[1] !=0)//
										{
											if(0 == stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts)
											{
												severDataTemp[0] = 0x02;
												severDataTemp[1] = 0x1C;
												u8RespCode = 0;
											}
											else if(1 == stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts)
											{
												severDataTemp[0] = 0x01;
												severDataTemp[1] = 0x00;
												u8RespCode = 1;
												g_RemoteMessageSatus.FenceCommand = 1;
											}
										}
										else
										{
											if(stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts ==1)
											{
												severDataTemp[2] = 0x02;
												severDataTemp[3] = 0x1C;
												u8RespCode = 0;
											}
											else if(stRemoteControlSignalVal.VCU_MaxSpdLimit_Sts ==0)
											{
												severDataTemp[2] = 0x01;
												severDataTemp[3] = 0x00;
												u8RespCode = 1;
												g_RemoteMessageSatus.FenceCommand = 0;
											}
										}
									}
									else 
									{
										
										if(g_RemoteControlSeverData[1] !=0)//
										{
											severDataTemp[0] = 0x02;
											severDataTemp[1] = 0x1D;
											u8RespCode = 0;
										}
										else
										{
											severDataTemp[2] = 0x02;
											severDataTemp[3] = 0x1D;
											u8RespCode = 0;
										}
									}
								}
							}
					}	
					else
					{
						if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_VOL)
						{
							if(g_RemoteControlSeverData[1] !=0)//
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x03;
								u8RespCode = 1;
							}
							else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x03;
								u8RespCode = 1;
							}
						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_CANSTATUS)
						{
							if(g_RemoteControlSeverData[1] !=0)//
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1A;
								u8RespCode = 1;
							}
							else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x1A;
								u8RespCode = 1;
							}

						}
						else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_PINSTATUS)
						{
							if(g_RemoteControlSeverData[1] !=0)//
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x01;
								u8RespCode = 1;
							}
							else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x01;
								u8RespCode = 1;
							}
						}
					}
				}
				break;
		case REMOTE_CONTROL_AC:
		{
			if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_GENERAL_REQUEST)
			{
				if(1==g_RemoteControlSeverData[1])
				{
					severDataTemp[0] = 0x02;
					severDataTemp[1] = 0xA9;
					u8RespCode = 1;
				}else
				{
					severDataTemp[2] = 0x02;
					severDataTemp[3] = 0xA9;
					u8RespCode = 1;
				}
			}
			else if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_LVA_CHECK)
			{
				if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_VOL)
				{
					if(1==g_RemoteControlSeverData[1])
					{
						severDataTemp[0] = 0x02;
						severDataTemp[1] = 0x03;
						u8RespCode = 1;
					}else
					{
						severDataTemp[2] = 0x02;
						severDataTemp[3] = 0x03;
						u8RespCode = 1;
					}
				}
				else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_CANSTATUS)
				{
						if(1==g_RemoteControlSeverData[1])
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x1A;
							u8RespCode = 1;
						}else
						{
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0x1A;
							u8RespCode = 1;
						}
				}
				else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_PINSTATUS)
				{
						if(1==g_RemoteControlSeverData[1])
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x01;
							u8RespCode = 1;
						}else
						{
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0x01;
							u8RespCode = 1;
						}
				}
				else if((RemoteControlTboxStatus(gRemoteControlSub) == TBOX_READYSTATUS)||(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_POWERSTATUS))
				{
						if(1==g_RemoteControlSeverData[1])
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x06;
							u8RespCode = 1;
						}else
						{
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0x06;
							u8RespCode = 1;
						}
				}
				else if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_SPEEDSTATUS)
				{
						if(1==g_RemoteControlSeverData[1])
						{
							severDataTemp[0] = 0x02;
							severDataTemp[1] = 0x10;
							u8RespCode = 1;
						}else
						{
							severDataTemp[2] = 0x02;
							severDataTemp[3] = 0x10;
							u8RespCode = 1;
						}
				}
			}
			else 
			{
				if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_GET_SEED_CHECK)
				{
					if(g_RemoteControlSeverData[1] == 2)//close
					{
						severDataTemp[2] = 0x02;
						severDataTemp[3] = 0x02;
						u8RespCode = 1;
					}
					else if(g_RemoteControlSeverData[1] == 1)//open
					{
						severDataTemp[0] = 0x02;
						severDataTemp[1] = 0x02;
						u8RespCode = 1;
					}
				}
				else
				{
					if(m_controlVariable.lastcontrolState == REMOTE_CONTROL_STATE_BODY_STATUS_RESULT)
					{
						if(g_PowerOncnt >= 5)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x0B;
								u8RespCode = 1;
							}else if(2==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x0B;
								u8RespCode = 1;
							}
						}
						else if(g_PowerOnNGcnt >= 8)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x0A;
								u8RespCode = 1;
							}else if(2==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x0A;
								u8RespCode = 1;
							}
						}
						else if(stRemoteControlSignalVal.ACU_CrashOutput_Sts != 0)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1E;
								u8RespCode = 1;
							}else if(2==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x1E;
								u8RespCode = 1;
							}
						}
						
						else if(stRemoteControlSignalVal.VCU_VehicleFault_Sts == 5)
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1B;
								u8RespCode = 1;
							}else if(2==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x1B;
								u8RespCode = 1;
							}
						}
						else if(stRemoteControlSignalVal.VCU_Range < 0x3C )
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x19;
								u8RespCode = 1;
							}else if(2==g_RemoteControlSeverData[1])//close
							{									
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x19;
								u8RespCode = 1;
							}
						}
					}
					else
					{
						if(g_RemoteControlSeverData[1] == 2)//close
						{
							if(CanSignalIsValid(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&(pCanSignalConfigure->ACM_AirCondONOFF_Sts)) == 0 )
							{
								if(stRemoteControlSignalVal.ACM_AirCondONOFF_Sts == 0)
								{
									severDataTemp[2] = 0x01;
									severDataTemp[3] = 0x00;
									u8RespCode = 1;
									g_RemoteMessageSatus.AcCommand = 0;
								}
								else if(stRemoteControlSignalVal.ACM_AirCondONOFF_Sts == 1)
								{
									severDataTemp[2] = 0x02;
									severDataTemp[3] = 0x13;
									u8RespCode = 0;
								}
							}
							else
							{
								severDataTemp[2] = 0x02;
								severDataTemp[3] = 0x1D;
								u8RespCode = 0;
							}
						}
						else if(g_RemoteControlSeverData[1] == 1)
						{
							if(CanSignalIsValid(VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB,&(pCanSignalConfigure->ACM_AirCondONOFF_Sts)) == 0 )
							{
								if(stRemoteControlSignalVal.ACM_AirCondONOFF_Sts == 0)
								{
									severDataTemp[0] = 0x02;
									severDataTemp[1] = 0x13;
									u8RespCode = 0;
								}
								else if(stRemoteControlSignalVal.ACM_AirCondONOFF_Sts == 1)
								{
									severDataTemp[0] = 0x01;
									severDataTemp[1] = 0x00;
									u8RespCode = 1;
									g_RemoteMessageSatus.AcCommand = 1;
									//WENDU
									if(g_RemoteControlSeverData[5] < (18+40))//<18
									{
										if(stRemoteControlSignalVal.ACM_Temp_Sts == 0)
										{
											severDataTemp[4] = 0x01;
											severDataTemp[5] = 0x00;
										}
										else
										{
											severDataTemp[4] = 0x02;
											severDataTemp[5] = 0x13;
										}
									}
									else if(g_RemoteControlSeverData[5] > (31+40))//>31
									{
										if(stRemoteControlSignalVal.ACM_Temp_Sts == 0x0F)
										{
											severDataTemp[4] = 0x01;
											severDataTemp[5] = 0x00;
										}
										else
										{
											severDataTemp[4] = 0x02;
											severDataTemp[5] = 0x13;
										}
									}else
									{
										
										if(stRemoteControlSignalVal.ACM_Temp_Sts == (g_RemoteControlSeverData[5]-(40+18)+2))//-40PAINYI -18BIAOZHUN +2moren
										{
											severDataTemp[4] = 0x01;
											severDataTemp[5] = 0x00;
										}
										else
										{
											severDataTemp[4] = 0x02;
											severDataTemp[5] = 0x13;
										}
									}
									//FENGSU
									if(g_RemoteControlSeverData[6] == stRemoteControlSignalVal.ACM_BlowerSpd_Sts)
									{
										severDataTemp[6] = 0x01;
										severDataTemp[7] = 0x00;
									}
									else
									{
										severDataTemp[6] = 0x02;
										severDataTemp[7] = 0x13;
									}
									//NEI WAI
									if(g_RemoteControlSeverData[3] == stRemoteControlSignalVal.ACM_AirCircln_Sts)
									{
										severDataTemp[8] = 0x01;
										severDataTemp[9] = 0x00;
									}
									else
									{
										severDataTemp[8] = 0x02;
										severDataTemp[9] = 0x13;
									}
									//CHUIFENG MODE
									switch(g_RemoteControlSeverData[4])
									{
										case 0:
											if(stRemoteControlSignalVal.ACM_AirDistributionMode_Sts == 0)
											{
												ACResult = 1;
											}
											break;
										case 1:
											if(stRemoteControlSignalVal.ACM_AirDistributionMode_Sts == 2)
											{
												ACResult = 1;
											}
											break;
										case 2:
											if(stRemoteControlSignalVal.ACM_AirDistributionMode_Sts == 1)
											{
												ACResult = 1;
											}
											break;
										case 3:
											if(stRemoteControlSignalVal.ACM_AirDistributionMode_Sts ==3)
											{
												ACResult = 1;
											}
											break;
										case 4:
											if(stRemoteControlSignalVal.ACM_AirDistributionMode_Sts == 4)
											{
												ACResult = 1;
											}
											break;
										case 5:
											if(stRemoteControlSignalVal.ACM_FrontDefrost_Sts == 1)
											{
												ACResult = 1;
											}
											break;									
									}									
									if(ACResult == 1)
									{
										severDataTemp[10] = 0x01;
										severDataTemp[11] = 0x00;
										ACResult = 0;
									}
									else
									{
										severDataTemp[10] = 0x02;
										severDataTemp[11] = 0x13;
										ACResult = 0;
									}
									//AC MODE	
									switch(g_RemoteControlSeverData[2])
									{
										case 1:
											if(stRemoteControlSignalVal.ACM_ACSwitch_Sts == 1)
											{
												ACResult = 1;
											}
											break;
										case 2:
											if(stRemoteControlSignalVal.ACM_PTCSwitch_Sts == 1)
											{
												ACResult = 1;
											}
											break;
										case 3:
											break;	
										case 4:
											if((stRemoteControlSignalVal.ACM_BlowerSpd_Sts ==7)&&(stRemoteControlSignalVal.ACM_Temp_Sts == 0x10))
											{
												ACResult = 1;
											}
											break;
										case 5:
											if((stRemoteControlSignalVal.ACM_BlowerSpd_Sts ==7)&&(stRemoteControlSignalVal.ACM_Temp_Sts == 0x01))
											{
												ACResult = 1;
											}
											break;
										case 6:
											break;
											
									}
									if(ACResult == 1)
									{
										severDataTemp[12] = 0x01;
										severDataTemp[13] = 0x00;
										ACResult = 0;
									}
									else
									{
										severDataTemp[12] = 0x02;
										severDataTemp[13] = 0x13;
										ACResult = 0;
									}
								}
							}
							else
							{
								severDataTemp[0] = 0x02;
								severDataTemp[1] = 0x1D;
								u8RespCode = 0;
							}
						}
					}
				}
			}
		}
		break;
         default:
            break;

    }
	
	memcpy(RemoteCtrlResultCode,severDataTemp,sizeof(severDataTemp));
    return u8RespCode;
}
void VehicleRemoteControlCanProcess(int16_t uartHandle)
{
    static uint32_t TimeCnt = 0;  
    static uint32_t PowerTimeCnt = 0;
    uint32_t timeOutTime;
    CanHalMsg_t canMsg = {0};
    uint8_t canData[8] = {0};
    uint8_t severDataTemp[20];
	uint8_t lucExcResult=0;
    uint8_t ret;
	TBOX_MESSAGE message = {0};
    static REMOTE_CONTROL_SIGNAL_INFO stRemoteControlSignalVal = {0};
    memset(&stRemoteControlSignalVal, 0 , sizeof(stRemoteControlSignalVal));
    GetRemoteControlSignalValue(&stRemoteControlSignalVal);
	
    const can_signal_configure_t *pCanSignalConfigure = NULL; 
    pCanSignalConfigure = GetCan0SignalConfigure();
	
    memset(severDataTemp,0x00,sizeof(severDataTemp));
	GetCanMessageData(message.data);

	switch(m_controlVariable.controlState)
	{
		case REMOTE_CONTROL_STATE_IDLE:
 			break;
		case REMOTE_CONTROL_GENERAL_REQUEST:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_GENERAL_REQUEST;
			switch(gRemoteControlSub) 
			{
				case REMOTE_CONTROL_AC:
				case REMOTE_CONTROL_DOOR:
				case REMOTE_CONTROL_FIND_CAR:
				case REMOTE_CONTROL_HEATING:
				case REMOTE_CONTROL_FENCE:
				case REMOTE_CONTROL_BODY://KL15 ON/OFF
				case REMOTE_CONTROL_CAR_READY://KL15 ON/OFF
				case OTA_CONTROL_OTA_ONOFF:
						{
							if((gRemoteControlSub == REMOTE_CONTROL_AC)||(gRemoteControlSub == REMOTE_CONTROL_HEATING))
							{
								if((PeripheralHalGetKl15Status()!=0)&&(stRemoteControlSignalVal.BCM_PowerMode !=3))
								{
									PowerTimeCnt = 0;
									m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
								}
								else
								{
									
									PowerTimeCnt++;
									if(PowerTimeCnt<200)//wait 2S
									{
										if((stRemoteControlSignalVal.BCM_TBOXAuthResult != 1)&&(GetBcmMessageState() ==1))
										{
											PowerTimeCnt = 0;
											CleanBcmMessageState();
											CleanBcmRemoteState();
											SendAntiTheftRequest();
											g_RemoteCertifystatus = 0;
											m_controlVariable.controlState = REMOTE_CONTROL_STATE_LVA_CHECK;
										}
										else if((stRemoteControlSignalVal.BCM_TBOXAuthResult == 1)&&(GetBcmMessageState() ==1))
										{
											PowerTimeCnt = 0;
											CleanBcmMessageState();
											m_controlVariable.controlState = REMOTE_CONTROL_STATE_LVA_CHECK;
										}
										
									}
									else
									{
										PowerTimeCnt = 0;
										CleanBcmMessageState();										
										CleanBcmRemoteState();
										SendAntiTheftRequest();
										g_RemoteCertifystatus = 0;
										m_controlVariable.controlState = REMOTE_CONTROL_STATE_LVA_CHECK;
									}
									
								}
							}
							else
							{
								PowerTimeCnt++;
								if(PowerTimeCnt<200)//wait 2S
								{
									if((stRemoteControlSignalVal.BCM_TBOXAuthResult != 1)&&(GetBcmMessageState() ==1))
									{
										PowerTimeCnt = 0;
										CleanBcmMessageState();
										CleanBcmRemoteState();
										SendAntiTheftRequest();
										g_RemoteCertifystatus = 0;
										if(gRemoteControlSub != OTA_CONTROL_OTA_ONOFF)
										{
											m_controlVariable.controlState = REMOTE_CONTROL_STATE_LVA_CHECK;
										}
										else
										{
											m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
										}
									}
									else if((stRemoteControlSignalVal.BCM_TBOXAuthResult == 1)&&(GetBcmMessageState() ==1))
									{
										PowerTimeCnt = 0;
										CleanBcmMessageState();
										if(gRemoteControlSub != OTA_CONTROL_OTA_ONOFF)
										{
											m_controlVariable.controlState = REMOTE_CONTROL_STATE_LVA_CHECK;
										}
										else
										{
											m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
										}
									}
								}
								else
								{
									PowerTimeCnt = 0;
									CleanBcmMessageState();
									CleanBcmRemoteState();
									SendAntiTheftRequest();
									g_RemoteCertifystatus = 0;
									if(gRemoteControlSub != OTA_CONTROL_OTA_ONOFF)
									{
										m_controlVariable.controlState = REMOTE_CONTROL_STATE_LVA_CHECK;
									}
									else
									{
										m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
									}
								}
							}
						}
						break;
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_STATE_LVA_CHECK:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_LVA_CHECK;
			switch(gRemoteControlSub) //REMOTE_CONTROL_POWER_ON
			{
				case REMOTE_CONTROL_AC:
				case REMOTE_CONTROL_DOOR:
				case REMOTE_CONTROL_FIND_CAR:
				case REMOTE_CONTROL_BODY:
				case REMOTE_CONTROL_HEATING:
				case REMOTE_CONTROL_FENCE:
				case REMOTE_CONTROL_CAR_READY:
					{
						if(RemoteControlTboxStatus(gRemoteControlSub) == TBOX_NOMOL)//PLAN A
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_GET_SEED_CHECK;
						}
						else
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
					}
					break;
				default:
					{
						m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
					}
					break;
			}
			break;
		case REMOTE_CONTROL_STATE_GET_SEED_CHECK:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_GET_SEED_CHECK;
			switch(gRemoteControlSub) //REMOTE_CONTROL_POWER_ON
			{
				case REMOTE_CONTROL_AC:
				case REMOTE_CONTROL_DOOR:
				case REMOTE_CONTROL_FIND_CAR:
				case REMOTE_CONTROL_BODY:
				case REMOTE_CONTROL_HEATING:
				case REMOTE_CONTROL_FENCE:
				case REMOTE_CONTROL_CAR_READY:
						{
							if((stRemoteControlSignalVal.BCM_TBOXAuthResult == 1)&&(GetBcmMessageState() ==1))//SK check ok
							{
								PowerTimeCnt = 0;
								CleanBcmMessageState();
						   		m_controlVariable.controlState = REMOTE_CONTROL_STATE_BODY_STATUS_RESULT;
							}else
							{
								PowerTimeCnt++;
								if(PowerTimeCnt > 1000)//10S
								{
									PowerTimeCnt = 0;
									m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
								}
							}
						}
						break;
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_STATE_BODY_STATUS_RESULT:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_BODY_STATUS_RESULT;
			switch(gRemoteControlSub) 
			{
				case REMOTE_CONTROL_AC:
					{
						if((g_PowerOncnt <= 5)&&(g_PowerOnNGcnt <= 8)&&(stRemoteControlSignalVal.VCU_VehicleFault_Sts != 5)
							&&(stRemoteControlSignalVal.ACU_CrashOutput_Sts == 0)&&(stRemoteControlSignalVal.VCU_Range > 0x3C))
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_ON_REQUEST;
							}else if(2==g_RemoteControlSeverData[1])//close
							{									
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
						}
						else
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
					}
					break;
				case REMOTE_CONTROL_DOOR:
					{
						if(2==g_RemoteControlSeverData[1])//open door
						{
							if(stRemoteControlSignalVal.BCM_CentralLock_Sts == 0)
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
							else
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
							}
						}
						else if(1==g_RemoteControlSeverData[1])//close door
						{
							if((stRemoteControlSignalVal.BCM_DoorFL_Sts == 0)&&(stRemoteControlSignalVal.BCM_DoorFR_Sts == 0)
								&&(stRemoteControlSignalVal.BCM_SildDoorRR_Sts == 0)&&(stRemoteControlSignalVal.ACU_CrashOutput_Sts == 0))
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
							else
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
							}
						}
					}
					break;
				case REMOTE_CONTROL_FIND_CAR:
					{
						if((stRemoteControlSignalVal.BCM_DoorFL_Sts == 0)&&(stRemoteControlSignalVal.BCM_DoorFR_Sts == 0)
							&&(stRemoteControlSignalVal.BCM_SildDoorRR_Sts == 0)&&(stRemoteControlSignalVal.BCM_TurnIndcrLe_Sts != 1)
							&&(stRemoteControlSignalVal.BCM_CentralLock_Sts != 1)&&(stRemoteControlSignalVal.BCM_TurnIndcrRi_Sts != 1)
							&&(stRemoteControlSignalVal.ACU_CrashOutput_Sts == 0))
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
						}
						else
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
					}
					break;
				case REMOTE_CONTROL_BODY:
					{
						if((stRemoteControlSignalVal.ACU_CrashOutput_Sts == 0)&&(stRemoteControlSignalVal.VCU_VehicleFault_Sts != 5))
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
						}
						else
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
					}
					break;
				case REMOTE_CONTROL_HEATING:
					{
						if((g_PowerOncnt <= 5)&&(g_PowerOnNGcnt <= 8)&&(stRemoteControlSignalVal.VCU_VehicleFault_Sts != 5)
							&&(stRemoteControlSignalVal.ACU_CrashOutput_Sts == 0))
						{
							if(1==g_RemoteControlSeverData[1])//open
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_ON_REQUEST;
							}else if(0==g_RemoteControlSeverData[1])//close
							{									
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
						}
						else
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
					}
					break;
				case REMOTE_CONTROL_FENCE:
					{
						m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
					}
					break;
				case REMOTE_CONTROL_CAR_READY:
					{
						if((stRemoteControlSignalVal.ACU_CrashOutput_Sts == 0)&&(stRemoteControlSignalVal.VCU_VehicleFault_Sts != 5))
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
						}
						else
						{
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
					}
					break;
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_STATE_POWER_ON_REQUEST:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_POWER_ON_REQUEST;
			switch(gRemoteControlSub) 
			{
				case REMOTE_CONTROL_AC:
						{
							if((stRemoteControlSignalVal.BCM_PowerMode ==3)||(stRemoteControlSignalVal.BCM_PowerMode ==2))
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
							else 
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_ON_RESPONSE;
								message.TBOX.TBOX_PowerMode_Req = 1;
								g_PowerOncnt++;
								g_CanSendMessage[1].CanId = 0xE7;
								g_CanSendMessage[1].SendCount = 3;
								SetCanMessageData(message.data);
							}
						}
						break;
				case REMOTE_CONTROL_HEATING:
						{
							if((stRemoteControlSignalVal.BCM_PowerMode ==3)||(stRemoteControlSignalVal.BCM_PowerMode ==2))
							{
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
							else 
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_ON_RESPONSE;
								message.TBOX.TBOX_PowerMode_Req = 1;
								g_PowerOncnt++;
								g_CanSendMessage[1].CanId = 0xE7;
								g_CanSendMessage[1].SendCount = 3;
								SetCanMessageData(message.data);
							}
							
						}
						break;
				
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_STATE_POWER_ON_RESPONSE:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_POWER_ON_RESPONSE;
			switch(gRemoteControlSub) 
			{
				case REMOTE_CONTROL_AC:
						{
							if(stRemoteControlSignalVal.VCU_HV_Sts !=2)
							{
								PowerTimeCnt++;
								if(PowerTimeCnt>400)
								{
									PowerTimeCnt = 0;
									g_PowerOnNGcnt++;
									m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_ON_GET_RESULT;
								}
							}
							else 
							{
								PowerTimeCnt = 0;
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
						}
						break;
				case REMOTE_CONTROL_HEATING:
						{
							if(stRemoteControlSignalVal.VCU_HV_Sts !=2)
							{
								PowerTimeCnt++;
								if(PowerTimeCnt>400)
								{
									PowerTimeCnt = 0;
									g_PowerOnNGcnt++;
									m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_ON_GET_RESULT;
								}
							}
							else
							{
								PowerTimeCnt = 0;
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_RESPONSE;
							}
						}
						break;
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_STATE_POWER_ON_GET_RESULT:
			if(TboxGetRemoteControlPowerResult(&severDataTemp[0]))
			{
				m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_REQUEST; 
				SendMsgToCpu(uartHandle,gRemoteControlSub,severDataTemp,15);
			}
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_POWER_ON_GET_RESULT;
			break;
		case REMOTE_CONTROL_STATE_POWER_OFF_REQUEST:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_POWER_OFF_REQUEST;
			switch(gRemoteControlSub) //REMOTE_CONTROL_POWER_ON
			{
				case REMOTE_CONTROL_AC:
						{
							if(stRemoteControlSignalVal.BMS_RemoteHeat_Sts == 1)//open
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT;
							}
							else
							{
								message.TBOX.TBOX_PowerMode_Req = 0;
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_RESPONSE;
								g_CanSendMessage[1].CanId = 0xE7;
								g_CanSendMessage[1].SendCount = 3;
								SetCanMessageData(message.data);
							}
						}		
						break;
				case REMOTE_CONTROL_HEATING:
						{
							if(stRemoteControlSignalVal.ACM_AirCondONOFF_Sts == 1)//open
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT;
							}
							else
							{
								message.TBOX.TBOX_PowerMode_Req = 0;
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_RESPONSE;
								g_CanSendMessage[1].CanId = 0xE7;
								g_CanSendMessage[1].SendCount = 3;
								SetCanMessageData(message.data);
							}
						}
						break;
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_STATE_POWER_OFF_RESPONSE:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_POWER_OFF_RESPONSE;
			switch(gRemoteControlSub) 
			{
				case REMOTE_CONTROL_AC:
						{
							if(PeripheralHalGetKl15Status()!=0)
							{
								PowerTimeCnt++;
								if(PowerTimeCnt>300)
								{
									PowerTimeCnt = 0;
									m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT;
								}
							}
							else 
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT;
							}
						}
						break;
				case REMOTE_CONTROL_HEATING:
						{
							if(PeripheralHalGetKl15Status()!=0)
							{
								PowerTimeCnt++;
								if(PowerTimeCnt>300)
								{
									PowerTimeCnt = 0;
									m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT;
								}
							}
							else
							{
								m_controlVariable.controlState = REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT;
							}
						}
						break;
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_STATE_POWER_OFF_GET_RESULT:
			if(TboxGetRemoteControlPowerResult(&severDataTemp[0]))
			{
				SendMsgToCpu(uartHandle,gRemoteControlSub,severDataTemp,15);
			}
			m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE; 
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_STATE_IDLE;
			break;
		case REMOTE_CONTROL_GENERAL_RESPONSE:
			m_controlVariable.lastcontrolState = REMOTE_CONTROL_GENERAL_RESPONSE;
			switch(gRemoteControlSub) 
			{
				
				case REMOTE_CONTROL_AC:
						{	
							if(g_RemoteControlSeverData[1] == 1)//open AirCon
							{
								message.TBOX.TBOX_RemoteAirConONOFF_Req = 2;
							}
							else if(g_RemoteControlSeverData[1] == 2)//close AirCon
							{
								message.TBOX.TBOX_RemoteAirConONOFF_Req = 1;
							}
							switch(g_RemoteControlSeverData[2])
							{
								
								case 0:
									message.TBOX.TBOX_RemoteACONOFF_Req = 0;
									message.TBOX.TBOX_RemotePTC_Req = 1;
									break;
								case 1:
									message.TBOX.TBOX_RemoteACONOFF_Req = 1;
									message.TBOX.TBOX_RemotePTC_Req = 1;
									break;
								case 2:
									message.TBOX.TBOX_RemoteACONOFF_Req = 0;
									message.TBOX.TBOX_RemotePTC_Req = 2;
									break;
								case 3:
									break;	
								case 4:
									message.TBOX.TBOX_RemoteACONOFF_Req = 0;
									message.TBOX.TBOX_RemotePTC_Req = 2;
									break;
								case 5:
									message.TBOX.TBOX_RemoteACONOFF_Req = 1;
									message.TBOX.TBOX_RemotePTC_Req = 1;
									break;
								case 6:
									break;
									
							}
							if(g_RemoteControlSeverData[3]<3)
							{
								message.TBOX.TBOX_RemoteAirCirclin_Req = g_RemoteControlSeverData[3] + 1;
							}
							switch(g_RemoteControlSeverData[4])
							{
								case 0:
									message.TBOX.TBOX_RemoteAirDistributionMode_Req = 1;
									break;
								case 1:
									message.TBOX.TBOX_RemoteAirDistributionMode_Req = 3;
									break;
								case 2:
									message.TBOX.TBOX_RemoteAirDistributionMode_Req = 2;
									break;
								case 3:
									message.TBOX.TBOX_RemoteAirDistributionMode_Req = 4;
									break;
								case 4:
									message.TBOX.TBOX_RemoteAirDistributionMode_Req = 5;
									break;
								case 5:
									message.TBOX.TBOX_RemoteFrontDefrost_Req = 2;
									break;									
							}
							if(g_RemoteControlSeverData[5] < (18+40))
							{
								message.TBOX.TBOX_RemoteTempSteps_Req = 1;
							}
							else if(g_RemoteControlSeverData[5] > (31+40))
							{
								message.TBOX.TBOX_RemoteTempSteps_Req = 0x10;
							}else
							{
								message.TBOX.TBOX_RemoteTempSteps_Req = (g_RemoteControlSeverData[5]-(40+18)+2);
							}
							
							message.TBOX.TBOX_RemoteBlowerStepsSpd_Req = g_RemoteControlSeverData[6];
							
							g_CanSendMessage[2].CanId = 0xE8;
							g_CanSendMessage[2].SendCount = 3;
							SetCanMessageData(message.data);
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
				case REMOTE_CONTROL_DOOR:
						{
							if(1==g_RemoteControlSeverData[1])//close door
							{
								message.TBOX.TBOX_RemoteLockCtrl_Req = 1;
								g_CanSendMessage[1].CanId = 0xE7;
								g_CanSendMessage[1].SendCount = 3;
								SetCanMessageData(message.data);
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
							}
							else if(2==g_RemoteControlSeverData[1])//open door
							{
								message.TBOX.TBOX_RemoteLockCtrl_Req = 2;
								g_CanSendMessage[1].CanId = 0xE7;
								g_CanSendMessage[1].SendCount = 3;
								SetCanMessageData(message.data);
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
							}
							else
							{
								break;
							}
						}
						break;
				
				case REMOTE_CONTROL_FIND_CAR:
						{
							message.TBOX.TBOX_RemoteCarSearch_Req = 1;
							g_CanSendMessage[2].CanId = 0xE8;
							g_CanSendMessage[2].SendCount = 3;
							SetCanMessageData(message.data);
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
				case REMOTE_CONTROL_FENCE:
						{
							if(g_RemoteControlSeverData[1] == 1)//
							{
								message.TBOX.TBOX_EFence = 1;
								message.TBOX.TBOX_MaxSpdLimit_Req = 1;
							}
							else if(g_RemoteControlSeverData[1] == 0)//
							{
								message.TBOX.TBOX_EFence = 0;
								message.TBOX.TBOX_MaxSpdLimit_Req = 0;
							}
							g_CanSendMessage[2].CanId = 0xE8;
							g_CanSendMessage[2].SendCount = 3;
							SetCanMessageData(message.data);
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
				case REMOTE_CONTROL_BODY:
						{
							if(g_RemoteControlSeverData[2] != 0)//
							{
								message.TBOX.TBOX_MaxSpdLimit_Req = 1;
							}
							else if(g_RemoteControlSeverData[2] == 0)//
							{
								message.TBOX.TBOX_MaxSpdLimit_Req = 0;
							}
							g_CanSendMessage[2].CanId = 0xE8;
							g_CanSendMessage[2].SendCount = 3;
							SetCanMessageData(message.data);
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
                case REMOTE_CONTROL_CAR_READY:
					{
						if(g_RemoteControlSeverData[1] == 1)
						{
							message.TBOX.TBOX_RemoteForbiddenOn = 1;
						}
						else if(g_RemoteControlSeverData[1] == 2)//
						{
							message.TBOX.TBOX_RemoteForbiddenOn = 0;
						}
						SetCanMessageData(message.data);
						m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
					}
                       break;
				case REMOTE_CONTROL_HEATING:
						{
							if(0==g_RemoteControlSeverData[1])//
							{
								message.TBOX.TBOX_RemoteBatHeat_Req = 0;
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
							}
							else if(1==g_RemoteControlSeverData[1])//
							{
								message.TBOX.TBOX_RemoteBatHeat_Req = 1;
								m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
							}
							g_CanSendMessage[2].CanId = 0xE8;
							g_CanSendMessage[2].SendCount = 3;
							SetCanMessageData(message.data);
						}
						break;
				
				case OTA_CONTROL_OTA_ONOFF:
						{
							if(0==g_RemoteControlSeverData[1])//
							{
								message.TBOX.TBOX_HV_Req = 1;
								message.TBOX.TBOX_PowerMode_Req = 0;
								SetCanMessageData(message.data);
							}
							else if(1==g_RemoteControlSeverData[1])//
							{
								message.TBOX.TBOX_PowerMode_Req = 1;
								g_CanSendMessage[1].CanId = 0xE7;
								g_CanSendMessage[1].SendCount = 3;
								SetCanMessageData(message.data);
							}
							else if(2==g_RemoteControlSeverData[1])//
							{
								message.TBOX.TBOX_HV_Req = 0;
								SetCanMessageData(message.data);
							}
							m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
				case OTA_CONTROL_OTA_CHANGE:
						{
						   if(0==g_RemoteControlSeverData[1])//
						   {
							   message.TBOX.TBOX_FotaMode_Req = 0;
						   }
						   else if(1==g_RemoteControlSeverData[1])//
						   {
							   message.TBOX.TBOX_FotaMode_Req = 1;
						   }
						   SetCanMessageData(message.data);
						   m_controlVariable.controlState = REMOTE_CONTROL_GENERAL_GET_RESULT;
						}
						break;
				default:
						{
							m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
						}
						break;
			}
			break;
		case REMOTE_CONTROL_GENERAL_GET_RESULT:
			{
				TimeCnt += 1;
					
				if(gRemoteControlSub==REMOTE_CONTROL_DOOR)
				{
					timeOutTime = 400;
				}
				else if(gRemoteControlSub==REMOTE_CONTROL_FIND_CAR)
				{
					timeOutTime = 1000;
				}
				else if((gRemoteControlSub==REMOTE_CONTROL_HEATING)&&(g_RemoteControlSeverData[1] == 0x1))
				{
					timeOutTime = 2000;
				}
				else if((gRemoteControlSub==REMOTE_CONTROL_HEATING)&&(g_RemoteControlSeverData[1] == 0x0))
				{
					timeOutTime = 300;
				}
				else if(gRemoteControlSub==REMOTE_CONTROL_BODY)
				{
					timeOutTime = 500;
				}
				else if(gRemoteControlSub==REMOTE_CONTROL_AC)
				{
					timeOutTime = 400;
				}
				else if(gRemoteControlSub==OTA_CONTROL_OTA_CHANGE)
				{
					timeOutTime = 200;
				}
				else 
				{
					timeOutTime = 500;
				}
								
				if(TboxGetRemoteControlResult(&severDataTemp[0]))
				{
					RemoteCtrlResultSuccessProcess();
					TimeCnt = 0;
					SendMsgToCpu(uartHandle,gRemoteControlSub,severDataTemp,15);
					TBOX_PRINT("remotecontrol_sucess\r\n");
					
					SetRemoteWakeupFlag(0);
				}
				else if(TimeCnt > timeOutTime)
				{
					RemoteCtrlResultFailProcess();
					TimeCnt = 0;
					SendMsgToCpu(uartHandle,gRemoteControlSub,severDataTemp,15);
					TBOX_PRINT("remotecontrol_failed %x %x\r\n",severDataTemp[1],severDataTemp[2]);		
					
					SetRemoteWakeupFlag(0);
				}	
			}
			break;
		default:
			m_controlVariable.controlState = REMOTE_CONTROL_STATE_IDLE;
			break;

	}
	
  
}
void TaskVehicleRemoteControl( void *pvParameters )
{
    uint32_t rtosTick;
	RemoteControlInit();
    uint32_t distime;
    rtosTick = xTaskGetTickCount();
	while(1)
	{   
		static uint32_t cnt;
        if(GetTboxOtaStatus() == 1)
        {
        	distime = 3*1000;//30s
            g_RemoteControlDisableTimeCount++;
            if(g_RemoteControlDisableTimeCount>=distime)
            {
                g_RemoteControlDisableTimeCount=0;
				SetTboxOtaStatus(0);
            }
        }
		else
		{
			g_RemoteControlDisableTimeCount=0;
			RemoteControlRecvBcmMessage();   
			RemoteCtrlBodyStatus();
			RemoteControlRecvPorcess(g_mpuRemoteControlHandle,g_mpuRemoteControlPack);
			VehicleRemoteControlCanProcess(g_mpuRemoteControlHandle);
			if(cnt>=1)
			{
				cnt = 0;
				RemoteCtrlSendCanMessage();//20ms
			}
			else
			{
				cnt++;
			}
		
		}
		vTaskDelayUntil(&rtosTick,10); 
	}
}

