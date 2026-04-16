/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: logHal.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "logHal.h"
#include "MpuHal.h"
#include "EcuM_Externals.h"
#include "r_cg_macrodriver.h"
#include "r_cg_uart.h"
#include "stdio.h"
#include "string.h"
#include "stdarg.h"

/****************************** Macro Definitions ******************************/
#define LOG_RECORD_TOTAL_SIZE   16
#define LOG_RECORD_HEADER_SIZE  4
#define LOG_PAYLOAD_MAX_SIZE    (LOG_RECORD_TOTAL_SIZE - LOG_RECORD_HEADER_SIZE)
#define LOG_QUEUE_CAPACITY      32
#define LOG_ANTI_SPAM_MS        1000

/****************************** Type Definitions ******************************/
typedef struct {
    uint8_t level;                          // 日志等级
    uint8_t event_source;                  // 事件源
    uint8_t event_type;                 // 事件类型
    uint8_t  valid_payload_len;                // 负载实际有效长度
    uint8_t  payload[LOG_PAYLOAD_MAX_SIZE];    // 负载数据 (不足补0，超长截断)
} LogRecord_t;

/****************************** Global Variables ******************************/
static char g_debugBuffer[PRINT_MAX_LEN];
volatile uint8_t g_debugPrintEndFlag = 0;
volatile uint8_t g_debugUartReciveData[100] = {0};
volatile uint16_t g_debugUartReciveCount = 0;
volatile uint8_t g_debugUartErrorType = 0;
volatile uint8_t g_debugUartErrorFlag = 0;
static uint8_t g_debugMode;


static int16_t g_mpulogHandle = -1;
static LogRecord_t g_LogQueue[LOG_QUEUE_CAPACITY];
static uint16_t g_QueueHead = 0;
static uint16_t g_QueueTail = 0;
static uint16_t g_QueueCount = 0;
static uint32_t g_DroppedQueueFullCount = 0;
static uint32_t g_DroppedSpamCount = 0;
static LogSource_t g_LastSource = LOG_SRC_UNKNOWN;
static LogEventType_t g_LastType = LOG_EVT_UNKNOWN;
static uint32_t g_LastTimestamp = 0;

/****************************** Function Declarations *************************/
static void delay_us(unsigned int xus);

