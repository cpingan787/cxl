#include "stdlib.h"
#include "powerManageSdk.h"
#include "timerHal.h"
#include "timeSyncSdk.h"



typedef struct
{
    uint32_t timestamp; //0-4294967295, UNIXʱ�������λS ��UTCʱ��.ʱ��δͬ��ʱ��0
    uint8_t timeZone; //ʱ�� 1-25
    uint8_t timeSrc;  //ʱ��Դ��0-��Ч 1-NTP  2-GNSS
    uint8_t timeSyncStat; //ʱ��ͬ��״̬ 0��δͬ�� 1��ͬ��
    uint8_t timeValidity;  //������Ч�ԣ�0����Ч 1��Ч
}mpuTime_t;

const uint8_t mon_table[12]={31,28,31,30,31,30,31,31,30,31,30,31};
#define RTC_TIME_START_YEAR      (2000)

//static int16_t g_mpuHandle = -1;  //MPUͨ�ž��
static int16_t g_sleepStateHandle = -1;   //����״̬��ȡ���
static mpuTime_t g_timeData;      //ʱ�����ݱ���
//static uint16_t g_cycleTime = 0;


/*************************************************
  Function:       TimeSyncSdkInit
  Description:    sdk��ʱ��ͬ��ģ���ʼ���ӿ�
  Input:          mpuHandle:mpu��ͨ�ž��
                  cycleTime�����ڽӿڵ�����������
  Output:         ��
  Return:         ��
  Others:         
*************************************************/
void TimeSyncSdkInit(int16_t mpuHandle,uint16_t cycleTime)
{
    const char moduleName[] = {'t','i','m','e','s','y','n','c','s','d','k'};
    //g_mpuHandle = mpuHandle;
    //g_cycleTime = cycleTime;
    g_timeData.timeValidity = 0;
    g_sleepStateHandle = PowerManageSdkOpenHandle(moduleName);
}

/*************************************************
  Function:       TimeSyncSdkCycleProcess
  Description:    sdk��ʱ��ͬ��ģ���ʼ���ӿ�
  Input:          pRxData�����յ���MPU��ʱ��ͬ������
                  rxLength�����յ���MPUʱ��ͬ�����ݳ���
  Output:         ��
  Return:         ��
  Others:         
*************************************************/
void TimeSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    int16_t sleepFlag = 1; //0:���� 1������
    uint8_t *pRxData = NULL;
    
    sleepFlag = PowerManageSdkGetSleepState(g_sleepStateHandle);
    if(sleepFlag == 0)
    {
        PowerManageSdkSetSleepAck(g_sleepStateHandle);
        g_timeData.timeValidity = 0;
    }
    else
    {
        if(msgData != NULL && msgData->pDataBuffer != NULL  &&  msgData->dataLength >0)
        {
            pRxData = msgData->pDataBuffer;
            /**************
            Timestamp	UINT32
            TimeZone	UINT8
            Status	UINT8  Bit0-Bit3 ʱ��ͬ��״̬��0-δͬ��1-��ͬ��
                           Bit4-Bit7  ʱ��Դ��0-��Ч 1-NTP 2-GNSS
            **************/
            if(((pRxData[5]&0x0F) != 0) && ((pRxData[5]&0xF0) != 0))
            {
                g_timeData.timeSyncStat = (pRxData[5]>>4) & 0x0F;
                g_timeData.timeSrc = pRxData[5] & 0x0F;
                g_timeData.timestamp = (pRxData[0]<<24)+(pRxData[1]<<16)+(pRxData[2]<<8) + pRxData[3];
                g_timeData.timeValidity = 1;
                TimerHalSetRtcTime(g_timeData.timestamp);
            }
        }
    }
    
    return;
}

