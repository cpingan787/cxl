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
* File Name    : r_cg_csih.c
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
extern volatile uint32_t g_cg_sync_read;
volatile uint16_t  g_csih2_tx_num;                        /* csih2 transmit data number */
volatile uint16_t  g_csih2_rx_num;                        /* csih2 receive data number */
volatile uint16_t  g_csih2_rx_total_num;                  /* csih2 receive data total times */
volatile uint16_t * gp_csih2_tx_address;                   /* csih2 transmit buffer address */
volatile uint16_t * gp_csih2_rx_address;                   /* csih2 receive buffer address */
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: R_CSIH2_Create
* Description  : This function initializes the CSIH2 module.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_CSIH2_Create(void)
{
    uint32_t tmp_port;

    /* Disable CSIH2 operation */
    CSIH2.CTL0 = _CSIH_OPERATION_CLOCK_STOP;
    /* Disable INTCSIH2IC operation and clear request */
    // INTC2.ICCSIH2IC.BIT.MKCSIH2IC = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIH2IC.BIT.RFCSIH2IC = _INT_REQUEST_NOT_OCCUR;
    // /* Disable INTCSIH2IR operation and clear request */
    // INTC2.ICCSIH2IR.BIT.MKCSIH2IR = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIH2IR.BIT.RFCSIH2IR = _INT_REQUEST_NOT_OCCUR;
    // /* Disable INTCSIH2IRE operation and clear request */
    // INTC2.ICCSIH2IRE.BIT.MKCSIH2IRE = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIH2IRE.BIT.RFCSIH2IRE = _INT_REQUEST_NOT_OCCUR;
    // /* Set CSIH2 interrupt(INTCSIH2IC) setting */
    // INTC2.ICCSIH2IC.BIT.TBCSIH2IC = _INT_TABLE_VECTOR;
    // INTC2.ICCSIH2IC.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set CSIH2 interrupt(INTCSIH2IR) setting */
    // INTC2.ICCSIH2IR.BIT.TBCSIH2IR = _INT_TABLE_VECTOR;
    // INTC2.ICCSIH2IR.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set CSIH2 interrupt(INTCSIH2IRE) setting */
    // INTC2.ICCSIH2IRE.BIT.TBCSIH2IRE = _INT_TABLE_VECTOR;
    // INTC2.ICCSIH2IRE.UINT16 &= _INT_PRIORITY_LOWEST;
    /* Set CSIH2 control setting */
    CSIH2.CTL1 = _CSIH_CLOCK_INVERTING_LOW | _CSIH_INTERRUPT_TIMING_NORMAL | _CSIH_DATA_CONSISTENCY_CHECK_DISABLE | 
                 _CSIH_CHIPSELECT_SIGNAL_HOLD_ACTIVE | _CSIH_HANDSHAKE_DISABLE | _CSIH_SLAVE_SELECT_DISABLE;
    CSIH2.CTL2 = _CSIH2_SELECT_BASIC_CLOCK;
    /* Set CSIH2 configuration setting */
    CSIH2.CFG0 = _CSIH_PARITY_NO | _CSIH_DATA_LENGTH_8 | _CSIH_DATA_DIRECTION_MSB | _CSIHn_SLAVE_PHASE_SELECTION_TYPE4;
    /* Synchronization processing */
    g_cg_sync_read = CSIH2.CTL1;
    __syncp();	
    /* Set CSIH2SC pin */
    PORT.PIBC11 &= _PORT_CLEAR_BIT3;
    PORT.PBDC11 &= _PORT_CLEAR_BIT3;
    PORT.PM11 |= _PORT_SET_BIT3;
    PORT.PMC11 &= _PORT_CLEAR_BIT3;
    PORT.PIPC11 &= _PORT_CLEAR_BIT3;
    tmp_port = PORT.PDSC11;
    PORT.PPCMD11 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT3);
    PORT.PDSC11 = (uint32_t) ~(tmp_port | _PORT_SET_BIT3);
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT3);
    PORT.PFC11 &= _PORT_CLEAR_BIT3;
    PORT.PFCE11 &= _PORT_CLEAR_BIT3;
    PORT.PFCAE11 &= _PORT_CLEAR_BIT3;
    PORT.PIPC11 |= _PORT_SET_BIT3;
    PORT.PMC11 |= _PORT_SET_BIT3;
    /* Set CSIH2SSI pin */
    PORT.PIBC11 &= _PORT_CLEAR_BIT1;
    PORT.PBDC11 &= _PORT_CLEAR_BIT1;
    PORT.PM11 |= _PORT_SET_BIT1;  
    PORT.PMC11 &= _PORT_CLEAR_BIT1;
    PORT.PFC11 &= _PORT_CLEAR_BIT1;
    PORT.PFCE11 &= _PORT_CLEAR_BIT1;
    PORT.PMC11 |= _PORT_SET_BIT1;  
    /* Set CSIH2SO pin */
    PORT.PIBC11 &= _PORT_CLEAR_BIT2;
    PORT.PBDC11 &= _PORT_CLEAR_BIT2;
    PORT.PM11 |= _PORT_SET_BIT2;
    PORT.PMC11 &= _PORT_CLEAR_BIT2;
    PORT.PIPC11 &= _PORT_CLEAR_BIT2;
    tmp_port = PORT.PDSC11;
    PORT.PPCMD11 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT2);
    PORT.PDSC11 = (uint32_t) ~(tmp_port | _PORT_SET_BIT2);
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT2);
    PORT.PFC11 &= _PORT_CLEAR_BIT2;
    PORT.PFCE11 &= _PORT_CLEAR_BIT2;
    PORT.PFCAE11 &= _PORT_CLEAR_BIT2;
    PORT.PIPC11 |= _PORT_SET_BIT2;
    PORT.PMC11 |= _PORT_SET_BIT2; 
    /* Set CSIH2SI pin */
    PORT.PIBC11 &= _PORT_CLEAR_BIT4;
    PORT.PBDC11 &= _PORT_CLEAR_BIT4;
    PORT.PM11 |= _PORT_SET_BIT4;  
    PORT.PMC11 &= _PORT_CLEAR_BIT4;
    PORT.PFC11 &= _PORT_CLEAR_BIT4;
    PORT.PFCE11 &= _PORT_CLEAR_BIT4;
    PORT.PMC11 |= _PORT_SET_BIT4;

}
/***********************************************************************************************************************
* Function Name: R_CSIH2_Start
* Description  : This function starts the CSIH2 module operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_CSIH2_Start(void)
{
    /* Enable CSIH2 operation */
    CSIH2.CTL0 = _CSIH_OPERATION_CLOCK_PROVIDE | _CSIH_TRANSMISSION_PERMIT | _CSIH_RECEPTION_PERMIT | 
                 _CSIH_DIRECTACCESS;
    /* Clear CSIH2 interrupt request and enable operation */
    INTC2.ICCSIH2IC.BIT.RFCSIH2IC = _INT_REQUEST_NOT_OCCUR;
    INTC2.ICCSIH2IR.BIT.RFCSIH2IR = _INT_REQUEST_NOT_OCCUR;
    INTC2.ICCSIH2IRE.BIT.RFCSIH2IRE = _INT_REQUEST_NOT_OCCUR;
    
    INTC2.ICCSIH2IC.BIT.MKCSIH2IC = _INT_PROCESSING_DISABLED;
    INTC2.ICCSIH2IR.BIT.MKCSIH2IR = _INT_PROCESSING_DISABLED;
    INTC2.ICCSIH2IRE.BIT.MKCSIH2IRE = _INT_PROCESSING_ENABLED; 
    /* ================================================== */
}
/***********************************************************************************************************************
* Function Name: R_CSIH2_Stop
* Description  : This function stops the CSIH2 module operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_CSIH2_Stop(void)
{
    /* Disable CSIH2 interrupt operation */
    INTC2.ICCSIH2IC.BIT.MKCSIH2IC = _INT_PROCESSING_DISABLED;
    INTC2.ICCSIH2IR.BIT.MKCSIH2IR = _INT_PROCESSING_DISABLED;
    INTC2.ICCSIH2IRE.BIT.MKCSIH2IRE = _INT_PROCESSING_DISABLED;
    /* Disable CSIH2 operation */
    CSIH2.CTL0 &= (uint8_t) ~_CSIH_RECEPTION_PERMIT;
    CSIH2.CTL0 &= (uint8_t) ~_CSIH_TRANSMISSION_PERMIT;
    CSIH2.CTL0 &= (uint8_t) ~_CSIH_OPERATION_CLOCK_PROVIDE;
    /* Synchronization processing */
    g_cg_sync_read = CSIH2.CTL0;
    __syncp();
    /* Clear CSIH2 interrupt request */
    INTC2.ICCSIH2IC.BIT.RFCSIH2IC = _INT_REQUEST_NOT_OCCUR;
    INTC2.ICCSIH2IR.BIT.RFCSIH2IR = _INT_REQUEST_NOT_OCCUR;
    INTC2.ICCSIH2IRE.BIT.RFCSIH2IRE = _INT_REQUEST_NOT_OCCUR;
    /* Synchronization processing */
    g_cg_sync_read = INTC2.ICCSIH2IC.UINT16;
    __syncp();
}
/***********************************************************************************************************************
* Function Name: R_CSIH2_Slave_Receive
* Description  : This function receives CSIH2 data.
* Arguments    : rx_buf -
*                    receive buffer pointer
*                rx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/
MD_STATUS R_CSIH2_Slave_Receive(uint16_t* rx_buf, uint16_t rx_num)
{
    MD_STATUS status = MD_OK;
    if (rx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        g_csih2_rx_total_num = rx_num;
        gp_csih2_rx_address = rx_buf;
        g_csih2_tx_num = 0U; 
    }

    return (status);
}
/***********************************************************************************************************************
* Function Name: R_CSIH2_Slave_Send
* Description  : This function sends CSIH2 data.
* Arguments    : tx_buf -
*                    send buffer pointer
*                tx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/
MD_STATUS R_CSIH2_Slave_Send(const uint16_t* tx_buf, uint16_t tx_num)
{
    MD_STATUS status = MD_OK;
    uint32_t regValue = _CSIH_SLAVE_TRANSMIT_SETTING_INIT;

    if (tx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        /* Set transmit setting */	
        gp_csih2_tx_address = (uint16_t*)tx_buf; 
        g_csih2_tx_num = tx_num; 
        regValue |= *gp_csih2_tx_address;
        /* Disable INTCSIH2IC operation */
        INTC2.ICCSIH2IC.BIT.MKCSIH2IC = _INT_PROCESSING_DISABLED;
        /* Synchronization processing */
        g_cg_sync_read = INTC2.ICCSIH2IC.UINT16;
        __syncp(); 
        /* Set transmit data */	
        CSIH2.TX0W = regValue;
        gp_csih2_tx_address++;
        g_csih2_tx_num--; 
        /* Synchronization processing */
        g_cg_sync_read = CSIH2.CTL1;
        __syncp(); 
        /* Enable INTCSIH2IC operation */
        INTC2.ICCSIH2IC.BIT.MKCSIH2IC = _INT_PROCESSING_ENABLED;
        /* Synchronization processing */
        g_cg_sync_read = INTC2.ICCSIH2IC.UINT16;
        __syncp(); 
    }

    return status;
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
