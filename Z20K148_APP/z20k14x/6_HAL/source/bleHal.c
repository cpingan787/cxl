/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: bleHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include <stdio.h>
#include <stdarg.h>
#include "cy_project.h"
#include "cy_device_headers.h"
#include "bleHal.h"

/****************************** Macro Definitions ******************************/
#define BLE_SCB_TYPE                 SCB1

#define BLE_SCB_UART_RX_PORT         GPIO_PRT18
#define BLE_SCB_UART_RX_PIN          0
#define BLE_SCB_UART_RX_MUX          P18_0_SCB1_UART_RX

#define BLE_SCB_UART_TX_PORT         GPIO_PRT18
#define BLE_SCB_UART_TX_PIN          1
#define BLE_SCB_UART_TX_MUX          P18_1_SCB1_UART_TX

#define BLE_SCB_UART_PCLK            PCLK_SCB1_CLOCK
#define BLE_SCB_UART_IRQN            scb_1_interrupt_IRQn

#define BLE_RST_PORT        GPIO_PRT18
#define BLE_RST_PIN         4
#define BLE_RST_MUX         P18_4_GPIO

#define BLE_STATUS_PORT     GPIO_PRT17
#define BLE_STATUS_PIN      2
#define BLE_STATUS_MUX      P17_2_GPIO

#define UART_BLE_RX_BUF_LEN 512

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

/****************************** Type Definitions ******************************/
typedef struct
{
  uint16_t indexIn;
  uint16_t indexOut;
  uint16_t rxCount;
  uint8_t rxBuffer[UART_BLE_RX_BUF_LEN];
}BspUartRxBuffer_t;

