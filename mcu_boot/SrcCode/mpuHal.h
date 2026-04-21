/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: mpuHal.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef _MPU_HAL_IF_H
#define _MPU_HAL_IF_H
/****************************** include ***************************************/
#include <stdint.h>
#include "r_cg_macrodriver.h"

/****************************** Macro Definitions ******************************/
#define MPU_HAL_STATUS_OK                 0
#define MPU_HAL_STATUS_ERR                -1
#define MPU_PROTOCAL_HEADER_LEN           (8U)
#define PROTOCOL_AID_FWUPD                (0x03U)

/****************************** Type Definitions ******************************/

typedef enum
{
    E_MPU_HAL_START_STATE_IDLE = 0,
    E_MPU_HAL_START_STATE_POWER_OFF,
    E_MPU_HAL_START_STATE_OFF_DELAY,
    E_MPU_HAL_START_STATE_POWER_ON,
    E_MPU_HAL_START_STATE_POWER_DELAY,
    E_MPU_HAL_START_STATE_KEY_ON,
    E_MPU_HAL_START_STATE_KEY_ON_DELAY,
    E_MPU_HAL_START_STATE_KEY_OFF,
    E_MPU_HAL_START_STATE_FINISH,
} MpuHalStartState_e;
typedef struct
{
    uint8_t aid;
    uint8_t mid;
    uint8_t subcommand;
    uint16_t dataBufferSize;
    uint16_t dataLength;
    uint8_t* pDataBuffer;
} MpuHalDataPack_t;

typedef struct
{
    uint8_t aid;
    uint8_t midMin;
    uint8_t midMax;
} MpuHalFilter_t;

/****************************** Function Declarations *************************/
/*************************************************
 Function: MpuHalInit
 Description: 初始化 MPU 模块
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalInit(void);

/*************************************************
 Function: MpuHalOpen
 Description: 打开 MPU 模块
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
int16_t MpuHalOpen(void);

/*************************************************
 Function: MpuHalSetRxFilter
 Description: 设置 MPU 模块的接收过滤器
 Input: handle - MPU 模块句柄
        pFilter - 接收过滤器指针
 Output: None
 Return: None
 Others:
*************************************************/
int16_t MpuHalSetRxFilter(int16_t handle,const MpuHalFilter_t* pFilter);

/*************************************************
 Function: MpuHalSetRxBuffer
 Description: 设置 MPU 模块的接收缓冲区
 Input: handle - MPU 模块句柄
        pBuffer - 接收缓冲区指针
        bufferSize - 接收缓冲区大小
 Output: None
 Return: None
 Others:
*************************************************/
int16_t MpuHalSetRxBuffer(int16_t handle,uint8_t* pBuffer,uint32_t bufferSize);

/*************************************************
 Function: MpuHalTransmit
 Description: 发送 MPU 模块的数据
 Input: handle - MPU 模块句柄
        pTxMsg - 发送数据指针
 Output: None
 Return: None
 Others:
*************************************************/
int16_t MpuHalTransmit(int16_t handle,const MpuHalDataPack_t* pTxMsg);

/*************************************************
 Function: MpuHalReceive
 Description: 接收 MPU 模块的数据
 Input: handle - MPU 模块句柄
        pRxMsg - 接收数据指针
        waitTime - 等待时间
 Output: None
 Return: None
 Others:
*************************************************/
int16_t MpuHalReceive(int16_t handle,MpuHalDataPack_t* pRxMsg,uint32_t waitTime );

/*************************************************
 Function: MpuHalTxTask
 Description: MPU 模块的 UART 发送任务
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalTxTask(void);

/*************************************************
 Function: MpuHalUartInterruptCallback
 Description: MPU 模块的 UART 中断回调函数
 Input: data - 接收数据
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalUartInterruptCallback(uint8_t data);

/*************************************************
 Function: MpuHalUartTimerCallback
 Description: MPU 模块的 UART 定时器回调函数
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalUartTimerCallback(void);


static void MpuHalSetPower(uint8_t flag);
static void MpuHalSetPowerkey(uint8_t flag);
static void MpuHalSetWakeOut(uint8_t flag);
/*************************************************
 Function: MpuHalCycleProcess
 Description: MPU 模块的周期处理函数
 Input: cycleTime - 周期时间
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHalCycleProcess(uint32_t cycleTime);

/*************************************************
 Function: MpuHal_TriggerPowerOnSequence
 Description: 触发 MPU 模块的上电时序
 Input: None
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHal_TriggerPowerOnSequence(void);
#endif