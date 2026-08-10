/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: mpuHal.c
 Author: 
 Created Time: 
 Description:
 Others:
*************************************************/
#ifndef _CAN_PERIODTASH_TASK_H_
#define _CAN_PERIODTASH_TASK_H_
/****************************** include ***************************************/
#include "stdint.h"

/****************************** Macro Definitions ******************************/
/****************************** Type Definitions ******************************/
/* 卫星发送状态机，用于按 1000ms CAN 发送节拍逐批发送 */
typedef enum
{
    SAT_STATE_IDLE = 0, /* 等待取新数据 */
    SAT_STATE_SENDING   /* 正在按 1000ms 节拍分批发送 */
} SatSendState_e;

/****************************** Function Declarations *************************/
/*************************************************
  Function:       CanPeriodCycleProcess
  Description:    Aes ecb 计算初始化
  Input:          pAesData ：Aes计算对象
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t CanPeriodCycleProcess(void);

/*************************************************
  Function:       CanPeriodGetVehTime
  Description:    获取整车时间
  Input:          
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int8_t CanPeriodGetVehTime(uint8_t *year,uint8_t *month,uint8_t *day,uint8_t *hour,uint8_t *min,uint8_t *sec);

#endif


