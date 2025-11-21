/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: logHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "logHal.h"
#include "stdio.h"
#include "stdarg.h"
#include "string.h"
#include "common_drv.h"
#include "sysctrl_drv.h"
#include "clock_drv.h"
#include "gpio_drv.h"
#include "uart_drv.h"
#include "int_drv.h"
#include "mpuHal.h"
/****************************** Macro Definitions ******************************/
#define LOG_HAL_DEBUG_UART_ID                UART2_ID
#define LOG_HAL_DEBUG_SYSCTRL_UART           SYSCTRL_UART2
#define LOG_HAL_DEBUG_UART_RX_PORT           PORT_A
#define LOG_HAL_DEBUG_UART_RX_PIN            GPIO_8
#define LOG_HAL_DEBUG_UART_RX_MUX            PTA8_UART2_RX
#define LOG_HAL_DEBUG_UART_TX_PORT           PORT_A
#define LOG_HAL_DEBUG_UART_TX_PIN            GPIO_9
#define LOG_HAL_DEBUG_UART_TX_MUX            PTA9_UART2_TX
#define LOG_HAL_DEBUG_UART_PCLK              CLK_UART2
#define LOG_HAL_DEBUG_UART_IRQ               UART2_IRQn

#define LOG_UPLOAD_LOG_BUF_SIZE            (256)
//command ID
#define LOG_UPLOAD_LOG_AID                 (0x00)
#define LOG_UPLOAD_LOG_MID                 (0x00)
static uint8_t g_logHalUploadLogBuf[LOG_UPLOAD_LOG_BUF_SIZE];
/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static uint8_t g_debugMode;
volatile unsigned char UART1_RxBuf[11];    // 定义接收数据使用的缓存变量
volatile unsigned int UART1_RxBufSN;       // 定义指向接收数组成员的变量
volatile unsigned char UART2_RxBuf[11];    // 定义接收数据使用的缓存变量
volatile unsigned int UART2_RxBufSN;       // 定义指向接收数组成员的变量
static char g_debugBuffer[PRINT_MAX_LEN];

const UART_Config_t g_stcUart2Config =
{
    .baudRate = 115200,            // UART的波特率
    .dataBits = UART_DATABITS_8,    // UART传输的数据宽度
    .parity = UART_PARITY_NONE,        // UART的奇偶校验位选择偶检验
    .stopBits = UART_STOPBITS_1,    // 传输数据时的停止位选择1位
    .autoFlowControl = DISABLE,        // 禁止流控模式
    .oscFreq = 8000000                // HSOSC 的频率
};

const UART_FIFOConfig_t g_stcUart2FifoConfig =
{
    .fifoEnable = ENABLE,            // 使能FIFO
    .txFifoReset = ENABLE,            // 使能复位TX_FIFO
    .rxFifoReset = ENABLE,            // 使能复位RX_FIFO
    .fifoTet = UART_TX_FIFO_CHAR_2,    // 设置 TX_Empty 的门槛值
    .fifoRt = UART_RX_FIFO_CHAR_1    // 设置 RCVR 的门槛值
};