/****************************** Global Variables ******************************/
static cy_stc_scb_uart_config_t    g_stc_uart_config = {//串口配置结构
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

static const cy_stc_gpio_pin_config_t g_bleRestPortPinCfg =
{
    .outVal = 1ul, // Pin output state 
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, // Drive mode 
    .hsiom = BLE_RST_MUX, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
};

BspUartRxBuffer_t g_bspUart0Buffer;
cy_stc_scb_uart_context_t   g_bleuart_context;

/****************************** Function Declarations *************************/
/****************************** Public Function Implementations ***************/
void Scb_BLEUART_Event(uint32_t locEvents)
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
            Cy_SCB_UART_Transmit(CY_BLE_SCB_TYPE, &g_bleuart_in_data[0], E_UART_RECV_THRESHOLD, &g_bleuart_context);
            Cy_SCB_UART_Receive(CY_BLE_SCB_TYPE, &g_bleuart_in_data[0], E_UART_RECV_THRESHOLD, &g_bleuart_context);
#endif
            /* Re-Enable Interrupt */
            Cy_SCB_SetRxInterruptMask(BLE_SCB_TYPE, g_stc_uart_config.rxFifoIntEnableMask);
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

void Scb_BLEUART_IntrISR(void)
{
#if(1)
    /* UART Echo Test (High-Level)            */
    /* (2) Interrupt & Receive by 1 byte unit */
    uint8_t buffer[64];
    int i;
    uint32_t num;
    //num = Cy_SCB_UART_GetNumInRxFifo(CY_BLE_SCB_TYPE);
    num = Cy_SCB_UART_GetArray(BLE_SCB_TYPE, buffer, sizeof(buffer));
    if (num != 0) 
    {
        //Cy_SCB_UART_Receive(CY_BLE_SCB_TYPE, buffer, num, &g_bleuart_context);
        for(i=0;i<num;i++)
        {
            g_bspUart0Buffer.rxBuffer[g_bspUart0Buffer.indexIn]= buffer[i];
            g_bspUart0Buffer.indexIn++;
            if(g_bspUart0Buffer.indexIn>=UART_BLE_RX_BUF_LEN)
            {
                g_bspUart0Buffer.indexIn = 0;
            }
            g_bspUart0Buffer.rxCount++;
        }
        // Cy_SCB_SetRxFifoLevel(CY_BLE_SCB_TYPE, 0);
    }
#endif
    /* UART interrupt handler */
    Cy_SCB_UART_Interrupt(BLE_SCB_TYPE, &g_bleuart_context);
    INT_ClearPendingIRQ(CPUIntIdx4_IRQn);
}

void BleHalInit(void)
{
    cy_stc_gpio_pin_config_t    stc_port_pin_cfg_uart = {0};
    cy_stc_sysint_irq_t         stc_sysint_irq_cfg_uart;

    stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_HIGHZ;
    stc_port_pin_cfg_uart.hsiom     = BLE_SCB_UART_RX_MUX;
    Cy_GPIO_Pin_Init(BLE_SCB_UART_RX_PORT, BLE_SCB_UART_RX_PIN, &stc_port_pin_cfg_uart);//直接指定端口,对应手册pdf26:P130
    stc_port_pin_cfg_uart.driveMode = CY_GPIO_DM_STRONG_IN_OFF;
    stc_port_pin_cfg_uart.hsiom     = BLE_SCB_UART_TX_MUX;
    Cy_GPIO_Pin_Init(BLE_SCB_UART_TX_PORT, BLE_SCB_UART_TX_PIN, &stc_port_pin_cfg_uart);//P131
    Cy_SysClk_PeriphAssignDivider(BLE_SCB_UART_PCLK, CY_SYSCLK_DIV_24_5_BIT, 2u);
    //set bandrate 256000
    Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, 2u, 38u, 2u);    //80MHz
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, 2u);
    
    //g_stc_uart_config.oversample = 8;
    stc_sysint_irq_cfg_uart.sysIntSrc = BLE_SCB_UART_IRQN;
    stc_sysint_irq_cfg_uart.intIdx    = CPUIntIdx4_IRQn;
    stc_sysint_irq_cfg_uart.isEnabled = true;
    Cy_SysInt_InitIRQ(&stc_sysint_irq_cfg_uart);//开启UART接收中断
    Cy_SysInt_SetSystemIrqVector(stc_sysint_irq_cfg_uart.sysIntSrc, Scb_BLEUART_IntrISR);//Scb_UART_IntrISR:uart中断处理函数

    g_bspUart0Buffer.indexIn = 0;
    g_bspUart0Buffer.indexOut = 0;
    g_bspUart0Buffer.rxCount = 0;
    Cy_SCB_UART_DeInit(BLE_SCB_TYPE);
    Cy_SCB_UART_Init(BLE_SCB_TYPE, &g_stc_uart_config, &g_bleuart_context);//将SCBx与串口的配置还有数据结构绑定
    Cy_SCB_UART_RegisterCallback(BLE_SCB_TYPE, (scb_uart_handle_events_t)Scb_BLEUART_Event, &g_bleuart_context);//
    Cy_SCB_ClearTxInterrupt(BLE_SCB_TYPE, CY_SCB_TX_INTR_LEVEL);
    
    Cy_SCB_UART_Enable(BLE_SCB_TYPE);
    /* Enable Interrupt */
    INT_EnableIRQ(CPUIntIdx4_IRQn);
    INT_SetPriority(CPUIntIdx4_IRQn, 4);
    
    //初始化复位引脚
    Cy_GPIO_Pin_Init(BLE_RST_PORT, BLE_RST_PIN, &g_bleRestPortPinCfg);
}


int16_t BleHalRestSet(uint8_t flag)
{   
    if(flag == 1)
    {
        GPIO_ClearPinOutput(BLE_RST_PORT,BLE_RST_PIN);
    }
    else
    {
        GPIO_SetPinOutput(BLE_RST_PORT,BLE_RST_PIN);
    }
    return 0;
}

int16_t BleHalTransmit(uint8_t *pData,uint32_t txLength)
{
    return 0;
}

int16_t BleHalRead(uint8_t *pData,uint32_t readCount,uint32_t *pLength)
{
    return 0;
}

void BleHalSetMode(uint8_t BleHalRead)
{

}

int16_t BleHalGetConnectStatus(void)
{
    return 0;
}

