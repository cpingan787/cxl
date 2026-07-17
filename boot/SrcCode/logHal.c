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
// #include "MpuHal.h"
//#include "EcuM_Externals.h"
#include "r_cg_macrodriver.h"
#include "r_cg_uart.h"
#include "stdio.h"
#include "string.h"
#include "stdarg.h"

/****************************** Macro Definitions ******************************/
#define OFFLINE_LOG_MAX_COUNT   5    // ???? 5 ?????
#define OFFLINE_LOG_MAX_LEN     64   // ?????????? (??RAM)
#define LOG_ANTI_SPAM_MS        1000

#define LOG_UPLOAD_LOG_BUF_SIZE            (256)

/****************************** Type Definitions ******************************/
typedef struct {
    uint8_t level;
    uint8_t event_source;
    uint8_t event_type;
    char payload[OFFLINE_LOG_MAX_LEN];
} OfflineLog_t;

typedef struct {
    OfflineLog_t buffer[OFFLINE_LOG_MAX_COUNT];
    uint8_t head;
    uint8_t tail;
    uint8_t count;
} OfflineLogQueue_t;

/****************************** Global Variables ******************************/
static char g_debugBuffer[PRINT_MAX_LEN];
volatile uint8_t g_debugPrintEndFlag = 0;
volatile uint8_t g_debugUartReciveData[100] = {0};
volatile uint16_t g_debugUartReciveCount = 0;
volatile uint8_t g_debugUartErrorType = 0;
volatile uint8_t g_debugUartErrorFlag = 0;
static uint8_t g_debugMode;

static OfflineLogQueue_t g_OfflineLogQueue = {0};
// static int16_t g_mpulogHandle = -1;  //???
static uint8_t g_logHalUploadLogBuf[LOG_UPLOAD_LOG_BUF_SIZE];
static uint32_t g_DroppedSpamCount = 0u;
static LogSource_t g_LastSource = LOG_SRC_UNKNOWN;
static LogEventType_t g_LastType = LOG_EVT_UNKNOWN;
static uint32_t g_LastTimestamp = 0;

/****************************** Function Declarations *************************/
static void delay_us(uint32_t xus);
// static void LoghalPackageLogData(uint8_t level, uint8_t event_source, uint8_t event_type, char *log_str, MpuHalDataPack_t *packet);
// static void EnqueueOfflineLog(uint8_t level, uint8_t src, uint8_t type, const char* str);
// void LogHal_FlushOfflineLogs(void);

/****************************** Public Function Implementations ******************************/
/*************************************************
  Function:     delay_us
  Description:  ????(??:??)
  Input:        xus ????(??:??)
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

#ifdef TIME_TEST
#define OSTM_PCLK_MHZ          60
#define OSTM_MAX_TICKS         0xFFFFFFFFUL
static uint32_t g_ostm_start_value = OSTM_MAX_TICKS;
/*************************************************
  Function:     OSTM_Init
  Description:  
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void OSTM_Init(void)
{
    OSTM0.TT = 0x01; 
    OSTM0.CMP = OSTM_MAX_TICKS;
    OSTM0.CTL = 0x01;
    OSTM0.TS = 0x01; 
}

uint32_t OSTM_GetUs(void)
{
    uint32_t current_cnt = OSTM0.CNT;
    uint32_t elapsed_ticks = OSTM_MAX_TICKS - current_cnt;
    return (elapsed_ticks / OSTM_PCLK_MHZ);
}

uint32_t OSTM_GetElapsedUs(uint32_t last_timestamp)
{
    uint32_t current_time = OSTM_GetUs();
    
    if (current_time >= last_timestamp)
    {
        return (current_time - last_timestamp);
    }
    else
    {
        /* ?? 32 ??????????? (???? 71 ??????) */
        return ((0xFFFFFFFFUL - last_timestamp) + current_time + 1);
    }
}
#endif

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
        R_UART0_Create();
        R_UART0_Start();
        g_debugUartReciveCount = 0;
    }

#ifdef TIME_TEST
    OSTM_Init();
#endif

    // g_mpulogHandle = MpuHalOpen(); //???
    
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
    uint8_t ret = 0;
    va_start(v_args, format);
    vsprintf (g_debugBuffer,(char const*)format,v_args);
    va_end(v_args);	
    if(g_debugMode == 1 || g_debugMode == 3)
    {
        ret = R_UART0_Send(g_debugBuffer, strlen(g_debugBuffer));
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
  Description:  ??????
  Input:        mode ????(0-??,1-??)
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
            R_UART0_Stop();
        }
    }
    else if(1 == mode)
    {
        if(g_debugMode == 1 || g_debugMode == 3)
        {
            R_UART0_Create();
            R_UART0_Start();
            g_debugUartReciveCount = 0;
        }
    }  
}

