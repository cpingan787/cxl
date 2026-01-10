#ifndef _CANHAL_H
#define _CANHAL_H

#include "cy_project.h"
#include "cy_device_headers.h"

#define CAN_ERROR_INVALID_HANDLE            -1
#define CAN_ERROR_INVALID_PARAMETER         -2
#define CAN_ERROR_TIMEOUT                   -3
#define CAN_ERROR_BUS_OFF_LINE              -4
#define CAN_ERROR_BUS_ERROR                 -5
#define CAN_ERROR_TX_BUFFER_FULL            -6
#define CAN_ERROR_TEST_MODE                 -7
#define CAN_ERROR_TX_DISABLE                -8
#define CAN_ERROR_TX_DISABLE_ERROR          -9

//T2G_CanFD_Init(index),index���Ƕ�Ӧ��CANӲ��ͨ��(0~5)
#define TBOX_CAN_CHANNEL_1                  0        
#define TBOX_CAN_CHANNEL_2                  1
#define TBOX_CAN_CHANNEL_3                  2
#define TBOX_CAN_CHANNEL_4                  3
#define TBOX_CAN_CHANNEL_5                  4
#define TBOX_CAN_CHANNEL_6                  5

#define TBOX_CAN_CHANNEL_A      TBOX_CAN_CHANNEL_3
#define TBOX_CAN_CHANNEL_B      TBOX_CAN_CHANNEL_1
#define TBOX_CAN_CHANNEL_C      TBOX_CAN_CHANNEL_4
#define TBOX_CAN_CHANNEL_D      TBOX_CAN_CHANNEL_2
#define TBOX_CAN_CHANNEL_E      TBOX_CAN_CHANNEL_6
#define TBOX_CAN_CHANNEL_I      TBOX_CAN_CHANNEL_5


typedef void(* typeCanTxRxHalCallBackPtr)(uint32_t canId,uint8_t *data,uint8_t dlc);
typedef void(* typeCanTxHalCallBackPtr)(void);
typedef void (*typeCanBusOffEventCallBack)(uint8_t flag);
typedef void(* typeCanNoAckStuffErrorRecoverEvent)(void);
typedef int16_t(* typeCanRxHalFilterCallBackPtr)(uint32_t canId,uint8_t *data,uint8_t dlc);

typedef enum 
{
    E_CAN_125K = 0,
    E_CAN_250K,
    E_CAN_500K,
    E_CAN_1000K,
    E_CAN_2000K,
    E_CAN_3000K,
    E_CAN_4000K,
    E_CAN_5000K,
}CanBaudType_e;

typedef struct
{
  uint8_t canChannel;
  uint8_t canFdMode;
  CanBaudType_e bandrate;
  CanBaudType_e dataBandrate;
  typeCanBusOffEventCallBack busOffEventFun;
}CanConfigure_t;

typedef struct
{
	uint32_t canId;
	uint8_t canData[64];
	uint8_t dlc;
    uint8_t txFlag;
}CanHalMsg_t;

typedef struct
{
    uint32_t canIdExtdMin;
    uint32_t canIdExtdMax;  
	uint16_t canIdStdMin;
	uint16_t canIdStdMax;
	uint8_t useStdFilter;
    uint8_t useExdtFilter;

}CanHalMsgFilter_t;

typedef union
{
	uint32_t	u32Data;
	uint16_t	u16Data[2];
	uint8_t	u8Data[4];
}UnnData_t;



int16_t CanHalInit(const CanConfigure_t *pCanConfig,uint8_t CanNum);
int16_t CanHalOpen(uint8_t canChannel);
int16_t CanHalSetRxBuffer(int16_t canHandle,CanHalMsg_t *pMsgBuf,uint16_t bufMsgCount);
int16_t CanHalSetFilter(int16_t canHandle,CanHalMsgFilter_t *pMsgFilter);
int16_t CanHalSetFilterFun(int16_t canHandle,typeCanRxHalFilterCallBackPtr pFilterFun);
int16_t CanHalRegisterTxFinishedCallBackFunction(int16_t canHandle,typeCanTxHalCallBackPtr pCallBackFun);
int16_t CanHalTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
int16_t CanHalReceive(int16_t canHandle,CanHalMsg_t *pMsg,int32_t timeOut_ms);
int16_t CanHalSetCanRxCallBack(uint8_t canChannel,typeCanTxRxHalCallBackPtr rxCallBack);
int16_t CanHalSetCanTxCallBack(uint8_t canChannel,typeCanTxRxHalCallBackPtr txCallBack);

int16_t CanHalNmTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
int16_t CanHalNmReceive(int16_t canHandle,CanHalMsg_t *pMsg,int32_t timeOut_ms);

int16_t CanHalRecieveIsTimeOut(int16_t canHandle);

int16_t CanHalAppMsgEnable(int16_t canHandle);
int16_t CanHalAppMsgDisable(int16_t canHandle);

int16_t CanHalClearBusoffAppDisableFlag(uint8_t canChannel);
uint32_t CanHalGetTimeCountSinceLastCanTx(int16_t canHandle);

int16_t CanHalGetIsBusOffError(int16_t canHandle);
int16_t CanHalEnableTransmitLoopBack(int16_t canHandle);

int16_t CanHalDiagnosticTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
int16_t CanHalDiagnosticReceive(int16_t canHandle,CanHalMsg_t *pMsg,int32_t timeOut_ms);

int16_t CanHalTransmitFromIsr(uint8_t canChannel,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);//interupt call,used by can gateway

int16_t CanHalSetMode(uint8_t mode);
int16_t CanHalSetsleep(uint8_t mode);

void CanHalCanBusOffProcessEnalbe(uint8_t canChannel);
void CanHalCanBusOffProcessDisalbe(uint8_t canChannel);
void CanHalCanBusOffCycleProcess(uint32_t cycleTime_ms);

void CanHalSetCanTestMode(uint8_t canChannel,uint8_t modeFlag);
void CanHalEnableCanWakeup(uint8_t canChannel);
int16_t CanHalResetHardware(int16_t canHandle);

void CanHalReceiveTask( void *pvParameters );

void canHalSendTaskTest( void *pvParameters );

#endif  //_CANHAL_H