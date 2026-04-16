#ifndef _TIMERHAL_H
#define _TIMERHAL_H

#include <stdint.h>

void TimerHalInterruptCallback(void);
void TimerHalInit(void);
int16_t TimerHalOpen(void);
int16_t TimerHalStartTime(int16_t timerHandle,uint32_t time_ms);
int16_t TimerHalStopTime(int16_t timerHandle);
int16_t TimerHalIsTimeout(int16_t timerHandle);

uint32_t TimerHalGetRemainder(int16_t timerHandle);

/* RTC 时间接口 */
uint8_t TimerHalSetRtcTime(uint32_t utc);
uint8_t TimerHalGetRtcTime(uint32_t *pUtc);

/* RTC 模式控制 */
void TimerHalSetMode(uint8_t mode);

/* 测试接口 */
void TimerHalTestMain(uint16_t cycleTime);

/* ================= RTC Alarm接口 ================= */
/* 进入休眠前调用 */
uint8_t TimerHalPrepareSleep(uint32_t sleepSeconds);
/* 获取实际休眠时间 */
uint32_t TimerHalGetSleepDuration(void);

/* 获取唤醒源 */
uint8_t TimerHalGetRtcStatus(void);

/* 清除RTC Alarm标志 */
void TimerHalClearRtcAlarmFlag(void);

#endif    //_TIMERHAL_H
