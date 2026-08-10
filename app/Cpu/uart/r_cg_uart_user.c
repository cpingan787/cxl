/***********************************************************************************************************************
* DISCLAIMER
* This software is supplied by Renesas Electronics Corporation and is only 
* intended for use with Renesas products. No other uses are authorized. This 
* software is owned by Renesas Electronics Corporation and is protected under 
* all applicable laws, including copyright laws.
* THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIES REGARDING 
* THIS SOFTWARE, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING BUT NOT 
* LIMITED TO WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE 
* AND NON-INFRINGEMENT.  ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED.
* TO THE MAXIMUM EXTENT PERMITTED NOT PROHIBITED BY LAW, NEITHER RENESAS 
* ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES SHALL BE LIABLE 
* FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR 
* ANY REASON RELATED TO THIS SOFTWARE, EVEN IF RENESAS OR ITS AFFILIATES HAVE 
* BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
* Renesas reserves the right, without notice, to make changes to this software 
* and to discontinue the availability of this software.  By using this software, 
* you agree to the additional terms and conditions found by accessing the 
* following link:
* http://www.renesas.com/disclaimer
*
* Copyright (C) 2015, 2018 Renesas Electronics Corporation. All rights reserved.
***********************************************************************************************************************/

/***********************************************************************************************************************
* File Name    : r_cg_uart_user.c
* Version      : Code Generator for RH850/F1K V1.01.02.02 [08 May 2018]
* Device(s)    : R7F701581(LQFP100pin)
* Tool-Chain   : CCRH
* Description  : This file implements device driver for UART module.
* Creation Date: 2026/7/1
***********************************************************************************************************************/

