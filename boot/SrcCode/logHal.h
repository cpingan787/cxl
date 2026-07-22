/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: logHal.h
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
#ifndef _LOGHAL_H
#define _LOGHAL_H
/****************************** include ***************************************/
#include "stdint.h"
#include <stdarg.h>
#include "r_cg_macrodriver.h"
/****************************** Macro Definitions ******************************/
#define TBOX_PRINT(...)         LogHalPrint(__VA_ARGS__)
#define PRINT_MAX_LEN    200

#define TIME_TEST 1


/****************************** Type Definitions ******************************/
/*************************************************
 Function: LogHalInit
 Description: MPU uart and debug uart init
 Input: mode: 0-关闭, 1-开启, 2-开启MPU debug uart, 3-开启MPU debug uart and debug uart
 Output: None
 Return: None
 Others: None
*************************************************/
void LogHalInit(uint8_t mode);

/*************************************************
 Function: LogHalPrint
 Description: MPU uart or debug uart print
 Input: None
 Output: None
 Return: None
 Others: None
*************************************************/
void LogHalPrint(const char *format, ...);

#ifdef TIME_TEST
/*************************************************
 Function: OSTM_GetUs
 Description: 获取当前时间戳（单位：微秒）
 Input: None
 Output: None
 Return: 当前时间戳（单位：微秒）
 Others: None
*************************************************/
uint32_t OSTM_GetUs(void);

/*************************************************
 Function: OSTM_GetElapsedUs
 Description: 获取自上次时间戳以来的微秒数
 Input: last_timestamp 上次时间戳（单位：微秒）
 Output: None
 Return: 自上次时间戳以来的微秒数（单位：微秒）
 Others: None
*************************************************/
uint32_t OSTM_GetElapsedUs(uint32_t last_timestamp);
#endif
#endif    //_LOGHAL_H