static int16_t g_logHalhandle = -1; // MPU通信句柄
static uint8_t g_logInitFlag = 0;
/****************************** Function Declarations *************************/
static void UART2_RBFI_ISR(void);
static void LogHalUploadLogInit(void);
static void LoghalPackageLogData(char *log_str, MpuHalDataPack_t *packet);
static ResultStatus_t UART2_SendData(unsigned char *txdataP, unsigned int dlc);
/****************************** Public Function Implementations ***************/
/*************************************************
  Function:     UART2_Init
  Description:  UART2 module init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void UART2_Init(void)
{
    PORT_PinmuxConfig(LOG_HAL_DEBUG_UART_RX_PORT, LOG_HAL_DEBUG_UART_RX_PIN, PTA8_GPIO);
    PORT_PinmuxConfig(LOG_HAL_DEBUG_UART_TX_PORT, LOG_HAL_DEBUG_UART_TX_PIN, PTA9_GPIO);

    SYSCTRL_DisableModule(LOG_HAL_DEBUG_SYSCTRL_UART);
    CLK_ModuleSrc(LOG_HAL_DEBUG_UART_PCLK, CLK_SRC_PLL);
    CLK_SetClkDivider(LOG_HAL_DEBUG_UART_PCLK, CLK_DIV_3);
    SYSCTRL_ResetModule(LOG_HAL_DEBUG_SYSCTRL_UART);
    SYSCTRL_EnableModule(LOG_HAL_DEBUG_SYSCTRL_UART);

    UART_Init(LOG_HAL_DEBUG_UART_ID, &g_stcUart2Config);    //初始化UART2模块的控制寄存器
    UART_FIFOConfig(LOG_HAL_DEBUG_UART_ID, &g_stcUart2FifoConfig);    //初始化FIFO的控制寄存器

    // 初始化中断
    UART_IntMask(LOG_HAL_DEBUG_UART_ID, UART_INT_ALL, MASK);    //禁止UART2所有的中断
    UART_InstallCallBackFunc(LOG_HAL_DEBUG_UART_ID, UART_INT_RBFI, UART2_RBFI_ISR);    //加载接收数据有效的中断处理函数
    UART_IntMask(LOG_HAL_DEBUG_UART_ID, UART_INT_RBFI, UNMASK);    //使能接收数据有效的中断
    INT_SetPriority(LOG_HAL_DEBUG_UART_IRQ, 0x3);        //设置 UART2_IRQn 的中断优先级。(高)0--15(低)
    INT_EnableIRQ(LOG_HAL_DEBUG_UART_IRQ);                //使能 UART2_IRQn 中断

    PORT_PinmuxConfig(LOG_HAL_DEBUG_UART_RX_PORT, LOG_HAL_DEBUG_UART_RX_PIN, LOG_HAL_DEBUG_UART_RX_MUX);    // PTA8--UART2_RX
    PORT_PinmuxConfig(LOG_HAL_DEBUG_UART_TX_PORT, LOG_HAL_DEBUG_UART_TX_PIN, LOG_HAL_DEBUG_UART_TX_MUX);    // PTA9--UART2_TX

    g_logInitFlag = 1;
}

/*************************************************
  Function:     UART2_SendData
  Description:  Send data through UART2
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static ResultStatus_t UART2_SendData(unsigned char *txdataP, unsigned int dlc)
{
    unsigned int i;
    unsigned int delayCnt;
    if(g_logInitFlag == 0)
    {
        return ERR;
    }
    
    delayCnt = 0;
    while(UART_GetLineStatus(LOG_HAL_DEBUG_UART_ID, UART_LINESTA_TEMT) == RESET)    //TX_FIFO 不为空，等待
    {
        if((delayCnt > 500) || (g_logInitFlag == 0))    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;    //模块故障
        }
    }

    //开始发送数据操作
    for(i=0; i<dlc; i++)
    {
        UART_SendByte(LOG_HAL_DEBUG_UART_ID, txdataP[i]);    //启动发送数据

        delayCnt = 0;
        while(UART_GetLineStatus(LOG_HAL_DEBUG_UART_ID, UART_LINESTA_TEMT) == RESET)    //TX_FIFO 不为空，等待
        {
            if ((delayCnt > 500) || (g_logInitFlag == 0))    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
            {
                return ERR;
            }
            delayCnt++;
        }
    }

    //等待把TX_FIFO中的数据全部发出
    delayCnt = 0;
    while(UART_GetLineStatus(LOG_HAL_DEBUG_UART_ID, UART_LINESTA_TEMT) == RESET)    //TX_FIFO 不为空，等待
    {
        if ((delayCnt > 500) || (g_logInitFlag == 0))    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;
        }
        delayCnt++;
    }

    return SUCC;
}

/*************************************************
  Function:     UART2_ReceiveData
  Description:  Receive data through UART2
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
ResultStatus_t UART2_ReceiveData(unsigned char *rxdataP, unsigned int dlc)
{
    unsigned int i;
    unsigned int delayCnt;


    delayCnt = 0;
    while(UART_GetLineStatus(LOG_HAL_DEBUG_UART_ID, UART_LINESTA_TEMT) == RESET)    //TX_FIFO 不为空，等待
    {
        if(delayCnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
        {
            return ERR;    //模块故障
        }
    }

    //开始接收数据操作
    for(i=0; i<dlc; i++)
    {
        delayCnt = 0;
        while(UART_GetLineStatus(LOG_HAL_DEBUG_UART_ID, UART_LINESTA_DR) == RESET)    //接收的数据没有准备好，等待
        {
            if(delayCnt > 500)    //以1M波特率发送TX_FIFO中的4个32位数据需要的时间为依据估算。建议测定出这个数字，
            {
                return ERR;
            }
            delayCnt++;
        }

        rxdataP[i] = UART_ReceiveByte(LOG_HAL_DEBUG_UART_ID);    //读取RX_FIFO中的数据
    }

    return SUCC;
}

/*************************************************
  Function:     UART2_RBFI_ISR
  Description:  UART2 receive data valid interrupt handler
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void UART2_RBFI_ISR(void)
{

    // 读取RX_FIFO中的数据
    UART2_RxBuf[UART2_RxBufSN] = UART_ReceiveByte(LOG_HAL_DEBUG_UART_ID); // 从RX_FIFO中读取一个数据
    UART2_RxBufSN++;        //UART2_RxBufSN 指向 UART2_RxBuf 的下一个成员
    if(UART2_RxBufSN >= 8)    //已经接收了 7 个字节的数据
    {
        UART2_RxBufSN = 0;    //指向数组 UART1_RxBuf 的第一个成员
    }
    //以下添加其他处理代码


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
        //debug uart init
        UART2_Init();
        LogHalUploadLogInit();
    }
#if(TBOX_PRINT_RTT_ENABLE)
    SEGGER_RTT_Init();
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
    va_list v_args;
    va_start(v_args, format);
    vsprintf (g_debugBuffer,(char const*)format,v_args);
    va_end(v_args);    
    if (g_debugMode == 1 || g_debugMode == 3)
    {
        COMMON_DISABLE_INTERRUPTS();
        UART2_SendData((unsigned char *)g_debugBuffer, strlen(g_debugBuffer));
        COMMON_ENABLE_INTERRUPTS();
    }
    
#if(TBOX_PRINT_RTT_ENABLE)
    SEGGER_RTT_printf(0, RTT_CTRL_TEXT_WHITE);
    va_list ParamList;
    va_start(ParamList, format);
    SEGGER_RTT_vprintf(0, format, &ParamList);
    va_end(ParamList);
#endif
}

void LogHalRttPrint(const char *format, ...)
{
#if(TBOX_PRINT_RTT_ENABLE)
    va_list ParamList;
    va_start(ParamList, format);
    SEGGER_RTT_vprintf(0, format, &ParamList);
    va_end(ParamList);
#endif
}

/*************************************************
  Function:     LogHalSetMode
  Description:  Set log hal mode
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void LogHalSetMode(uint8_t mode)
{
    if (0 == mode)
    {
        if (g_debugMode == 1 || g_debugMode == 3)
        {
            g_logInitFlag = 0;
            UART_IntMask(LOG_HAL_DEBUG_UART_ID, UART_INT_ALL, MASK);
            INT_ClearPendingIRQ(LOG_HAL_DEBUG_UART_IRQ);
            INT_EnableIRQ(LOG_HAL_DEBUG_UART_IRQ);
            SYSCTRL_DisableModule(LOG_HAL_DEBUG_SYSCTRL_UART);

            PORT_PinmuxConfig(LOG_HAL_DEBUG_UART_RX_PORT, LOG_HAL_DEBUG_UART_RX_PIN, PTA8_GPIO);
            GPIO_SetPinDir(LOG_HAL_DEBUG_UART_RX_PORT, LOG_HAL_DEBUG_UART_RX_PIN, GPIO_INPUT);
            PORT_PinmuxConfig(LOG_HAL_DEBUG_UART_TX_PORT, LOG_HAL_DEBUG_UART_TX_PIN, PTA9_GPIO);
            GPIO_SetPinDir(LOG_HAL_DEBUG_UART_RX_PORT, LOG_HAL_DEBUG_UART_RX_PIN, GPIO_INPUT);
        }
    }
    else if(1 == mode)
    {
        LogHalInit(3);
    }  
}

/*************************************************
  Function:     LogHalUploadLogInit
  Description:  Log upload log init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void LogHalUploadLogInit(void)
{
    MpuHalFilter_t filter;
    g_logHalhandle = MpuHalOpen();

    filter.aid = LOG_UPLOAD_LOG_AID;
    filter.midMin = LOG_UPLOAD_LOG_AID;
    filter.midMax = LOG_UPLOAD_LOG_AID;

    MpuHalSetRxFilter(g_logHalhandle, &filter);
    MpuHalSetRxBuffer(g_logHalhandle, g_logHalUploadLogBuf, sizeof(g_logHalUploadLogBuf));

}

/*************************************************
  Function:     LogHalUpLoadLog
  Description:  Log upload log
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void LogHalUpLoadLog(const char *format, ...) 
{
    static char log_str[LOG_UPLOAD_LOG_BUF_SIZE];
    static MpuHalDataPack_t packet;
    uint8_t ret = 0U;
    va_list args;
    va_start(args, format);
    
    int len = vsnprintf(log_str, LOG_UPLOAD_LOG_BUF_SIZE, format, args);

    if (len < 0 || len >= LOG_UPLOAD_LOG_BUF_SIZE) {
        return;
    }
    va_end(args);

    LoghalPackageLogData(log_str, &packet);

    ret = MpuHalTransmit(g_logHalhandle, &packet, MPU_HAL_SPI_MODE);
    if(ret != MPU_HAL_STATUS_OK)
    {
        LogHalPrint("LogHalUpLoadLog failed, log_str: %s", log_str);
    }
}

/*************************************************
  Function:     LoghalPackageLogData
  Description:  Log package log data
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void LoghalPackageLogData(char *log_str, MpuHalDataPack_t *packet)
{
    packet->aid = LOG_UPLOAD_LOG_AID;
    packet->mid = LOG_UPLOAD_LOG_MID;
    packet->dataBufferSize = sizeof(g_logHalUploadLogBuf);
    packet->pDataBuffer = g_logHalUploadLogBuf;
    memset(g_logHalUploadLogBuf, 0, sizeof(g_logHalUploadLogBuf));

    packet->dataLength = strlen(log_str);
    memcpy(g_logHalUploadLogBuf, log_str, packet->dataLength);
}


