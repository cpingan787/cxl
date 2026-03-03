#include "FreeRTOS.h"
#include "task.h"
#include "peripheralHal.h"
#include "canHal.h"
#include "timeSyncSdk.h"
#include "powerManageSdk.h"
#include "canGateWay.h"
#include "canPeriodTask.h"
#include "secocSdk.h"

#define CYCLE_SEND_WITH_SECOC_SDK       1

//#define TASK_CYCLE_PROCESS_TIME   10      //任务轮询执行时间

#define SIZE_OF_ARRAY(arrayName) (sizeof(arrayName)/sizeof(arrayName)[0])     //数组大小计算

#define CAN_CYCLE_SEND_CONFIGURE_BEGIN(groupNum)      const CanSendMsgConfigure_t m_group##groupNum##SendMsgConfigure[] = \
                                                        {                                                         
#define CAN_CYCLE_SEND_CONFIGURE_CAN(cycleTime,canId,fdFlag,length,msgProcessCallback)         {cycleTime,canId,fdFlag,length,msgProcessCallback},
                                                          
#define CAN_CYCLE_SEND_CONFIGURE_END(groupNum)        };                                                        \
                                                          CanSendMsgBuffer_t m_group##groupNum##SendMsgBuffer[SIZE_OF_ARRAY(m_group##groupNum##SendMsgConfigure)];


#define CYCLE_SEND_CAN_CONFIGURE(groupNum)  m_group##groupNum##SendMsgConfigure  //周期发送配置
#define CYCLE_SEND_CAN_BUFFER(groupNum)  m_group##groupNum##SendMsgBuffer  //周期发送缓冲区
#define CYCLE_SEND_CAN_CONFIGURE_SIZE(groupNum) SIZE_OF_ARRAY(m_group##groupNum##SendMsgConfigure)  //周期发送配置大小
typedef int16_t (* pCanMsgProcessFun_t)(uint8_t *pMsgData);


//CAN发送消息配置结构体
typedef struct 
{
    uint32_t cycleTime;      //循环周期
    uint32_t canId;          //can报文ID
    uint8_t fdFlag;
    uint8_t dataLength;      //报文长度
    pCanMsgProcessFun_t msgProcessFun; 
}CanSendMsgConfigure_t;

//CAN发送消息缓冲区结构体
typedef struct 
{
    uint32_t timeCount;      //时间计数
    uint8_t canData[64];         //can数据
}CanSendMsgBuffer_t;

//CAN通道周期发送配置结构体
typedef struct 
{
    uint8_t canChannel;      //CAN通道
    const CanSendMsgConfigure_t * pCycleConfigureList; //循环发送配置列表
    uint8_t cycleConfigureListSize;                      //循环发送配置列表大小
    uint32_t msgStartTime;                               //消息开始发送时间
    CanSendMsgBuffer_t *pMsgBuffer;                      //消息缓冲区
}CanChannelCycleSendConfigure_t;

//CAN通道标志缓冲区结构体
typedef struct 
{
    int16_t canHandle;     //CAN通道句柄
    int8_t enableFlag;      //使能标志    0：失能 1：使能
    uint8_t resetFlag;      //复位标志    0：失能 1：使能
    uint8_t busoffFlag;     //busoff标志  0：失能 1：使能
}CanChannelBuffer_t;

typedef struct
{
      uint32_t year;
      uint8_t  month;
      uint8_t  day;
      uint8_t  hour;
      uint8_t  minute;
      uint8_t  second;

}TimeSevice_t;

static uint8_t g_sleepFlag = 0;
static int16_t g_powerManageHandle = -1;
static uint32_t g_cycleTime = 10;
//static CanMsg033_t g_033Msg;

static int16_t CanPeriodMessage53D(uint8_t *pCanData)
{
    TimeSevice_t Beijing_Time;
    
    if(TimeSyncSdkGetRealTime(8,&Beijing_Time.year,&Beijing_Time.month,&Beijing_Time.day,&Beijing_Time.hour,&Beijing_Time.minute,&Beijing_Time.second)==0)
    {
        if(Beijing_Time.year >= 2021)
        {
            pCanData[0] =  Beijing_Time.second<<2; //second and GPS 
            pCanData[1] = (Beijing_Time.minute<<2)&(0xFC);
            pCanData[2] = (Beijing_Time.hour<<3)&(0xF8);
            pCanData[3] = (Beijing_Time.day<<3)&(0xF8);
            pCanData[4] = (Beijing_Time.month<<4)&(0xF0);
            pCanData[5] = (Beijing_Time.year-2010);
            pCanData[6] = 0x00;  
            pCanData[7] = 0x00;  
            
            //m_timeBuffer[0] = Beijing_Time.second;
            //m_timeBuffer[1] = Beijing_Time.minute;
            //m_timeBuffer[2] = (Beijing_Time.day<<4)+Beijing_Time.hour;
            //m_timeBuffer[3] = Beijing_Time.month;
            //m_timeBuffer[4] = Beijing_Time.year-2000;
            //m_timeBuffer[5] = m_txTimeCount;
            //m_txTimeCount++;
            //u32TimeCnt = 0;        
        }
        else
        {
            pCanData[0] = (0x01 << 1); //
            pCanData[1] = 0x00;
            pCanData[2] = 0x00;
            pCanData[3] = 0x00;
            pCanData[4] = 0x00;
            pCanData[5] = 0x00;
            pCanData[6] = 0x00;   
            pCanData[7] = 0x00;        
        }
    }
    else
    {
      //invalid time
        pCanData[0] = (0x01 << 1); //
        pCanData[1] = 0x00;
        pCanData[2] = 0x00;
        pCanData[3] = 0x00;
        pCanData[4] = 0x00;
        pCanData[5] = 0x00;
        pCanData[6] = 0x00;   
        pCanData[7] = 0x00;

    }  
    //pCanData[7] = 0x00;
    return 0;

}

int16_t CanPeriodMessage3E9(uint8_t *pData)
{
	pData[0] = 0x00;
	pData[1] = 0x00;
	pData[2] = 0x00;
	pData[3] = 0x00;
	pData[4] = 0x00;
	pData[5] = 0x00;
	pData[6] = 0x00;
	pData[7] = 0x00;
	return 0;
}

int16_t CanPeriodMessage2F0(uint8_t *pData)
{
	pData[0] = 0x00;
	pData[1] = 0x00;
	pData[2] = 0x00;
	pData[3] = 0x00;
	pData[4] = 0x00;
	pData[5] = 0x00;
	pData[6] = 0x00;
	pData[7] = 0x00;
	
	pData[8] = 0x00;
	pData[9] = 0x00;
	pData[10] = 0x00;
	pData[11] = 0x00;
	pData[12] = 0x00;
	pData[13] = 0x00;
	pData[14] = 0x00;
	pData[15] = 0x00;
	
	pData[16] = 0x00;
	pData[17] = 0x00;
	pData[18] = 0x00;
	pData[19] = 0x00;
	pData[20] = 0x00;
	pData[21] = 0x00;
	pData[22] = 0x00;
	pData[23] = 0x00;
	
	pData[24] = 0x00;
	pData[25] = 0x00;
	pData[26] = 0x00;
	pData[27] = 0x00;
	pData[28] = 0x00;
	pData[29] = 0x00;
	pData[30] = 0x00;
	pData[31] = 0x00;
	
	pData[32] = 0x00;
	pData[33] = 0x00;
	pData[34] = 0x00;
	pData[35] = 0x00;
	pData[36] = 0x00;
	pData[37] = 0x00;
	pData[38] = 0x00;
	pData[39] = 0x00;
	
	pData[40] = 0x00;
	pData[41] = 0x00;
	pData[42] = 0x00;
	pData[43] = 0x00;
	pData[44] = 0x00;
	pData[45] = 0x00;
	pData[46] = 0x00;
	pData[47] = 0x00;
	
	pData[48] = 0x00;
	pData[49] = 0x00;
	pData[50] = 0x00;
	pData[51] = 0x00;
	pData[52] = 0x00;
	pData[53] = 0x00;
	pData[54] = 0x00;
	pData[55] = 0x00;
	return 0;
}




CAN_CYCLE_SEND_CONFIGURE_BEGIN(1)
/****************************time, id ,fdFlag   length  canfunction canll back******/
  CAN_CYCLE_SEND_CONFIGURE_CAN(1000, 0x53D, 1, 8,      CanPeriodMessage53D)  
  CAN_CYCLE_SEND_CONFIGURE_CAN(1000, 0x3E9, 1, 16,      CanPeriodMessage3E9)  
  CAN_CYCLE_SEND_CONFIGURE_CAN(100,  0x2F0, 1, 8,      CanPeriodMessage2F0)
CAN_CYCLE_SEND_CONFIGURE_END(1)

const CanChannelCycleSendConfigure_t g_canCycleConfigureList[] = {
    {
     .canChannel = TBOX_CAN_CHANNEL_D,
     .msgStartTime = 5,
     .pCycleConfigureList = CYCLE_SEND_CAN_CONFIGURE(1),
     .cycleConfigureListSize = CYCLE_SEND_CAN_CONFIGURE_SIZE(1),
     .pMsgBuffer = CYCLE_SEND_CAN_BUFFER(1)
    },
};
#pragma default_variable_attributes = @ "SYS_RAM"

static CanChannelBuffer_t g_canChannelBufferList[SIZE_OF_ARRAY(g_canCycleConfigureList)];

#pragma default_variable_attributes =

static void CanPeriodSetCanConfigureWakeUpStartTime(uint32_t startTime_ms,const CanSendMsgConfigure_t *pMsgConfigure,CanSendMsgBuffer_t *pMsgBuffer,uint32_t elementSize)
{
  uint32_t i;
  startTime_ms += 10;//compensate time for network process delay to enable can tx
  for(i=0;i<elementSize;i++)
  {
    if(pMsgConfigure[i].cycleTime <= 0 )
    {
      continue;
    }
    pMsgBuffer[i].timeCount = pMsgConfigure[i].cycleTime-startTime_ms;
  }
}

static void CanPeriodSetCanConfigureInitializeStartTime(uint32_t startTime_ms,const CanSendMsgConfigure_t *pMsgConfigure,CanSendMsgBuffer_t *pMsgBuffer,uint32_t elementSize)
{
  uint32_t i;
  startTime_ms += 10;//compensate time for network process delay to enable can tx
  for(i=0;i<elementSize;i++)
  {
    if(pMsgConfigure[i].cycleTime <= 0)
    {
      continue;
    }
    pMsgBuffer[i].timeCount = pMsgConfigure[i].cycleTime-startTime_ms;
  }
}

static void CanPeriodSendCan(void)
{
    static uint8_t i = 0;
    i++;
    return;
}


static void CanPeriodSendCycleProcess(int16_t canHandle,const CanSendMsgConfigure_t *pMsgConfigure,CanSendMsgBuffer_t *pMsgBuffer,uint32_t elementSize)
{
  uint32_t i;
  int16_t ret;
  for(i=0;i<elementSize;i++)
  {    
    if(pMsgConfigure[i].cycleTime <= 0)
    {
      continue;
    }
    pMsgBuffer[i].timeCount += g_cycleTime;
    if(pMsgBuffer[i].timeCount>=pMsgConfigure[i].cycleTime)
    {
      //transmit data
      ret = 0;
      pMsgBuffer[i].timeCount = 0x00;
      if(pMsgConfigure[i].msgProcessFun!=NULL)
      {
        ret = pMsgConfigure[i].msgProcessFun(pMsgBuffer[i].canData);
      }
      if(ret==0)
      {
          //TBOX_PRINT("33\n");
          if(pMsgConfigure[i].fdFlag)
          {
#if(CYCLE_SEND_WITH_SECOC_SDK)
              SecocSdkTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength,3);
#else
              CanHalTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength,3);
#endif
          }
          else
          {
#if(CYCLE_SEND_WITH_SECOC_SDK)
              SecocSdkTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength,0);
#else
              CanHalTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength,0);
#endif
          }
          
		  //SecOCTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength);
          //CanHalTransmit(canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
          CanPeriodSendCan();
      }      
    }
  }
}

