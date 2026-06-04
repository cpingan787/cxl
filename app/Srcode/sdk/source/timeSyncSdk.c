#include "stdlib.h"

#include "Com.h"
// #include "powerManageSdk.h"
#include "timerHal.h"
#include "timeSyncSdk.h"

#include "r_cg_macrodriver.h"
#include "logHal.h"

typedef struct
{
    uint32_t timestamp;   // 0-4294967295, UNIX时间戳，单位S ，UTC时间.时间未同步时填0
    uint8_t timeZone;     // 时区 1-25
    uint8_t timeSrc;      // 时间源，0-无效 1-NTP  2-GNSS
    uint8_t timeSyncStat; // 时间同步状态 0：未同步 1：同步
    uint8_t timeValidity; // 数据有效性，0：无效 1有效
} MpuTime_t;

const static uint8_t g_monTable[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
#define RTC_TIME_START_YEAR (1970)
#define UTC_2000_BASE_TIME (946684800)

#define DEFAULT_TIME_ZONE (0)
#define BEIJING_TIME_ZONE (8)

#define TIME_ZONE DEFAULT_TIME_ZONE // 时区配置

// static int16_t g_mpuHandle = -1;  //MPU通信句柄
// static int16_t g_sleepStateHandle = -1; // 休眠状态获取句柄
// static MpuTime_t g_timeData;            // 时间数据保存
static MpuTime_t g_gnssData; // Gnss时间数据保存
static MpuTime_t g_ntpData;  // NTP时间数据保存
// static uint16_t g_cycleTime = 0;

/**********************************************
 * 函数名 : TimeSyncGetLocalTimeFromRtc
 * 描  述 : RTC时间转换为年月日时分秒
 * 输  入 : rtc 1970年以后的秒数
 * 输  出 : 当前的年月日时分秒
 * 返回值 : 0,成功;其他:错误代码.
 **********************************************/
static int16_t TimeSyncGetLocalTimeFromRtc(uint32_t rtc, uint8_t timeZone, uint32_t *year, uint8_t *mon, uint8_t *day, uint8_t *hour, uint8_t *min, uint8_t *sec)
{
    uint64_t temp = 0;
    uint32_t temp1 = 0;

    // 当时间戳小于2000年utc时间时, 可能是GNSS/NTP未同步, 直接返回错误
    if (rtc < UTC_2000_BASE_TIME)
    {
        return -1;
    }
    // 加上时区偏移量
    rtc = rtc + (timeZone * 60 * 60);
    // rtc = rtc - 946684800 + (timeZone * 60 * 60);
    temp = rtc / 86400; // 得到天数(秒钟数对应的)

    temp1 = RTC_TIME_START_YEAR; // 从1970年开始
    while (temp >= 365)
    {
        if ((temp1 % 400 == 0) || (temp1 % 4 == 0 && temp1 % 100 != 0)) // 判断是否为闰年，年号能被400整除或年号能被4整除，而不能被100整除为闰年
        {
            if (temp >= 366)
            {
                temp -= 366; // 闰年的秒钟数
            }
            else
            {
                // temp1++;
                break;
            }
        }
        else
        {
            temp -= 365; // 平年
        }
        temp1++;
        if (temp1 > 2099)
        {
            return -1; // 大于2099年，退出
        }
    }
    *year = temp1; // 得到年份
    temp1 = 0;
    while (temp >= 28) // 超过了一个月
    {
        if (((*year % 400 == 0) || (*year % 4 == 0 && *year % 100 != 0)) && (temp1 == 1)) // 当年是不是闰年/2月份
        {
            if (temp >= 29)
            {
                temp -= 29; // 闰年的秒钟数
            }
            else
            {
                break;
            }
        }
        else
        {
            if (temp >= g_monTable[temp1])
            {
                temp -= g_monTable[temp1]; // 平年
            }
            else
            {
                break;
            }
        }
        temp1++;
    }
    *mon = temp1 + 1;          // 得到月份
    *day = temp + 1;           // 得到日期
    temp = rtc % 86400;        // 得到秒钟数
    *hour = temp / 3600;       // 小时
    *min = (temp % 3600) / 60; // 分钟
    *sec = (temp % 3600) % 60; // 秒钟
    return 0;
}

/*************************************************
  Function:       TimeSyncSdkSendGnssTimeSignal
  Description:    发送GNSS时间信号
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void TimeSyncSdkSendGnssTimeSignal()
{
    uint32_t year32 = 0;
    uint8_t month = 0;
    uint8_t day = 0;
    uint8_t hour = 0;
    uint8_t min = 0;
    uint8_t sec = 0;
    uint8_t status = g_gnssData.timeValidity;
    int16_t ret = TimeSyncGetLocalTimeFromRtc(g_gnssData.timestamp, TIME_ZONE, &year32, &month, &day, &hour, &min, &sec);
    if (ret != 0)
    {
        status = 0;
        Com_SendSignal(IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &status);
        return;
    }
    uint8 year8 = year32 - 2000;
    Com_SendSignal(IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &year8);
    Com_SendSignal(IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &month);
    Com_SendSignal(IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &day);
    Com_SendSignal(IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &hour);
    Com_SendSignal(IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &min);
    Com_SendSignal(IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sec);
    Com_SendSignal(IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &status);
}

/*************************************************
  Function:       TimeSyncSdkSendNtpTimeSignal
  Description:    发送NTP时间信号
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void TimeSyncSdkSendNtpTimeSignal()
{
    uint32_t year32 = 0;
    uint8_t month = 0;
    uint8_t day = 0;
    uint8_t hour = 0;
    uint8_t min = 0;
    uint8_t sec = 0;
    uint8_t status = g_ntpData.timeValidity;
    int16_t ret = TimeSyncGetLocalTimeFromRtc(g_ntpData.timestamp, TIME_ZONE, &year32, &month, &day, &hour, &min, &sec);
    if (ret != 0)
    {
        status = 0;
        Com_SendSignal(INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &status);
        return;
    }
    uint8 year8 = year32 - 2000;
    Com_SendSignal(INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &year8);
    Com_SendSignal(INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &month);
    Com_SendSignal(INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &day);
    Com_SendSignal(INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &hour);
    Com_SendSignal(INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &min);
    Com_SendSignal(INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sec);
    Com_SendSignal(INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &status);
}

/*************************************************
  Function:       TimeSyncSdkInit
  Description:    sdk层时间同步模块初始化接口
  Input:          mpuHandle:mpu的通信句柄
                  cycleTime：周期接口调用周期设置
  Output:         无
  Return:         无
  Others:
*************************************************/
void TimeSyncSdkInit(int16_t mpuHandle, uint16_t cycleTime)
{
    // const char moduleName[] = {'t', 'i', 'm', 'e', 's', 'y', 'n', 'c', 's', 'd', 'k'};
    // g_mpuHandle = mpuHandle;
    // g_cycleTime = cycleTime;
    // g_timeData.timeValidity = 0;
    g_gnssData.timeValidity = 0;
    g_ntpData.timeValidity = 0;
    // g_sleepStateHandle = PowerManageSdkOpenHandle(moduleName);    // TODO guanyuan
}

/*************************************************
  Function:       TimeSyncSdkCycleProcess
  Description:    sdk层时间同步模块初始化接口
  Input:          pRxData：接收到的MPU的时间同步数据
                  rxLength：接收到的MPU时间同步数据长度
  Output:         无
  Return:         无
  Others:
*************************************************/
void TimeSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    int16_t sleepFlag = 1; // 0:休眠 1：唤醒
    uint8_t *pRxData = NULL;

    // sleepFlag = PowerManageSdkGetSleepState(g_sleepStateHandle);    // TODO guanyuan
    if (sleepFlag == 0)
    {
        // PowerManageSdkSetSleepAck(g_sleepStateHandle);    // TODO guanyuan
        g_gnssData.timeValidity = 0;
        g_ntpData.timeValidity = 0;
    }
    else
    {
        if (msgData != NULL && msgData->pDataBuffer != NULL && msgData->dataLength > 0)
        {
            pRxData = msgData->pDataBuffer;
            /**************
            Timestamp	UINT32
            TimeZone	UINT8
            Status	UINT8  Bit0-Bit3 时间同步状态：0-未同步1-已同步
                           Bit4-Bit7 时间源：0 无效 1-NTP 2-GNSS
            **************/
            if ((pRxData[5] & 0xF0) == 0x20)
            {
                // TBOX_PRINT("timeSyncStat: %d, timeSrc: %d\r\n", g_gnssData.timeSyncStat, g_gnssData.timeSrc);
                SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "timeSyncStat: %d, timeSrc: %d\r\n", g_gnssData.timeSyncStat, g_gnssData.timeSrc);
                g_gnssData.timeSyncStat = pRxData[5] & 0x0F;
                g_gnssData.timeSrc = (pRxData[5] >> 4) & 0x0F;
                if (g_gnssData.timeSyncStat == 0)
                {
                    g_gnssData.timeValidity = 0;
                    g_gnssData.timestamp = 0;
                }
                else
                {
                    g_gnssData.timeValidity = 1;
                    g_gnssData.timestamp = (pRxData[0] << 24) + (pRxData[1] << 16) + (pRxData[2] << 8) + pRxData[3];
                    // TBOX_PRINT("set gnss to rtc\r\n");
                    SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "set gnss to rtc\r\n");
                    TimerHalSetRtcTime(g_gnssData.timestamp);
                }
                g_gnssData.timeZone = pRxData[4];
                TimeSyncSdkSendGnssTimeSignal();
            }
            else if ((pRxData[5] & 0xF0) == 0x10)
            {
                // TBOX_PRINT("timeSyncStat: %d, timeSrc: %d\r\n", g_ntpData.timeSyncStat, g_ntpData.timeSrc);
                SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "timeSyncStat: %d, timeSrc: %d\r\n", g_ntpData.timeSyncStat, g_ntpData.timeSrc);
                g_ntpData.timeSyncStat = pRxData[5] & 0x0F;
                g_ntpData.timeSrc = (pRxData[5] >> 4) & 0x0F;
                if (g_ntpData.timeSyncStat == 0)
                {
                    g_ntpData.timeValidity = 0;
                    g_ntpData.timestamp = 0;
                }
                else
                {
                    g_ntpData.timeValidity = 1;
                    g_ntpData.timestamp = (pRxData[0] << 24) + (pRxData[1] << 16) + (pRxData[2] << 8) + pRxData[3];
                    if (g_gnssData.timeValidity == 0)
                    {
                        // TBOX_PRINT("set ntp to rtc\r\n");
                        SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "set ntp to rtc\r\n");
                        TimerHalSetRtcTime(g_ntpData.timestamp);
                    }
                }
                g_ntpData.timeZone = pRxData[4];
                TimeSyncSdkSendNtpTimeSignal();
            }
            else
            {
                g_ntpData.timeValidity = 0;
            }
        }
    }

    return;
}

