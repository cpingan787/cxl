/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: canHal.h
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
#ifndef _CANHAL_H
#define _CANHAL_H

/****************************** include ***************************************/
#include <stdint.h>
#include "platform_cfg.h"

/****************************** Macro Definitions ******************************/
#define CAN_ERROR_INVALID_HANDLE        (-1)
#define CAN_ERROR_INVALID_PARAMETER     (-2)
#define CAN_ERROR_TIMEOUT               (-3)
#define CAN_ERROR_BUS_OFF_LINE          (-4)
#define CAN_ERROR_BUS_ERROR             (-5)
#define CAN_ERROR_TX_BUFFER_FULL        (-6)
#define CAN_ERROR_TEST_MODE             (-7)
#define CAN_ERROR_TX_DISABLE            (-8)
#define CAN_ERROR_MUTEX_NOT_INIT        (-9)
#define CAN_ERROR_MUTEX_TIMEOUT         (-10)

#define TBOX_CAN_CHANNEL_1              (0)        
#define TBOX_CAN_CHANNEL_2              (1)
#define TBOX_CAN_CHANNEL_3              (2)
#define TBOX_CAN_CHANNEL_4              (3)
#define TBOX_CAN_CHANNEL_5              (4)
#define TBOX_CAN_CHANNEL_6              (5)

#define TBOX_CAN_CHANNEL_A              TBOX_CAN_CHANNEL_3
#define TBOX_CAN_CHANNEL_B              TBOX_CAN_CHANNEL_1
#define TBOX_CAN_CHANNEL_C              TBOX_CAN_CHANNEL_4
#define TBOX_CAN_CHANNEL_D              TBOX_CAN_CHANNEL_2
#define TBOX_CAN_CHANNEL_E              TBOX_CAN_CHANNEL_6
#define TBOX_CAN_CHANNEL_I              TBOX_CAN_CHANNEL_5

#define CANFD1_RX_PORT                  PORT_B
#define CANFD1_RX_PIN                   GPIO_0
#define CANFD1_TX_PORT                  PORT_B
#define CANFD1_TX_PIN                   GPIO_1
#define CANFD1_RX_MUX                   PTB0_CAN0_RX
#define CANFD1_TX_MUX                   PTB1_CAN0_TX
#define CANFD1_IRQ_MUX                  PTB0_GPIO
#define CANFD1_IRQN                     PORTB_IRQn

#define CANFD2_RX_PORT                  PORT_A
#define CANFD2_RX_PIN                   GPIO_12
#define CANFD2_TX_PORT                  PORT_A
#define CANFD2_TX_PIN                   GPIO_13
#define CANFD2_RX_MUX                   PTA12_CAN1_RX 
#define CANFD2_TX_MUX                   PTA13_CAN1_TX 
#define CANFD2_IRQ_MUX                  PTA12_GPIO 
#define CANFD2_IRQN                     PORTA_IRQn

#define CANFD3_RX_PORT                  PORT_D
#define CANFD3_RX_PIN                   GPIO_4 
#define CANFD3_TX_PORT                  PORT_B
#define CANFD3_TX_PIN                   GPIO_13
#define CANFD3_RX_MUX                   PTD4_CAN2_RX
#define CANFD3_TX_MUX                   PTB13_CAN2_TX
#define CANFD3_IRQ_MUX                  PTD4_GPIO
#define CANFD3_IRQN                     PORTD_IRQn

#define CAN1FD_STB_PORT                 PORT_C
#define CAN1FD_STB_PIN                  GPIO_10
#define CAN1FD_STB_PIN_MUX              PTC10_GPIO

#define CAN2FD_STB_PORT                 PORT_C
#define CAN2FD_STB_PIN                  GPIO_10
#define CAN2FD_STB_PIN_MUX              PTC10_GPIO

#define CAN3FD_STB_PORT                 PORT_B
#define CAN3FD_STB_PIN                  GPIO_12
#define CAN3FD_STB_PIN_MUX              PTB12_GPIO

#define CAN0_IRQ_MUX                    PTE13_GPIO
#define CAN1_IRQ_MUX                    PTA12_GPIO
#define CAN2_IRQ_MUX                    PTD4_GPIO
/****************************** Type Definitions ******************************/
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

/****************************** Global Variables ******************************/
/****************************** Function Declarations *************************/
int16_t CanHalInit(const CanConfigure_t *pCanConfig,uint8_t CanNum);
int16_t CanHalOpen(uint8_t canChannel);
int16_t CanHalSetRxBuffer(int16_t canHandle,CanHalMsg_t *pMsgBuf,uint16_t bufMsgCount);
int16_t CanHalSetFilter(int16_t canHandle,CanHalMsgFilter_t *pMsgFilter);
int16_t CanHalSetFilterFun(int16_t canHandle,typeCanRxHalFilterCallBackPtr pFilterFun);
int16_t CanHalRegisterTxFinishedCallBackFunction(int16_t canHandle,typeCanTxHalCallBackPtr pCallBackFun);
int16_t CanHalTransmit(int16_t canHandle,uint32_t canId,const uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
int16_t CanHalReceive(int16_t canHandle,CanHalMsg_t *pMsg,uint32_t timeOut_ms);
int16_t CanHalSetCanRxCallBack(uint8_t canChannel,typeCanTxRxHalCallBackPtr rxCallBack);
int16_t CanHalSetCanTxCallBack(uint8_t canChannel,typeCanTxRxHalCallBackPtr txCallBack);
int16_t CanHalNmTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
int16_t CanHalNmReceive(int16_t canHandle,CanHalMsg_t *pMsg,uint32_t timeOut_ms);
int16_t CanHalRecieveIsTimeOut(int16_t canHandle);
int16_t CanHalAppMsgEnable(int16_t canHandle);
int16_t CanHalAppMsgDisable(int16_t canHandle);
uint32_t CanHalGetTimeCountSinceLastCanTx(int16_t canHandle);
int16_t CanHalGetIsBusOffError(int16_t canHandle);
int16_t CanHalEnableTransmitLoopBack(int16_t canHandle);
int16_t CanHalDiagnosticTransmit(int16_t canHandle,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);
int16_t CanHalDiagnosticReceive(int16_t canHandle,CanHalMsg_t *pMsg,uint32_t timeOut_ms);
int16_t CanHalTransmitFromIsr(uint8_t canChannel,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag);//interupt call,used by can gateway
int16_t CanHalTxMsgEnable(uint8_t canChannel);
int16_t CanHalTxMsgDisable(uint8_t canChannel);
int16_t CanHalSetMode(uint8_t mode);
void CanHalCanBusOffProcessEnalbe(uint8_t canChannel);
void CanHalCanBusOffProcessDisalbe(uint8_t canChannel);
void CanHalCanBusOffCycleProcess(uint32_t cycleTime_ms);
void CanHalSetCanTestMode(uint8_t canChannel,uint8_t modeFlag);
void CanHalEnableCanWakeup(uint8_t canChannel);
int16_t CanHalResetHardware(int16_t canHandle);
void CanHalReceiveTask( void *pvParameters );
void CanHalTestMain(void);
void CanHalClearReceiveCanNmFlag(void);
uint8_t CanHalReceiveCanNmFlagCheck(void);
uint8_t CanHalClearBusoffAppDisableFlag(int16_t canHandle);
#endif  // _CANHAL_H