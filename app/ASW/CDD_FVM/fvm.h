/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: fvm.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef FVM_H
#define FVM_H
/****************************** include ***************************************/
#include <stdint.h>
#include <stdbool.h>

/****************************** Macro Definitions ******************************/
#define E_OK                0x00U
#define E_NOT_OK            0x01U
#define FVM_STATUS_OK       0
#define FVM_STATUS_ERR     -1

#ifndef NULL
  #define NULL  ((void *)0)
#endif

/****************************** Type Definitions ******************************/
typedef uint8_t Std_ReturnType;

typedef struct
{
    uint32_t canId;
    uint32_t authStartByte;
}SecocSdkMsg_t;

typedef struct
{
    uint32_t tripCounter;   /* 行程计数器 (24位) */
    uint16_t resetCounter;  /* 复位计数器 (16位) */
    uint32_t messageCounter;/* 消息计数器 (22位) */
} Fvm_FreshnessValue_t;

typedef enum
{
    FVM_UNINIT = 0x00U,
    FVM_IDLE   = 0x01U,
    FVM_BUSY   = 0x02U
} Fvm_StatusType;

typedef enum
{
    FVM_INDEX_CFG_RX = 0x00U,
    FVM_INDEX_CFG_TX = 0x01U,
} Fvm_IndexCfgType;

typedef enum
{
    FVM_E_NO_ERROR        = 0x00U,
    FVM_E_INVALID_PARAM   = 0x01U,
    FVM_E_NOT_INITIALIZED = 0x02U,
    FVM_E_BUFFER_OVERFLOW = 0x03U,
    FVM_E_NVM_ERROR       = 0x04U,
    FVM_E_VERIFICATION_FAILED = 0x05U
} Fvm_ErrorType;

typedef struct
{
    /* NVM读写回调函数 */
    void (*Fvm_SaveTripCounter)(uint32_t tripCounter);
    void (*Fvm_ReadTripCounter)(uint32_t *pTripCounter);
    /* 错误通知回调函数 */
    void (*Fvm_ErrorNotification)(Fvm_ErrorType error);
    const SecocSdkMsg_t *pTxSecocMsgConfig;
    const SecocSdkMsg_t *pRxSecocMsgConfig;
    Fvm_FreshnessValue_t *pTxMsgBuffer;
    Fvm_FreshnessValue_t *pRxMsgBuffer;
    uint16_t txSecocMsgNum;
    uint16_t rxSecocMsgNum;
} Fvm_ConfigType;

/****************************** Function Declarations *************************/
/*************************************************
 Function: Fvm_Init
 Description: FVM模块初始化
 Input: pConfig FVM配置结构体指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_Init(const Fvm_ConfigType* pConfig);

/*************************************************
 Function: Fvm_Deinit
 Description: FVM模块去初始化
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
void Fvm_Deinit(void);

/*************************************************
 Function: Fvm_SetTripCounter
 Description: 设置行程计数器
 Input: tripCounter 行程计数器值
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_SetTripCounter(uint32_t tripCounter);

/*************************************************
 Function: Fvm_GetTripCounter
 Description: 获取行程计数器
 Input: None
 Output: pTripCounter 输出的行程计数器指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetTripCounter(uint32_t* pTripCounter);

/*************************************************
 Function: Fvm_SetmessageCounter
 Description: 设置当前安全报文的消息计数器
 Input: canId CAN ID
        isTx 是否为发送消息（FVM_INDEX_CFG_TX-发送，FVM_INDEX_CFG_RX-接收）
        messageCounter 消息计数器
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_SetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t messageCounter);

/*************************************************
 Function: Fvm_SetmessageCounter
 Description: 获取当前安全报文的消息计数器
 Input: canId CAN ID
        isTx 是否为发送消息（FVM_INDEX_CFG_TX-发送，FVM_INDEX_CFG_RX-接收）
 Output: messageCounter 输出的消息计数器指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t* pmessageCounter);

/*************************************************
 Function: Fvm_SetResetCounter
 Description: 设置复位计数器
 Input: resetCounter 复位计数器值
 Output: void
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_SetResetCounter(uint16_t resetCounter);

/*************************************************
 Function: Fvm_GetResetCounter
 Description: 获取复位计数器
 Input: None
 Output: pResetCounter 输出的复位计数器指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetResetCounter(uint16_t* pResetCounter);

/*************************************************
 Function: Fvm_GetFreshnessValue
 Description: 根据CAN ID获取完整新鲜值（用于发送）
 Input: canId CAN ID
 Output: pFreshnessBytes 输出的8字节新鲜值指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetFreshnessValue(uint32_t canId, uint8_t* pFreshnessBytes);

/*************************************************
 Function: Fvm_VerifyFreshnessValue
 Description: 根据CAN ID验证新鲜值有效性，并构建完整新鲜值（用于接收）
 Input: canId CAN ID
        currentMsgCntL 当前接收的消息计数器低14位（从CAN消息中提取）
        currentMsgRstCntL 当前接收的复位计数器低2位（从CAN消息中提取）
 Output: pFreshnessBytes 输出的8字节新鲜值指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_VerifyFreshnessValue(uint32_t canId, uint16_t currentMsgCntL, uint8_t currentMsgRstCntL, uint8_t* pFreshnessBytes);

/*************************************************
 Function: Fvm_ResetTripCounter
 Description: 行程计数器重置
 Input:  void
 Output: void
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_ResetTripCounter(void);

/*************************************************
 Function: Fvm_UpdateSynCounters
 Description: 根据同步报文更新行程计数器和复位计数器，重置消息计数器
 Input: tripCounter 行程计数器
        resetCounter 复位计数器
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_UpdateSynCounters(uint32_t tripCounter, uint16_t resetCounter);

/*************************************************
 Function: Fvm_GetStatus
 Description: 获取FVM模块状态
 Input: pStatus 状态输出指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetStatus(Fvm_StatusType* pStatus);

#endif /* FVM_H */
