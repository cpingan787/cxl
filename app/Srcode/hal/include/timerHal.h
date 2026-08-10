#ifndef _TIMERHAL_H
#define _TIMERHAL_H

#include <stdint.h>

/*************************************************
  Function:     TimerHalInterruptCallback
  Description:  定时器中断回调函数
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalInterruptCallback(void);

/*************************************************
  Function:     TimerHalInit
  Description:  Timer init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalInit(void);

/*************************************************
  Function:     TimerHalOpen
  Description:  Timer open handle
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
int16_t TimerHalOpen(void);

/*************************************************
  Function:     TimerHalStartTime
  Description:  Timer starts the timer
  Input:        timerHandle :timer handle
                time_ms :unit ms
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalStartTime(int16_t timerHandle,uint32_t time_ms);

/*************************************************
  Function:     TimerHalStopTime
  Description:  Timer stop the timer
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalStopTime(int16_t timerHandle);

/*************************************************
  Function:     TimerHalIsTimeout
  Description:  Timer timeout 
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalIsTimeout(int16_t timerHandle);

/*************************************************
  Function:     TimerHalGetRemainder
  Description:  Get timer remainder
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
uint32_t TimerHalGetRemainder(int16_t timerHandle);

/*************************************************
  Function:     TimerHalSetMode
  Description:  设置IIC使能状态
  Input:        mode :IIC使能状态
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalSetMode(uint8_t mode);

/*************************************************
  Function:     TimerHalGetSleepDuration
  Description:  获取休眠持续时间（秒）
  Input:        None
  Output:       None
  Return:       休眠持续时间（秒）
  Others:       None
*************************************************/
uint32_t TimerHalGetSleepDuration(void);

/* RTC 相关 */
/*************************************************
  Function:     TimerHalSetRtcTime
  Description:  设置RTC时间（2000-2099年，00:00:00-2400秒）
  Input:        utc :UTC时间
  Output:       None
  Return:       None
  Others:       None
*************************************************/
uint8_t TimerHalSetRtcTime(uint32_t utc);

/*************************************************
  Function:     TimerHalGetRtcTime
  Description:  获取当前时间（UTC）
  Input:        pUtc :当前时间
  Output:       None
  Return:       None
  Others:       None
*************************************************/
uint8_t TimerHalGetRtcTime(uint32_t *pUtc);

/* ================= RTC Alarm ================= */
/*************************************************
  Function:     TimerHalPrepareSleep
  Description:  设置listen唤醒闹钟
  Input:        sleepSeconds :睡眠时间（秒）
  Output:       None
  Return:       None
  Others:       None
*************************************************/
uint8_t TimerHalPrepareSleep(uint32_t sleepSeconds);

/*************************************************
  Function:     TimerHalGetRtcStatus
  Description:  获取RTC状态
  Input:        None
  Output:       None
  Return:       RTC状态
  Others:       None
*************************************************/
uint8_t TimerHalGetRtcStatus(void);

/*************************************************
  Function:     TimerHalClearRtcAlarmFlag
  Description:  清除已触发的RTC闹钟标志位
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalClearRtcAlarmFlag(void);

/*************************************************
  Function:     TimerHalListenSleepSetAlarm
  Description:  设置listen唤醒闹钟
  Input:        sleepSeconds : listen唤醒时间，单位：秒
  Output:       None
  Return:       0  : set success
                -1 : set failed
  Others:       None
*************************************************/
uint8_t TimerHalListenSleepSetAlarm(uint32_t sleepSeconds);

void TimerHalTestMain(uint16_t cycleTime);

/* 禁用RTC闹钟 */
void TimerHalDisableRtcAlarm(void);

/* 清除RTC闹钟标志位 */
void TimerHalClearRtcAlarmFlagInNvm(void);

/* 获取RTC闹钟标志位 */
uint8_t TimerHalGetRtcAlarmFlagInNvm(void);


#endif
