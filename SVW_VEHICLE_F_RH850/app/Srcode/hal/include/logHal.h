/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: loghal.h
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

/****************************** Macro Definitions ******************************/
#define TBOX_PRINT(...)         LogHalPrint(__VA_ARGS__)
#define PRINT_MAX_LEN           200
// #define TIME_TEST

#define SECOC_LOG_SEND(level, type, ...)            LogHal_LogSend(level, LOG_SRC_SECOC, type, ##__VA_ARGS__)
#define VSS_LOG_SEND(level, type, ...)              LogHal_LogSend(level, LOG_SRC_APP_VSS, type, ##__VA_ARGS__)
#define SYSTEM_LOG_SEND(level, type, ...)           LogHal_LogSend(level, LOG_SRC_SYSTEM, type, ##__VA_ARGS__)
#define POWER_LOG_SEND(level, type, ...)            LogHal_LogSend(level, LOG_SRC_POWER, type, ##__VA_ARGS__)
#define SYNC_LOG_SEND(level, type, ...)             LogHal_LogSend(level, LOG_SRC_APP_SYNC, type, ##__VA_ARGS__)
#define DIAG_LOG_SEND(level, type, ...)             LogHal_LogSend(level, LOG_SRC_DIAG_UDS, type, ##__VA_ARGS__)
#define ANT_5G_LOG_SEND(level, type, ...)           LogHal_LogSend(level, LOG_SRC_ANT_5G, type, ##__VA_ARGS__)

/****************************** Type Definitions ******************************/
typedef enum {
    LOG_LEVEL_INIT  = 0x00,
    LOG_LEVEL_FATAL = 0x01,
    LOG_LEVEL_ERROR = 0x02,
    LOG_LEVEL_WARN  = 0x03,
    LOG_LEVEL_INFO  = 0x04,
    LOG_LEVEL_DEBUG = 0x05,
    LOG_LEVEL_VERBOSE = 0x06,
    LOG_LEVEL_MAX = 0x07,
} LogLevel_t;

typedef enum {
    /* 0x00 - 0x1F: 系统与系统服务层 */
    LOG_SRC_SYSTEM        = 0x00,  // 通用系统级别事件
    LOG_SRC_OS            = 0x01,  // 操作系统
    LOG_SRC_BOOTLOADER    = 0x02,  // 引导加载程序
    LOG_SRC_WDG           = 0x03,  // 看门狗模块
    LOG_SRC_NVM           = 0x04,  // 非易失性存储

    /* 0x20 - 0x3F: 通信与网络层 */
    LOG_SRC_CAN           = 0x20,  // CAN
    LOG_SRC_NM            = 0x21,  // 网络管理 (Network Management)
    LOG_SRC_SECOC         = 0x22,  // SECOC模块

    /* 0x40 - 0x5F: 诊断 */
    LOG_SRC_DIAG_UDS      = 0x40,  // UDS 诊断服务
    LOG_SRC_DEM           = 0x41,  // DTC 相关
    LOG_SRC_ANT_5G        = 0x42,  // 5G天线切换

    /* 0x60 - 0x8F: 外设 */
    LOG_SRC_ADC           = 0x60,  // ADC
    LOG_SRC_PWM           = 0x61,  // PWM
    LOG_SRC_DIO           = 0x62,  // GPIO
    LOG_SRC_POWER         = 0x63,  // 电源管理模块

    /* 0x90 - 0xFF: 应用层 */
    LOG_SRC_APP_MAIN      = 0x90,  // 主应用逻辑
    LOG_SRC_APP_VSS       = 0x91,  // VSS应用模块
    LOG_SRC_APP_SYNC      = 0x92,  // 同步应用模块
    
    LOG_SRC_UNKNOWN       = 0xFF   // 未知来源
} LogSource_t;

