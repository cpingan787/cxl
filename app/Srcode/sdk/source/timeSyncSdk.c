/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: timeSyncSdk.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "stdlib.h"
#include "Com.h"
#include "timerHal.h"
#include "timeSyncSdk.h"
#include "osHal.h"
#include "r_cg_macrodriver.h"
#include "logHal.h"
#include "mpuHal.h"

/****************************** Macro Definitions *****************************/
/* 时间换算常量宏 */
#define RTC_TIME_START_YEAR (1970)
#define UTC_2000_BASE_TIME (946684800)
#define UTC_2026_BASE_TIME (1767225600)
#define TIME_ZONE (0) // 时区配置
/* 时间源宏 */
#define TIME_SYNC_TIMESRC_NTP (1)
#define TIME_SYNC_TIMESRC_GPS (2)
/* 时间同步状态宏 */
#define TIME_SYNC_TIME_SYNC_TO_RTC_CNT 5 // 时间同步状态连续5次有效才能够更新RTC时间
#define TIME_SYNC_SUNBCOMMAND_MPU_TIME_TO_MCU_SYNC      (0x01)
#define TIME_SYNC_SUNBCOMMAND_RTC_TIME_TO_MPU_SYNC      (0x02)
#define TIME_SYNC_SUNBCOMMAND_VEHICLE_TIME_TO_MPU_SYNC  (0x03)
#define TIME_SYNC_LOST_THRESHOLD  (200U)            // 超时阈值：200次×5ms=1s无MPU时间同步则失效

/****************************** Type Definitions ******************************/
typedef struct
{
    uint32_t timestamp;         // 0-4294967295, UNIX时间戳，单位S ，UTC时间.时间未同步时填0
    uint8_t timeZone;           // 时区 1-25
    uint8_t timeSyncStat;       // 时间同步状态 0：未同步 1：同步
    uint8_t timeSrc;            // 时间源，0-无效 1-NTP 2-GNSS 3-系统时间
    uint8_t timeValidity;       // 数据有效性，0：无效 1有效
    uint8_t timeValidityCnt;    // 数据有效性计数器
} MpuTime_t;