/**********************************************
* ������ : TimeSyncGetLocalTimeFromRtc
* ��  �� : ��2000����RTCʱ��ת��Ϊ������ʱ����
* ��  �� : rtc 2000���Ժ������
* ��  �� : ��ǰ��������ʱ����
* ����ֵ : 0,�ɹ�;����:�������.
**********************************************/
static int16_t TimeSyncGetLocalTimeFromRtc(uint32_t rtc,uint8_t timeZone, uint32_t *year, uint8_t *mon, uint8_t *day, uint8_t *hour, uint8_t *min, uint8_t *sec)
{
	uint64_t temp=0;
	uint32_t temp1=0;	  
  
    rtc =rtc - 946656000 + (timeZone * 60 *60);
	temp=rtc/86400;	//�õ�����(��������Ӧ��)

	temp1=2000; //��1970�꿪ʼ
	while(temp>=365)
	{				 
		if((temp1%400 == 0)||(temp1%4 == 0 && temp1%100 != 0))//�ж��Ƿ�Ϊ���꣬����ܱ�400����������ܱ�4�����������ܱ�100����Ϊ����
		{
			if(temp>=366)
            {
                temp-=366;//�����������
            }
			else 
            {
                temp1++;
                break;
            }  
		}
		else
        {
            temp-=365;   //ƽ�� 
        }
		temp1++;  
        if(temp1 > 2099)
        {
            return -1;//����2099�꣬�˳�
        }
	}	
	*year = temp1;//�õ����
	temp1=0;
	while(temp>=28)//������һ����
	{
		if(((*year%400 == 0)||(*year%4 == 0 && *year%100 != 0))&&(temp1==1))//�����ǲ�������/2�·�
		{
			if(temp>=29)
            {
                temp-=29;//�����������
            }
			else
            {
                break;
            }
		}
		else 
		{
			if(temp>=mon_table[temp1])
            {
                temp-=mon_table[temp1];//ƽ��
            }
			else
            {
                break;
            }
		}
		temp1++;
	}
	*mon=temp1+1;	//�õ��·�
	*day=temp+1;	//�õ����� 
	temp=rtc%86400;			//�õ�������		   
	*hour=temp/3600;		//Сʱ
	*min=(temp%3600)/60;	//����	
	*sec=(temp%3600)%60;	//����

    return 0;
}

/**********************************************
* ������ : RTC_GetSecFrom2000
* ��  �� : �õ�2000���Ժ������
* ��  �� : ��ǰ��������ʱ����
* ��  �� : None
* ����ֵ : 2000���Ժ������  
**********************************************/
#if 0
static uint32_t TimeSyncGetRtcFromLocalTime(uint16_t year,uint8_t month,uint8_t day,uint8_t hour,uint8_t min, uint8_t sec)
{
  uint32_t seccount = 0;//һ��Ҫ��ʼ��
  uint16_t t;

  if(year < RTC_TIME_START_YEAR || year > 2099)
	return 0;	  
  
  for(t= RTC_TIME_START_YEAR;t<year;t++)  
  {
  	if(RTC_IsLeapYear(t))
  	  seccount += 31622400;
  	else 
  	  seccount += 31536000; 	   
  }
  month-=1;
  for(t=0;t<month;t++)	  
  {
  	seccount += (uint32_t)mon_table[t]*86400;
  	if(RTC_IsLeapYear(year)&&t==1)
  	  seccount+=86400;
  }
  seccount += (uint32_t)(day-1)*86400;
  seccount += (uint32_t)hour*3600;
  seccount += (uint32_t)min*60;   //����������
  seccount += sec;

  seccount += 946656000;
  return seccount;
}
#endif


/*************************************************
  Function:       TimeSyncSdkGetRealTime
  Description:    ��ȡ�и�ʽ��ʱ��
  Input:          ��
  Output:         timeZone��ʱ���
                  pYear����
                  pMonth����
                  pDay����
                  pHour��ʱ
                  pMin����
                  pSecond����
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t TimeSyncSdkGetRealTime(uint8_t timeZone,uint32_t *pYear,uint8_t *pMonth,uint8_t *pDay,uint8_t *pHour,uint8_t *pMin,uint8_t *pSecond)
{
    uint32_t time = 0;
    
    if(g_timeData.timeValidity == 0)
    {
        return -1;
    }
    
    TimerHalGetRtcTime(&time);
    TimeSyncGetLocalTimeFromRtc(time,timeZone,pYear,pMonth,pDay,pHour,pMin,pSecond);
 
    return 0;
}

/*************************************************
  Function:       TimeSyncSdkGetUtcTime
  Description:    ��ȡ�и�ʽ��ʱ��
  Input:          ��
  Output:         pTime:ʱ���
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t TimeSyncSdkGetUtcTime(uint32_t *pTime)
{
    uint32_t time = 0;
    
    if(g_timeData.timeValidity == 0)
    {
        return -1;
    }
    
    TimerHalGetRtcTime(&time);
    *pTime = time;
    return 0;
}



