/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: log.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "logHal.h"
#include "r_cg_macrodriver.h"
#include "r_cg_uart.h"
#include "stdio.h"
#include "string.h"
#include "stdarg.h"


/****************************** Macro Definitions ******************************/
/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static char g_debugBuffer[PRINT_MAX_LEN];
volatile uint8_t g_debugPrintEndFlag = 0;
volatile uint8_t g_debugUartReciveData[100] = {0};
volatile uint16_t g_debugUartReciveCount = 0;
volatile uint8_t g_debugUartErrorType = 0;
volatile uint8_t g_debugUartErrorFlag = 0;
static uint8_t g_debugMode;

/****************************** Function Declarations *************************/
static void delay_us(unsigned int xus);

/****************************** Public Function Implementations ******************************/
/*************************************************
  Function:     delay_us
  Description:  delay us
  Input:        xus: delay us time
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void delay_us(unsigned int xus)
{
    unsigned int i,j;
    for(i=0; i<xus; i++)
    {
        // for(j=0; j<10; j++)
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
}

#ifdef TIME_TEST
#define OSTM_PCLK_MHZ          40
#define OSTM_MAX_TICKS         0xFFFFFFFFUL
static uint32_t g_ostm_start_value = OSTM_MAX_TICKS;
/*************************************************
  Function:     OSTM_Init
  Description:  OSTM init
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
/*************************************************
  Function:     OSTM_GetUs
  Description:  OSTM get us
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
uint32_t OSTM_GetUs(void)
{
    uint32_t current_cnt = OSTM0.CNT;
    uint32_t elapsed_ticks = OSTM_MAX_TICKS - current_cnt;
    return (elapsed_ticks / OSTM_PCLK_MHZ);
}
/*************************************************
  Function:     OSTM_GetElapsedUs
  Description:  OSTM get elapsed us
  Input:        last_timestamp: last timestamp
  Output:       None
  Return:       None
  Others:       None
*************************************************/
uint32_t OSTM_GetElapsedUs(uint32_t last_timestamp)
{
    uint32_t current_time = OSTM_GetUs();
    
    if (current_time >= last_timestamp)
    {
        return (current_time - last_timestamp);
    } else {
        /* 处理 32 位微秒计数器溢出的情况 (虽然要跑 71 分钟才会溢出) */
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
        R_UART4_Create();
        R_UART4_Start();
        g_debugUartReciveCount = 0;
        R_UART4_Receive(g_debugUartReciveData, 1);
    }
#ifdef TIME_TEST
    OSTM_Init();
#endif
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
