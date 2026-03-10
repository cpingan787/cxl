#include "logHal.h"

#include "r_cg_macrodriver.h"
#include "r_cg_uart.h"
// #include "delay.h"

#include "stdio.h"
#include "string.h"
#include "stdarg.h"

static char g_debugBuffer[PRINT_MAX_LEN];
volatile uint8_t g_debugPrintEndFlag = 0;
volatile uint8_t g_debugUartReciveData[100] = {0};
volatile uint16_t g_debugUartReciveCount = 0;
volatile uint8_t g_debugUartErrorType = 0;
volatile uint8_t g_debugUartErrorFlag = 0;

//static uint8_t     g_AG568uart_in_data[128];

static uint8_t g_debugMode;

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
    
    if(mode == 2 || mode ==3)
    {
        //MPU debug uart init
    }
    g_debugMode = mode;
}

// static uint8_t * UartHalGetPrintDataBuffer(void)
// {
//   return m_PrintDataBuffer;
// }

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

    if(g_debugMode == 2 || g_debugMode == 3)
    {
        // TODO: MPU debug uart print
    }
    
}

void LogHalSetMode(uint8_t mode)
{
    if(0 == mode)
    {
        if(g_debugMode == 1 || g_debugMode == 3)
        {
            R_UART4_Stop();
        }

        if(g_debugMode == 2 || g_debugMode == 3)
        {
            // TODO: MPU debug uart stop
        }
    }
    else if(1 == mode)
    {
        if(g_debugMode == 1 || g_debugMode == 3)
        {
            R_UART4_Start();
            g_debugUartReciveCount = 0;
        }

        if(g_debugMode == 2 || g_debugMode == 3)
        {
            // TODO: MPU debug uart init
        }
    }  
}

void LogHalTestMain(uint16_t cycleTime)
{
    static uint16_t count = 0;

    if(g_debugUartReciveCount > 0)
    {
        TBOX_PRINT("%s \r\n", g_debugUartReciveData);
        g_debugUartReciveCount = 0;
        memset(g_debugUartReciveData, 0, 100);
    }

    // if(g_debugUartErrorFlag == 1)
    // {
    //     TBOX_PRINT("debug uart error type: %d \r\n", g_debugUartErrorType);
    //     g_debugUartErrorFlag = 0;
    //     g_debugUartReciveCount = 0;
    // }

    if(count++ < (1000 / cycleTime))
    {
        return;
    }
    count = 0;

    // while (1)
    {
        // TBOX_PRINT("Task running! \r\n");
        // delay_ms(1);
        if(g_debugUartErrorFlag == 1)
        {
            TBOX_PRINT("debug uart error type: %d \r\n", g_debugUartErrorType);
            g_debugUartErrorFlag = 0;
            g_debugUartReciveCount = 0;
            memset(g_debugUartReciveData, 0, 100);
        }
    }
}

