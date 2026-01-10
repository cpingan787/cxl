#include "cy_project.h"
#include "cy_device_headers.h"
#include "stdio.h"
#include "stdarg.h"
#include "logHal.h"
#include "SEGGER_RTT.h"

#define LOG_SCB_DEBUG_TYPE                 SCB6
#define LOG_SCB_DEBUG_UART_RX_PORT         GPIO_PRT3
#define LOG_SCB_DEBUG_UART_RX_PIN          0
#define LOG_SCB_DEBUG_UART_RX_MUX          P3_0_SCB6_UART_RX
#define LOG_SCB_DEBUG_UART_TX_PORT         GPIO_PRT3
#define LOG_SCB_DEBUG_UART_TX_PIN          1
#define LOG_SCB_DEBUG_UART_TX_MUX          P3_1_SCB6_UART_TX
#define LOG_SCB_DEBUG_UART_PCLK            PCLK_SCB6_CLOCK
#define LOG_SCB_DEBUG_UART_IRQN            scb_6_interrupt_IRQn 

#define LOG_SCB_MPU_TYPE                 SCB4
#define LOG_SCB_MPU_UART_RX_PORT         GPIO_PRT6
#define LOG_SCB_MPU_UART_RX_PIN          0
#define LOG_SCB_MPU_UART_RX_MUX          P6_0_SCB4_UART_RX
#define LOG_SCB_MPU_UART_TX_PORT         GPIO_PRT6
#define LOG_SCB_MPU_UART_TX_PIN          1
#define LOG_SCB_MPU_UART_TX_MUX          P6_1_SCB4_UART_TX
#define LOG_SCB_MPU_UART_PCLK            PCLK_SCB4_CLOCK
#define LOG_SCB_MPU_UART_IRQN            scb_4_interrupt_IRQn 

#define E_UART_ECHO_INTR_1BYTE

#define E_UART_RX_INTR_FACTER     (                              \
                                 CY_SCB_UART_RX_TRIGGER      |   \
                               /*CY_SCB_UART_RX_NOT_EMPTY    | */\
                               /*CY_SCB_UART_RX_FULL         | */\
                                 CY_SCB_UART_RX_OVERFLOW     |   \
                                 CY_SCB_UART_RX_UNDERFLOW    |   \
                                 CY_SCB_UART_RX_ERR_FRAME    |   \
                                 CY_SCB_UART_RX_ERR_PARITY   |   \
                                 CY_SCB_UART_RX_BREAK_DETECT |   \
                                 0                               \
                                )

static cy_stc_scb_uart_config_t    g_stcUartConfig = {
   .uartMode                   = CY_SCB_UART_STANDARD,
   .oversample                 = 8,
   .dataWidth                  = 8,
   .enableMsbFirst             = false,
   .stopBits                   = CY_SCB_UART_STOP_BITS_1,
   .parity                     = CY_SCB_UART_PARITY_NONE,
   .enableInputFilter          = false,
   .dropOnParityError          = false,
   .dropOnFrameError           = false,
   .enableMutliProcessorMode   = false,
   .receiverAddress            = 0,
   .receiverAddressMask        = 0,
   .acceptAddrInFifo           = false,
   .irdaInvertRx               = false,
   .irdaEnableLowPowerReceiver = false,
   .smartCardRetryOnNack       = false,
   .enableCts                  = false,
   .ctsPolarity                = CY_SCB_UART_ACTIVE_LOW,
   .rtsRxFifoLevel             = 0, //
   .rtsPolarity                = CY_SCB_UART_ACTIVE_LOW,
   .breakWidth                 = 0,
   .rxFifoTriggerLevel         = 0,
   .rxFifoIntEnableMask        = E_UART_RX_INTR_FACTER,
   .txFifoTriggerLevel         = 0,
   .txFifoIntEnableMask        = 0,
};

//static uint8_t m_PrintDataBuffer[100];
static uint8_t     g_debugUartData[128]; 
//static uint8_t     g_AG568uart_in_data[128];
static cy_stc_scb_uart_context_t   g_debugUartContext;
static cy_stc_scb_uart_context_t   g_mpuUartContext;