/****************************** Global Variables ******************************/
const static uint8_t g_monTable[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
static int16_t g_mpuHandle = -1;                   // MPU句柄
static uint8_t g_syncTimeToMpuData[32] = {0} ;     // Mcu主动同步时间到Mpu数据缓冲区   
static MpuHalDataPack_t g_syncTimeToMpuPack ;      // Mcu主动同步时间到Mpu数据缓冲区结构体
static MpuTime_t g_systemTimeData;                 // MPU同步时间数据
static uint8_t g_rtcTimeSyncStat = 0;              // RTC时间同步状态标志  (MCU未断电&&MPU冷启动后，需要发送60sRTC时间同步)
static uint8_t g_rtcTimeSyncCnt = 0;               // RTC时间同步计数器  (发送60sRTC时间同步)
static SemaphoreHandle_t g_TimeSyncMutexHandle = NULL; // 保护时间数据的互斥锁
static uint8_t g_firstTimeSyncIsOver = 0;          // 首次时间同步是否完成标志  (0：未完成 1：已完成)
static uint16_t g_timeSyncLostCnt = 0;             // MPU时间同步丢失计数器


/****************************** Function Declarations *************************/
static int16_t TimeSyncGetFormatTimeFromUnix(uint32_t rtc, uint8_t timeZone, FormatTime_t *pTime);
static void TimeSyncSdkSendTimeSignalToCan(void);
/********************** Public Function Implementations ***********************/
/**********************************************
 * 函数名 : TimeSyncGetFormatTimeFromUnix
 * 描  述 : UNIX时间转换为格式时间
 * 输  入 : rtc 1970年以后的秒数
 * 输  出 : 当前的年月日时分秒
 * 返回值 : 0,成功;其他:错误代码.
 **********************************************/
static int16_t TimeSyncGetFormatTimeFromUnix(uint32_t rtc, uint8_t timeZone, FormatTime_t *pTime)
{
    uint64_t temp = 0;
    uint32_t temp1 = 0;
    int32_t offsetSeconds = 0;

    // 当时间戳小于2000年utc时间时, 可能是GNSS/NTP未同步, 直接返回错误
    if (rtc < UTC_2000_BASE_TIME)
    {
        return -1;
    }

    if ((timeZone > 0) && (timeZone < TIME_ZONE_IDX_MAX))
    {
        offsetSeconds = ((int32_t)timeZone - TIME_ZONE_IDX_UTC) * 60 * 60;
    }

    // 加上时区偏移量
    rtc = rtc + offsetSeconds;
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
    pTime->year = temp1; // 得到年份
    temp1 = 0;
    while (temp >= 28) // 超过了一个月
    {
        if (((pTime->year % 400 == 0) || (pTime->year % 4 == 0 && pTime->year % 100 != 0)) && (temp1 == 1)) // 当年是不是闰年/2月份
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
    pTime->month = temp1 + 1;           // 得到月份
    pTime->day = temp + 1;              // 得到日期
    temp = rtc % 86400;                 // 得到秒钟数
    pTime->hour = temp / 3600;          // 小时
    pTime->min = (temp % 3600) / 60;    // 分钟
    pTime->second = (temp % 3600) % 60; // 秒钟
    return 0;
}

/*************************************************
  Function:       TimeSyncSdkSendTimeSignalToCan
  Description:    发送时间信号到CAN总线
  Input:          无
  Output:         无
  Return:         无
  Others:
*************************************************/
static void TimeSyncSdkSendTimeSignalToCan(void)
{
    FormatTime_t sysTime = {0};
    uint8 year8 = 0;
    int16_t ret = TimeSyncGetFormatTimeFromUnix(g_systemTimeData.timestamp, g_systemTimeData.timeZone, &sysTime);

    if(g_systemTimeData.timeSrc == TIME_SYNC_TIMESRC_GPS)
    {
        /* 发送GNSS时间信号 */
        if ((ret != 0) || (g_systemTimeData.timeSyncStat == 0))
        {
            /* 时间同步时间无效 时间>2099年 | <2000年 */
            year8 = 0;
            g_systemTimeData.timeSyncStat = 0;
        }
        else
        {
            year8 = sysTime.year - 2000;
        }
        Com_SendSignal(IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &year8);
        Com_SendSignal(IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.month);
        Com_SendSignal(IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.day);
        Com_SendSignal(IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.hour);
        Com_SendSignal(IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.min);
        Com_SendSignal(IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.second);
        Com_SendSignal(IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &g_systemTimeData.timeSyncStat);
    }
    else if(g_systemTimeData.timeSrc == TIME_SYNC_TIMESRC_NTP)
    {
        /* 发送NTP时间信号 */
        if ((ret != 0) || (g_systemTimeData.timeSyncStat == 0))
        {
            year8 = 0;
            g_systemTimeData.timeSyncStat = 0;
        }
        else
        {
            year8 = sysTime.year - 2000;
        }
        Com_SendSignal(INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &year8);
        Com_SendSignal(INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.month);
        Com_SendSignal(INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.day);
        Com_SendSignal(INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.hour);
        Com_SendSignal(INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.min);
        Com_SendSignal(INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.second);
        Com_SendSignal(INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &g_systemTimeData.timeSyncStat);
    }
    else
    {
        /* 无效时间源 不发送信号*/
    }
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
    g_mpuHandle = mpuHandle;
    g_systemTimeData.timeValidity = 0;
    g_TimeSyncMutexHandle = xSemaphoreCreateMutex();
}

/*************************************************
  Function:       TimeSyncSdkCycleProcess
  Description:    sdk层时间同步模块循环处理接口
  Input:          msgData：MPU时间同步数据包
  Output:         无
  Return:         无
  Others:
*************************************************/
void TimeSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    uint8_t *pRxData = NULL;
    
    if (msgData != NULL && msgData->pDataBuffer != NULL && msgData->dataLength > 0)
    {
        pRxData = msgData->pDataBuffer;
        if((msgData->subcommand & 0x7F) == TIME_SYNC_SUNBCOMMAND_MPU_TIME_TO_MCU_SYNC && msgData->dataLength >= 6)
        {
            if(g_firstTimeSyncIsOver == 0)
            {
                g_firstTimeSyncIsOver = 1;
            }
            g_timeSyncLostCnt = 0;
            /**************
            Timestamp	UINT32  时间戳
            TimeZone	UINT8   时区
            Status	    UINT8  Bit0-Bit3 时间同步状态：0-未同步1-已同步
                               Bit4-Bit7 时间源：0 无效 1-NTP 2-GNSS(1、2仅用于can同步) 3-系统时间(用于RTC同步)
            **************/
            g_systemTimeData.timestamp = (pRxData[0] << 24) + (pRxData[1] << 16) + (pRxData[2] << 8) + pRxData[3];// 时间戳
            g_systemTimeData.timeZone = pRxData[4];                  // 时区
            g_systemTimeData.timeSyncStat = pRxData[5] & 0x0F;       // 时间同步状态
            g_systemTimeData.timeSrc = (pRxData[5] >> 4) & 0x0F;     // 时间源
            uint32_t rtcTime = 0;
            TimerHalGetRtcTime(&rtcTime);
            
            // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "timeSyncStat: %d, timeSrc: %d\r\n", g_systemTimeData.timeSyncStat, g_systemTimeData.timeSrc);

            if (g_systemTimeData.timeSyncStat == 0)
            {
                xSemaphoreTake(g_TimeSyncMutexHandle, portMAX_DELAY);
                g_systemTimeData.timeValidity = 0;
                if(g_systemTimeData.timeSrc == 3)
                {
                    g_systemTimeData.timeValidityCnt = 0;       /* 清空时间同步计数器 */
                }
                xSemaphoreGive(g_TimeSyncMutexHandle);
            }
            else
            {
                xSemaphoreTake(g_TimeSyncMutexHandle, portMAX_DELAY);
                /* 已同步 更新时间同步数据 */
                g_systemTimeData.timeValidity = 1;
                xSemaphoreGive(g_TimeSyncMutexHandle);

                /* 同步状态连续有效判断 */
                if((g_systemTimeData.timeSrc == 3) && (g_systemTimeData.timeValidityCnt < TIME_SYNC_TIME_SYNC_TO_RTC_CNT))
                {
                    g_systemTimeData.timeValidityCnt ++;         /* 时间同步计数器增加 */
                    TBOX_PRINT("[TimeSync]timeValidityCnt: %d\r\n", g_systemTimeData.timeValidityCnt);
                }

                /* RTC时间更新 */
                if((g_systemTimeData.timeValidityCnt >= TIME_SYNC_TIME_SYNC_TO_RTC_CNT) &&  //时间同步状态连续5次有效
                   (g_systemTimeData.timeSrc == 3) &&                                       //时间源为系统时间
                   (g_systemTimeData.timestamp >= 1767196800) &&                            //消息中的时间大于2026年
                   ((rtcTime > g_systemTimeData.timestamp) ?                                //RTC时间与消息中的时间差大于2秒
                    (rtcTime - g_systemTimeData.timestamp) : 
                    (g_systemTimeData.timestamp - rtcTime)) >= 2U)                           
                {
                    TimerHalSetRtcTime(g_systemTimeData.timestamp);
                    // SYNC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RTC_TIME, "RTC time update: %d, timeSrc: %d\r\n", g_systemTimeData.timestamp,g_systemTimeData.timeSrc);
                    TBOX_PRINT("[TimeSync]Set RTC Time\r\n");
                    xSemaphoreTake(g_TimeSyncMutexHandle, portMAX_DELAY);
                    g_systemTimeData.timeValidity = 0;
                    g_systemTimeData.timeValidityCnt = 0;
                    xSemaphoreGive(g_TimeSyncMutexHandle);
                }
            }
	        /* CAN时间同步 */
    		TimeSyncSdkSendTimeSignalToCan();
        }
        else
        {

        }
    }
    else
    {
        if(g_firstTimeSyncIsOver != 0)
        {
            g_timeSyncLostCnt++;
            if(g_timeSyncLostCnt >= TIME_SYNC_LOST_THRESHOLD)
            {
                g_timeSyncLostCnt = 0;
                g_systemTimeData.timeValidity = 0;
                g_firstTimeSyncIsOver = 0;
                TBOX_PRINT("[TimeSync]Time Sync Lost, can signal use RTC time\r\n");
            }
        }
    }

    return;
}

/*************************************************
  Function:       TimeSyncSdkGetRealTime
  Description:    获取有格式的时间
  Input:          无
  Output:         formatTime：时间结构体指针
  Return:         0：成功(已同步gnss/ntp的时间)
                  -1：失败
  Others:
*************************************************/
int16_t TimeSyncSdkGetRealTime(FormatTime_t *formatTime)
{
    uint32_t time = 0;
    int16_t ret;

    if((g_systemTimeData.timeValidity == 0) && (TimerHalGetRtcTime(&time) ==0))
    {
        if(TimeSyncGetFormatTimeFromUnix(time, g_systemTimeData.timeZone, formatTime))
        {
            ret = 0;
        }
        else
        {
            ret = -1;
        }
    }
    else
    {
        ret = -1;
    }
    return ret;
}

/*************************************************
  Function:       TimeSyncSdkVehicleTimeSyncProcess
  Description:    构建ZXD时间同步请求包并发送到MPU
  Input:          paramId - 参数ID
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkVehicleTimeSyncProcess(FormatTime_t *VehicleTime)
{
    uint32_t year32 = 0;

    g_syncTimeToMpuPack.aid = 0x01;
    g_syncTimeToMpuPack.mid = 0x02;
    g_syncTimeToMpuPack.subcommand = TIME_SYNC_SUNBCOMMAND_VEHICLE_TIME_TO_MPU_SYNC;

    memset(g_syncTimeToMpuData,0,sizeof(g_syncTimeToMpuData));

    g_syncTimeToMpuPack.dataBufferSize = sizeof(g_syncTimeToMpuData);

    year32 = VehicleTime->year + 2000;
    g_syncTimeToMpuData[0] = (uint8_t)((year32 >> 24) & 0xFF);
    g_syncTimeToMpuData[1] = (uint8_t)((year32 >> 16) & 0xFF);
    g_syncTimeToMpuData[2] = (uint8_t)((year32 >> 8) & 0xFF);
    g_syncTimeToMpuData[3] = (uint8_t)(year32 & 0xFF);
    g_syncTimeToMpuData[4] = VehicleTime->month;
    g_syncTimeToMpuData[5] = VehicleTime->day;
    g_syncTimeToMpuData[6] = VehicleTime->hour;
    g_syncTimeToMpuData[7] = VehicleTime->min;
    g_syncTimeToMpuData[8] = VehicleTime->second;

    g_syncTimeToMpuPack.dataLength = 9;
    g_syncTimeToMpuPack.pDataBuffer = g_syncTimeToMpuData;

    MpuHalTransmit(g_mpuHandle, &g_syncTimeToMpuPack);
    return ;
}

/*************************************************
  Function:       TimeSyncSdkRtcTimeSyncProcess
  Description:    构建RTC时间同步请求包并发送到MPU
  Input:          paramId - 参数ID
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkRtcTimeSyncProcess(void)
{
    uint32_t rtcTime = 0;
    g_rtcTimeSyncCnt++;

    g_syncTimeToMpuPack.aid = 0x01;
    g_syncTimeToMpuPack.mid = 0x02;
    g_syncTimeToMpuPack.subcommand = TIME_SYNC_SUNBCOMMAND_RTC_TIME_TO_MPU_SYNC;

    memset(g_syncTimeToMpuData,0,sizeof(g_syncTimeToMpuData));

    g_syncTimeToMpuPack.dataBufferSize = sizeof(g_syncTimeToMpuData);

    TimerHalGetRtcTime(&rtcTime);

    g_syncTimeToMpuData[0] = (uint8_t)((rtcTime >> 24) & 0xFF);
    g_syncTimeToMpuData[1] = (uint8_t)((rtcTime >> 16) & 0xFF);
    g_syncTimeToMpuData[2] = (uint8_t)((rtcTime >> 8) & 0xFF);
    g_syncTimeToMpuData[3] = (uint8_t)(rtcTime & 0xFF);
    g_syncTimeToMpuData[4] = 0x0D;

    g_syncTimeToMpuPack.dataLength = 5;
    g_syncTimeToMpuPack.pDataBuffer = g_syncTimeToMpuData;

    MpuHalTransmit(g_mpuHandle, &g_syncTimeToMpuPack);
    return ;
}

/*************************************************
  Function:       TimeSyncSdkRtcTimeSyncStatSet
  Description:    设置RTC时间同步状态标志
  Input:          rtcTime：RTC时间戳
  Output:         无
  Return:         无
  Others:         当RTC时间戳小于等于UTC_2026_BASE_TIME时，不发送RTC时间同步请求包
                  0 RTC时间被重置 不需要发送 
                  1 RTC时间正确 需要发送
*************************************************/
void TimeSyncSdkSetRtcTimeSyncStat(uint32_t rtcTime)
{
    if(rtcTime >= UTC_2026_BASE_TIME)
    {
        xSemaphoreTake(g_TimeSyncMutexHandle, portMAX_DELAY);
        g_rtcTimeSyncStat = 1;
        xSemaphoreGive(g_TimeSyncMutexHandle);
    }
}

/*************************************************
  Function:       TimeSyncSdkGetRtcTimeSync
  Description:    获取RTC时间同步状态
  Input:          无
  Output:         无
  Return:         0 RTC时间被重置 不需要发送 
                  1 RTC时间正确 需要发送
  Others:         
*************************************************/
uint8_t TimeSyncSdkGetRtcTimeSyncStat(void)
{
    return g_rtcTimeSyncStat;
}

/*************************************************
  Function:       TimeSyncSdkGetRtcTimeSyncCnt
  Description:    获取RTC时间同步次数
  Input:          无
  Output:         无
  Return:         
  Others:         
*************************************************/
uint8_t TimeSyncSdkGetRtcTimeSyncCnt(void)
{
    return g_rtcTimeSyncCnt;
}

/*************************************************
  Function:       TimeSyncSdkCleanRtcTimeSyncCnt
  Description:    清除RTC时间同步次数
  Input:          无
  Output:         无
  Return:         
  Others:         
*************************************************/
void TimeSyncSdkCleanRtcTimeSyncCnt(void)
{
    xSemaphoreTake(g_TimeSyncMutexHandle, portMAX_DELAY);
    g_rtcTimeSyncCnt = 0;
    xSemaphoreGive(g_TimeSyncMutexHandle);
}

/*************************************************
  Function:       TimeSyncSdkGetFirstTimeSyncStatus
  Description:    获取首次时间同步状态
  Input:          无
  Output:         无
  Return:         0：未完成过时间同步
                  1：已完成时间同步
  Others:         
*************************************************/
uint8_t TimeSyncSdkGetFirstTimeSyncStatus(void)
{
    return g_firstTimeSyncIsOver;
}

/*************************************************
  Function:       TimeSyncSdkSendTimeSignalToCanWithoutTimeSync
  Description:    时间未同步时，外发报文时间为2000年1月1日 00:00:00起始，且为无效状态
  Input:          uinxTime：时间戳
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkSendTimeSignalToCanWithoutTimeSync(uint32_t uinxTime)
{
    uint8_t timeValidity = 0;
    uint8_t year8 = 0;
    FormatTime_t sysTime = {0};
    
    TimeSyncGetFormatTimeFromUnix(uinxTime, TIME_ZONE, &sysTime);
    year8 = sysTime.year - 2000;

    /* GPS时间信号 */
    Com_SendSignal(IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &year8);
    Com_SendSignal(IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.month);
    Com_SendSignal(IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.day);
    Com_SendSignal(IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.hour);
    Com_SendSignal(IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.min);
    Com_SendSignal(IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &sysTime.second);
    Com_SendSignal(IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx, &timeValidity);

    /* INTP时间信号 */
    Com_SendSignal(INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &year8);
    Com_SendSignal(INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.month);
    Com_SendSignal(INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.day);
    Com_SendSignal(INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.hour);
    Com_SendSignal(INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.min);
    Com_SendSignal(INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &sysTime.second);
    Com_SendSignal(INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx, &timeValidity);
}

#if 0


/**********************************************
 * 函数名 : RTC_GetSecFrom2000
 * 描  述 : 得到2000年以后的秒数
 * 输  入 : 当前的年月日时分秒
 * 输  出 : None
 * 返回值 : 2000年以后的秒数
 **********************************************/

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
#endif