/******************************************************************************
 Copyright(C),Beijing Renxin Certificate Technology Co., Ltd.
 File name: 	    gpc_phy_inter_spi.h
 Author:    	    zhengwd	
 Version:		    V1.0	
 Date:      	    2021-03-01
 Description:       
 History:		

******************************************************************************/
#ifndef __SE_TIMER_H__
#define __SE_TIMER_H__

#include "se_inter.h"


/***************************************************************************
* Include Header Files
***************************************************************************/


/**************************************************************************
* Global Macro Definition
***************************************************************************/


/**************************************************************************
* Global Functon Declaration
***************************************************************************/ 


extern uint8_t timer2_over(uint32_t time_uint32);
extern uint8_t timerglb_over();
extern void timer2_start(uint32_t timertag, uint32_t wTimeout);
extern void timerglb_start();


#endif	//__SE_TIMER_H__

/*************** Copyright(C),Beijing Renxin Certificate Technology Co., Ltd. */