static uint8_t g_debugMode;

/*************************************************
  Function:     ScbDebugUARTIntrISR
  Description:  Debug uart interrupt handler function
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void ScbDebugUARTIntrISR(void)
{
    
#if defined(E_UART_ECHO_INTR_1BYTE)
    /* UART Echo Test (High-Level)            */
    /* (2) Interrupt & Receive by 1 byte unit */
    uint32_t num = Cy_SCB_UART_GetNumInRxFifo(LOG_SCB_DEBUG_TYPE);
    if (num != 0) 
    {
        Cy_SCB_UART_Receive(LOG_SCB_DEBUG_TYPE, &g_debugUartData[0], num, &g_debugUartContext);
        Cy_SCB_SetRxFifoLevel(LOG_SCB_DEBUG_TYPE, 0);
    }
#endif
    /* UART interrupt handler */
    Cy_SCB_UART_Interrupt(LOG_SCB_DEBUG_TYPE, &g_debugUartContext);
    NVIC_ClearPendingIRQ(CPUIntIdx4_IRQn);
}

/*************************************************
  Function:     ScbMpuUARTIntrISR
  Description:  MPU uart interrupt handler function
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void ScbMpuUARTIntrISR(void)
{
  //uint32_t num ;
#if(0)
    /* UART Echo Test (High-Level)            */
    /* (2) Interrupt & Receive by 1 byte unit */
    uint32_t num = Cy_SCB_UART_GetNumInRxFifo(LOG_SCB_MPU_TYPE);
    if (num != 0) 
    {
        Cy_SCB_UART_Receive(LOG_SCB_MPU_TYPE, &g_AG568uart_in_data[0], num, &g_mpuUartContext);
        Cy_SCB_SetRxFifoLevel(LOG_SCB_MPU_TYPE, 0);
    }
#else
    //num = Cy_SCB_UART_GetArray(LOG_SCB_MPU_TYPE, g_AG568uart_in_data, 64);
#endif
    /* UART interrupt handler */
    Cy_SCB_UART_Interrupt(LOG_SCB_MPU_TYPE, &g_mpuUartContext);
    // ProtocalProcess(5,g_AG568uart_in_data,num,1);
    NVIC_ClearPendingIRQ(CPUIntIdx4_IRQn);
}

/*************************************************
  Function:     ScbDebugUartEvent
  Description:  Debug uart event function
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void ScbDebugUartEvent(uint32_t locEvents)
{
    switch (locEvents) {

        case CY_SCB_UART_TRANSMIT_IN_FIFO_EVENT:
            break;

        case CY_SCB_UART_TRANSMIT_DONE_EVENT:
            break;

        case CY_SCB_UART_RECEIVE_DONE_EVENT:
#if defined(E_UART_ECHO_INTR_THRESHOLD)
            /* UART Test (High-Level)                                                 */
            /* (3) Interrupt & Receive by threshold byte unit (E_UART_RECV_THRESHOLD) */
            Cy_SCB_UART_Transmit(CY_USB_SCB_TYPE, &g_uart_in_data[0], E_UART_RECV_THRESHOLD, &g_debugUartContext);
            Cy_SCB_UART_Receive(CY_USB_SCB_TYPE, &g_uart_in_data[0], E_UART_RECV_THRESHOLD, &g_debugUartContext);
#endif
            /* Re-Enable Interrupt */
            Cy_SCB_SetRxInterruptMask(LOG_SCB_DEBUG_TYPE, g_stcUartConfig.rxFifoIntEnableMask);
            break;

        case CY_SCB_UART_RB_FULL_EVENT:
            break;

        case CY_SCB_UART_RECEIVE_ERR_EVENT:
            break;

        case CY_SCB_UART_TRANSMIT_ERR_EVENT:
            break;

        default:
            break;
    }
}

