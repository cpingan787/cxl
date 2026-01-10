/******************************************************************************
 Copyright(C),CEC Huada Electronic Design Co.,Ltd.
 File name: 		gpc_phy_inter_spi.c
 Author:			zhengwd 
 Version:			V1.0	
 Date:			2021-03-01	
 Description:	       
 History:		

******************************************************************************/


/***************************************************************************
* Include Header Files
***************************************************************************/
#include <stdint.h>
//#include <stdio.h>
//#include <string.h>
#include "include/se_timer.h"
#include "timerHal.h"

//#include "Rte_SE.h"

/**************************************************************************
* Global Variable Declaration
***************************************************************************/

static uint32_t su32RemainTimeCnt_timer2 = 0;
static uint32_t su32RemainTimeCnt_glb = 0;

static uint32_t TimeIwallCnt = 0;
static uint32_t TimeIwallLimit = 0;
static uint32_t TimeIwallglbCnt = 0;
static uint32_t TimeIwallglbLimit = 0;

static int16_t g_timer2TimerHandle;
static int16_t g_glbTimerHandle;

//timer count, ms, 
//if time out, return FAIL; or return OK;
uint8_t timer2_over(uint32_t time_uint32)
{
	//TBOX implementation
#if 0
	TimeIwallCnt = 0;
	Rte_Call_SeTimeOut_TimeRemaining(&TimeIwallCnt);
	if((su32RemainTimeCnt_timer2 >= TimeIwallCnt) && ((su32RemainTimeCnt_timer2 - TimeIwallCnt) > TimeIwallLimit) )
	{
		return FAIL;
	}
#endif
	if(TimerHalIsTimeout(g_timer2TimerHandle) == 0)
	{
        return FAIL;
	}

	return OK;		//if time over, no care timer start or stop
}
//timer count, ms, 
//if time out, return FAIL; or return OK;
uint8_t timerglb_over()
{
	//TBOX implementation
#if 0
	TimeIwallglbCnt = 0;
	Rte_Call_SeTimeOut_TimeRemaining(&TimeIwallglbCnt);
	if((su32RemainTimeCnt_glb >= TimeIwallglbCnt) && ((su32RemainTimeCnt_glb-TimeIwallglbCnt) > TimeIwallglbLimit) )
	{
		return FAIL;
	}
#endif
	if(TimerHalIsTimeout(g_glbTimerHandle) == 0)
	{
        return FAIL;
	}
	
	return OK;
}

//start timer count, ms, 
void timer2_start(uint32_t timertag, uint32_t wTimeout)
{
	//TBOX implementation
#if 0
	TimeIwallLimit = wTimeout/1000;//榛樿300ms
	TimeIwallCnt = 0;

	su32RemainTimeCnt_timer2 = 0;
	Rte_Call_SeTimeOut_TimeRemaining(&su32RemainTimeCnt_timer2);	//if
	if((su32RemainTimeCnt_timer2 < 10000) || (su32RemainTimeCnt_timer2 <= TimeIwallLimit) )
	{
		Rte_Call_SeTimeOut_StopTimer();
		Rte_Call_SeTimeOut_StartTimer(100000);
	}
#endif
	g_timer2TimerHandle = TimerHalOpen();
	TimerHalStartTime(g_timer2TimerHandle, wTimeout/1000);
}
//start timer count, ms, 
void timerglb_start()
{
	//TBOX implementation
#if 0
	TimeIwallglbLimit = 5000;//榛樿5s
	TimeIwallglbCnt = 0;

	su32RemainTimeCnt_glb = 0;
	Rte_Call_SeTimeOut_TimeRemaining(&su32RemainTimeCnt_glb);
	if((su32RemainTimeCnt_glb < 10000) || (su32RemainTimeCnt_glb <= TimeIwallglbLimit) )
	{
		Rte_Call_SeTimeOut_StopTimer();
		Rte_Call_SeTimeOut_StartTimer(100000);
	}
#endif
	g_glbTimerHandle = TimerHalOpen();
	TimerHalStartTime(g_glbTimerHandle, 5000);
}




/*************** Copyright(C),CEC Huada Electronic Design Co.,Ltd.*****END OF FILE****/

