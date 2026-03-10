#ifndef _REMOTE_CONTROL_CAN_SIGNAL_H_
#define _REMOTE_CONTROL_CAN_SIGNAL_H_

typedef struct
{   
    uint8_t SysPowerModVld;
    uint8_t SysPowerMod;//��Դ״̬0x0:OFF 0x1:ACC (reserved) 0x2:ON 0x3:Crank
    uint8_t RemoteModSts;//Զ��ģʽ0x0:Normal mode 0x1:Remote mode
    uint8_t VehSpdVld;//������Ч��־ 0x0:Invalid 0x1:Valid
    float   VehSpd;//���� 0x0000-0x14D5:Valid values
    uint8_t DrvAntiPinchSts;//�������д���״̬
    uint8_t PassAntiPinchSts;//�������д���״̬
    uint8_t RLAntiPinchSts;//�������д���״̬
    uint8_t RRAntiPinchSts;//�������д���״̬
    uint8_t DrvWinLrnSts;//����ѧϰ
    uint8_t PassWinLrnSts;//����ѧϰ
    uint8_t RLWinLrnSts;//����ѧϰ
    uint8_t RRWinLrnSts;//����ѧϰ
    uint8_t SrAntiPinch;//�촰���д���״̬
    uint8_t SsAntiPinch;//���������д���״̬
    uint8_t DrvWinPosnSts;//����״̬
    uint8_t RLWinPosnSts;//����״̬
    uint8_t PassWinPosnSts;//����״̬
    uint8_t RRWinPosnSts;//����״̬
    uint8_t SrPosn_VR_APP;//�촰״̬
    uint8_t SsPosn_VR_APP;//������״̬
    uint8_t CURRENT_GEAR;//P/N ��λ״̬0x1:P 0x2:R 0x3:N 0x4:D 0X5:S 0X6:E
    uint8_t DrvDoorSts; //����״̬
    uint8_t LRDoorSts;//����״̬
    uint8_t PassengerDoorSts;//����״̬
    uint8_t RRDoorSts;//����״̬ 
    float   U_BATT;//���ص�ѹ
    uint8_t AntitheftSts;
    uint8_t ACOpenSts;//Զ�̿յ�״̬
    uint8_t ACAIUEnaSts;// ���ӷ�����״̬
    uint8_t ACRearWinHeatSts;// Զ�̺��˪״̬���յ�ִ�У�
    uint8_t ACFrntDefrstSts;// ǰ��˪״̬
    uint8_t DrvSeatHeatSts;// ���μ���״̬
    uint8_t PassSeatHeatStse;// ���μ���״̬
//    uint8_t SecRowLeSeatHeatSts;// ���μ���״̬
//    uint8_t SecRowRiSeatHeatSts;// ���μ���״̬
    uint8_t DrvSeatVentnSts;// ����ͨ��״̬
    uint8_t PassSeatVentnSts;// ����ͨ��״̬
//    uint8_t SecRowLeSeatVentnSts_;// ����ͨ��״̬
//    uint8_t SecRowRiSeatVentnSts;// ����ͨ��״̬
//    uint8_t AC_FrntWinHeatEnaSts;// ǰ�絲ȫ������״̬�ź�
    uint8_t SteerWheelHeatdSts;// �����̼���״̬
    uint8_t VCU_GearSts;//  �����任����λ��
    uint8_t NeutralSts;//  �յ�״̬
    uint8_t ACCbnClnEnasts;//��������ź�
    uint8_t ACCbnClnOffCode;//�������״̬
    uint8_t ReleAlarmSts;//�����������
    uint8_t WhistleSts_F_PBOX;//����
    uint8_t LTurnLmpSts;//����
    uint8_t RTurnLmpSts;//����
    uint8_t TrunkSts;//�����ŵ�״̬
    uint8_t DoorLockSts;//����״̬
    
    uint8_t RWinHeatgIconRlyCmd;//���˪
    uint8_t T_BOX_RemtSdlMod;
    uint8_t EVCC_CPLineSts;
    uint8_t VCU_VCUSts;
    uint8_t CEM_FrntWinHeatEnaSts;//ǰ��˪
	uint8_t Phone_ChrgnMode;//���ģʽ
	uint8_t EVCC_PPLineSts;//���ǹ����״̬
}RemoteControlSignalInfo_t;

typedef enum
{
    //033
    E_Box_RemtWinCtrl,
    E_Box_RemtSrCtrl,
    E_Box_RemtSsCtrl,
    E_Box_RemtDoorLockCtrl,
    E_Box_RemtTrunkCtrl,
    E_Box_RemtCarSearch,
    E_Box_RemtEngCtrl,
    E_Box_RemtAutoCtrl,
    E_Box_RemtDrvTempSet,
    E_Box_RemtPassTempSet,
    E_Box_RemtAIUReq,   

    //1E1
    E_Box_RemtSdlMod,
    E_Box_RemtRearDefrostCtrl,
    E_Box_RemtFrntDefrostCtrl,
    E_Box_RemtCockpitClnReq,
}RemoteSignal_e;

void GetRemoteControlSignalValue(RemoteControlSignalInfo_t *stRemoteCtrlSignalVal);

void SetRemoteContorl1E1SignalValue(RemoteSignal_e signal,double Value,uint32_t frequency);
uint32_t GetRemoteContorl1E1SignalIsSendEnd(RemoteSignal_e signal);
void SetRemoteContorl033SignalValue(RemoteSignal_e signal,double Value,uint32_t frequency);
uint32_t GetRemoteContorl033SignalIsSendEnd(RemoteSignal_e signal);


void RemoteContorlCanDataSendProcess(int16_t canHandle,uint16_t cycleTime);
#endif