/*************************************************
  Function:     ScbMpuUartEvent
  Description:  MPU uart event function
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void ScbMpuUartEvent(uint32_t locEvents)
{
    switch (locEvents) {

        case CY_SCB_UART_TRANSMIT_IN_FIFO_EVENT:
            break;

        case CY_SCB_UART_TRANSMIT_DONE_EVENT:
            break;

        case CY_SCB_UART_RECEIVE_DONE_EVENT:
#if(0)
            /* UART Test (High-Level)                                                 */
            /* (3) Interrupt & Receive by threshold byte unit (E_UART_RECV_THRESHOLD) */
            Cy_SCB_UART_Transmit(LOG_SCB_MPU_TYPE, &g_AG568uart_in_data[0], E_UART_RECV_THRESHOLD, &g_mpuUartContext);
            Cy_SCB_UART_Receive(LOG_SCB_MPU_TYPE, &g_AG568uart_in_data[0], E_UART_RECV_THRESHOLD, &g_mpuUartContext);
#endif
            /* Re-Enable Interrupt */
            Cy_SCB_SetRxInterruptMask(LOG_SCB_MPU_TYPE, g_stcUartConfig.rxFifoIntEnableMask);
            break;

        case CY_SCB_UART_RB_FULL_EVENT:
            break;

        case CY_SCB_UART_RECEIVE_ERR_EVENT:
            break;

        case CY_SCB_UART_TRANSMIT_ERR_EVENT:
            break;

        default:
            break;
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
#if 1
    cy_stc_gpio_pin_config_t    stc_port_pin_cfg_uart = {0};
    cy_stc_sysint_irq_t         stc_sysint_irq_cfg_uart;
    if(mode == 1 || mode ==3)
    {
        //debug uart init
        stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_HIGHZ;
        stc_port_pin_cfg_uart.hsiom     = LOG_SCB_DEBUG_UART_RX_MUX;
        Cy_GPIO_Pin_Init(LOG_SCB_DEBUG_UART_RX_PORT, LOG_SCB_DEBUG_UART_RX_PIN, &stc_port_pin_cfg_uart);//直接指定端口,对应手册pdf26:P30
        
        stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_STRONG_IN_OFF;
        stc_port_pin_cfg_uart.hsiom     = LOG_SCB_DEBUG_UART_TX_MUX;
        Cy_GPIO_Pin_Init(LOG_SCB_DEBUG_UART_TX_PORT, LOG_SCB_DEBUG_UART_TX_PIN, &stc_port_pin_cfg_uart);//P31
        
        Cy_SysClk_PeriphAssignDivider(LOG_SCB_DEBUG_UART_PCLK, CY_SYSCLK_DIV_24_5_BIT, 0u);

        Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, 0u, 85u, 25u);  //80MHz 115200
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, 0u);

        stc_sysint_irq_cfg_uart.sysIntSrc = LOG_SCB_DEBUG_UART_IRQN;
        stc_sysint_irq_cfg_uart.intIdx    = CPUIntIdx4_IRQn;
        stc_sysint_irq_cfg_uart.isEnabled = true;
        Cy_SysInt_InitIRQ(&stc_sysint_irq_cfg_uart);//开启UART接收中断
        Cy_SysInt_SetSystemIrqVector(stc_sysint_irq_cfg_uart.sysIntSrc, ScbDebugUARTIntrISR);//Scb_UART_IntrISR:uart中断处理函数

        Cy_SCB_UART_DeInit(LOG_SCB_DEBUG_TYPE);
        Cy_SCB_UART_Init(LOG_SCB_DEBUG_TYPE, &g_stcUartConfig, &g_debugUartContext);
        Cy_SCB_UART_RegisterCallback(LOG_SCB_DEBUG_TYPE, (scb_uart_handle_events_t)ScbDebugUartEvent, &g_debugUartContext);
        Cy_SCB_ClearTxInterrupt(LOG_SCB_DEBUG_TYPE, CY_SCB_TX_INTR_LEVEL);

        Cy_SCB_UART_Enable(LOG_SCB_DEBUG_TYPE);
        /* Enable Interrupt */
        NVIC_EnableIRQ(CPUIntIdx4_IRQn);
        NVIC_SetPriority(CPUIntIdx4_IRQn, 4);
    }
    
    if(mode == 2 || mode ==3)
    {
        //MPU debug uart init
        stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_HIGHZ;
        stc_port_pin_cfg_uart.hsiom     = LOG_SCB_MPU_UART_RX_MUX;
        Cy_GPIO_Pin_Init(LOG_SCB_MPU_UART_RX_PORT, LOG_SCB_MPU_UART_RX_PIN, &stc_port_pin_cfg_uart);
        stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_STRONG_IN_OFF;
        stc_port_pin_cfg_uart.hsiom     = LOG_SCB_MPU_UART_TX_MUX;
        Cy_GPIO_Pin_Init(LOG_SCB_MPU_UART_TX_PORT, LOG_SCB_MPU_UART_TX_PIN, &stc_port_pin_cfg_uart);
        Cy_SysClk_PeriphAssignDivider(LOG_SCB_MPU_UART_PCLK, CY_SYSCLK_DIV_24_5_BIT, 1u); /* Assign a programmable divider */

        Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, 1u, 20u, 22u);    //80MHz 460800
        Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, 1u);

        stc_sysint_irq_cfg_uart.sysIntSrc = LOG_SCB_MPU_UART_IRQN;
        stc_sysint_irq_cfg_uart.intIdx    = CPUIntIdx4_IRQn;
        stc_sysint_irq_cfg_uart.isEnabled = true;
        Cy_SysInt_InitIRQ(&stc_sysint_irq_cfg_uart);//开启UART接收中断
        Cy_SysInt_SetSystemIrqVector(stc_sysint_irq_cfg_uart.sysIntSrc, ScbMpuUARTIntrISR);//Scb_UART_IntrISR:uart中断处理函数

        Cy_SCB_UART_DeInit(LOG_SCB_MPU_TYPE);
        Cy_SCB_UART_Init(LOG_SCB_MPU_TYPE, &g_stcUartConfig, &g_mpuUartContext);
        Cy_SCB_UART_RegisterCallback(LOG_SCB_MPU_TYPE, (scb_uart_handle_events_t)ScbMpuUartEvent, &g_mpuUartContext);
        Cy_SCB_ClearTxInterrupt(LOG_SCB_MPU_TYPE, CY_SCB_TX_INTR_LEVEL);
        Cy_SCB_UART_Enable(LOG_SCB_MPU_TYPE);
        /* Enable Interrupt */
        NVIC_EnableIRQ(CPUIntIdx4_IRQn);
        NVIC_SetPriority(CPUIntIdx4_IRQn, 4);
    }
    g_debugMode = mode;
