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
* File Name    : r_cg_csih_user.c
* Version      : Code Generator for RH850/F1K V1.01.02.02 [08 May 2018]
* Device(s)    : R7F701581(LQFP100pin)
* Tool-Chain   : CCRH
* Description  : This file implements device driver for CSIH module.
* Creation Date: 2026/7/22
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
#include "r_cg_csih.h"
/* Start user code for include. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/

extern volatile uint16_t  g_csih0_tx_num;                        /* csih0 send data count */
extern volatile uint16_t  g_csih0_rx_num;                        /* csih0 receive data count */
extern volatile uint16_t  g_csih0_rx_total_num;                  /* csih0 receive data total times */
extern volatile uint16_t * gp_csih0_rx_address;                   /* csih0 receive buffer address */
extern volatile uint16_t * gp_csih0_tx_address;                   /* csih0 send buffer address */

extern volatile uint16_t  g_csih1_tx_num;                        /* csih1 send data count */
extern volatile uint16_t  g_csih1_rx_num;                        /* csih1 receive data count */
extern volatile uint16_t  g_csih1_rx_total_num;                  /* csih1 receive data total times */
extern volatile uint16_t * gp_csih1_rx_address;                   /* csih1 receive buffer address */
extern volatile uint16_t * gp_csih1_tx_address;                   /* csih1 send buffer address */

extern volatile uint16_t  g_csih2_tx_num;                        /* csih2 send data count */
extern volatile uint16_t  g_csih2_rx_num;                        /* csih2 receive data count */
extern volatile uint16_t  g_csih2_rx_total_num;                  /* csih2 receive data total times */
extern volatile uint16_t * gp_csih2_rx_address;                   /* csih2 receive buffer address */
extern volatile uint16_t * gp_csih2_tx_address;                   /* csih2 send buffer address */

extern volatile uint16_t  g_csih3_tx_num;                        /* csih3 send data count */
extern volatile uint16_t  g_csih3_rx_num;                        /* csih3 receive data count */
extern volatile uint16_t  g_csih3_rx_total_num;                  /* csih3 receive data total times */
extern volatile uint16_t * gp_csih3_rx_address;                   /* csih3 receive buffer address */
extern volatile uint16_t * gp_csih3_tx_address;                   /* csih3 send buffer address */
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: r_csih2_interrupt_receive
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_csih2_interrupt_receive(enable=false, channel=133, fpu=true, callt=false)
void r_csih2_interrupt_receive(void)
{
    uint8_t err_type;
    uint16_t temp;
    err_type = (CSIH2.STR0 & (_CSIH_CONSISTENCY_ERROR_DETECTED | _CSIH_PARITY_ERROR_DETECTED | _CSIH_OVERRUN_ERROR_DETECTED));
    CSIH2.STCR0 |= (_CSIH_CONSISTENCY_ERROR_CLEAR | _CSIH_PARITY_ERROR_CLEAR | _CSIH_OVERRUN_ERROR_CLEAR);
    if (err_type != 0U)
    {
        r_csih2_callback_error(err_type);
    }
    else
    {
        temp = g_csih2_rx_total_num;
        if (temp > g_csih2_rx_num)
        {
            *gp_csih2_rx_address = CSIH2.RX0W;
            gp_csih2_rx_address++;
            g_csih2_rx_num++;
        }
    }
}
/***********************************************************************************************************************
* Function Name: r_csih2_interrupt_error
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_csih2_interrupt_error(enable=false, channel=134, fpu=true, callt=false)
void r_csih2_interrupt_error(void)
{
    uint32_t err_type;
    err_type = (CSIH2.STR0 & (_CSIH_CONSISTENCY_ERROR_DETECTED | _CSIH_PARITY_ERROR_DETECTED | _CSIH_OVERRUN_ERROR_DETECTED));
    CSIH2.STCR0 |= (_CSIH_CONSISTENCY_ERROR_CLEAR | _CSIH_PARITY_ERROR_CLEAR | _CSIH_OVERRUN_ERROR_CLEAR);
    *gp_csih2_rx_address = CSIH2.RX0W;
    if (err_type != 0U)
    {
        r_csih2_callback_error(err_type);
    }
}
/***********************************************************************************************************************
* Function Name: r_csih2_interrupt_send
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_csih2_interrupt_send(enable=false, channel=132, fpu=true, callt=false)
void r_csih2_interrupt_send(void)
{
    uint32_t regValue = CSIH2.TX0W & _CSIH_SLAVE_TRANSMIT_SETTING_INIT;
    if (g_csih2_tx_num > 0U)
    {
        regValue =  *gp_csih2_tx_address | regValue;
        CSIH2.TX0W = regValue;
        gp_csih2_tx_address++;
        g_csih2_tx_num--;
    }
}
/***********************************************************************************************************************
* Function Name: r_csih2_callback_error
* Description  : This function is a callback function when TCSS2 reception error occurs.
* Arguments    : err_type -
*                    error type value
* Return Value : None
***********************************************************************************************************************/
static void r_csih2_callback_error(uint32_t err_type)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