typedef enum {
    /* 0x00 - 0x1F: 状态流转事件 */
    LOG_EVT_INIT_START    = 0x00,  // 模块开始初始化
    LOG_EVT_INIT_DONE     = 0x01,  // 模块初始化完成
    LOG_EVT_STATE_CHANGE  = 0x02,  // 状态机发生跳转
    LOG_EVT_SLEEP         = 0x03,  // 进入休眠模式
    LOG_EVT_WAKEUP        = 0x04,  // 从休眠中唤醒
    LOG_EVT_RESET         = 0x05,  // 模块或系统软复位
    LOG_EVT_INFO          = 0x06,  // 模块事件信息
    LOG_EVT_TYPE_ANT_SWITCH = 0x07,  // 天线切换

    /* 0x20 - 0x3F: 通信流事件 */
    LOG_EVT_TX_MSG        = 0x20,  // 发送消息/报文
    LOG_EVT_RX_MSG        = 0x21,  // 接收消息/报文
    LOG_EVT_LINK_UP       = 0x22,  // 通信链路建立
    LOG_EVT_LINK_DOWN     = 0x23,  // 通信链路断开
    LOG_EVT_SET_TRIPCNT   = 0x24,  // 设置行程计数器
    LOG_EVT_SET_RESTCNT   = 0x25,  // 设置重置计数器
    LOG_EVT_FV_RST_FAIL   = 0x26,  // 新鲜度值重置计数器验证失败

    /* 0x40 - 0x5F: 数据处理与安全事件 */
    LOG_EVT_AUTH_SUCCESS  = 0x40,  // 认证/校验成功
    LOG_EVT_AUTH_FAIL     = 0x41,  // 认证/校验失败
    LOG_EVT_DATA_UPDATE   = 0x42,  // 数据被更新/写入
    LOG_EVT_DATA_ERASE    = 0x43,  // 数据被擦除
    LOG_EVT_RTC_TIME      = 0x44,  // RTC时间更新

    /* 0x80 - 0xFF: 异常与故障事件 */
    LOG_EVT_ERR_TIMEOUT   = 0x80,  // 操作超时
    LOG_EVT_ERR_OVERFLOW  = 0x81,  // 缓冲区/栈溢出
    LOG_EVT_ERR_PARAM     = 0x82,  // 传入参数错误/越界
    LOG_EVT_ERR_CHECKSUM  = 0x83,  // CRC/校验和错误
    LOG_EVT_ERR_HARDWARE  = 0x84,  // 硬件外设无响应/报错
    LOG_EVT_ERR_MEM_FULL  = 0x85,  // 存储空间/内存已满
    LOG_EVT_ERR_BUS_OFF   = 0x86,  // 总线关闭
    
    LOG_EVT_UNKNOWN       = 0xFF
} LogEventType_t;

/****************************** Function Declarations *************************/
/*************************************************
 Function: LogHalInit
 Description: 初始化日志模块
 Input: mode 日志模式（0-关闭，1-开启）
 Output: None
 Return: None
 Others: None
*************************************************/
void LogHalInit(uint8_t mode);

/*************************************************
 Function: LogHalPrint
 Description: MPU uart or debug uart print
 Input: format 格式化字符串
         ... 可变参数
 Output: None
 Return: None
 Others: None
*************************************************/
void LogHalPrint(const char *format, ...);

/*************************************************
 Function: LogHalSetMode
 Description: 设置日志模式
 Input: mode 日志模式（0-关闭，1-开启）
 Output: None
 Return: None
 Others: None
*************************************************/
void LogHalSetMode(uint8_t mode);

/*************************************************
 Function: LogHalTestMain
 Description: 测试主函数
 Input: cycleTime 循环时间（单位：ms）
 Output: None
 Return: None
 Others: None
*************************************************/
void LogHalTestMain(uint16_t cycleTime);

/*************************************************
 Function: LogHal_LogSend
 Description: 发送日志
 Input: level 日志级别
         event_source 事件源
         event_type 事件类型
         payload 事件载荷
         payload_len 事件载荷长度
 Output: None
 Return: None
 Others: None
*************************************************/
void LogHal_LogSend(LogLevel_t level, LogSource_t event_source, LogEventType_t event_type, const char *format, ...);

/*************************************************
  Function:     LogHal_FlushOfflineLogs
  Description:  Flush offline logs
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void LogHal_FlushOfflineLogs(void);

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