/*************************************************
  Function:     LogHalTestMain
  Description:  ?????
  Input:        cycleTime ????(??:ms)
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
 Function: LogHal_LogSend //???
 Description: ????
 Input: level ????
         event_source ???
         event_type ????
         payload ????
         payload_len ??????
 Output: None
 Return: None
 Others: None
*************************************************/
// void LogHal_LogSend(LogLevel_t level, LogSource_t event_source, LogEventType_t event_type, const char *format, ...) 
// {
//     static char log_str[LOG_UPLOAD_LOG_BUF_SIZE];
//     static MpuHalDataPack_t packet;
//     int16_t ret = 0U;
//     va_list args;

//     uint32_t current_time = EcuM_CurrentTimestampMS();

//     if ((event_source == g_LastSource) && (event_type == g_LastType))
//     {
//         if (EcuM_CalculateElapsedMS(g_LastTimestamp) < LOG_ANTI_SPAM_MS)
//         {
//             g_DroppedSpamCount++;
//             return; // ???
//         }
//     }
//     // ??????????????
//     g_LastSource = event_source;
//     g_LastType = event_type;
//     g_LastTimestamp = current_time;

//     va_start(args, format);
//     int len = vsprintf(log_str, format, args);
//     va_end(args);

//     if (len < 0 || len >= LOG_UPLOAD_LOG_BUF_SIZE) {
//         return;
//     }

//     if (MpuPowerSyncSdkGetNadModuleStatus() == 1)
//     {
//         EnqueueOfflineLog((uint8_t)level, (uint8_t)event_source, (uint8_t)event_type, log_str);
//         return;
//     }
//     LoghalPackageLogData((uint8_t)level, (uint8_t)event_source, (uint8_t)event_type, log_str, &packet);
//     ret = MpuHalTransmit(g_mpulogHandle, &packet);
//     if(ret != MPU_HAL_STATUS_OK)
//     {
//         TBOX_PRINT("Log failed, ret=%d", ret, g_mpulogHandle);
//     }
// }


/*************************************************
  Function:     LoghalPackageLogData  //???
  Description:  Log package log data
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
// static void LoghalPackageLogData(uint8_t level, uint8_t event_source, uint8_t event_type, char *log_str, MpuHalDataPack_t *packet)
// {
//     packet->aid = 0x00;
//     packet->mid = 0x03;
//     packet->dataBufferSize = sizeof(g_logHalUploadLogBuf);
//     packet->pDataBuffer = g_logHalUploadLogBuf;
//     memset(g_logHalUploadLogBuf, 0, sizeof(g_logHalUploadLogBuf));

//     packet->dataLength = strlen(log_str) + 3;
//     g_logHalUploadLogBuf[0] = level;
//     g_logHalUploadLogBuf[1] = event_source;
//     g_logHalUploadLogBuf[2] = event_type;
//     memcpy(&g_logHalUploadLogBuf[3], log_str, strlen(log_str));
// }

/*************************************************
  Function:     EnqueueOfflineLog
  Description:  Enqueue offline log to queue
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void EnqueueOfflineLog(uint8_t level, uint8_t src, uint8_t type, const char* str)
{
    if (g_OfflineLogQueue.count >= OFFLINE_LOG_MAX_COUNT) {
        return; 
    }

    OfflineLog_t *log_ptr = &g_OfflineLogQueue.buffer[g_OfflineLogQueue.tail];
    
    log_ptr->level = level;
    log_ptr->event_source = src;
    log_ptr->event_type = type;
    
    // ??????????
    strncpy(log_ptr->payload, str, OFFLINE_LOG_MAX_LEN - 1);
    log_ptr->payload[OFFLINE_LOG_MAX_LEN - 1] = '\0'; // ?????

    // ??????
    g_OfflineLogQueue.tail = (g_OfflineLogQueue.tail + 1) % OFFLINE_LOG_MAX_COUNT;
    g_OfflineLogQueue.count++;
}

/*************************************************
  Function:     LogHal_FlushOfflineLogs  //???
  Description:  Flush offline logs
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
// void LogHal_FlushOfflineLogs(void)
// {
//     MpuHalDataPack_t packet;
//     int16_t ret;
//     if (MpuPowerSyncSdkGetNadModuleStatus() == 1)
//     {
//         return;
//     }
//     while (g_OfflineLogQueue.count > 0)
//     {
//         OfflineLog_t *log_ptr = &g_OfflineLogQueue.buffer[g_OfflineLogQueue.head];
//         LoghalPackageLogData(log_ptr->level, log_ptr->event_source, log_ptr->event_type, log_ptr->payload, &packet);
//         ret = MpuHalTransmit(g_mpulogHandle, &packet);
        
//         if(ret != MPU_HAL_STATUS_OK) {
//             break; 
//         }

//         // ????,??????
//         g_OfflineLogQueue.head = (g_OfflineLogQueue.head + 1) % OFFLINE_LOG_MAX_COUNT;
//         g_OfflineLogQueue.count--;
//     }
// }