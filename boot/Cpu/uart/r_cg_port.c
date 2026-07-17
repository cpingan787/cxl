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
* File Name    : r_cg_port.c
* Version      : Code Generator for RH850/F1K V1.01.02.02 [08 May 2018]
* Device(s)    : R7F701581(LQFP100pin)
* Tool-Chain   : CCRH
* Description  : This file implements device driver for Port module.
* Creation Date: 2026/7/3
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
#include "r_cg_port.h"
/* Start user code for include. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
extern volatile uint32_t g_cg_sync_read      /* Synchronization processing */;
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: R_PORT_Create
* Description  : This function initializes the Port I/O.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void R_PORT_Create(void)
{
    /* PORT initialization */
    PORT.PIBC0 = _PORT_PIBC_INIT;
    PORT.PBDC0 = _PORT_PBDC_INIT;
    PORT.PM0 = _PORT_PM_INIT;
    PORT.PMC0 = _PORT_PMC_INIT;
    PORT.PIPC0= _PORT_PIPC_INIT;
    /* Port0 setting */
    PORT.PU0 = _PORT_PUn14_PULLUP_OFF | _PORT_PUn13_PULLUP_OFF | _PORT_PUn12_PULLUP_OFF | _PORT_PUn11_PULLUP_OFF | 
               _PORT_PUn10_PULLUP_OFF | _PORT_PUn9_PULLUP_OFF | _PORT_PUn8_PULLUP_OFF | _PORT_PUn7_PULLUP_OFF | 
               _PORT_PUn6_PULLUP_OFF | _PORT_PUn4_PULLUP_OFF | _PORT_PUn3_PULLUP_OFF | _PORT_PUn2_PULLUP_OFF | 
               _PORT_PUn1_PULLUP_OFF | _PORT_PUn0_PULLUP_OFF;
    PORT.PD0 = _PORT_PDn12_PULLDOWN_OFF | _PORT_PDn11_PULLDOWN_OFF | _PORT_PDn10_PULLDOWN_OFF | 
               _PORT_PDn9_PULLDOWN_OFF | _PORT_PDn8_PULLDOWN_OFF | _PORT_PDn7_PULLDOWN_OFF | _PORT_PDn6_PULLDOWN_OFF | 
               _PORT_PDn5_PULLDOWN_ON | _PORT_PDn4_PULLDOWN_OFF | _PORT_PDn3_PULLDOWN_OFF | _PORT_PDn2_PULLDOWN_OFF | 
               _PORT_PDn1_PULLDOWN_OFF | _PORT_PDn0_PULLDOWN_OFF;
    PORT.PM0 = _PORT_PM0_DEFAULT_VALUE | _PORT_PMn14_MODE_UNUSED | _PORT_PMn13_MODE_UNUSED | _PORT_PMn12_MODE_UNUSED | 
               _PORT_PMn11_MODE_UNUSED | _PORT_PMn10_MODE_UNUSED | _PORT_PMn9_MODE_UNUSED | _PORT_PMn8_MODE_UNUSED | 
               _PORT_PMn7_MODE_UNUSED | _PORT_PMn6_MODE_UNUSED | _PORT_PMn5_MODE_UNUSED | _PORT_PMn4_MODE_UNUSED | 
               _PORT_PMn3_MODE_UNUSED | _PORT_PMn2_MODE_UNUSED | _PORT_PMn1_MODE_UNUSED | _PORT_PMn0_MODE_UNUSED;
    /* Synchronization processing */
    g_cg_sync_read = PORT.PM0;
    __syncp();
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