/****************************** Public Function Implementations ******************************/
/*************************************************
  Function:     delay_us
  Description:  延时函数（单位：微秒）
  Input:        xus 延时时间（单位：微秒）
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void delay_us(uint32_t xus)
{
    for (uint32_t i = 0u; i < xus; i++)
    {
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    }
}

/*************************************************
  Function:     LogHalInit
  Description:  MPU uart and debug uart init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void LogHalInit(uint8_t mode)
{
    if(mode == 1 || mode ==3)
    {
        R_UART4_Create();
        R_UART4_Start();
        g_debugUartReciveCount = 0;
    }

    g_mpulogHandle = MpuHalOpen();
    g_QueueHead = 0;
    g_QueueTail = 0;
    g_QueueCount = 0;
    g_DroppedQueueFullCount = 0;
    g_DroppedSpamCount = 0;
    
    g_debugMode = mode;
}

/*************************************************
  Function:     LogHalPrint
  Description:  MPU uart or debug uart print
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void LogHalPrint(const char *format, ...)
{
    uint16_t i = 0;
    va_list v_args;
    va_start(v_args, format);
    vsprintf (g_debugBuffer,(char const*)format,v_args);
    va_end(v_args);	
    if(g_debugMode == 1 || g_debugMode == 3)
    {
        R_UART4_Send(g_debugBuffer, strlen(g_debugBuffer));
        while((g_debugPrintEndFlag == 0) && (i < 1500))
        {
            delay_us(1);   // TODO guanyuan
            i++;
        }
        g_debugPrintEndFlag = 0;
    }
}

/*************************************************
  Function:     LogHalSetMode
  Description:  设置日志模式
  Input:        mode 日志模式（0-关闭，1-开启）
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void LogHalSetMode(uint8_t mode)
{
    if(0 == mode)
    {
        if(g_debugMode == 1 || g_debugMode == 3)
        {
            R_UART4_Stop();
        }
    }
    else if(1 == mode)
    {
        if(g_debugMode == 1 || g_debugMode == 3)
        {
            R_UART4_Create();
            R_UART4_Start();
            g_debugUartReciveCount = 0;
        }
    }  
}

/*************************************************
  Function:     LogHalTestMain
  Description:  测试主函数
  Input:        cycleTime 循环时间（单位：ms）
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void LogHalTestMain(uint16_t cycleTime)
{
    static uint16_t count = 0;

    if(g_debugUartReciveCount > 0)
    {
        TBOX_PRINT("%s \r\n", g_debugUartReciveData);
        g_debugUartReciveCount = 0;
        memset(g_debugUartReciveData, 0, 100);
    }

    if(count++ < (1000 / cycleTime))
    {
        return;
    }
    count = 0;

    if(g_debugUartErrorFlag == 1)
    {
        TBOX_PRINT("debug uart error type: %d \r\n", g_debugUartErrorType);
        g_debugUartErrorFlag = 0;
        g_debugUartReciveCount = 0;
        memset(g_debugUartReciveData, 0, 100);
    }
}

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
void LogHal_LogSend(LogLevel_t level, LogSource_t event_source, LogEventType_t event_type, const uint8_t *payload, uint16_t payload_len) 
{
    uint32_t current_time = EcuM_CurrentTimestampMS();

    TBOX_PRINT("level: %d, event_source: 0x%x, event_type: 0x%x, payload_len: %d, current_time: %d \r\n", (uint8_t)level, (uint8_t)event_source, (uint8_t)event_type, payload_len, current_time);

    if ((event_source == g_LastSource) && (event_type == g_LastType))
    {
        if (EcuM_CalculateElapsedMS(g_LastTimestamp) < LOG_ANTI_SPAM_MS)
        {
            g_DroppedSpamCount++;
            return; // 防刷屏
        }
    }
    // 更新最后一次记录的事件上下文
    g_LastSource = event_source;
    g_LastType = event_type;
    g_LastTimestamp = current_time;

    LogRecord_t record;
    memset(&record, 0, sizeof(LogRecord_t));
    
    record.level = (uint8_t)level;
    record.event_source = (uint8_t)event_source;
    record.event_type = (uint8_t)event_type;
    
    if (payload != NULL && payload_len > 0)
    {
        if (payload_len > LOG_PAYLOAD_MAX_SIZE)
        {
            record.valid_payload_len = LOG_PAYLOAD_MAX_SIZE;
        }
        else
        {
            record.valid_payload_len = (uint8_t)payload_len;
        }
        memcpy(record.payload, payload, record.valid_payload_len);
    }
    else
    {
        record.valid_payload_len = 0;
    }

    DisableAllInterrupts();
    if (g_QueueCount >= LOG_QUEUE_CAPACITY)
    {
        g_DroppedQueueFullCount++;
        EnableAllInterrupts();
        return; 
    }

    g_LogQueue[g_QueueHead] = record;
    g_QueueHead = (g_QueueHead + 1) % LOG_QUEUE_CAPACITY;
    g_QueueCount++;
    EnableAllInterrupts();
}

/*************************************************
 Function: LogManager_MainFunction
 Description: 主函数，用于发送日志
 Input: None
 Output: None
 Return: None
 Others: None
*************************************************/
void LogManager_MainFunction(void) 
{
    if (g_QueueCount == 0)
    {
        return;
    }

    if (MpuPowerSyncSdkGetNadModuleStatus() == 1)
    {
        return;
    }

    LogRecord_t *pCurrentRecord = &g_LogQueue[g_QueueTail];

    MpuHalDataPack_t TxPack;
    TxPack.aid = 0x00;
    TxPack.mid = 0x03;
    TxPack.subcommand = 0x00;
    TxPack.pDataBuffer = pCurrentRecord;
    TxPack.dataBufferSize = LOG_RECORD_TOTAL_SIZE;
    TxPack.dataLength = LOG_RECORD_TOTAL_SIZE;
    int16_t ret = MpuHalTransmit(g_mpulogHandle, &TxPack);
    
    if (ret == 0)
    {
        DisableAllInterrupts();
        g_QueueTail = (g_QueueTail + 1) % LOG_QUEUE_CAPACITY;
        g_QueueCount--;
        EnableAllInterrupts();
    }
}

