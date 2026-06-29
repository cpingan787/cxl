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
* Device(s)    : R7F701583(LQFP144pin)
* Tool-Chain   : CCRH
* Description  : This file implements device driver for Port module.
* Creation Date: 2025/12/23
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
    PORT.APBDC1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.APBDC1 |= _PORT_APBDCn1_APBDC_MODE_DISABLED;
    PORT.AP1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.AP1 |= _PORT_APn1_OUTPUT_LOW;
    PORT.APM1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.APM1 |= _PORT_APMn1_MODE_OUTPUT;
    
#if(0)
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC1 &= (uint32_t) ~_PORT_PMn7_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn7_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t) ~_PORT_PMn7_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn7_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t)_PORT_PMn7_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn7_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t) ~_PORT_PMn7_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn7_OUTPUT_LOW;
    PORT.PM1 &= (uint16_t) ~_PORT_PMn7_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn7_MODE_OUTPUT;

    PORT.PPCMD18 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC18 &= (uint32_t) ~_PORT_PMn3_MODE_UNUSED;
    PORT.PDSC18 |= _PORT_PDSCn3_SLOW_MODE_SELECT;
    PORT.PPCMD18 = _WRITE_PROTECT_COMMAND;
    PORT.PODC18 &= (uint32_t) ~_PORT_PMn3_MODE_UNUSED;
    PORT.PODC18 |= _PORT_PODCn3_PUSH_PULL;
    PORT.PBDC18 &= (uint16_t) ~_PORT_PMn3_MODE_UNUSED;
    PORT.PBDC18 |= _PORT_PBDCn3_PBDC_MODE_DISABLED;
    PORT.P18 &= (uint16_t) ~_PORT_PMn3_MODE_UNUSED;
    PORT.P18 |= _PORT_Pn3_OUTPUT_LOW;
    PORT.PM18 &= (uint16_t) ~_PORT_PMn3_MODE_UNUSED;
    PORT.PM18 |= _PORT_PMn3_MODE_OUTPUT;

    PORT.PPCMD18 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC18 &= (uint32_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.PDSC18 |= _PORT_PDSCn1_SLOW_MODE_SELECT;
    PORT.PPCMD18 = _WRITE_PROTECT_COMMAND;
    PORT.PODC18 &= (uint32_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.PODC18 |= _PORT_PODCn1_PUSH_PULL;
    PORT.PBDC18 &= (uint16_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.PBDC18 |= _PORT_PBDCn1_PBDC_MODE_DISABLED;
    PORT.P18 &= (uint16_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.P18 |= _PORT_Pn1_OUTPUT_LOW;
    PORT.PM18 &= (uint16_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.PM18 |= _PORT_PMn1_MODE_OUTPUT;

    PORT.PPCMD18 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC18 &= (uint32_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PDSC18 |= _PORT_PDSCn0_SLOW_MODE_SELECT;
    PORT.PPCMD18 = _WRITE_PROTECT_COMMAND;
    PORT.PODC18 &= (uint32_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PODC18 |= _PORT_PODCn0_PUSH_PULL;
    PORT.PBDC18 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PBDC18 |= _PORT_PBDCn0_PBDC_MODE_DISABLED;
    PORT.P18 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.P18 |= _PORT_Pn0_OUTPUT_LOW;
    PORT.PM18 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PM18 |= _PORT_PMn0_MODE_OUTPUT;
#endif
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
