/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
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
#include "SEGGER_RTT.h"

/****************************** Macro Definitions ******************************/
#define TBOX_PRINT(var...)        LogHalPrint(var)
#define PRINT_MAX_LEN             200
#define TBOX_PRINT_RTT_ENABLE     1
#define RTT_COLOR_ENABLE          0

#if (RTT_COLOR_ENABLE == 0)
    #define DEBUG_PRINT(var...)        SEGGER_RTT_printf(0, "[DEBUG]");LogHalRttPrint(var)
    #define WARN_PRINT(var...)        SEGGER_RTT_printf(0, "[WARN]");LogHalRttPrint(var)
    #define ERROR_PRINT(var...)        SEGGER_RTT_printf(0, "[ERROR]");LogHalRttPrint(var)
    #define INFO_PRINT(var...)        SEGGER_RTT_printf(0, "[INFO]");LogHalRttPrint(var)
    #define PURE_PRINT(var...)        LogHalRttPrint(var)
#else
#if 0
    #define LOG_PROTO(type, color, format, ...) SEGGER_RTT_printf(0, "%s%s"format"%s", color, type, ##__VA_ARGS__, RTT_CTRL_RESET)

    #define DEBUG_PRINT(format, ...)    LOG_PROTO("[DEBUG]:", RTT_CTRL_TEXT_BRIGHT_GREEN , format, ##__VA_ARGS__)    // 绿色日志输出
    #define WARN_PRINT(format, ...)     LOG_PROTO("[WARN]:" , RTT_CTRL_TEXT_BRIGHT_YELLOW, format, ##__VA_ARGS__)    // 黄色日志输出
    #define ERROR_PRINT(format, ...)    LOG_PROTO("[ERROR]:", RTT_CTRL_TEXT_BRIGHT_RED   , format, ##__VA_ARGS__)    // 红色日志输出
    #define INFO_PRINT(format, ...)     LOG_PROTO("[INFO]:" , RTT_CTRL_TEXT_BRIGHT_BLACK , format, ##__VA_ARGS__)    // 黑色日志输出
    #define PURE_PRINT(format, ...)     SEGGER_RTT_printf(0, "%s"format"%s", RTT_CTRL_TEXT_BRIGHT_BLACK, ##__VA_ARGS__, RTT_CTRL_RESET)    // 黑色日志输出
#else
    #define DEBUG_PRINT(var...)        SEGGER_RTT_printf(0, "%s[DEBUG]%s", RTT_CTRL_TEXT_BLUE, RTT_CTRL_TEXT_WHITE);LogHalRttPrint(var)
    #define WARN_PRINT(var...)        SEGGER_RTT_printf(0, "%s[WARN]%s", RTT_CTRL_TEXT_YELLOW, RTT_CTRL_TEXT_WHITE);LogHalRttPrint(var)
    #define ERROR_PRINT(var...)        SEGGER_RTT_printf(0, "%s[ERROR]%s", RTT_CTRL_TEXT_RED, RTT_CTRL_TEXT_WHITE);LogHalRttPrint(var)
    #define INFO_PRINT(var...)        SEGGER_RTT_printf(0, "%s[INFO]%s", RTT_CTRL_TEXT_CYAN, RTT_CTRL_TEXT_WHITE);LogHalRttPrint(var)
    #define PURE_PRINT(var...)        LogHalRttPrint(var)
#endif
#endif
/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
/****************************** Function Declarations *************************/
/****************************** Public Function Implementations ***************/
void LogHalInit(uint8_t mode);
void LogHalPrint(const char *format, ...);
void LogHalRttPrint(const char *format, ...);
void LogHalSetMode(uint8_t mode);
void LogHalUpLoadLog(const char *format, ...);
#endif //_LOGHAL_H