/***********************************************************************************************************************
Pragma directive
***********************************************************************************************************************/
/* Start user code for pragma. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
Includes
***********************************************************************************************************************/
#include "r_cg_macrodriver.h"
#include "r_cg_uart.h"
/* Start user code for include. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"
#include "mpuHal.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
extern volatile uint8_t  * gp_uart0_tx_address;    /* uart0 transmit data address */
extern volatile uint16_t   g_uart0_tx_count;       /* uart0 transmit data number */
extern volatile uint8_t  * gp_uart0_rx_address;    /* uart0 receive data address */
extern volatile uint16_t   g_uart0_rx_count;       /* uart0 receive data number */
extern volatile uint16_t   g_uart0_rx_length;      /* uart0 receive data length */
extern volatile uint8_t  * gp_uart2_tx_address;    /* uart2 transmit data address */
extern volatile uint16_t   g_uart2_tx_count;       /* uart2 transmit data number */
extern volatile uint8_t  * gp_uart2_rx_address;    /* uart2 receive data address */
extern volatile uint16_t   g_uart2_rx_count;       /* uart2 receive data number */
extern volatile uint16_t   g_uart2_rx_length;      /* uart2 receive data length */
/* Start user code for global. Do not edit comment generated here */
extern volatile uint8_t g_debugPrintEndFlag;
extern volatile uint8_t g_debugUartReciveData[];
extern volatile uint16_t g_debugUartReciveCount;
extern volatile uint8_t g_debugUartErrorType;
extern volatile uint8_t g_debugUartErrorFlag;
extern volatile uint16_t g_mpuUartReciveCount;
extern volatile uint8_t g_mpuUartErrorType;
extern volatile uint8_t g_mpuUartErrorFlag;
extern volatile uint8_t g_mpuSetRecvErrorFlag;
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: r_uart0_interrupt_receive
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart0_interrupt_receive(enable=false, channel=35, fpu=true, callt=false)
void r_uart0_interrupt_receive(void)
{
    uint8_t rx_data_8;
    uint16_t temp; 

    rx_data_8 = RLN30.LURDR.UINT16; 

    temp = g_uart0_rx_count;
    if(g_debugUartReciveCount < 100)
    {
        g_debugUartReciveData[g_debugUartReciveCount++] = rx_data_8;
    }
}
/***********************************************************************************************************************
* Function Name: r_uart0_interrupt_error
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart0_interrupt_error(enable=false, channel=36, fpu=true, callt=false)
void r_uart0_interrupt_error(void)
{
    uint8_t  err_type;
    uint8_t rx_data_8;

    rx_data_8 = RLN30.LURDR.UINT16;
    err_type = (uint8_t)(RLN30.LEST);  
    RLN30.LEST &= (uint8_t) ~_UART_CLEAR_ERROR_FLAG;
    r_uart0_callback_error(err_type);
}
/***********************************************************************************************************************
* Function Name: r_uart0_interrupt_send
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart0_interrupt_send(enable=false, channel=34, fpu=true, callt=false)
void r_uart0_interrupt_send(void)
{
    if (g_uart0_tx_count > 0U)
    {
        RLN30.LUTDR.UINT16 = *gp_uart0_tx_address;
        gp_uart0_tx_address++;
        g_uart0_tx_count--;
    }
    else
    {
        r_uart0_callback_sendend();
    }
}
/***********************************************************************************************************************
* Function Name: r_uart0_callback_receiveend
* Description  : This function is a callback function called when UART0 completed data reception.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart0_callback_receiveend(void)
{
    /* Start user code. Do not edit comment generated here */
    uint8_t rx_data_8;
    uint16_t temp; 

    rx_data_8 = RLN30.LURDR.UINT16; 
    if(g_debugUartReciveCount < 100)
    {
        g_debugUartReciveData[g_debugUartReciveCount++] = rx_data_8;
    }
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart0_callback_sendend
* Description  : This function is a callback function called when UART0 completed data transmission.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart0_callback_sendend(void)
{
    /* Start user code. Do not edit comment generated here */
    uint32_t timeout = 1000;
    /* 避免 loguart 连续发送时第二包数据丢失 */
    while (RLN30.LST & _UART_TRANSMISSION_OPERATED) 
    {
        if (--timeout == 0) break;   // 防死循环
    }
    g_debugPrintEndFlag = 1;
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart0_callback_error
* Description  : This function is a callback function called when UART0 receive error or event generation occures.
* Arguments    : err_type -
*                    error type
* Return Value : None
***********************************************************************************************************************/
static void r_uart0_callback_error(uint8_t err_type)
{
    /* Start user code. Do not edit comment generated here */
    if(g_debugUartErrorFlag == 0)
    {
        g_debugUartErrorType = err_type;
        g_debugUartErrorFlag = 1;
    }
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart2_interrupt_receive
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart2_interrupt_receive(enable=false, channel=166, fpu=true, callt=false)
void r_uart2_interrupt_receive(void)
{
    uint8_t rx_data_8;

    rx_data_8 = RLN32.LURDR.UINT16; 
    MpuHalUartInterruptCallback(rx_data_8);
}
/***********************************************************************************************************************
* Function Name: r_uart2_interrupt_error
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart2_interrupt_error(enable=false, channel=167, fpu=true, callt=false)
void r_uart2_interrupt_error(void)
{
    uint8_t  err_type;
    uint8_t rx_data_8;

    rx_data_8 = RLN32.LURDR.UINT16;
    err_type = (uint8_t)(RLN32.LEST);  
    RLN32.LEST &= (uint8_t) ~_UART_CLEAR_ERROR_FLAG;
    r_uart2_callback_error(err_type);
}
/***********************************************************************************************************************
* Function Name: r_uart2_interrupt_send
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart2_interrupt_send(enable=false, channel=165, fpu=true, callt=false)
void r_uart2_interrupt_send(void)
{
    if (g_uart2_tx_count > 0U)
    {
        RLN32.LUTDR.UINT16 = *gp_uart2_tx_address;
        gp_uart2_tx_address++;
        g_uart2_tx_count--;
    }
    else
    {
        r_uart2_callback_sendend();
    }
}
/***********************************************************************************************************************
* Function Name: r_uart2_callback_receiveend
* Description  : This function is a callback function called when UART2 completed data reception.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart2_callback_receiveend(void)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart2_callback_sendend
* Description  : This function is a callback function called when UART2 completed data transmission.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart2_callback_sendend(void)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart2_callback_error
* Description  : This function is a callback function called when UART2 receive error or event generation occures.
* Arguments    : err_type -
*                    error type
* Return Value : None
***********************************************************************************************************************/
static void r_uart2_callback_error(uint8_t err_type)
{
    /* Start user code. Do not edit comment generated here */
    if(g_mpuUartErrorFlag == 0)
    {
        g_mpuUartErrorType = err_type;
        g_mpuUartErrorFlag = 1;
    }
    /* End user code. Do not edit comment generated here */
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
