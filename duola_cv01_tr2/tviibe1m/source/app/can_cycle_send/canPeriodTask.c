#include "FreeRTOS.h"
#include "task.h"
#include "peripheralHal.h"
#include "canHal.h"
#include "timeSyncSdk.h"
#include "powerManageSdk.h"
#include "canPeriodTask.h"
#include "stateSyncSdk.h"
#include "batterySdk.h"
#include "mpuPowerSyncSdk.h"
#include "ecuNodeMissingCheck.h"
#include "projectConfigure.h"
#include "ParameterStoreManageApp.h"
#include "logHal.h"
#include "powerManageHal.h"
#include "taskVehicleDataToCpu.h"

//#define TASK_CYCLE_PROCESS_TIME   10      //������ѯִ��ʱ��

#define SIZE_OF_ARRAY(arrayName) (sizeof(arrayName)/sizeof(arrayName)[0])     //�����С����

#define CAN_CYCLE_SEND_CONFIGURE_BEGIN(groupNum)      const CanSendMsgConfigure_t m_group##groupNum##SendMsgConfigure[] = \
                                                        {                                                         
#define CAN_CYCLE_SEND_CONFIGURE_CAN(cycleTime,canId,length,msgProcessCallback)         {cycleTime,canId,length,msgProcessCallback},
                                                          
#define CAN_CYCLE_SEND_CONFIGURE_END(groupNum)        };                                                        \
                                                          CanSendMsgBuffer_t m_group##groupNum##SendMsgBuffer[SIZE_OF_ARRAY(m_group##groupNum##SendMsgConfigure)];


#define CYCLE_SEND_CAN_CONFIGURE(groupNum)  m_group##groupNum##SendMsgConfigure  //���ڷ�������
#define CYCLE_SEND_CAN_BUFFER(groupNum)  m_group##groupNum##SendMsgBuffer  //���ڷ��ͻ�����
#define CYCLE_SEND_CAN_CONFIGURE_SIZE(groupNum) SIZE_OF_ARRAY(m_group##groupNum##SendMsgConfigure)  //���ڷ������ô�С
typedef int16_t (* pCanMsgProcessFun_t)(uint8_t *pMsgData);


//CAN������Ϣ���ýṹ��
typedef struct 
{
    uint32_t cycleTime;      //ѭ������
    uint32_t canId;          //can����ID
    uint8_t dataLength;      //���ĳ���
    pCanMsgProcessFun_t msgProcessFun; 
}CanSendMsgConfigure_t;

//CAN������Ϣ�������ṹ��
typedef struct 
{
    uint32_t timeCount;      //ʱ�����
    uint8_t canData[64];         //can����
}CanSendMsgBuffer_t;

//CANͨ�����ڷ������ýṹ��
typedef struct 
{
    uint8_t canChannel;      //CANͨ��
    const CanSendMsgConfigure_t * pCycleConfigureList; //ѭ�����������б�
    uint8_t cycleConfigureListSize;                      //ѭ�����������б���С
    uint32_t msgStartTime;                               //��Ϣ��ʼ����ʱ��
    CanSendMsgBuffer_t *pMsgBuffer;                      //��Ϣ������
}CanChannelCycleSendConfigure_t;

//CANͨ����־�������ṹ��
typedef struct 
{
    int16_t canHandle;     //CANͨ�����
    int8_t enableFlag;      //ʹ�ܱ�־    0��ʧ�� 1��ʹ��
    uint8_t resetFlag;      //��λ��־    0��ʧ�� 1��ʹ��
    uint8_t busoffFlag;     //busoff��־  0��ʧ�� 1��ʹ��
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
#define APP_CAN_SEND_ID_281_BD            0
#define APP_CAN_SEND_ID_2C3            	  1
#define APP_CAN_SEND_ID_281_PT            2

static int16_t g_mpuHandle = 0;                  //保存同步任务的CPU通信句柄
static uint8_t g_sleepFlag = 0;
static uint8_t g_powerManageHandle = -1;
static uint32_t g_cycleTime = 10;
//static CanMsg033_t g_033Msg;
static uint8_t CanID_RollingCount[3]={0};
static TBOX_MESSAGE wubCan0Messagelist={0};
static uint8_t g_DtcNum = 0;
static uint8_t g_Dtclist[50] = {0};
static uint8_t g_TboxVin[17] = 0;
static uint16_t g_CANperiodDisableTimeCount	=   0;                      //��ֹʱ�����
static void APP_CAN_RollingCountProcess(uint8_t number)
{
	CanID_RollingCount[number]++;
	if(CanID_RollingCount[number]>=0x0F)
	{
	 CanID_RollingCount[number]=0;
	}
}

static int16_t UCU_BDCAN_Message_381(uint8_t *pCanData)
{
	CanGETVin(g_TboxVin);
	memset(pCanData,0,8);

	memcpy(pCanData,g_TboxVin,8);
    return 0;
}
static int16_t UCU_BDCAN_Message_382(uint8_t *pCanData)
{
	
	memset(pCanData,0,8);
	
	memcpy(pCanData,&g_TboxVin[8],8);
    return 0;
}
static int16_t UCU_BDCAN_Message_383(uint8_t *pCanData)
{
	
	memset(pCanData,0,8);
	memcpy(pCanData,&g_TboxVin[16],1);
    return 0;
}
static int16_t UCU_BDCAN_Message_281_BD(uint8_t *pCanData)
{
	memset(pCanData,0,8);
	memcpy(&pCanData[0],&wubCan0Messagelist.data[15],4);
	pCanData[4]=0x00;
	pCanData[5]=0x00;
	pCanData[6]= CanID_RollingCount[APP_CAN_SEND_ID_281_BD];
	pCanData[7]= crc8_checksum(pCanData,7);
	APP_CAN_RollingCountProcess(APP_CAN_SEND_ID_281_BD);
	
    return 0;
}
static int16_t UCU_BDCAN_Message_281_PT(uint8_t *pCanData)
{
	memset(pCanData,0,8);
	memcpy(&pCanData[0],&wubCan0Messagelist.data[15],4);
	pCanData[4]=0x00;
	pCanData[5]=0x00;
	pCanData[6]= CanID_RollingCount[APP_CAN_SEND_ID_281_PT];
	pCanData[7]= crc8_checksum(pCanData,7);
	APP_CAN_RollingCountProcess(APP_CAN_SEND_ID_281_PT);
	
    return 0;
}

uint16_t SetCanMessageData(uint8_t *remotedata)
{
    if (remotedata == NULL) {
        // ������ָ����󣬿�������־�򷵻ش�����
        return 0;
    }
    
    memcpy(wubCan0Messagelist.data, remotedata, sizeof(wubCan0Messagelist.data));
    
}

uint8_t GetCanMessageData(uint8_t *remotedata)
{
    if (remotedata == NULL) {
        // ������ָ����󣬿�������־�򷵻ش�����
        return 0;
    }
    
    TBOX_MESSAGE CanMessagelist = {0};
	memcpy(remotedata, wubCan0Messagelist.data, sizeof(wubCan0Messagelist.data));
    
}

static int16_t UCU_BDCAN_Message_282(uint8_t *pCanData)
{
    TimeSevice_t Beijing_Time;
    if(TimeSyncSdkGetRealTime(0,&Beijing_Time.year,&Beijing_Time.month,&Beijing_Time.day,&Beijing_Time.hour,&Beijing_Time.minute,&Beijing_Time.second)==0)
    {
        if(Beijing_Time.year >= 2021)
        {
            pCanData[0] =  (Beijing_Time.year-2000);
            pCanData[1] = Beijing_Time.month;
            pCanData[2] = Beijing_Time.day;
            pCanData[3] = Beijing_Time.hour;
            pCanData[4] = Beijing_Time.minute;
            pCanData[5] = Beijing_Time.second;
            pCanData[6] = 0x00;  
            pCanData[7] = 0x00;             
        }
        else
        {
			pCanData[0] = 0x00; //
            pCanData[1] = 0x01;
            pCanData[2] = 0x01;
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
        pCanData[0] = 0x00; //
        pCanData[1] = 0x01;
        pCanData[2] = 0x01;
        pCanData[3] = 0x00;
        pCanData[4] = 0x00;
        pCanData[5] = 0x00;
        pCanData[6] = 0x00;   
        pCanData[7] = 0x00;

    }  
    return 0;
	
}
static int16_t UCU_BDCAN_Message_283(uint8_t *pCanData)
{
	memset(pCanData,0,8);
	if(g_DtcNum != 0)
	{
        pCanData[0] = 0x01; //
	}
	else
	{
        pCanData[0] = 0x00; //dtc lv
	}
    return 0;
}

static int16_t UCU_PTCAN_Message_380(uint8_t *pCanData)
{
	memset(pCanData,0,8);
	
	memcpy(&pCanData[0],&wubCan0Messagelist.data[19],1);
    return 0;
}
static int16_t UCU_PTCAN_Message_4CC(uint8_t *pCanData)
{
	uint16_t length;
	uint16_t DtcMaxNum;
	static uint16_t cnt;
	
	memset(pCanData,0,8);
	pCanData[0] = MCU_HARDWARE_VERSION_F191>>24;
	pCanData[1] = MCU_HARDWARE_VERSION_F191>>16;
	pCanData[2] = MCU_SOFTWARE_VERSION_F189>>24;
	pCanData[3] = MCU_SOFTWARE_VERSION_F189>>16;
	pCanData[4] = g_DtcNum;
	DtcMaxNum = g_DtcNum*2;
    if(cnt<DtcMaxNum)
	{
		pCanData[5] = g_Dtclist[cnt++];
		pCanData[6] = g_Dtclist[cnt++];
		if(cnt>=(DtcMaxNum-1))
		{
			cnt = 0;
		}
	}else
	{
		cnt = 0;
		pCanData[5] = 0;
		pCanData[6] = 0;
	}
	
    return 0;
}

CAN_CYCLE_SEND_CONFIGURE_BEGIN(0)
	CAN_CYCLE_SEND_CONFIGURE_CAN(100,   0x281,  8,  UCU_BDCAN_Message_281_PT)	   
	CAN_CYCLE_SEND_CONFIGURE_CAN(100,   0x282,  8,  UCU_BDCAN_Message_282)
	CAN_CYCLE_SEND_CONFIGURE_CAN(1000,  0x4CC,  8,  UCU_PTCAN_Message_4CC)
	CAN_CYCLE_SEND_CONFIGURE_CAN(200,   0x380,  8,  UCU_PTCAN_Message_380)
CAN_CYCLE_SEND_CONFIGURE_END(0)

//ECAN
CAN_CYCLE_SEND_CONFIGURE_BEGIN(1)
/****************************time   id    length  canfunction call back******/
	CAN_CYCLE_SEND_CONFIGURE_CAN(100,  0x281,  8,	  UCU_BDCAN_Message_281_BD) 	 
	CAN_CYCLE_SEND_CONFIGURE_CAN(100,  0x282,  8,	  UCU_BDCAN_Message_282) //����+���
	CAN_CYCLE_SEND_CONFIGURE_CAN(100,  0x283,  8,	  UCU_BDCAN_Message_283) //����+���

	CAN_CYCLE_SEND_CONFIGURE_CAN(500,  0x381,  8,	UCU_BDCAN_Message_381) //����+���
	CAN_CYCLE_SEND_CONFIGURE_CAN(500,  0x382,  8,	UCU_BDCAN_Message_382) //����+���
	CAN_CYCLE_SEND_CONFIGURE_CAN(500,  0x383,  8,	UCU_BDCAN_Message_383) //����+���
CAN_CYCLE_SEND_CONFIGURE_END(1)

const CanChannelCycleSendConfigure_t g_canCycleConfigureList[] = 
{
  {
    .canChannel = TBOX_CAN_CHANNEL_B,
    .pCycleConfigureList = CYCLE_SEND_CAN_CONFIGURE(0),
	.cycleConfigureListSize = CYCLE_SEND_CAN_CONFIGURE_SIZE(0),
    .msgStartTime = 10,//ms
    .pMsgBuffer = CYCLE_SEND_CAN_BUFFER(0),
  },
  {
    .canChannel = TBOX_CAN_CHANNEL_D,
    .pCycleConfigureList = CYCLE_SEND_CAN_CONFIGURE(1),
    .cycleConfigureListSize = CYCLE_SEND_CAN_CONFIGURE_SIZE(1),
    .msgStartTime = 10,//ms
    .pMsgBuffer = CYCLE_SEND_CAN_BUFFER(1),
  },
};
#pragma default_variable_attributes = @ "SYS_RAM"

static CanChannelBuffer_t g_canChannelBufferList[SIZE_OF_ARRAY(g_canCycleConfigureList)];

#pragma default_variable_attributes =

static void SetCanConfigureWakeUpStartTime(uint32_t startTime_ms,const CanSendMsgConfigure_t *pMsgConfigure,CanSendMsgBuffer_t *pMsgBuffer,uint32_t elementSize)
{
  uint32_t i;
//  startTime_ms += 10;//compensate time for network process delay to enable can tx
  for(i=0;i<elementSize;i++)
  {
    if(pMsgConfigure[i].cycleTime <= 0 )
    {
      continue;
    }
    pMsgBuffer[i].timeCount = pMsgConfigure[i].cycleTime-startTime_ms;
  }
}

static void SetCanConfigureInitializeStartTime(uint32_t startTime_ms,const CanSendMsgConfigure_t *pMsgConfigure,CanSendMsgBuffer_t *pMsgBuffer,uint32_t elementSize)
{
  uint32_t i;
//  startTime_ms += 5;//compensate time for network process delay to enable can tx
  for(i=0;i<elementSize;i++)
  {
    if(pMsgConfigure[i].cycleTime <= 0)
    {
      continue;
    }
    pMsgBuffer[i].timeCount = pMsgConfigure[i].cycleTime-startTime_ms;
  }
}

void SendCanMessage(uint32_t canId)
{
    uint8_t canData[8] = {0};
	uint16_t canHandle;
	uint8_t i,sleepState;
	
    //sleepState = PowerManageSdkGetSleepState(g_powerManageHandle);
	//if(sleepState !=0)
	{
		if(canId == 0xE8)
		{
			memcpy(canData,wubCan0Messagelist.data,6);
			for(i=0;i<2;i++)
			{
			
				if(g_canChannelBufferList[i].enableFlag)
				{
					canHandle = i<<8;
					CanHalTransmit(canHandle,canId,canData,8,0);

				}

			}
		}
		else if(canId== 0xE7)
		{
			canHandle = 0x01<<8;
			
			if(g_canChannelBufferList[1].enableFlag)//BD
			{
				memcpy(canData,&wubCan0Messagelist.data[6],1);
				CanHalTransmit(canHandle,canId,canData,8,0);
			}
		}	
		else if(canId== 0xE6)
		{
			canHandle = 0x01<<8;
			if(g_canChannelBufferList[1].enableFlag)//BD
			{
				memcpy(canData,&wubCan0Messagelist.data[7],8);
				CanHalTransmit(canHandle,canId,canData,8,0);
			}
		}
		else if(canId== 0x7DF)
		{
			//3e 80
			canData[0] = 0x02;
			canData[1] = 0x3E;
			canData[2] = 0x80;
			canData[3] = 0xCC;
			canData[4] = 0xCC;
			canData[5] = 0xCC;
			canData[6] = 0xCC;
			canData[7] = 0xCC;
			for(i=0;i<3;i++)
			{
				canHandle = i<<8;
				if(i<2)
				{
					CanHalTransmit(canHandle,canId,canData,8,0);
				}
				else 
				{
					CanHalTransmit(canHandle,canId,canData,8,1);
				}
			}
		}
	}
}

static void CycleSendCycleProcess(int16_t canHandle,const CanSendMsgConfigure_t *pMsgConfigure,CanSendMsgBuffer_t *pMsgBuffer,uint32_t elementSize)
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
          CanHalTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength,0);
		  //SecOCTransmit(canHandle, pMsgConfigure[i].canId, pMsgBuffer[i].canData,pMsgConfigure[i].dataLength);
          //CanHalTransmit(canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
      }      
    }
  }
}

