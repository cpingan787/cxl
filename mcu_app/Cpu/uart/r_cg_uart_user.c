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
* Device(s)    : R7F701583(LQFP144pin)
* Tool-Chain   : CCRH
* Description  : This file implements device driver for UART module.
* Creation Date: 2025/12/18
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
#include "mpuHal.h"
#include "r_port.h"
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
// extern volatile uint8_t  * gp_uart1_tx_address;    /* uart1 transmit data address */
// extern volatile uint16_t   g_uart1_tx_count;       /* uart1 transmit data number */
// extern volatile uint8_t  * gp_uart1_rx_address;    /* uart1 receive data address */
// extern volatile uint16_t   g_uart1_rx_count;       /* uart1 receive data number */
// extern volatile uint16_t   g_uart1_rx_length;      /* uart1 receive data length */
extern volatile uint8_t  * gp_uart4_tx_address;    /* uart4 transmit data address */
extern volatile uint16_t   g_uart4_tx_count;       /* uart4 transmit data number */
extern volatile uint8_t  * gp_uart4_rx_address;    /* uart4 receive data address */
extern volatile uint16_t   g_uart4_rx_count;       /* uart4 receive data number */
extern volatile uint16_t   g_uart4_rx_length;      /* uart4 receive data length */
extern volatile uint8_t  * gp_uart5_tx_address;    /* uart5 transmit data address */
extern volatile uint16_t   g_uart5_tx_count;       /* uart5 transmit data number */
extern volatile uint8_t  * gp_uart5_rx_address;    /* uart5 receive data address */
extern volatile uint16_t   g_uart5_rx_count;       /* uart5 receive data number */
extern volatile uint16_t   g_uart5_rx_length;      /* uart5 receive data length */
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
// extern uint8_t g_bleUartReciveData[];
// extern uint16_t g_bleUartReciveCount;
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: r_uart1_interrupt_receive
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
#if(0)
#pragma interrupt r_uart1_interrupt_receive(enable=false, channel=122, fpu=true, callt=false)
void r_uart1_interrupt_receive(void)
{
    uint8_t rx_data_8;
    uint16_t temp; 

    rx_data_8 = RLN31.LURDR.UINT16; 

    temp = g_uart1_rx_count;
    if (g_uart1_rx_length > temp)
    {
        *gp_uart1_rx_address = rx_data_8;
        gp_uart1_rx_address++;
        g_uart1_rx_count++;

        temp = g_uart1_rx_count;
        if (g_uart1_rx_length == temp)
        {
            r_uart1_callback_receiveend();
        }
    }
}
/***********************************************************************************************************************
* Function Name: r_uart1_interrupt_error
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
#pragma interrupt r_uart1_interrupt_error(enable=false, channel=123, fpu=true, callt=false)
void r_uart1_interrupt_error(void)
{
    uint8_t  err_type;
    *gp_uart1_rx_address = RLN31.LURDR.UINT16;
    err_type = (uint8_t)(RLN31.LEST);  
    RLN31.LEST &= (uint8_t) ~_UART_CLEAR_ERROR_FLAG;
    r_uart1_callback_error(err_type);
}
/***********************************************************************************************************************
* Function Name: r_uart1_interrupt_send
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
#pragma interrupt r_uart1_interrupt_send(enable=false, channel=121, fpu=true, callt=false)
void r_uart1_interrupt_send(void)
{
    if (g_uart1_tx_count > 0U)
    {
        RLN31.LUTDR.UINT16 = *gp_uart1_tx_address;
        gp_uart1_tx_address++;
        g_uart1_tx_count--;
    }
    else
    {
        r_uart1_callback_sendend();
    }
}
/***********************************************************************************************************************
* Function Name: r_uart1_callback_receiveend
* Description  : This function is a callback function called when UART1 completed data reception.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart1_callback_receiveend(void)
{
    /* Start user code. Do not edit comment generated here */
    // if(g_bleUartReciveCount < 1000)
    // {
    //     g_bleUartReciveCount += g_uart1_rx_count;
    //     R_UART1_Receive(&g_bleUartReciveData[g_bleUartReciveCount], 1);
    // }
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart1_callback_sendend
* Description  : This function is a callback function called when UART1 completed data transmission.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart1_callback_sendend(void)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart1_callback_error
* Description  : This function is a callback function called when UART1 receive error or event generation occures.
* Arguments    : err_type -
*                    error type
* Return Value : None
***********************************************************************************************************************/
static void r_uart1_callback_error(uint8_t err_type)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}
#endif
/***********************************************************************************************************************
* Function Name: r_uart4_interrupt_receive
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart4_interrupt_receive(enable=false, channel=234, fpu=true, callt=false)
void r_uart4_interrupt_receive(void)
{
    uint8_t rx_data_8;
    uint16_t temp; 

    rx_data_8 = RLN34.LURDR.UINT16; 
    if(g_debugUartReciveCount < 100)
    {
        g_debugUartReciveData[g_debugUartReciveCount++] = rx_data_8;
    }
}
/***********************************************************************************************************************
* Function Name: r_uart4_interrupt_error
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart4_interrupt_error(enable=false, channel=235, fpu=true, callt=false)
void r_uart4_interrupt_error(void)
{
    uint8_t  err_type;
    uint8_t rx_data_8;

    rx_data_8 = RLN34.LURDR.UINT16;
    err_type = (uint8_t)(RLN34.LEST);  
    RLN34.LEST &= (uint8_t) ~_UART_CLEAR_ERROR_FLAG;
    r_uart4_callback_error(err_type);
}
/***********************************************************************************************************************
* Function Name: r_uart4_interrupt_send
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart4_interrupt_send(enable=false, channel=233, fpu=true, callt=false)
void r_uart4_interrupt_send(void)
{
    if (g_uart4_tx_count > 0U)
    {
        RLN34.LUTDR.UINT16 = *gp_uart4_tx_address;
        gp_uart4_tx_address++;
        g_uart4_tx_count--;
    }
    else
    {
        r_uart4_callback_sendend();
    }
}
/***********************************************************************************************************************
* Function Name: r_uart4_callback_sendend
* Description  : This function is a callback function called when UART4 completed data transmission.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart4_callback_sendend(void)
{
    /* Start user code. Do not edit comment generated here */
    g_debugPrintEndFlag = 1;
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart4_callback_error
* Description  : This function is a callback function called when UART4 receive error or event generation occures.
* Arguments    : err_type -
*                    error type
* Return Value : None
***********************************************************************************************************************/
static void r_uart4_callback_error(uint8_t err_type)
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
* Function Name: r_uart5_interrupt_receive
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart5_interrupt_receive(enable=false, channel=238, fpu=true, callt=false)
void r_uart5_interrupt_receive(void)
{
    uint8_t rx_data_8;

    rx_data_8 = RLN35.LURDR.UINT16;
    MpuHalUartInterruptCallback(rx_data_8);
}
/***********************************************************************************************************************
* Function Name: r_uart5_interrupt_error
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart5_interrupt_error(enable=false, channel=239, fpu=true, callt=false)
void r_uart5_interrupt_error(void)
{
    uint8_t  err_type;
    uint8_t rx_data_8;

    rx_data_8 = RLN35.LURDR.UINT16;
    err_type = (uint8_t)(RLN35.LEST);  
    RLN35.LEST &= (uint8_t) ~_UART_CLEAR_ERROR_FLAG;
    r_uart5_callback_error(err_type);
}
/***********************************************************************************************************************
* Function Name: r_uart5_interrupt_send
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_uart5_interrupt_send(enable=false, channel=237, fpu=true, callt=false)
void r_uart5_interrupt_send(void)
{
    if (g_uart5_tx_count > 0U)
    {
        RLN35.LUTDR.UINT16 = *gp_uart5_tx_address;
        gp_uart5_tx_address++;
        g_uart5_tx_count--;
    }
    else
    {
        r_uart5_callback_sendend();
    }
}
/***********************************************************************************************************************
* Function Name: r_uart5_callback_sendend
* Description  : This function is a callback function called when UART5 completed data transmission.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_uart5_callback_sendend(void)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_uart5_callback_error
* Description  : This function is a callback function called when UART5 receive error or event generation occures.
* Arguments    : err_type -
*                    error type
* Return Value : None
***********************************************************************************************************************/
static void r_uart5_callback_error(uint8_t err_type)
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
