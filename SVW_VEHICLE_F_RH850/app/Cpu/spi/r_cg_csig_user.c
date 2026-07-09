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
* File Name    : r_cg_csig_user.c
* Version      : Code Generator for RH850/F1K V1.01.02.02 [08 May 2018]
* Device(s)    : R7F701583(LQFP144pin)
* Tool-Chain   : CCRH
* Description  : This file implements device driver for CSIG module.
* Creation Date: 2026/5/12
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
#include "r_cg_csig.h"
/* Start user code for include. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"
#include "mpuHal.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/

extern volatile uint16_t  g_csig0_tx_num;                        /* csig[#n1] send data count */
extern volatile uint16_t  g_csig0_rx_num;                        /* csig[#n1] receive data count */
extern volatile uint16_t  g_csig0_rx_total_num;                  /* csig0 receive data total times */
extern volatile uint16_t * gp_csig0_rx_address;                   /* csig[#n1] receive buffer address */
extern volatile uint16_t * gp_csig0_tx_address;                   /* csig[#n1] send buffer address */

extern volatile uint16_t  g_csig1_tx_num;                        /* csig[#n1] send data count */
extern volatile uint16_t  g_csig1_rx_num;                        /* csig[#n1] receive data count */
extern volatile uint16_t  g_csig1_rx_total_num;                  /* csig1 receive data total times */
extern volatile uint16_t * gp_csig1_rx_address;                   /* csig[#n1] receive buffer address */
extern volatile uint8_t * gp_csig1_tx_address;                   /* csig[#n1] send buffer address */
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: r_csig1_interrupt_receive
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_csig1_interrupt_receive(enable=false, channel=224, fpu=true, callt=false)
void r_csig1_interrupt_receive(void)
{
    uint8_t err_type;
    uint16_t temp;
    err_type = (CSIG1.STR0 & (_CSIG_CONSISTENCY_ERROR_DETECTED | _CSIG_PARITY_ERROR_DETECTED | _CSIG_OVERRUN_ERROR_DETECTED));
    CSIG1.STCR0 |= (_CSIG_CONSISTENCY_ERROR_CLEAR | _CSIG_PARITY_ERROR_CLEAR | _CSIG_OVERRUN_ERROR_CLEAR);
    if (err_type != 0U)
    {
        r_csig1_callback_error(err_type);
    }
    else
    {
        temp = CSIG1.RX0;
        MpuHal_SpiRevice(temp);
    }
}
/***********************************************************************************************************************
* Function Name: r_csig1_interrupt_error
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_csig1_interrupt_error(enable=false, channel=225, fpu=true, callt=false)
void r_csig1_interrupt_error(void)
{
    uint32_t err_type;
    err_type = (CSIG1.STR0 & (_CSIG_CONSISTENCY_ERROR_DETECTED | _CSIG_PARITY_ERROR_DETECTED | _CSIG_OVERRUN_ERROR_DETECTED));
    CSIG1.STCR0 |= (_CSIG_CONSISTENCY_ERROR_CLEAR | _CSIG_PARITY_ERROR_CLEAR | _CSIG_OVERRUN_ERROR_CLEAR);
    *gp_csig1_rx_address = CSIG1.RX0;
    if (err_type != 0U)
    {
        r_csig1_callback_error(err_type);
    }
}
/***********************************************************************************************************************
* Function Name: r_csig1_interrupt_send
* Description  : None
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
// #pragma interrupt r_csig1_interrupt_send(enable=false, channel=223, fpu=true, callt=false)
void r_csig1_interrupt_send(void)
{
    uint32_t regValue = CSIG1.TX0W & _CSIG_SETTING_INIT;
    if (g_csig1_tx_num > 0U)
    {
        regValue =  *gp_csig1_tx_address | regValue;
        CSIG1.TX0W = regValue;
        gp_csig1_tx_address++;
        g_csig1_tx_num--;
    }
    else
    {
	    CSIG1.TX0W = 0xFF;
        r_csig1_callback_sendend();
    }
}
/***********************************************************************************************************************
* Function Name: r_csig1_callback_sendend
* Description  : This function is a callback function when TCSS1 finishes transmission.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_csig1_callback_sendend(void)
{
    /* Start user code. Do not edit comment generated here */
    MpuHal_SpiTxCallback();
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_csig1_callback_error
* Description  : This function is a callback function when TCSS1 reception error occurs.
* Arguments    : err_type -
*                    error type value
* Return Value : None
***********************************************************************************************************************/
static void r_csig1_callback_error(uint32_t err_type)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}
/***********************************************************************************************************************
* Function Name: r_csig1_callback_receiveend
* Description  : This function is a callback function when TCSS1 finishes reception.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
static void r_csig1_callback_receiveend(void)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