/*************************************************
  Function:       CanPeriodCycleInit
  Description:    can�������ڷ��ͳ�ʼ���ӿ�
  Input:          ��
  Output:         ��
  Return:         �ɹ���0
                  ʧ�ܣ�-1
  Others:         
*************************************************/
int16_t CanPeriodCycleInit(uint32_t cycleTime)
{
    const char moduleName[] = {'C','a','n','C','y','c','l','e','S','e','n','d','T','a','s','k'};
    uint8_t i = 0;
    for(i = 0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    {
        //CANͨ����־��������ʼ��
        g_canChannelBufferList[i].canHandle = CanHalOpen(g_canCycleConfigureList[i].canChannel);
        g_canChannelBufferList[i].enableFlag = 0x00;

        //���ó�ʼʱ��ĳ�ʼ��
        SetCanConfigureInitializeStartTime(g_canCycleConfigureList[i].msgStartTime,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
    }
    //��Դ���������ʼ��
    g_powerManageHandle = PowerManageSdkOpenHandle(moduleName);
    if(cycleTime != 0)
    {
        g_cycleTime = cycleTime;
    }
    
    return 0;
}


/*************************************************
  Function:       CanPeriodCycleInit
  Description:    can�������ڷ��Ϳ�ʼ�ӿ�
  Input:          ��
  Output:         ��
  Return:         �ɹ���0
                  ʧ�ܣ�-1
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
  Description:    ����can�ź�
  Input:          signalID��Ҫ���õ�can�ź�
                  comman�����õ�����
                  num�����ʹ���
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t CanPeriodSetControlSignal(CanPeriodSignal_e signalID,uint32_t command,uint16_t num)
{
    /*
    if(signalID == E_REMTWINCTRL)
    {
        //ʧ��RTOS����
        RTOS_HalDisableScheduler(); 
        //�����ź�ֵ�ʹ���
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtWinCtrl= command;
        
        //ʹ��RTOS����
        RTOS_HalEnableScheduler(); 
    }
    else if(signalID == E_REMTTRUNKCTRL)
    {
        //ʧ��RTOS����
        RTOS_HalDisableScheduler(); 
        //�����ź�ֵ�ʹ���
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtTrunkCtrl= command;
        
        //ʹ��RTOS����
        RTOS_HalEnableScheduler(); 
    }
    else if(signalID == E_REMTDOORLOCKCTRL)
    {
        //ʧ��RTOS����
        RTOS_HalDisableScheduler(); 
        //�����ź�ֵ�ʹ���
        g_033Msg.requestCount = sendNum;
        g_033Msg.RemtDoorLockCtrl = command;
        
        //ʹ��RTOS����
        RTOS_HalEnableScheduler(); 
    }
    */
    return 0;
}

/*************************************************
  Function:       CanPeriodSendEnable
  Description:    ���ڷ���ʹ�ܽӿ�
  Input:          canChannel��canͨ��
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t CanPeriodSendEnable(uint16_t canHandle)
{
    //��ʱ������ֵ
    uint8_t i=0,j=0;
    uint8_t canChannel;
    if(canHandle<0)
    {
            return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle>>8;
    if(canChannel>=3)
    {
            return CAN_ERROR_INVALID_HANDLE;
    }
    for(i = 0;i<SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
    {
        if(g_canCycleConfigureList[i].canChannel == canChannel)
        {
            //��λʹ�ܱ�־
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
  Description:    ���ڷ��ͽ�ֹ�ӿ�
  Input:          canChannel��canͨ��
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t CanPeriodSendDisable(uint16_t canHandle)
{
    uint8_t i,j; 
    uint32_t u16BAT_VOL;
    uint8_t canChannel;
    if(canHandle<0)
    {
            return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle>>8;
    if(canChannel>=3)
    {
            return CAN_ERROR_INVALID_HANDLE;
    }
    for(i=0;i<SIZE_OF_ARRAY(g_canCycleConfigureList);i++)
    {
        if(g_canCycleConfigureList[i].canChannel== canChannel)
        {
            for(j = 0;j < g_canCycleConfigureList[i].cycleConfigureListSize;j++)
            {
                g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 3);
            }
            g_canChannelBufferList[i].enableFlag = 0x00;
            return 0;
        }
    }
    return -1;
}

/*************************************************
  Function:       CanPeriodSendEnableAll
  Description:    ���ڷ���ʹ������can�ӿ�
  Input:          canChannel��canͨ��
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t CanPeriodSendEnableAll(void)
{
   //��ʱ������ֵ
   uint8_t i=0,j=0;
   
   for(i = 0;i<SIZE_OF_ARRAY(g_canCycleConfigureList); i++)
   {
           //��λʹ�ܱ�־
           g_canChannelBufferList[i].enableFlag = 0x01;
           for(j = 0;j < g_canCycleConfigureList[i].cycleConfigureListSize;j++)
           {
               g_canCycleConfigureList[i].pMsgBuffer[j].timeCount = (g_canCycleConfigureList[i].pCycleConfigureList[j].cycleTime - 7);
           }
   } 
   return 0;   
}

/*************************************************
  Function:       CanPeriodSendDisableAll
  Description:    ���ڷ��ͽ�ֹ����can�ӿ�
  Input:          canChannel��canͨ��
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
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
  Description:    ���ڷ��͸�λ�ӿ�
  Input:          pcanChannel��canͨ��
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
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
                //��λʹ�ܱ�־
                g_canChannelBufferList[i].resetFlag= 0x01;
                return 0;
            }
        }
    
    }
    return -1;
}
void DtcSdkMesageCanSend(uint8_t* pu8Data,uint8_t DtcNum)
{
	memcpy(g_Dtclist,pu8Data,DtcNum*2);
	g_DtcNum = DtcNum;
}


/*************************************************
  Function:       CanPeriodCycleProcess
  Description:    Aes ecb �����ʼ��
  Input:          pAesData ��Aes�������
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
  Others:
*************************************************/
int16_t CanPeriodCycleProcess(void)
{
    //��ȡKL30��ѹ
    uint32_t u16BAT_VOL = 0;
    int16_t sleepState = 0;
    uint16_t i = 0;
	
	uint32_t wakeCount;
	uint8_t pmState,wakeupSource;
	
	static int16_t dtctimecnt = 0;
    PeripheralHalAdGet(0,&u16BAT_VOL);
    //�жϵ�Դ����״̬
    sleepState = PowerManageSdkGetSleepState(g_powerManageHandle);
    if(sleepState == 0)      //����
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
				SetCanConfigureWakeUpStartTime(g_canCycleConfigureList[i].msgStartTime,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
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
                    CycleSendCycleProcess(g_canChannelBufferList[i].canHandle,g_canCycleConfigureList[i].pCycleConfigureList,g_canCycleConfigureList[i].pMsgBuffer,g_canCycleConfigureList[i].cycleConfigureListSize);
                }
            }
		}       
		g_sleepFlag = 0x00;
    }
    return 0;
}
void CanMessageInit()
{

	uint32_t length;
	uint8_t pData;
	int16_t ret;

  	memset(&wubCan0Messagelist.data,0,sizeof(wubCan0Messagelist.data));

//E6
    wubCan0Messagelist.TBOX.TBOX_AntiTheft_Req = 0x00;
	wubCan0Messagelist.TBOX.TBOX_AuthRespone_Sts = 0xFF;
	wubCan0Messagelist.TBOX.TBOX_BCMRandomResponse_1 = 0xFF;
	wubCan0Messagelist.TBOX.TBOX_BCMRandomResponse_2 = 0xFF;
	wubCan0Messagelist.TBOX.TBOX_BCMRandomResponse_3 = 0x00;
	wubCan0Messagelist.TBOX.TBOX_BCMRandomResponse_4 = 0x00;
	wubCan0Messagelist.TBOX.TBOX_BCMRandomResponse_5 = 0x00;
	wubCan0Messagelist.TBOX.TBOX_BCMRandomResponse_6 = 0x00;
//E7 
	ret = WorkFlashVehicleInforRead(E_PARAMETER_INFO_ECU_POWER_FLAG,&pData,&length);
	if(ret == 0)
	{
		if(pData>1)
		{
			wubCan0Messagelist.TBOX.TBOX_PowerMode_Req = 0;
		}
		else
		{
			wubCan0Messagelist.TBOX.TBOX_PowerMode_Req = pData;
		}
	}

//E8
	wubCan0Messagelist.TBOX.TBOX_MaxSpdLimit_Req = 0x2;
	wubCan0Messagelist.TBOX.TBOX_EFence = 0x2;
	wubCan0Messagelist.TBOX.TBOX_RemoteACONOFF_Req = 0x2;
	wubCan0Messagelist.TBOX.TBOX_RemoteBatHeat_Req = 0x2;
	wubCan0Messagelist.TBOX.TBOX_RemoteCarSearch_Req = 0x2;
//281
	wubCan0Messagelist.TBOX.TBOX_RemoteForbiddenOn = 0x2;
	
		
}


void canPeriodTaskMain(void *pvParameters)
{
    TickType_t xLastWakeTime;
	uint32_t distime;
    CanPeriodCycleInit(5);
    CanMessageInit();
    xLastWakeTime = xTaskGetTickCount();
    while(1)
    {
    	
		if(GetTboxOtaStatus() == 1)
		{
			distime = 6*1000;//30s
			g_CANperiodDisableTimeCount++;
			if(g_CANperiodDisableTimeCount>=distime)
			{
				g_CANperiodDisableTimeCount=0;
				SetTboxOtaStatus(0);
			}
		}
		else
		{			
			g_CANperiodDisableTimeCount=0;
	        CanPeriodCycleProcess();
		}
		vTaskDelayUntil(&xLastWakeTime,5);
    }
}