/**********************************************
 * 函数名 : RTC_GetSecFrom2000
 * 描  述 : 得到2000年以后的秒数
 * 输  入 : 当前的年月日时分秒
 * 输  出 : None
 * 返回值 : 2000年以后的秒数
 **********************************************/
#if 0
static uint32_t TimeSyncGetRtcFromLocalTime(uint16_t year,uint8_t month,uint8_t day,uint8_t hour,uint8_t min, uint8_t sec)
{
  uint32_t seccount = 0;//一定要初始化
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
  seccount += (uint32_t)min*60;   //分钟秒钟数
  seccount += sec;

  seccount += 946656000;
  return seccount;
}
#endif

/*************************************************
  Function:       TimeSyncSdkGetRealTime
  Description:    获取有格式的时间
  Input:          无
  Output:         timeSrc：时间源 0-rtc 1-GNSS/NTP
                  pYear：年
                  pMonth：月
                  pDay：日
                  pHour：时
                  pMin：分
                  pSecond：秒
  Return:         0：成功(已同步gnss/ntp的时间)
                  1：成功(未同步gnss/ntp的时间)
                  -1：失败
  Others:
*************************************************/
int16_t TimeSyncSdkGetRealTime(uint8_t *timeSrc, uint32_t *pYear, uint8_t *pMonth, uint8_t *pDay, uint8_t *pHour, uint8_t *pMin, uint8_t *pSecond)
{
    uint32_t time = 0;
    uint8_t ret;
    ret = TimerHalGetRtcTime(&time);
    if (ret != 0)
    {
        return -1;
    }
    ret = TimeSyncGetLocalTimeFromRtc(time, TIME_ZONE, pYear, pMonth, pDay, pHour, pMin, pSecond);
    if (ret == 0)
    {
        if (g_ntpData.timeValidity == 0 && g_gnssData.timeValidity == 0)
        {
            *timeSrc = 0;
            return 1;
        }
        *timeSrc = 1;
        return 0;
    }
    else
    {
        return -1;
    }
#if (0)
    if ((g_ntpData.timeValidity == 0) && (g_gnssData.timeValidity == 0))
    {
        *timeSrc = g_gnssData.timeSrc;
        TimeSyncGetLocalTimeFromRtc(g_gnssData.timestamp, g_gnssData.timeZone, pYear, pMonth, pDay, pHour, pMin, pSecond);
        return -1;
    }
    if (g_gnssData.timeSrc == 2)
    {
        *timeSrc = g_gnssData.timeSrc;
        int16_t ret = TimeSyncGetLocalTimeFromRtc(g_gnssData.timestamp, g_gnssData.timeZone, pYear, pMonth, pDay, pHour, pMin, pSecond);
        if (ret == 0)
        {
            return 0;
        }
        return -1;
    }
    else if (g_ntpData.timeValidity == 1)
    {
        *timeSrc = g_ntpData.timeSrc;
        int16_t ret = TimeSyncGetLocalTimeFromRtc(g_ntpData.timestamp, g_ntpData.timeZone, pYear, pMonth, pDay, pHour, pMin, pSecond);
        if (ret == 0)
        {
            return 0;
        }
        return -1;
    }
    else
    {
        return -1;
    }
    return -1;
#endif
}

/*************************************************
  Function:       TimeSyncSdkGetUtcTime
  Description:    获取时间戳( 基于2000年)
  Input:          无
  Output:         pTime:时间戳 单位：秒
  Return:         0：成功, 同步后的时间
                  1：成功, 未同步的时间
                  -1: 失败
  Others:
*************************************************/
int16_t TimeSyncSdkGetUtcTime(uint32_t *pTime)
{
    uint32_t time = 0;
    uint8_t ret = TimerHalGetRtcTime(&time);
    if (ret != 0)
    {
        return -1;
    }
    if (time < UTC_2000_BASE_TIME)
    {
        return -1;
    }
    if (g_ntpData.timeValidity == 0 && g_gnssData.timeValidity == 0)
    {
        // 减去UTC的2000年基准时间
        time = time - UTC_2000_BASE_TIME;
        *pTime = time;
        return 1;
    }
    // 减去UTC的2000年基准时间
    time = time - UTC_2000_BASE_TIME;
    *pTime = time;
    return 0;
}
