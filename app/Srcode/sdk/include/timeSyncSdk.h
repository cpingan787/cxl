/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: timeSyncSdk.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef _TIME_SYNC_SDK_H_
#define _TIME_SYNC_SDK_H_
/****************************** include ***************************************/
#include "stdint.h"
#include "mpuHal.h"

/****************************** Type Definitions ******************************/
typedef struct
{
    uint32_t year;
    uint8_t  month;
    uint8_t  day;
    uint8_t  hour;
    uint8_t  min;
    uint8_t  second;
} FormatTime_t;

/* 时区协议索引枚举 (1~25) */
typedef enum {
  TIME_ZONE_IDX_UTC_MINUS_12 = 1,
  TIME_ZONE_IDX_UTC_MINUS_11,
  TIME_ZONE_IDX_UTC_MINUS_10,
  TIME_ZONE_IDX_UTC_MINUS_9,
  TIME_ZONE_IDX_UTC_MINUS_8,
  TIME_ZONE_IDX_UTC_MINUS_7,
  TIME_ZONE_IDX_UTC_MINUS_6,
  TIME_ZONE_IDX_UTC_MINUS_5,
  TIME_ZONE_IDX_UTC_MINUS_4,
  TIME_ZONE_IDX_UTC_MINUS_3,
  TIME_ZONE_IDX_UTC_MINUS_2,
  TIME_ZONE_IDX_UTC_MINUS_1,
  TIME_ZONE_IDX_UTC,           // 13: 零时区基准
  TIME_ZONE_IDX_UTC_PLUS_1,
  TIME_ZONE_IDX_UTC_PLUS_2,
  TIME_ZONE_IDX_UTC_PLUS_3,
  TIME_ZONE_IDX_UTC_PLUS_4,
  TIME_ZONE_IDX_UTC_PLUS_5,
  TIME_ZONE_IDX_UTC_PLUS_6,
  TIME_ZONE_IDX_UTC_PLUS_7,
  TIME_ZONE_IDX_UTC_PLUS_8,    // 21: 北京时间
  TIME_ZONE_IDX_UTC_PLUS_9,
  TIME_ZONE_IDX_UTC_PLUS_10,
  TIME_ZONE_IDX_UTC_PLUS_11,
  TIME_ZONE_IDX_UTC_PLUS_12,   // 25
  TIME_ZONE_IDX_MAX,
} TimeZoneIndex_e;

/****************************** Function Declarations *************************/
/*************************************************
  Function:       TimeSyncSdkInit
  Description:    sdk层时间同步模块初始化接口
  Input:          mpuHandle:mpu的通信句柄
                  cycleTime：周期接口调用周期设置
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkInit(int16_t mpuHandle,uint16_t cycleTime);

/*************************************************
  Function:       TimeSyncSdkCycleProcess
  Description:    sdk层时间同步模块初始化接口
  Input:          pRxData：接收到的MPU的时间同步数据
                  rxLength：接收到的MPU时间同步数据长度
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkCycleProcess(MpuHalDataPack_t *msgData);

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
int16_t TimeSyncSdkGetRealTime(FormatTime_t *formatTime);
/*************************************************
  Function:       TimeSyncSdkGetUtcTime
  Description:    获取时间戳( 基于2000年)
  Input:          无
  Output:         pTime:时间戳 单位：秒
  Return:         0：成功, 同步后的时间
                  1：未同步的时间
                  -1: 失败
  Others:
*************************************************/
int16_t TimeSyncSdkGetUtcTime(uint32_t *pUtc);

/*************************************************
  Function:       TimeSyncSdkVehicleTimeSyncProcess
  Description:    车辆时间同步处理函数 发送ZXD时间到MPU
  Input:          VehicleTime：ZXD时间结构体指针
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkVehicleTimeSyncProcess(FormatTime_t *VehicleTime);

/*************************************************
  Function:       TimeSyncSdkRtcTimeSyncProcess
  Description:    构建RTC时间同步请求包并发送到MPU
  Input:          paramId - 参数ID
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkRtcTimeSyncProcess(void);

/*************************************************
  Function:       TimeSyncSdkSendTimeSignalToCanWithoutMpu
  Description:    时间未同步时，外发报文时间为1970年1月1日 00:00:00起始，且为无效状态
  Input:          uinxTime：时间戳
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkSendTimeSignalToCanWithoutMpu(void);

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
void TimeSyncSdkSetRtcTimeSyncStat(uint32_t rtcTime);

/*************************************************
  Function:       TimeSyncSdkGetRtcTimeSync
  Description:    获取RTC时间同步状态
  Input:          无
  Output:         无
  Return:         0 RTC时间被重置 不需要发送 
                  1 RTC时间正确 需要发送
  Others:         
*************************************************/
uint8_t TimeSyncSdkGetRtcTimeSyncStat(void);

/*************************************************
  Function:       TimeSyncSdkGetRtcTimeSyncCnt
  Description:    获取RTC时间同步次数
  Input:          无
  Output:         无
  Return:         0：未完成过时间同步
                  1：已完成时间同步
  Others:         
*************************************************/
uint8_t TimeSyncSdkGetRtcTimeSyncCnt(void);

/*************************************************
  Function:       TimeSyncSdkCleanRtcTimeSyncCnt
  Description:    清除RTC时间同步次数
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkCleanRtcTimeSyncCnt(void);

/*************************************************
  Function:       TimeSyncSdkSendTimeSignalToCanWithoutTimeSync
  Description:    时间未同步时，外发报文时间为2000年1月1日 00:00:00起始，且为无效状态
  Input:          uinxTime：时间戳
  Output:         无
  Return:         无
  Others:         
*************************************************/
void TimeSyncSdkSendTimeSignalToCanWithoutTimeSync(uint32_t uinxTime);

/*************************************************
  Function:       TimeSyncSdkGetFirstTimeSyncStatus
  Description:    获取首次时间同步状态
  Input:          无
  Output:         无
  Return:         0：未完成过时间同步
                  1：已完成时间同步
  Others:         
*************************************************/
uint8_t TimeSyncSdkGetFirstTimeSyncStatus(void);

#endif


