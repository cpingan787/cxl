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
* File Name    : r_cg_csig.c
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

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
extern volatile uint32_t g_cg_sync_read;
volatile uint16_t  g_csig1_tx_num;                        /* csig1 transmit data number */
volatile uint16_t  g_csig1_rx_num;                        /* csig1 receive data number */
volatile uint16_t  g_csig1_rx_total_num;                  /* csig1 receive data total times */
volatile uint8_t * gp_csig1_tx_address;                   /* csig1 transmit buffer address */
volatile uint16_t * gp_csig1_rx_address;                   /* csig1 receive buffer address */
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: R_CSIG1_Create
* Description  : This function initializes the CSIG1 module.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_CSIG1_Create(void)
{
    uint32_t tmp_port;

    /* Disable CSIG1 operation */
    CSIG1.CTL0 = _CSIG_OPERATION_CLOCK_STOP;
    // /* Disable INTCSIG1IC operation and clear request */
    // INTC2.ICCSIG1IC.BIT.MKCSIG1IC = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIG1IC.BIT.RFCSIG1IC = _INT_REQUEST_NOT_OCCUR;
    // /* Disable INTCSIG1IR operation and clear request */
    // INTC2.ICCSIG1IR.BIT.MKCSIG1IR = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIG1IR.BIT.RFCSIG1IR = _INT_REQUEST_NOT_OCCUR;
    // /* Disable INTCSIG1IRE operation and clear request */
    // INTC2.ICCSIG1IRE.BIT.MKCSIG1IRE = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIG1IRE.BIT.RFCSIG1IRE = _INT_REQUEST_NOT_OCCUR;
    // /* Set CSIG1 interrupt(INTCSIG1IC) setting */
    // INTC2.ICCSIG1IC.BIT.TBCSIG1IC = _INT_TABLE_VECTOR;
    // INTC2.ICCSIG1IC.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set CSIG1 interrupt(INTCSIG1IR) setting */
    // INTC2.ICCSIG1IR.BIT.TBCSIG1IR = _INT_TABLE_VECTOR;
    // INTC2.ICCSIG1IR.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set CSIG1 interrupt(INTCSIG1IRE) setting */
    // INTC2.ICCSIG1IRE.BIT.TBCSIG1IRE = _INT_TABLE_VECTOR;
    // INTC2.ICCSIG1IRE.UINT16 &= _INT_PRIORITY_LOWEST;
    /* Set CSIG1 control setting */
#if 1
    CSIG1.CTL1 = _CSIG_CLOCK_INVERTING_LOW | _CSIG_INTERRUPT_TIMING_NORMAL | _CSIG_DATA_CONSISTENCY_CHECK_DISABLE | 
                 _CSIG_HANDSHAKE_DISABLE | _CSIG_SLAVE_SELECT_ENABLE;
        CSIG1.CTL2 = _CSIG1_SELECT_BASIC_CLOCK;            
#else
    CSIG1.CTL1 = _CSIG_CLOCK_INVERTING_LOW | _CSIG_INTERRUPT_TIMING_NORMAL | _CSIG_DATA_CONSISTENCY_CHECK_DISABLE | 
                _CSIG_NO_DELAY | _CSIG_HANDSHAKE_DISABLE | _CSIG_SLAVE_SELECT_DISABLE;
    CSIG1.CTL2 = _CSIG1_SELECT_BASIC_CLOCK | _CSIG1_BAUD_RATE;
#endif

    /* Set CSIG1 configuration setting */
    CSIG1.CFG0 = _CSIG_PARITY_NO | _CSIG_DATA_LENGTH_8 | _CSIG_DATA_DIRECTION_MSB | _CSIG_PHASE_SELECTION_TYPE4;
    /* Synchronization processing */
    g_cg_sync_read = CSIG1.CTL1;
    __syncp();
    /* Set CSIG1SC pin */
    PORT.PIBC11 &= _PORT_CLEAR_BIT10;
    PORT.PBDC11 &= _PORT_CLEAR_BIT10;
    PORT.PM11 |= _PORT_SET_BIT10;
    PORT.PMC11 &= _PORT_CLEAR_BIT10;
    PORT.PIPC11 &= _PORT_CLEAR_BIT10;
    tmp_port = PORT.PDSC11;
    PORT.PPCMD11 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT10);
    PORT.PDSC11 = (uint32_t) ~(tmp_port | _PORT_SET_BIT10);
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT10);
    PORT.PFC11 &= _PORT_CLEAR_BIT10;
    PORT.PIPC11 |= _PORT_SET_BIT10;
    PORT.PMC11 |= _PORT_SET_BIT10;
    /* Set CSIG1SSI pin */
#if 1
    PORT.PIBC11 &= _PORT_CLEAR_BIT8;
    PORT.PBDC11 &= _PORT_CLEAR_BIT8;
    PORT.PM11 |= _PORT_SET_BIT8;  
    PORT.PMC11 &= _PORT_CLEAR_BIT8;
    PORT.PFC11 &= _PORT_CLEAR_BIT8;
    PORT.PMC11 |= _PORT_SET_BIT8;
