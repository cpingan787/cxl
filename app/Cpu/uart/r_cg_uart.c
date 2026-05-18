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
* File Name    : r_cg_uart.c
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
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
volatile uint32_t g_cg_sync_read;
// volatile uint8_t  * gp_uart1_tx_address;       /* uart1 transmit data address */
// volatile uint16_t   g_uart1_tx_count;          /* uart1 transmit data number */
// volatile uint8_t  * gp_uart1_rx_address;       /* uart1 receive data address */
// volatile uint16_t   g_uart1_rx_count;          /* uart1 receive data number */
// volatile uint16_t   g_uart1_rx_length;         /* uart1 receive data length */
volatile uint8_t  * gp_uart4_tx_address;       /* uart4 transmit data address */
volatile uint16_t   g_uart4_tx_count;          /* uart4 transmit data number */
volatile uint8_t  * gp_uart4_rx_address;       /* uart4 receive data address */
volatile uint16_t   g_uart4_rx_count;          /* uart4 receive data number */
volatile uint16_t   g_uart4_rx_length;         /* uart4 receive data length */
volatile uint8_t  * gp_uart5_tx_address;       /* uart5 transmit data address */
volatile uint16_t   g_uart5_tx_count;          /* uart5 transmit data number */
volatile uint8_t  * gp_uart5_rx_address;       /* uart5 receive data address */
volatile uint16_t   g_uart5_rx_count;          /* uart5 receive data number */
volatile uint16_t   g_uart5_rx_length;         /* uart5 receive data length */
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: R_UART1_Create
* Description  : This function initializes the UART1 module.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
#if(0)
void R_UART1_Create(void)
{
    /* Set LIN reset mode */
    RLN31.LCUC = _UART_LIN_RESET_MODE_CAUSED;
    /* Disable ICRLIN31UR0 operation and clear request */
    INTC2.ICRLIN31UR0.BIT.MKRLIN31UR0 = _INT_PROCESSING_DISABLED;
    INTC2.ICRLIN31UR0.BIT.RFRLIN31UR0 = _INT_REQUEST_NOT_OCCUR;
    /* Disable ICRLIN31UR1 operation and clear request */
    INTC2.ICRLIN31UR1.BIT.MKRLIN31UR1 = _INT_PROCESSING_DISABLED;
    INTC2.ICRLIN31UR1.BIT.RFRLIN31UR1 = _INT_REQUEST_NOT_OCCUR;
    /* Disable ICRLIN31UR2 operation and clear request */
    INTC2.ICRLIN31UR2.BIT.MKRLIN31UR2 = _INT_PROCESSING_DISABLED;
    INTC2.ICRLIN31UR2.BIT.RFRLIN31UR2 = _INT_REQUEST_NOT_OCCUR;
    /* Set ICRLIN31UR0 table method */
    INTC2.ICRLIN31UR0.BIT.TBRLIN31UR0 = _INT_TABLE_VECTOR;
    /* Set ICRLIN31UR0 priority */
    INTC2.ICRLIN31UR0.UINT16 &= _INT_PRIORITY_LOWEST;
    /* Set ICRLIN31UR1 table method */
    INTC2.ICRLIN31UR1.BIT.TBRLIN31UR1 = _INT_TABLE_VECTOR;
    /* Set ICRLIN31UR1 priority */
    INTC2.ICRLIN31UR1.UINT16 &= _INT_PRIORITY_LOWEST;
    /* Set ICRLIN31UR2 table method */
    INTC2.ICRLIN31UR2.BIT.TBRLIN31UR2 = _INT_TABLE_VECTOR;
    /* Set ICRLIN31UR2 priority */
    INTC2.ICRLIN31UR2.UINT16 &= _INT_PRIORITY_LOWEST;
    /* Set UART1 setting */
    RLN31.LWBR = _UART_11_SAMPLING | _UART_PRESCALER_CLOCK_SELECT_8;
    RLN31.LBRP01.UINT16 = _UART1_BAUD_RATE_PRESCALER;
    RLN31.LMD = _UART_NOISE_FILTER_ENABLED | _UART_MODE_SELECT;
    RLN31.LEDE = _UART_FRAMING_ERROR_DETECTED | _UART_OVERRUN_ERROR_DETECTED | _UART_BIT_ERROR_DETECTED;
    RLN31.LBFC = _UART_TRANSMISSION_NORMAL | _UART_RECEPTION_NORMAL | _UART_PARITY_PROHIBITED | _UART_STOP_BIT_1 | 
                 _UART_LSB | _UART_LENGTH_8;
    RLN31.LCUC = _UART_LIN_RESET_MODE_CANCELED;
    /* Synchronization processing */
    g_cg_sync_read = RLN31.LCUC;
    __syncp(); 
    /* Set RLIN31RX pin */
    PORT.PIBC10 &= _PORT_CLEAR_BIT11;
    PORT.PBDC10 &= _PORT_CLEAR_BIT11;
    PORT.PM10 |= _PORT_SET_BIT11;  
    PORT.PMC10 &= _PORT_CLEAR_BIT11;
    PORT.PFC10 &= _PORT_CLEAR_BIT11;
    PORT.PFCE10 |= _PORT_SET_BIT11;  
    PORT.PFCAE10 |= _PORT_SET_BIT11;  
    PORT.PMC10 |= _PORT_SET_BIT11;  
    /* Set RLIN31TX pin */
    PORT.PIBC10 &= _PORT_CLEAR_BIT12;
    PORT.PBDC10 &= _PORT_CLEAR_BIT12;
    PORT.PM10 |= _PORT_SET_BIT12;  
    PORT.PMC10 &= _PORT_CLEAR_BIT12;
    PORT.PFC10 |= _PORT_SET_BIT12;  
    PORT.PFCE10 &= _PORT_CLEAR_BIT12;
    PORT.PMC10 |= _PORT_SET_BIT12;  
    PORT.PM10 &= _PORT_CLEAR_BIT12;
}
/***********************************************************************************************************************
* Function Name: R_UART1_Start
* Description  : This function starts the UART1 operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART1_Start(void)
{
    /* Enable UART1 operation */
    RLN31.LUOER |= _UART_RECEPTION_ENABLED | _UART_TRABSMISSION_ENABLED;
    /* Clear ICRLIN31UR0 interrupt request and enable operation */
    INTC2.ICRLIN31UR0.BIT.RFRLIN31UR0 = _INT_REQUEST_NOT_OCCUR;
    INTC2.ICRLIN31UR0.BIT.MKRLIN31UR0 = _INT_PROCESSING_ENABLED;    
    /* Clear ICRLIN31UR1 interrupt request and enable operation */
    INTC2.ICRLIN31UR1.BIT.RFRLIN31UR1 = _INT_REQUEST_NOT_OCCUR;
    INTC2.ICRLIN31UR1.BIT.MKRLIN31UR1 = _INT_PROCESSING_ENABLED;    
    /* Clear ICRLIN31UR2 interrupt request and enable operation */
    INTC2.ICRLIN31UR2.BIT.RFRLIN31UR2 = _INT_REQUEST_NOT_OCCUR;
    INTC2.ICRLIN31UR2.BIT.MKRLIN31UR2 = _INT_PROCESSING_ENABLED;    
}
/***********************************************************************************************************************
* Function Name: R_UART1_Stop
* Description  : This function stops the UART1 operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART1_Stop(void)
{
    /* Disable ICRLIN31UR0 operation */
    INTC2.ICRLIN31UR0.BIT.MKRLIN31UR0 = _INT_PROCESSING_DISABLED;
    /* Disable ICRLIN31UR1 operation */
    INTC2.ICRLIN31UR1.BIT.MKRLIN31UR1 = _INT_PROCESSING_DISABLED;
    /* Disable ICRLIN31UR2 operation */
    INTC2.ICRLIN31UR2.BIT.MKRLIN31UR2 = _INT_PROCESSING_DISABLED;
    /* Disable UART1 operation */
    RLN31.LUOER &= (uint8_t) ~(_UART_RECEPTION_ENABLED | _UART_TRABSMISSION_ENABLED);
    /* Synchronization processing */
    g_cg_sync_read = RLN31.LCUC;
    __syncp();
    /* Clear ICRLIN31UR0 request */
    INTC2.ICRLIN31UR0.BIT.RFRLIN31UR0 = _INT_REQUEST_NOT_OCCUR;
    /* Clear ICRLIN31UR1 request */
    INTC2.ICRLIN31UR1.BIT.RFRLIN31UR1 = _INT_REQUEST_NOT_OCCUR;
    /* Clear ICRLIN31UR2 request */
    INTC2.ICRLIN31UR2.BIT.RFRLIN31UR2 = _INT_REQUEST_NOT_OCCUR;
    /* Synchronization processing */
    g_cg_sync_read = RLN31.LCUC;
    __syncp();
}
/***********************************************************************************************************************
* Function Name: R_UART1_Receive
* Description  : This function receives UART1 data.
* Arguments    : rx_buf -
*                    receive buffer pointer
*                rx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/
MD_STATUS R_UART1_Receive(uint8_t * const rx_buf, uint16_t rx_num)
{
    MD_STATUS status = MD_OK;

    if (rx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        if ((RLN31.LST & _UART_RECEPTION_OPERATED) == 0U)
        {
            g_uart1_rx_count = 0U;
            g_uart1_rx_length = rx_num;
            gp_uart1_rx_address = rx_buf;
        }
    }

    return (status);
}
/***********************************************************************************************************************
* Function Name: R_UART1_Send
* Description  : This function sends UART1 data.
* Arguments    : tx_buf -
*                    transfer buffer pointer
*                tx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR or MD_ERROR
***********************************************************************************************************************/
MD_STATUS R_UART1_Send(uint8_t * const tx_buf, uint16_t tx_num)
{
    MD_STATUS status = MD_OK;

    if (tx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        gp_uart1_tx_address = tx_buf;
        g_uart1_tx_count = tx_num;       

        if ((RLN31.LST & _UART_TRANSMISSION_OPERATED) == 0U)
        {
            /* Clear ICRLIN31UR0 request and Disable operation */
            INTC2.ICRLIN31UR0.BIT.MKRLIN31UR0 = _INT_PROCESSING_DISABLED;
            INTC2.ICRLIN31UR0.BIT.RFRLIN31UR0 = _INT_REQUEST_NOT_OCCUR;
            RLN31.LUTDR.UINT16 = *gp_uart1_tx_address;
            gp_uart1_tx_address++;
            g_uart1_tx_count--;
            /* Clear ICRLIN31UR0 requestt and enable operation */
            INTC2.ICRLIN31UR0.BIT.RFRLIN31UR0 = _INT_REQUEST_NOT_OCCUR;
            INTC2.ICRLIN31UR0.BIT.MKRLIN31UR0 = _INT_PROCESSING_ENABLED;	
        }
        else
        {
            status = MD_ERROR;
        }
    }
    return (status);
}
#endif
/***********************************************************************************************************************
* Function Name: R_UART4_Create
* Description  : This function initializes the UART4 module.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART4_Create(void)
{
    /* Set LIN reset mode */
    RLN34.LCUC = _UART_LIN_RESET_MODE_CAUSED;
    /* Disable ICRLIN34UR0 operation and clear request */
    // INTC2.ICRLIN34UR0.BIT.MKRLIN34UR0 = _INT_PROCESSING_DISABLED;
    // INTC2.ICRLIN34UR0.BIT.RFRLIN34UR0 = _INT_REQUEST_NOT_OCCUR;
    // /* Disable ICRLIN34UR1 operation and clear request */
    // INTC2.ICRLIN34UR1.BIT.MKRLIN34UR1 = _INT_PROCESSING_DISABLED;
    // INTC2.ICRLIN34UR1.BIT.RFRLIN34UR1 = _INT_REQUEST_NOT_OCCUR;
    // /* Disable ICRLIN34UR2 operation and clear request */
    // INTC2.ICRLIN34UR2.BIT.MKRLIN34UR2 = _INT_PROCESSING_DISABLED;
    // INTC2.ICRLIN34UR2.BIT.RFRLIN34UR2 = _INT_REQUEST_NOT_OCCUR;
    // /* Set ICRLIN34UR0 table method */
    // INTC2.ICRLIN34UR0.BIT.TBRLIN34UR0 = _INT_DIRECT_VECTOR;
    // /* Set ICRLIN34UR0 priority */
    // INTC2.ICRLIN34UR0.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set ICRLIN34UR1 table method */
    // INTC2.ICRLIN34UR1.BIT.TBRLIN34UR1 = _INT_DIRECT_VECTOR;
    // /* Set ICRLIN34UR1 priority */
    // INTC2.ICRLIN34UR1.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set ICRLIN34UR2 table method */
    // INTC2.ICRLIN34UR2.BIT.TBRLIN34UR2 = _INT_DIRECT_VECTOR;
    // /* Set ICRLIN34UR2 priority */
    // INTC2.ICRLIN34UR2.UINT16 &= _INT_PRIORITY_LOWEST;
    /* Set UART4 setting */
    RLN34.LWBR = _UART_6_SAMPLING | _UART_PRESCALER_CLOCK_SELECT_1;
    RLN34.LBRP01.UINT16 = _UART4_BAUD_RATE_PRESCALER;
    RLN34.LMD = _UART_NOISE_FILTER_ENABLED | _UART_MODE_SELECT;
    RLN34.LEDE = _UART_FRAMING_ERROR_DETECTED | _UART_OVERRUN_ERROR_DETECTED | _UART_BIT_ERROR_DETECTED;
    RLN34.LBFC = _UART_TRANSMISSION_NORMAL | _UART_RECEPTION_NORMAL | _UART_PARITY_PROHIBITED | _UART_STOP_BIT_1 | 
                 _UART_LSB | _UART_LENGTH_8;
    RLN34.LCUC = _UART_LIN_RESET_MODE_CANCELED;
    /* Synchronization processing */
    g_cg_sync_read = RLN34.LCUC;
    __syncp(); 
    /* Set RLIN34RX pin */
    PORT.PIBC12 &= _PORT_CLEAR_BIT1;
    PORT.PBDC12 &= _PORT_CLEAR_BIT1;
    PORT.PM12 |= _PORT_SET_BIT1;  
    PORT.PMC12 &= _PORT_CLEAR_BIT1;
    PORT.PFC12 &= _PORT_CLEAR_BIT1;
    PORT.PFCE12 |= _PORT_SET_BIT1;  
    PORT.PFCAE12 |= _PORT_SET_BIT1;  
    PORT.PMC12 |= _PORT_SET_BIT1;  
    /* Set RLIN34TX pin */
    PORT.PIBC12 &= _PORT_CLEAR_BIT2;
    PORT.PBDC12 &= _PORT_CLEAR_BIT2;
    PORT.PM12 |= _PORT_SET_BIT2;  
    PORT.PMC12 &= _PORT_CLEAR_BIT2;
    PORT.PFC12 &= _PORT_CLEAR_BIT2;
    PORT.PFCE12 &= _PORT_CLEAR_BIT2;
    PORT.PMC12 |= _PORT_SET_BIT2;  
    PORT.PM12 &= _PORT_CLEAR_BIT2;
}
/***********************************************************************************************************************
* Function Name: R_UART4_Start
* Description  : This function starts the UART4 operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART4_Start(void)
{
    /* Enable UART4 operation */
    RLN34.LUOER |= _UART_RECEPTION_ENABLED | _UART_TRABSMISSION_ENABLED;
    // /* Clear ICRLIN34UR0 interrupt request and enable operation */
    // INTC2.ICRLIN34UR0.BIT.RFRLIN34UR0 = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICRLIN34UR0.BIT.MKRLIN34UR0 = _INT_PROCESSING_ENABLED;    
    // /* Clear ICRLIN34UR1 interrupt request and enable operation */
    // INTC2.ICRLIN34UR1.BIT.RFRLIN34UR1 = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICRLIN34UR1.BIT.MKRLIN34UR1 = _INT_PROCESSING_ENABLED;    
    // /* Clear ICRLIN34UR2 interrupt request and enable operation */
    // INTC2.ICRLIN34UR2.BIT.RFRLIN34UR2 = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICRLIN34UR2.BIT.MKRLIN34UR2 = _INT_PROCESSING_ENABLED;    
}
/***********************************************************************************************************************
* Function Name: R_UART4_Stop
* Description  : This function stops the UART4 operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART4_Stop(void)
{
    /* Disable ICRLIN34UR0 operation */
    INTC2.ICRLIN34UR0.BIT.MKRLIN34UR0 = _INT_PROCESSING_DISABLED;
    /* Disable ICRLIN34UR1 operation */
    INTC2.ICRLIN34UR1.BIT.MKRLIN34UR1 = _INT_PROCESSING_DISABLED;
    /* Disable ICRLIN34UR2 operation */
    INTC2.ICRLIN34UR2.BIT.MKRLIN34UR2 = _INT_PROCESSING_DISABLED;
    /* Disable UART4 operation */
    RLN34.LUOER &= (uint8_t) ~(_UART_RECEPTION_ENABLED | _UART_TRABSMISSION_ENABLED);
    /* Synchronization processing */
    g_cg_sync_read = RLN34.LCUC;
    __syncp();
    /* Clear ICRLIN34UR0 request */
    INTC2.ICRLIN34UR0.BIT.RFRLIN34UR0 = _INT_REQUEST_NOT_OCCUR;
    /* Clear ICRLIN34UR1 request */
    INTC2.ICRLIN34UR1.BIT.RFRLIN34UR1 = _INT_REQUEST_NOT_OCCUR;
    /* Clear ICRLIN34UR2 request */
    INTC2.ICRLIN34UR2.BIT.RFRLIN34UR2 = _INT_REQUEST_NOT_OCCUR;
    PORT.PMC12 &= _PORT_CLEAR_BIT1;
    PORT.PIBC12 &= _PORT_CLEAR_BIT1;
    PORT.PBDC12 &= _PORT_CLEAR_BIT1;
    PORT.PFC12 &= _PORT_CLEAR_BIT1;
    PORT.PFCE12 &= _PORT_CLEAR_BIT1;
    PORT.PFCAE12 &= _PORT_CLEAR_BIT1;
    PORT.PM12 |= _PORT_SET_BIT1;

    PORT.PMC12 &= _PORT_CLEAR_BIT2;
    PORT.PIBC12 &= _PORT_CLEAR_BIT2;
    PORT.PBDC12 &= _PORT_CLEAR_BIT2;
    PORT.PFC12 &= _PORT_CLEAR_BIT2;
    PORT.PFCE12 &= _PORT_CLEAR_BIT2;
    PORT.PFCAE12 &= _PORT_CLEAR_BIT2;
    PORT.P12 |= _PORT_SET_BIT2;
    PORT.PM12 &= _PORT_CLEAR_BIT2;
    /* Synchronization processing */
    g_cg_sync_read = RLN34.LCUC;
    __syncp();
}
/***********************************************************************************************************************
* Function Name: R_UART4_Receive
* Description  : This function receives UART4 data.
* Arguments    : rx_buf -
*                    receive buffer pointer
*                rx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/
MD_STATUS R_UART4_Receive(uint8_t * const rx_buf, uint16_t rx_num)
{
    MD_STATUS status = MD_OK;

    if (rx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        if ((RLN34.LST & _UART_RECEPTION_OPERATED) == 0U)
        {
            g_uart4_rx_count = 0U;
            g_uart4_rx_length = rx_num;
            gp_uart4_rx_address = rx_buf;
        }
    }

    return (status);
}
/***********************************************************************************************************************
* Function Name: R_UART4_Send
* Description  : This function sends UART4 data.
* Arguments    : tx_buf -
*                    transfer buffer pointer
*                tx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR or MD_ERROR
***********************************************************************************************************************/
MD_STATUS R_UART4_Send(uint8_t * const tx_buf, uint16_t tx_num)
{
    MD_STATUS status = MD_OK;

    if (tx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        gp_uart4_tx_address = tx_buf;
        g_uart4_tx_count = tx_num;       

        if ((RLN34.LST & _UART_TRANSMISSION_OPERATED) == 0U)
        {
            /* Clear ICRLIN34UR0 request and Disable operation */
            INTC2.ICRLIN34UR0.BIT.MKRLIN34UR0 = _INT_PROCESSING_DISABLED;
            INTC2.ICRLIN34UR0.BIT.RFRLIN34UR0 = _INT_REQUEST_NOT_OCCUR;
            RLN34.LUTDR.UINT16 = *gp_uart4_tx_address;
            gp_uart4_tx_address++;
            g_uart4_tx_count--;
            /* Clear ICRLIN34UR0 requestt and enable operation */
            INTC2.ICRLIN34UR0.BIT.RFRLIN34UR0 = _INT_REQUEST_NOT_OCCUR;
            INTC2.ICRLIN34UR0.BIT.MKRLIN34UR0 = _INT_PROCESSING_ENABLED;	
        }
        else
        {
            status = MD_ERROR;
        }
    }
    return (status);
}
/***********************************************************************************************************************
* Function Name: R_UART5_Create
* Description  : This function initializes the UART5 module.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART5_Create(void)
{
    /* Set LIN reset mode */
    RLN35.LCUC = _UART_LIN_RESET_MODE_CAUSED;
    // /* Disable ICRLIN35UR0 operation and clear request */
    // INTC2.ICRLIN35UR0.BIT.MKRLIN35UR0 = _INT_PROCESSING_DISABLED;
    // INTC2.ICRLIN35UR0.BIT.RFRLIN35UR0 = _INT_REQUEST_NOT_OCCUR;
    // /* Disable ICRLIN35UR1 operation and clear request */
    // INTC2.ICRLIN35UR1.BIT.MKRLIN35UR1 = _INT_PROCESSING_DISABLED;
    // INTC2.ICRLIN35UR1.BIT.RFRLIN35UR1 = _INT_REQUEST_NOT_OCCUR;
    // /* Disable ICRLIN35UR2 operation and clear request */
    // INTC2.ICRLIN35UR2.BIT.MKRLIN35UR2 = _INT_PROCESSING_DISABLED;
    // INTC2.ICRLIN35UR2.BIT.RFRLIN35UR2 = _INT_REQUEST_NOT_OCCUR;
    // /* Set ICRLIN35UR0 table method */
    // INTC2.ICRLIN35UR0.BIT.TBRLIN35UR0 = _INT_TABLE_VECTOR;
    // /* Set ICRLIN35UR0 priority */
    // INTC2.ICRLIN35UR0.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set ICRLIN35UR1 table method */
    // INTC2.ICRLIN35UR1.BIT.TBRLIN35UR1 = _INT_TABLE_VECTOR;
    // /* Set ICRLIN35UR1 priority */
    // INTC2.ICRLIN35UR1.UINT16 &= _INT_PRIORITY_LOWEST;
    // /* Set ICRLIN35UR2 table method */
    // INTC2.ICRLIN35UR2.BIT.TBRLIN35UR2 = _INT_TABLE_VECTOR;
    // /* Set ICRLIN35UR2 priority */
    // INTC2.ICRLIN35UR2.UINT16 &= _INT_PRIORITY_LOWEST;
    /* Set UART5 setting */
    RLN35.LWBR = _UART_6_SAMPLING | _UART_PRESCALER_CLOCK_SELECT_2;
    RLN35.LBRP01.UINT16 = _UART5_BAUD_RATE_PRESCALER;
    RLN35.LMD = _UART_NOISE_FILTER_ENABLED | _UART_MODE_SELECT;
    RLN35.LEDE = _UART_FRAMING_ERROR_DETECTED | _UART_OVERRUN_ERROR_DETECTED;   //  | _UART_BIT_ERROR_DETECTED
    RLN35.LBFC = _UART_TRANSMISSION_NORMAL | _UART_RECEPTION_NORMAL | _UART_PARITY_PROHIBITED | _UART_STOP_BIT_1 | 
                 _UART_LSB | _UART_LENGTH_8;
    RLN35.LCUC = _UART_LIN_RESET_MODE_CANCELED;
    /* Synchronization processing */
    g_cg_sync_read = RLN35.LCUC;
    __syncp(); 
    /* Set RLIN35RX pin */
    PORT.PIBC1 &= _PORT_CLEAR_BIT4;
    PORT.PBDC1 &= _PORT_CLEAR_BIT4;
    PORT.PM1 |= _PORT_SET_BIT4;  
    PORT.PMC1 &= _PORT_CLEAR_BIT4;
    PORT.PFC1 &= _PORT_CLEAR_BIT4;
    PORT.PFCE1 |= _PORT_SET_BIT4;  
    PORT.PFCAE1 |= _PORT_SET_BIT4;  
    PORT.PMC1 |= _PORT_SET_BIT4;  
    /* Set RLIN35TX pin */
    PORT.PIBC1 &= _PORT_CLEAR_BIT5;
    PORT.PBDC1 &= _PORT_CLEAR_BIT5;
    PORT.PM1 |= _PORT_SET_BIT5;  
    PORT.PMC1 &= _PORT_CLEAR_BIT5;
    PORT.PFC1 &= _PORT_CLEAR_BIT5;
    PORT.PMC1 |= _PORT_SET_BIT5;  
    PORT.PM1 &= _PORT_CLEAR_BIT5;

    gp_uart5_tx_address = 0;
    g_uart5_tx_count = 0U;
    gp_uart5_rx_address = 0;
    g_uart5_rx_count = 0U;
    g_uart5_rx_length = 0U;
    RLN35.LEST &= (uint8_t) ~_UART_CLEAR_ERROR_FLAG;
}
/***********************************************************************************************************************
* Function Name: R_UART5_Start
* Description  : This function starts the UART5 operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART5_Start(void)
{
    /* Enable UART5 operation */
    RLN35.LUOER |= _UART_RECEPTION_ENABLED | _UART_TRABSMISSION_ENABLED;
    // /* Clear ICRLIN35UR0 interrupt request and enable operation */
    // INTC2.ICRLIN35UR0.BIT.RFRLIN35UR0 = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICRLIN35UR0.BIT.MKRLIN35UR0 = _INT_PROCESSING_ENABLED;    
    // /* Clear ICRLIN35UR1 interrupt request and enable operation */
    // INTC2.ICRLIN35UR1.BIT.RFRLIN35UR1 = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICRLIN35UR1.BIT.MKRLIN35UR1 = _INT_PROCESSING_ENABLED;    
    // /* Clear ICRLIN35UR2 interrupt request and enable operation */
    // INTC2.ICRLIN35UR2.BIT.RFRLIN35UR2 = _INT_REQUEST_NOT_OCCUR;
    // INTC2.ICRLIN35UR2.BIT.MKRLIN35UR2 = _INT_PROCESSING_ENABLED;    
}
/***********************************************************************************************************************
* Function Name: R_UART5_Stop
* Description  : This function stops the UART5 operation.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_UART5_Stop(void)
{
    // /* Disable ICRLIN35UR0 operation */
    // INTC2.ICRLIN35UR0.BIT.MKRLIN35UR0 = _INT_PROCESSING_DISABLED;
    // /* Disable ICRLIN35UR1 operation */
    // INTC2.ICRLIN35UR1.BIT.MKRLIN35UR1 = _INT_PROCESSING_DISABLED;
    // /* Disable ICRLIN35UR2 operation */
    // INTC2.ICRLIN35UR2.BIT.MKRLIN35UR2 = _INT_PROCESSING_DISABLED;
    /* Disable UART5 operation */
    RLN35.LUOER &= (uint8_t) ~(_UART_RECEPTION_ENABLED | _UART_TRABSMISSION_ENABLED);
    /* Synchronization processing */
    g_cg_sync_read = RLN35.LCUC;
    __syncp();
    // /* Clear ICRLIN35UR0 request */
    // INTC2.ICRLIN35UR0.BIT.RFRLIN35UR0 = _INT_REQUEST_NOT_OCCUR;
    // /* Clear ICRLIN35UR1 request */
    // INTC2.ICRLIN35UR1.BIT.RFRLIN35UR1 = _INT_REQUEST_NOT_OCCUR;
    // /* Clear ICRLIN35UR2 request */
    // INTC2.ICRLIN35UR2.BIT.RFRLIN35UR2 = _INT_REQUEST_NOT_OCCUR;
    RLN35.LEST &= (uint8_t) ~_UART_CLEAR_ERROR_FLAG;
    gp_uart5_tx_address = 0;
    g_uart5_tx_count = 0U;
    gp_uart5_rx_address = 0;
    g_uart5_rx_count = 0U;
    g_uart5_rx_length = 0U;
    /* RX goes to GPIO high-impedance to reduce toggling/leakage during sleep. */
    PORT.PMC1 &= _PORT_CLEAR_BIT4;
    PORT.PIBC1 &= _PORT_CLEAR_BIT4;
    PORT.PBDC1 &= _PORT_CLEAR_BIT4;
    PORT.PFC1 &= _PORT_CLEAR_BIT4;
    PORT.PFCE1 &= _PORT_CLEAR_BIT4;
    PORT.PFCAE1 &= _PORT_CLEAR_BIT4;
    PORT.PM1 |= _PORT_SET_BIT4;

    /* Keep TX at UART idle-high level as a GPIO output to avoid line chatter. */
    PORT.PMC1 &= _PORT_CLEAR_BIT5;
    PORT.PIBC1 &= _PORT_CLEAR_BIT5;
    PORT.PBDC1 &= _PORT_CLEAR_BIT5;
    PORT.PFC1 &= _PORT_CLEAR_BIT5;
    PORT.PFCE1 &= _PORT_CLEAR_BIT5;
    PORT.PFCAE1 &= _PORT_CLEAR_BIT5;
    PORT.P1 |= _PORT_SET_BIT5;
    PORT.PM1 &= _PORT_CLEAR_BIT5;
    /* Synchronization processing */
    g_cg_sync_read = RLN35.LCUC;
    __syncp();
}
/***********************************************************************************************************************
* Function Name: R_UART5_Receive
* Description  : This function receives UART5 data.
* Arguments    : rx_buf -
*                    receive buffer pointer
*                rx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/
MD_STATUS R_UART5_Receive(uint8_t * const rx_buf, uint16_t rx_num)
{
    MD_STATUS status = MD_OK;

    if (rx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        if ((RLN35.LST & _UART_RECEPTION_OPERATED) == 0U)
        {
            g_uart5_rx_count = 0U;
            g_uart5_rx_length = rx_num;
            gp_uart5_rx_address = rx_buf;
        }
        else
        {
            status = MD_ARGERROR;
        }
    }

    return (status);
}
/***********************************************************************************************************************
* Function Name: R_UART5_Send
* Description  : This function sends UART5 data.
* Arguments    : tx_buf -
*                    transfer buffer pointer
*                tx_num -
*                    buffer size
* Return Value : status -
*                    MD_OK or MD_ARGERROR or MD_ERROR
***********************************************************************************************************************/
MD_STATUS R_UART5_Send(uint8_t * const tx_buf, uint16_t tx_num)
{
    MD_STATUS status = MD_OK;

    if (tx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        gp_uart5_tx_address = tx_buf;
        g_uart5_tx_count = tx_num;       

        if ((RLN35.LST & _UART_TRANSMISSION_OPERATED) == 0U)
        {
            /* Clear ICRLIN35UR0 request and Disable operation */
            INTC2.ICRLIN35UR0.BIT.MKRLIN35UR0 = _INT_PROCESSING_DISABLED;
            INTC2.ICRLIN35UR0.BIT.RFRLIN35UR0 = _INT_REQUEST_NOT_OCCUR;
            RLN35.LUTDR.UINT16 = *gp_uart5_tx_address;
            gp_uart5_tx_address++;
            g_uart5_tx_count--;
            /* Clear ICRLIN35UR0 requestt and enable operation */
            INTC2.ICRLIN35UR0.BIT.RFRLIN35UR0 = _INT_REQUEST_NOT_OCCUR;
            INTC2.ICRLIN35UR0.BIT.MKRLIN35UR0 = _INT_PROCESSING_ENABLED;	
        }
        else
        {
            status = MD_ERROR;
        }
    }
    return (status);
}

/* Start user code for adding. Do not edit comment generated here */
MD_STATUS R_UART4_SendStatus(void)
{
    MD_STATUS status = MD_OK;

    
    if ((RLN34.LST & _UART_TRANSMISSION_OPERATED) == 0U)
    {
        status = MD_OK;	
    }
    else
    {
        status = MD_ERROR;
    }

    return (status);
}

MD_STATUS R_UART5_SendStatus(void)
{
    MD_STATUS status = MD_OK;

    if ((RLN35.LST & _UART_TRANSMISSION_OPERATED) == 0U)
    {
        status = MD_OK;
    }
    else
    {
        status = MD_ERROR;
    }
   
    return (status);
}
/* End user code. Do not edit comment generated here */
