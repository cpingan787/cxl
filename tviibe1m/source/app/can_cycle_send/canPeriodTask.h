#ifndef _CAN_PERIODTASH_TASK_H_
#define _CAN_PERIODTASH_TASK_H_

#include "stdint.h"

#define CANLISTMESSAGEBYTE 20
typedef enum
{
    E_REMTWINCTRL              = 0 , 			//远控车窗控制    
    E_REMTTRUNKCTRL            = 1 ,            //远控后备箱开关控制    
    E_REMTDOORLOCKCTRL         = 2 ,            //远控门锁控制    
    E_REMTAUTOCTRL             = 3 ,            //远控自动控制    
    E_REMTSRCTRL               = 4 ,            //远控TSR控制    
    E_REMTCARSEARCH            = 5 ,            //远控寻车控制    
    E_REMTDRVSEATHEATGLVLSET   = 6 ,            //远控座椅加热控制   
    E_REMTPASSSEATHEATGLVLSET  = 7 ,            //远控座椅通风控制    
    E_REMTDRVTEMPSET           = 8 ,            //远控空调控制    
    E_REMTPASSTEMPSET          = 9 ,            //远控温度通风设置    
    E_REMTENGCTRL              = 10,            //远控发动机控制    
    E_REMTSSCTRL               = 11,            //远控GPS控制    
    E_REMTDRVSEATVENTNLVLSET   = 12,            //远控座椅水平通风设置     
    E_REMTPASSSEATVENTNLVLSET  = 13             //远控通风设置
}CanPeriodSignal_e;
typedef union TBOXNODE{
	uint8_t data[CANLISTMESSAGEBYTE];
    struct{
		//E8
		//byte0
		uint8_t Notuse_0 :1;
		uint8_t TBOX_MaxSpdLimit_Req :2;
		uint8_t Notuse_1 :1;
		uint8_t TBOX_EFence :2;
		uint8_t Notuse_2 :2;
		//byte1
		uint8_t TBOX_RemoteACONOFF_Req :2;
		uint8_t TBOX_RemoteBatHeat_Req :2;
		uint8_t TBOX_RemoteCarSearch_Req :2;
		uint8_t TBOX_RemoteAirConONOFF_Req :2;
		//byte2
		uint8_t TBOX_RemotePTC_Req :2;
		uint8_t TBOX_RemoteAirCirclin_Req :2;
		uint8_t TBOX_RemoteFrontDefrost_Req :2;
		uint8_t Notuse_3 :2;
		//byte3
		uint8_t TBOX_RemoteBlowerStepsSpd_Req :4;
		uint8_t Notuse_4 :4;
		//byte4
		uint8_t TBOX_RemoteAirDistributionMode_Req :3;
		uint8_t Notuse_5 :5;
		//byte5
		uint8_t TBOX_RemoteTempSteps_Req :6;
		uint8_t Notuse_6 :2;
		
		//E7 byte6
		uint8_t TBOX_PowerMode_Req :1;
		uint8_t TBOX_RemoteLockCtrl_Req :2;
		uint8_t Notuse_7 :5;
		
		//E6 byte7-14
		uint8_t TBOX_AntiTheft_Req :1;
		uint8_t Notuse_8 :7;
		uint8_t TBOX_AuthRespone_Sts :8;
		uint8_t TBOX_BCMRandomResponse_1 :8;
		uint8_t TBOX_BCMRandomResponse_2 :8;
		uint8_t TBOX_BCMRandomResponse_3 :8;
		uint8_t TBOX_BCMRandomResponse_4 :8;
		uint8_t TBOX_BCMRandomResponse_5 :8;
		uint8_t TBOX_BCMRandomResponse_6 :8;
		
		//281 byte15
		uint8_t TBOX_FotaMode_Req :1;
		uint8_t TBOX_Fota_Sts :2;
		uint8_t TBOX_HV_Req :1;
		uint8_t Notuse_9 :4;
		//281 byte16
		uint8_t Notuse_10 :6;
		uint8_t TBOX_RemoteForbiddenOn :2;
		//281 byte17
		uint8_t TBOX_FotaPogress :8;
		//281 byte18
		uint8_t TBOX_FotaTime :8;
		
		//360 byte19
		uint8_t TBOX_FaultNumberBattery :4;
		uint8_t TBOX_FaultNumberMotor :3;
		uint8_t Notuse_11 :1;
		/*//281 byte19
		uint8_t Notuse_9 :8;
		//281 byte20
		uint8_t Notuse_10 :8;
		//281 byte21
		uint8_t TBOX_4_RollingCounter :4;
		uint8_t Notuse_11 :4;
		//281 byte22
		uint8_t TBOX_4_Checksum :8;*/
    	}TBOX;
 }TBOX_MESSAGE;
uint16_t SetCanMessageData(uint8_t *remotedata);
void SendCanMessage(uint32_t canId);
uint8_t GetCanMessageData(uint8_t *remotedata);
void CanMessageInit();

/*************************************************
  Function:       CanPeriodCycleInit
  Description:    can报文周期发送初始化接口
  Input:          无
  Output:         无
  Return:         成功：0
                  失败：-1
  Others:         
*************************************************/
int16_t CanPeriodCycleInit(uint32_t cycleTime);

/*************************************************
  Function:       CanPeriodCycleInit
  Description:    can报文周期发送开始接口
  Input:          无
  Output:         无
  Return:         成功：0
                  失败：-1
  Others:         
*************************************************/
int16_t CanPeriodCycleStart(void);

/*************************************************
  Function:       CanPeriodSetControlSignal
  Description:    设置can信号
  Input:          signalID：要设置的can信号
                  comman：设置的数据
                  num：发送次数
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSetControlSignal(CanPeriodSignal_e signalID,uint32_t comman,uint16_t num);

/*************************************************
  Function:       CanPeriodSendEnable
  Description:    周期发送使能接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendEnable(uint16_t canHandle);

/*************************************************
  Function:       CanPeriodSendDisable
  Description:    周期发送禁止接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendDisable(uint16_t canHandle);

/*************************************************
  Function:       CanPeriodSendEnableAll
  Description:    周期发送使能所有can接口
  Input:          void
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendEnableAll(void);

/*************************************************
  Function:       CanPeriodSendDisableAll
  Description:    周期发送禁止所有can接口
  Input:          void
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendDisableAll(void);

/*************************************************
  Function:       CanPeriodSendReset
  Description:    周期发送复位接口
  Input:          pcanChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendReset(uint8_t canChannel);

/*************************************************
  Function:       CanPeriodCycleProcess
  Description:    Aes ecb 计算初始化
  Input:          pAesData ：Aes计算对象
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodCycleProcess(void);

void canPeriodTaskMain(void *pvParameters);


#endif


