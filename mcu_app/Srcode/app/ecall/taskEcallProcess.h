#ifndef _TASK_APP_ECALL_PROCESS_H
#define _TASK_APP_ECALL_PROCESS_H

#include <stdint.h>
#include "ecallHal.h"


/****************************************************************************************
* SOS 按键控制状态结构体
******************************************************************************************/
typedef enum
{
	E_SOS_BUTTON_STATE_IDLE	= 0x00,	    	/*按键未被操作*/
	E_SOS_BUTTON_STATE_CLICK,				/*按键被触发*/
	E_SOS_BUTTON_STATE_PRESS,				/*按键被按下未放开*/
	E_SOS_BUTTON_STATE_RELEASED,			/*按键被松开*/
	E_SOS_BUTTON_STATE_CANCELLED,			/*按键被取消*/
	E_SOS_BUTTON_STATE_TESTMODE,			/*按键测试模式*/
	E_SOS_BUTTON_STATE_HARDFAULT,			/*按键故障*/
}SosButtonState_e;

typedef struct
{
	uint32_t clickTime;		/*按键被按压后获取的系统时间*/	
	uint32_t pressTime;		/*按键被按住未放获取的时间状态*/
	uint32_t releasedTime;	/*按键被松开后获取的系统时间*/
	uint32_t cancelTime;	/*按键时间被取消*/
    uint8_t hardFault;
}SosButtonClickMsg_t;

typedef enum
{
    E_EMGC_CALL_TRIGD = 0x0,//EmgcCallTrigd
    E_EMGC_CALL_FLR_STATUS = 0x1,//EmgcCallFlrSts
    E_ECALL_SYS_STATUS = 0x2,//EcallSysSts
	E_ECALL_SINGAL_ALL,//the lastest
}EcallSendCan_e;

typedef struct
{
    EcallSendCan_e ecallSendCanItem;
    uint8_t ecallSendCanEnable;
    uint8_t ecallSendCanData;
    uint8_t ecallSendCanSignal;
}ECallSendCan_t;

void TaskEcallProcess(void);
void SetEcallSendSignal(EcallSendCan_e ecallSendCanItem, uint8_t ecallSendCanData);
void SetEcallSendSignalInit(EcallSendCan_e ecallSendCanItem,uint8_t enbaleStatus);
SosLledState_e GetSosLedState( void );
void EcallLogReport(uint8_t startByte,uint8_t *data,uint8_t len);
// uint8_t GetECALLWorkingState(void);
// void SetECALLWorkingState(uint8_t state);
// void SetKL30Status(uint8_t status);
// uint8_t Read22SOSLedStatus(void);
void TaskEcallInit(void);
void SelfcheckDebounceInit(void);
void SetEcallEnableState(uint8_t enableState);
#endif    //_TASK_APP_ECALL_PROCESS_H
