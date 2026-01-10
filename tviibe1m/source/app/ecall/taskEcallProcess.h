#ifndef _TASK_APP_ECALL_PROCESS_H
#define _TASK_APP_ECALL_PROCESS_H

#include <stdint.h>

typedef enum
{
    E_SOS_LED_STATE_INIT = 0x00,   /*初始化状态*/
	E_SOS_LED_STATE_RING,          /*ECALL拨号中*/	
    E_SOS_LED_STATE_CALL,          /*ECALL通话中*/
    E_SOS_LED_STATE_WAIT_BACK,     /*ECALL等待PSAP应答*/
    E_SOS_LED_STATE_END,           /*ECALL结束、自检结束*/

    E_SOS_LED_STATE_SELFCHECK_ERR,      /*ECALL终端自检异常*/
    E_SOS_LED_STATE_WARNING,         /*LED灯状态重要提示*/
    E_SOS_LED_STATE_SELFCHECK_ON,            /*LED灯状态打开*/
}SosLledState_e;

/****************************************************************************************
* SOS 按键控制状态结构体
******************************************************************************************/
typedef enum
{
	E_SOS_BUTTON_STATE_IDLE	= 0x00,	    	/*按键未被操作*/
	E_SOS_BUTTON_STATE_CLICK,				/*按键被触发*/
	E_SOS_BUTTON_STATE_FOURCHECK,			/*按键轻按检测*/
	E_SOS_BUTTON_STATE_PRESS,				/*按键被按下未放开*/
	E_SOS_BUTTON_STATE_RELEASED,			/*按键被松开*/
	E_SOS_BUTTON_STATE_TESTMODE,			/*按键测试模式*/
	E_SOS_BUTTON_STATE_HARDFAULT,			/*按键故障*/
}SosButtonState_e;

typedef struct
{
	uint32_t clickTime;		/*按键被按压后获取的系统时间*/	
	uint32_t pressTime;		/*按键被按住未放获取的时间状态*/
	uint32_t releasedTime;	/*按键被松开后获取的系统时间*/
	uint32_t cancelTime;	/*按键时间被取消*/
}SosButtonClickMsg_t;

void TaskEcallProcess( void *pvParameters );

#endif    //_TASK_APP_ECALL_PROCESS_H
