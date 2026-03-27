#ifndef _CAN_PERIODTASH_TASK_H_
#define _CAN_PERIODTASH_TASK_H_
#include "stdint.h"

#if(0)



/*
typedef struct 
{
    uint8_t RemtWinCtrl;
    uint8_t RemtTrunkCtrl;
    uint8_t RemtDoorLockCtrl;
    uint8_t RemtAutoCtrl;
    uint8_t RemtSrCtrl;
    uint8_t RemtCarSearch;
    uint8_t RemtDrvSeatHeatgLvlSet;
    uint8_t RemtPassSeatHeatgLvlSet;
    uint8_t RemtDrvTempSet;
    uint8_t RemtPassTempSet;
    uint8_t RemtEngCtrl;
    uint8_t RemtSsCtrl;
    uint8_t RemtDrvSeatVentnLvlSet;
    uint8_t RemtPassSeatVentnLvlSet;
}CanMsg033_t;
*/
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

/*************************************************
  Function:       CanPeriodCycleInit
  Description:    can报文周期发送初始化接口
  Input:          无
  Output:         无
  Return:         成功：0
                  失败：-1
  Others:         
*************************************************/
//int16_t CanPeriodCycleInit(uint32_t cycleTime);

/*************************************************
  Function:       CanPeriodCycleStart
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
int16_t CanPeriodSendEnable(uint8_t canChannel);

/*************************************************
  Function:       CanPeriodSendDisable
  Description:    周期发送禁止接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendDisable(uint8_t canChannel);

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
 Function:       canPeriodTaskMain
 Description:    can自发报文周期发送主任务接口
 Input:          无
 Output:         无
 Return:         0：成功
 -1：失败
 Others:
 *************************************************/
void canPeriodTaskMain(void *pvParameters);

#endif

typedef struct
{
  uint8_t year;
  uint8_t month;
  uint8_t day;
  uint8_t hour;
  uint8_t min;
  uint8_t sec;
}VehicleTime_t;

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

/*************************************************
  Function:       CanPeriodGetVehTime
  Description:    获取整车时间
  Input:          
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
uint8_t CanPeriodGetVehTime(uint8_t *year,uint8_t *month,uint8_t *day,uint8_t *hour,uint8_t *min,uint8_t *sec);

#endif