#endif
    /* Set CSIG1SO pin */
    PORT.PIBC11 &= _PORT_CLEAR_BIT9;
    PORT.PBDC11 &= _PORT_CLEAR_BIT9;
    PORT.PM11 |= _PORT_SET_BIT9;
    PORT.PMC11 &= _PORT_CLEAR_BIT9;
    PORT.PIPC11 &= _PORT_CLEAR_BIT9;
    tmp_port = PORT.PDSC11;
    PORT.PPCMD11 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT9);
    PORT.PDSC11 = (uint32_t) ~(tmp_port | _PORT_SET_BIT9);
    PORT.PDSC11 = (tmp_port | _PORT_SET_BIT9);
    PORT.PFC11 &= _PORT_CLEAR_BIT9;
    PORT.PFCAE11 &= _PORT_CLEAR_BIT9;
    PORT.PIPC11 |= _PORT_SET_BIT9;
    PORT.PMC11 |= _PORT_SET_BIT9; 
    /* Set CSIG1SI pin */
    PORT.PIBC11 &= _PORT_CLEAR_BIT11;
    PORT.PBDC11 &= _PORT_CLEAR_BIT11;
    PORT.PM11 |= _PORT_SET_BIT11;  
    PORT.PMC11 &= _PORT_CLEAR_BIT11;
    PORT.PFC11 &= _PORT_CLEAR_BIT11;
    PORT.PMC11 |= _PORT_SET_BIT11;  

}
/***********************************************************************************************************************
* Function Name: R_CSIG1_Start
* Description  : This function starts the CSIG1 module operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_CSIG1_Start(void)
{
    /* Enable CSIG1 operation */
    CSIG1.CTL0 = _CSIG_OPERATION_CLOCK_PROVIDE | _CSIG_TRANSMISSION_PERMIT | _CSIG_RECEPTION_PERMIT | 
                 _CSIG_DIRECTACCESS;
    // CSIG1.STCR0 = 0x0001;
    /* Clear CSIG1 interrupt request and enable operation */
    // INTC2.ICCSIG1IC.BIT.RFCSIG1IC = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICCSIG1IR.BIT.RFCSIG1IR = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICCSIG1IRE.BIT.RFCSIG1IRE = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICCSIG1IC.BIT.MKCSIG1IC = _INT_PROCESSING_ENABLED;
    // INTC2.ICCSIG1IR.BIT.MKCSIG1IR = _INT_PROCESSING_ENABLED;
    // INTC2.ICCSIG1IRE.BIT.MKCSIG1IRE = _INT_PROCESSING_ENABLED;
}
/***********************************************************************************************************************
* Function Name: R_CSIG1_Stop
* Description  : This function stops the CSIG1 module operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_CSIG1_Stop(void)
{
    /* Disable CSIG1 interrupt operation */
    // INTC2.ICCSIG1IC.BIT.MKCSIG1IC = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIG1IR.BIT.MKCSIG1IR = _INT_PROCESSING_DISABLED;
    // INTC2.ICCSIG1IRE.BIT.MKCSIG1IRE = _INT_PROCESSING_DISABLED;
    /* Disable CSIG1 operation */
    CSIG1.CTL0 &= (uint8_t) ~_CSIG_RECEPTION_PERMIT;
    CSIG1.CTL0 &= (uint8_t) ~_CSIG_TRANSMISSION_PERMIT;
    CSIG1.CTL0 &= (uint8_t) ~_CSIG_OPERATION_CLOCK_PROVIDE;
    /* Synchronization processing */
    g_cg_sync_read = CSIG1.CTL0;
    __syncp();
    /* Clear CSIG1 interrupt operation */
    // INTC2.ICCSIG1IC.BIT.RFCSIG1IC = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICCSIG1IR.BIT.RFCSIG1IR = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICCSIG1IRE.BIT.RFCSIG1IRE = _INT_REQUEST_NOT_OCCUR;
    /* Synchronization processing */
    g_cg_sync_read = INTC2.ICCSIG1IC.UINT16;
    __syncp();
}
/***********************************************************************************************************************
* Function Name: R_CSIG1_Receive
* Description  : This function receives CSIG1 data.
* Arguments    : rx_buf -
*                    receive buffer pointer
*                rx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/
MD_STATUS R_CSIG1_Receive(uint16_t* rx_buf, uint16_t rx_num)
{
    MD_STATUS status = MD_OK;
    if (rx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        g_csig1_rx_total_num = rx_num;
        gp_csig1_rx_address = rx_buf;
        g_csig1_tx_num = 0U;
    }

    return (status);
}
/***********************************************************************************************************************
* Function Name: R_CSIG1_Send
* Description  : This function sends CSIG1 data.
* Arguments    : tx_buf -
*                    send buffer pointer
*                tx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/
MD_STATUS R_CSIG1_Send(const uint8_t* tx_buf, uint16_t tx_num)
{
    MD_STATUS status = MD_OK;
    uint32_t regValue = _CSIG_SETTING_INIT;

    if (tx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        /* Set transmit setting */	
        gp_csig1_tx_address = (uint8_t*)tx_buf; 
        g_csig1_tx_num = tx_num; 
        regValue |= *gp_csig1_tx_address;
        /* Disable CSIG1 interrupt operation */
        INTC2.ICCSIG1IC.BIT.MKCSIG1IC = _INT_PROCESSING_DISABLED;
        /* Synchronization processing */
        g_cg_sync_read = INTC2.ICCSIG1IC.UINT16;
        __syncp(); 
        /* Set transmit data */	
        CSIG1.TX0W = regValue;
        gp_csig1_tx_address++;
        g_csig1_tx_num--; 
        /* Synchronization processing */
        g_cg_sync_read = CSIG1.CTL1;
        __syncp(); 
        /* Enable CSIG1 interrupt operation */
        INTC2.ICCSIG1IC.BIT.MKCSIG1IC = _INT_PROCESSING_ENABLED;
        /* Synchronization processing */
        g_cg_sync_read = INTC2.ICCSIG1IC.UINT16;
        __syncp(); 
    }

    return status;
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
