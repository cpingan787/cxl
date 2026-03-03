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
    //===============��������Զ��========================
    //Զ��ָ��
    CanParseSignal_t  T_Box_RemtWinCtrl;//T_BOX_FD1 0x033 Զ�̿��Ƴ���
    CanParseSignal_t  T_Box_RemtSrCtrl;//T_BOX_FD1 0x033 Զ�̿����촰
    CanParseSignal_t  T_Box_RemtSsCtrl;//T_BOX_FD1 0x033 Զ�̿���������
    CanParseSignal_t  T_BOX_RemtDoorLockCtrl;//T_BOX_FD1 0x033 Զ�̿�������
    CanParseSignal_t  T_BOX_RemtTrunkCtrl;//T_BOX_FD1 0x033 Զ�̿��ƺ���
    CanParseSignal_t  T_Box_RemtCarSearch;//T_BOX_FD1 0x033 Զ�̿������ѻ�����
    CanParseSignal_t  T_BOX_RemtCockpitClnReq;//T_Box_FD4 0x1E1Զ���������
    CanParseSignal_t  ReleAlarm_APP;//T_BOX_FD6 0x33D �����������--P03ȱʧ

    CanParseSignal_t  DrvWinPosnSts;//DDCM1 ����״̬���
    CanParseSignal_t  RLWinPosnSts;//BCM9 0x2E8 ����״̬���
    CanParseSignal_t  PassWinPosnSts;//PDCM1 ����״̬���
    CanParseSignal_t  RRWinPosnSts;//PDCM1 ����״̬���
    CanParseSignal_t  SrPosn_VR_APP;//BCM12 0x238�촰״̬���
    CanParseSignal_t  SsPosn_VR_APP;//BCM12 0x238������״̬���--P01ȱʧ
    CanParseSignal_t  DoorLockSts;//BCM3 0x345����״̬���

    CanParseSignal_t  TrunkSts;//BCM1 0x319������״̬���
    CanParseSignal_t  LTurnLmpSts;//BCM1 0x319 //R_PBox1 0x19C ����
    CanParseSignal_t  RTurnLmpSts;//BCM1 0x319 //R_PBox1 0x19C  ����
    CanParseSignal_t  WhistleSts_F_PBOX;//F_PBOX1 0x19B ����

    CanParseSignal_t  ACCbnClnEnasts;//AC1 0x29D �������״̬�ź�
    CanParseSignal_t  ACCbnClnOffCode;//AC1 0x29D ������๦�ܲ�����ԭ
    CanParseSignal_t  ReleAlarmSts;//0x1E8�����������

    CanParseSignal_t  VehSpd;//ESP_FD2 0x137 ����
    CanParseSignal_t  VehSpdVld;//ESP_FD2 0x137 ������Ч��־
    CanParseSignal_t  SysPowerModVld;//PEPS2 0x295 ��Դ��Ч��־
    CanParseSignal_t  SysPowerMod;//PEPS2 0x295 ��Դ״̬
    CanParseSignal_t  RemoteModSts;//BCM8 0x29F Զ��ģʽ
    CanParseSignal_t  DrvAntiPinchSts;//BCM9	0x2E8 �������д���״̬
    CanParseSignal_t  PassAntiPinchSts;//BCM9	0x2E8 �������д���״̬
    CanParseSignal_t  RLAntiPinchSts;//BCM9	0x2E8 �������д���״̬
    CanParseSignal_t  RRAntiPinchSts;//BCM9	0x2E8 �������д���״̬
    CanParseSignal_t  DrvWinLrnSts;//BCM9 0x2E8 //DDCM1 0x2CA ����ѧϰ
    CanParseSignal_t  PassWinLrnSts;//BCM9 0x2E8 //PDCM1 0x2CD ����ѧϰ
    CanParseSignal_t  RLWinLrnSts;//BCM9 0x2E8 //DDCM1 0x2CA ����ѧϰ
    CanParseSignal_t  RRWinLrnSts;//BCM9 0x2E8//PDCM1 0x2CD ����ѧϰ
    CanParseSignal_t  SrAntiPinch;//BCM12 0x238 �촰���д���״̬
    CanParseSignal_t  SsAntiPinch;//BCM12 0x238 ���������д���״̬
    CanParseSignal_t  CURRENT_GEAR;//DCT5 0x221 P/N ��λ״̬
    CanParseSignal_t  DrvDoorSts;//BCM1 0x319 ���Źر�
    CanParseSignal_t  LRDoorSts;//BCM1 0x319 ���Źر�
    CanParseSignal_t  PassengerDoorSts;//BCM1 0x319 ���Źر�
    CanParseSignal_t  RRDoorSts;//BCM1 0x319 ���Źر�
    CanParseSignal_t  AntitheftSts;//BCM3 0x345���״̬
    CanParseSignal_t  U_BATT;//GW_FD1 0x2BB���ص���
    CanParseSignal_t  EVCC_CPLineSts;//EVCC1 0x310 ���ǹCP״̬
    CanParseSignal_t  VCU_VCUSts;//VCU_FD4 0x2D6 ����ϵͳ��ѹ״̬
    
    //==================������Զ��=====================
    //Զ��ָ��
    CanParseSignal_t  T_Box_RemtEngCtrl;//T_BOX_FD1 0x033 ����/�ر�����
    CanParseSignal_t  T_BOX_RemtAutoCtrl;//T_BOX_FD1 0x033 Զ�̿���\�رտյ�
    CanParseSignal_t  T_BOX_RemtDrvTempSet;//T_BOX_FD1 0x033 �յ������¶�
    CanParseSignal_t  T_BOX_RemtPassTempSet;//T_BOX_FD1 0x033 �յ������¶�
    CanParseSignal_t  T_BOX_RemtAIUReq;//T_BOX_FD1 0x033 Զ�̿������ӷ�����
    CanParseSignal_t  T_Box_RemtRearDefrostCtrl;//T_BOX_FD4 0x1E1 Զ�̿������رպ��˪
    CanParseSignal_t  T_BOX_RemtFrntDefrostCtrl;//T_BOX_FD4 0x1E1 Զ�̿������ر�ǰ��˪
    CanParseSignal_t  T_BOX_RemtDrvSeatHeatgLvlSet;//T_BOX_FD9 0x1FE ���ݲ����
    CanParseSignal_t  T_BOX_RemtPassSeatHeatgLvlSet;//T_BOX_FD9 0x1FE ���ݲ����
    CanParseSignal_t  T_BOX_RemtDrvSeatVentnLvlSet;//T_BOX_FD6 0x33D ���ݲ�ͨ��
    CanParseSignal_t  T_BOX_RemtPassSeatVentnLvlSet;//T_BOX_FD6 0x33D ���ݲ�ͨ��
    CanParseSignal_t  T_BOX_RemtFrntWinHeatCtrl;//ǰ�絲ȫ�����ȿ����ź� --- P01��P03ȱʧ
    CanParseSignal_t  T_BOX_RemtSteerWheelHeatCtrl;//T_BOX_FD6 0x33DԶ�̿��������̼���
    CanParseSignal_t  ACOpenSts;//AC2 0x385 Զ�̿յ�״̬
    CanParseSignal_t  ACAIUEnaSts;//AC1 0x29D ���ӷ�����״̬
    CanParseSignal_t  ACRearWinHeatSts;//AC2 0x385Զ�̺��˪״̬���յ�ִ�У�
    CanParseSignal_t  ACFrntDefrstSts;//AC2 0x385 ǰ��˪״̬
    CanParseSignal_t  DrvSeatHeatSts;//SCM1 0x2D1 ���μ���״̬    
    CanParseSignal_t  PassSeatHeatSts;//SCM1 0x2D1 ���μ���״̬    
    CanParseSignal_t  DrvSeatVentnSts;//SCM1 0x2D1 ����ͨ��״̬
    CanParseSignal_t  PassSeatVentnSts;//SCM1 0x2D1 ����ͨ��״̬
    CanParseSignal_t  AC_FrntWinHeatDislSts;//AC2 0x385 ǰ�絲ȫ�����ȹ��ܽ����ź�    --P03ȱʧ
    CanParseSignal_t  SteerWheelHeatdSts;//CSA3 0x244 �����̼���״̬
    CanParseSignal_t  VCU_GearSts;//VCU_FD3 0x219 �����任����λ��
    CanParseSignal_t  NeutralSts;//0x139 ECM10 �յ�״̬                 --P01��P03��ȱʧ
	CanParseSignal_t  ClsWinRmd;              //BCM11 0x305 ����δ������
    CanParseSignal_t  MbrMonrAlarmReq;//VMDR2 0x1E8 ���Ż����ⱨ��                 --P01��P03��ȱʧ
    CanParseSignal_t  FLTirePressIndSts;//TPMS1 0x341��ǰ��̥ѹ�쳣��������/����
    CanParseSignal_t  FRTirePressIndSts;//TPMS1 0x341��ǰ��̥ѹ�쳣��������/����
    CanParseSignal_t  RLTirePressIndSts;//TPMS1 0x341�����̥ѹ�쳣��������/����
    CanParseSignal_t  RRTirePressIndSts;//TPMS1 0x341�Һ���̥ѹ�쳣��������/����
    CanParseSignal_t  FLTireTempSts;//TPMS1 0x341��ǰ��̥���쳣��������/����
    CanParseSignal_t  FRTireTempSts;//TPMS1 0x341��ǰ��̥���쳣��������/����
    CanParseSignal_t  RLTireTempSts;//TPMS1 0x341�����̥���쳣��������/����
    CanParseSignal_t  RRTireTempSts;//TPMS1 0x341�Һ���̥���쳣��������/����
    CanParseSignal_t  DeepSlpCmd;//EEM1 0x2A8���ص͵��������ź�
    CanParseSignal_t  BMS_BattHeatRunaway;//BMS_FD10 0X2F6 ���������ʧ�ر���
		
    //------------------�����ϱ�---------------------
    CanParseSignal_t  DrvDoorLockSts;//BCM3 0x345��ʻԱ������״̬
    CanParseSignal_t  HoodSts;//BCM1 0x319 //F_PBOX1 0x19B�����״̬
    CanParseSignal_t  ACAutoModEnaSts;//AC2 0x385�յ�Auto״̬
    CanParseSignal_t  HiBeamSts;//BCM1 0x319 //F_PBOX1 0x19BԶ������״̬

    CanParseSignal_t IP_VehTotDistanceValid;//IP2 0x27F �������Чֵ
    CanParseSignal_t IP_VehTotDistance;//IP2 0x27F �����

    CanParseSignal_t RWinHeatgIconRlyCmd;//R_PBOX1 19C ���˪

    CanParseSignal_t LowBeamSts;//�����״̬    P01û��

    CanParseSignal_t TranPMode_Sts;//����ģʽ
    CanParseSignal_t ECALLSts;//GLO_NASS1 056
    CanParseSignal_t QuietVoiceReq;//GLO_NASS1 056
    CanParseSignal_t CEM_FrntWinHeatEnaSts;//ǰ�絲����
	CanParseSignal_t BMS_ChrgSts;//������س��״̬
	CanParseSignal_t VCU_ChrgnSts;//���״̬
	CanParseSignal_t BMS_DCChrgConnect;//ֱ�����������
	CanParseSignal_t OBC_CCLineConnectSts;//����CC����״̬
	CanParseSignal_t BMS_RemtPreHeatSts;//���Ԥ����״̬
	CanParseSignal_t InCarTemp;//�յ����¶�
	CanParseSignal_t EVCC_PPLineSts;//���ǹPP״̬

	CanParseSignal_t BMS_SOC;//�������soc

	CanParseSignal_t  Phone_ChrgnMode;	//T_Box_FD4 0x1E1 ���ģʽ
	CanParseSignal_t  T_BOX_RemtSdlMod;	//T_Box_FD4 0x1E1 Զ������ģʽ
	CanParseSignal_t  VCU_PhoneChrgnModeResp;	//VCU18 0x1D7 ���ģʽ������Ӧ
	CanParseSignal_t  VCU_PhoneChrgnReqResp;	//VCU18 0x1D7 �������������Ӧ
	CanParseSignal_t  BMS_ChrgTime;		//BMS_FD10 0X2F6 ������ص�ǰ����
	CanParseSignal_t  VCU_ACLineCnctSts;	//VCU5 0x31B �����������ϵ���ʾ

	CanParseSignal_t  Phone_StrtHourMin;	//T_BOX_FD8 0x33E ���ڷ���HUT
	CanParseSignal_t  Phone_EndHourMin;		//T_BOX_FD8 0x33E ���ڷ���HUT
	CanParseSignal_t  Phone_DelayTimMod;	//T_BOX_FD8 0x33E ���ڷ���HUT
	CanParseSignal_t  Phone_ChrgnReq;			//T_BOX_FD5 0x2EE ���ڷ���
	CanParseSignal_t  T_BOX_DlyChargReq;	//T_BOX_FD5 0x2EE ���ڷ���

  CanParseSignal_t  ABM_AirbagSignal;
	
}can0_signal_configure_t;







//Intel��ʽ��Motorola��ʽ

const can0_signal_configure_t *GetCan0SignalConfigure(void);

int16_t Can0RxCanMsgDispatch(uint32_t canId,uint8_t dlc,uint8_t *pData);
int16_t Can0RxCanMsgCycleCheck(uint32_t cycleTime);


#endif  //_VEHICLESIGNALAPP_H
