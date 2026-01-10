/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
File Name:      timerHal.h
Author:         JiaYingNan
Created Time:   2023.12.25
Description:    timer Indicates the function related to the interface
Others:         none
*************************************************/
#ifndef _TIMERHAL_H
#define _TIMERHAL_H


void TimerHalInit(void);
int16_t TimerHalOpen(void);
int16_t TimerHalStartTime(int16_t timerHandle,uint32_t time_ms);
int16_t TimerHalStopTime(int16_t timerHandle);
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

void TimerHalSetRtcTime(uint32_t utc);
void TimerHalGetRtcTime(uint32_t *pUtc);
void TimerHalSetMode(uint8_t mode);

#endif    //_TIMERHAL_H