#endif
    SEGGER_RTT_Init();
    SEGGER_RTT_printf(0, "RTT init ok !\r\n");
}

// static uint8_t * UartHalGetPrintDataBuffer(void)
// {
//   return m_PrintDataBuffer;
// }

static char g_debugBuffer[PRINT_MAX_LEN];
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
    if(g_debugMode == 1 || g_debugMode == 3)
    {
        Cy_SCB_UART_PutArray(LOG_SCB_DEBUG_TYPE, g_debugBuffer, strlen(g_debugBuffer));
    }

    if(g_debugMode == 2 || g_debugMode == 3)
    {
        Cy_SCB_UART_PutArray(LOG_SCB_MPU_TYPE, g_debugBuffer, strlen(g_debugBuffer));
    }
    
}

void LogHalDebugPrint(const char *format, ...)
{
    va_list ParamList;
    va_start(ParamList, format);
    SEGGER_RTT_vprintf(0, format, &ParamList);
    va_end(ParamList);
}
int16_t LogHalSetSleep(uint8_t mode)
{
    if(0 == mode)
    {
        Cy_SCB_UART_Disable(LOG_SCB_DEBUG_TYPE, &g_debugUartContext);
    }
    else if(1 == mode)
    {
        Cy_SCB_UART_Enable(LOG_SCB_DEBUG_TYPE);
    }  
    return 0;
}

