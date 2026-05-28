#ifndef _ECALLHAL_H
#define _ECALLHAL_H

#include <stdint.h>


#define ISUSEA1 0
typedef enum
{
    E_ECALL_LED_RED = 0x00,
	E_ECALL_LED_GREEN,
    E_ECALL_LED_TOTAL_NUM,
}EcallLedIndex_e;

typedef enum
{
    E_ECALL_LED_MODE_KEEP_OFF = 0x00,
	E_ECALL_LED_MODE_KEEP_ON,
    E_ECALL_LED_MODE_FLASH,
}EcallLedMode_e;

typedef enum
{
    E_SOS_LED_STATE_INIT = 0x00,        /*初始化状态*/
    E_SOS_LED_STATE_WARNING,            /*操作状态提示*/

    E_SOS_LED_STATE_NO_ECALL, 
	E_SOS_LED_STATE_IN_CALL,            /*ECALL拨号中*/	
    E_SOS_LED_STATE_DURING_CALL,        /*ECALL通话中*/
    // E_SOS_LED_STATE_WAIT_BACK,       /*ECALL等待PSAP应答*/
    E_SOS_LED_STATE_SEND_MSD,
    E_SOS_LED_STATE_INCOMMING,
    E_SOS_LED_STATE_END_CALL,
    E_SOS_LED_STATE_END_CALL_ABNORM,
    E_SOS_LED_STATE_SEND_MSD_SUCC,
    E_SOS_LED_STATE_SEND_MSD_FAIL,

    E_SOS_LED_STATE_SELFCHECK_ERR,      /*ECALL终端自检异常*/
    E_SOS_LED_STATE_SELFCHECK_ON,       /*ECALL终端自检进行*/
    E_SOS_LED_STATE_SELFCHECK_ERR_HEAVY, /*ECALL终端自检二级异常*/
}SosLledState_e;

// // void EcallHalSetSosRedLedState(uint8_t flag);
// // void EcallHalSetSosGreenLedState(uint8_t flag);
// void EcallHalSetSosLedState(uint8_t index, uint8_t flag);
//void EcallHalSetVehicleMute(uint8_t flag);
// uint8_t EcallHalGetVehicleMute(void);

uint8_t EcallHalGetSosButtonStatus(void);
// uint8_t EcallHalGetSosButtonConnectStatus(void);
// uint8_t EcallHalGetMicConnectStatus(void);

 void EcallHalInit(void);
// uint8_t EcallHalGetAmpFaultStatus(void);
// uint8_t EcallHalGetAmpDiagnosticStatus(void);
// uint8_t EcallHalGetAmpControlStatus(void);
// uint8_t EcallHalSetAmpControlStatus(uint8_t value);
// uint8_t EcallHalRestartAmpClose(void);
// uint8_t EcallHalRestartAmpDiagnostic(void);

uint32_t osElapsedTimeGet( uint32_t new_time, uint32_t old_time );
void EcallHalSosLedTimerCallback( void );
void EcallHalSetSosLedMode(EcallLedIndex_e index, EcallLedMode_e mode , uint16_t onTime , uint16_t offTime );
uint32_t EcallHalSosLedControlReceive( SosLledState_e *msg, uint32_t time_out );
uint32_t EcallHalSosLedControlSend( SosLledState_e flash );
uint8_t EcallHalGetAmpFaultStatus(void);
void EcallHalSetMode(uint8_t wakeMode);
// void EcallHalSrsStatusCheck(void);
// uint8_t EcallHalGetSrsStatus(void);
// void EcallHalTestMain(void);

// uint8_t EcallHalGetSrsStatusTest(void);
// void Srs_Init(void);

void os1msTimer( void );
#endif  // _ECALLHAL_H