/*************************************************
  Function:       CanPeriodCycleInit
  Description:    can报文周期发送初始化接口
  Input:          无
  Output:         无
  Return:         成功：0
                  失败：-1
  Others:         
*************************************************/
static int16_t CanPeriodCycleInit(uint32_t cycleTime)
{
    const char moduleName[] = {'C','a','n','C','y','c','l','e','S','e','n','d','T','a','s','k'};
    uint8_t i = 0;
    for(i = 0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    {
        //CAN通道标志缓冲区初始化
        g_canChannelBufferList[i].canHandle = CanHalOpen(g_canCycleConfigureList[i].canChannel);
        g_canChannelBufferList[i].enableFlag = 0x00;

        //设置初始时间的初始化
        CanPeriodSetCanConfigureInitializeStartTime(g_canCycleConfigureList[i].msgStartTime,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
    }
    //电源管理句柄初始化
    g_powerManageHandle = PowerManageSdkOpenHandle(moduleName);
    if(cycleTime != 0)
    {
        g_cycleTime = cycleTime;
    }
    
    return 0;
}


/*************************************************
  Function:       CanPeriodCycleStart
  Description:    can报文周期发送开始接口
  Input:          无
  Output:         无
  Return:         成功：0
                  失败：-1
  Others:         
*************************************************/
int16_t CanPeriodCycleStart(void)
{
    uint8_t i = 0;
    for(i = 0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    {
        g_canChannelBufferList[i].enableFlag = 0x01;
    }
    return 0;
}

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
int16_t CanPeriodSetControlSignal(CanPeriodSignal_e signalID,uint32_t command,uint16_t num)
{
    /*
    if(signalID == E_REMTWINCTRL)
    {
        //失能RTOS调度
        RTOS_HalDisableScheduler(); 
        //设置信号值和次数
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtWinCtrl= command;
        
        //使能RTOS调度
        RTOS_HalEnableScheduler(); 
    }
    else if(signalID == E_REMTTRUNKCTRL)
    {
        //失能RTOS调度
        RTOS_HalDisableScheduler(); 
        //设置信号值和次数
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtTrunkCtrl= command;
        
        //使能RTOS调度
        RTOS_HalEnableScheduler(); 
    }
    else if(signalID == E_REMTDOORLOCKCTRL)
    {
        //失能RTOS调度
        RTOS_HalDisableScheduler(); 
        //设置信号值和次数
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtDoorLockCtrl = command;
        
        //使能RTOS调度
        RTOS_HalEnableScheduler(); 
    }
    */
    return 0;
}

/*************************************************
  Function:       CanPeriodSendEnable
  Description:    周期发送使能接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendEnable(uint8_t canChannel)
{
    //临时变量赋值
    uint8_t i=0,j=0;
    
    for(i = 0;i<SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        if(g_canCycleConfigureList[i].canChannel == canChannel)
        {
            //置位使能标志
            g_canChannelBufferList[i].enableFlag = 0x01;
            for(j = 0;j < g_canCycleConfigureList[i].cycleConfigureListSize;j++)
            {
                g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 7);
            }
            return 0;
        }
    }
    
    return -1;
}

/*************************************************
  Function:       CanPeriodSendDisable
  Description:    周期发送禁止接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendDisable(uint8_t canChannel)
{
    uint8_t i,j; 
    uint32_t u16BAT_VOL;
    PeripheralHalAdGet(0,&u16BAT_VOL);
    for(i=0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    {
        if(g_canCycleConfigureList[i].canChannel== canChannel)
        {
            for(j = 0;j < g_canCycleConfigureList[i].cycleConfigureListSize;j++)
            {
                g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 3);
            }
            //if((u16BAT_VOL <= 18000) && (u16BAT_VOL >= 7000))
            //{
            //    CycleSendCycleProcess(g_canChannelBufferList[i].canHandle,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
            //}
            g_canChannelBufferList[i].enableFlag = 0x00;
            return 0;
        }
    }
    return -1;
}

/*************************************************
  Function:       CanPeriodSendEnableAll
  Description:    周期发送使能所有can接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendEnableAll(void)
{
   //临时变量赋值
   uint8_t i=0,j=0;
   
   for(i = 0;i<SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
   {
           //置位使能标志
           g_canChannelBufferList[i].enableFlag = 0x01;
           for(j = 0;j < g_canCycleConfigureList[i].cycleConfigureListSize;j++)
           {
               g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 7);
           }
   } 
   return 0;
    
//    uint8_t i; 
//    for(i=0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
//    {
//        g_canCycleConfigureList[i].enableFlag++;   
//        if(1==g_canCycleConfigureList[i].enableFlag)
//        {
//            g_canCycleConfigureList[i].busoffFlag = 0;
//            g_canCycleConfigureList[i].resetFlag = 0;
//        }
//    }
//    return -1;
}

/*************************************************
  Function:       CanPeriodSendDisableAll
  Description:    周期发送禁止所有can接口
  Input:          canChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendDisableAll(void)
{
    uint8_t i,j; 
    for(i=0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    {
        for(j = 0;j < g_canCycleConfigureList[i].cycleConfigureListSize;j++)
        {
            g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 3);
        }
        g_canChannelBufferList[i].enableFlag = 0x00;
    }
    return 0;
}

/*************************************************
  Function:       CanPeriodSendReset
  Description:    周期发送复位接口
  Input:          pcanChannel：can通道
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t CanPeriodSendReset(uint8_t canChannel)
{
    uint8_t i = 0;
    for(i = 0;i < SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    {
        if(g_canCycleConfigureList[i].canChannel==canChannel)
        {
            if(g_canChannelBufferList[i].enableFlag == 1)
            {
                //置位使能标志
                g_canChannelBufferList[i].resetFlag= 0x01;
                return 0;
            }
        }
    
    }
    return -1;
}


/*************************************************
  Function:       CanPeriodCycleProcess
  Description:    Aes ecb 计算初始化
  Input:          pAesData ：Aes计算对象
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodCycleProcess(void)
{
    //获取KL30电压
    uint32_t u16BAT_VOL = 0;
    int16_t sleepState = 0;
    uint16_t i = 0;
    
    PeripheralHalAdGet(0,&u16BAT_VOL);
    //判断电源管理状态
    sleepState = PowerManageSdkGetSleepState(g_powerManageHandle);
    if(sleepState == 0)      //休眠
    {
        PowerManageSdkSetSleepAck(g_powerManageHandle);
        g_sleepFlag = 1;
    }
    else
    {
        if(g_sleepFlag)
		{
			//set the time  delayed after can wakeup , app can message send 
			for(i=0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
			{
				CanPeriodSetCanConfigureWakeUpStartTime(g_canCycleConfigureList[i].msgStartTime,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
			}
		}  
		for(i=0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
		{
              // TBOX_PRINT("11\n");
			if(g_canChannelBufferList[i].enableFlag)
			{
                   //TBOX_PRINT("22\n");
                //if((u16BAT_VOL <= 18000) && (u16BAT_VOL >= 7000))
                {
                    CanPeriodSendCycleProcess(g_canChannelBufferList[i].canHandle,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
                }
            }
		}       
		g_sleepFlag = 0x00;
    }
    return 0;
}


void canPeriodTaskMain(void *pvParameters)
{
    TickType_t xLastWakeTime;  
    CanPeriodCycleInit(5);
    
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_1,CanGateWayCan1Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_2,CanGateWayCan2Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_3,CanGateWayCan3Rx);
    //CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_4,CanGateWayCan4Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_5,CanGateWayCan5Rx);
    CanHalSetCanRxCallBack(TBOX_CAN_CHANNEL_6,CanGateWayCan6Rx);

    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_1,CanGateWayCan1Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_2,CanGateWayCan2Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_3,CanGateWayCan3Tx);
    //CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_4,CanGateWayCan4Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_5,CanGateWayCan5Tx);
    CanHalSetCanTxCallBack(TBOX_CAN_CHANNEL_6,CanGateWayCan6Tx);
    
    xLastWakeTime = xTaskGetTickCount();
    while(1)
    {
        CanPeriodCycleProcess();
        CanGateWayCycleProcess(5);
        vTaskDelayUntil(&xLastWakeTime,5);
    }
}







