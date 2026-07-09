/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Spi.c                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2019 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains the Schm SPI Stub functions.                */
/*                                                                            */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas. Any        */
/* warranty is expressly disclaimed and excluded by Renesas, either expressed */
/* or implied, including but not limited to those for non-infringement of     */
/* intellectual property, merchantability and/or fitness for the particular   */
/* purpose.                                                                   */
/*                                                                            */
/* Renesas shall not have any obligation to maintain, service or provide bug  */
/* fixes for the supplied Product(s) and/or the Application.                  */
/*                                                                            */
/* Each User is solely responsible for determining the appropriateness of     */
/* using the Product(s) and assumes all risks associated with its exercise    */
/* of rights under this Agreement, including, but not limited to the risks    */
/* and costs of program errors, compliance with applicable laws, damage to    */
/* or loss of data, programs or equipment, and unavailability or              */
/* interruption of operations.                                                */
/*                                                                            */
/* Limitation of Liability                                                    */
/*                                                                            */
/* In no event shall Renesas be liable to the User for any incidental,        */
/* consequential, indirect, or punitive damage (including but not limited     */
/* to lost profits) regardless of whether such liability is based on breach   */
/* of contract, tort, strict liability, breach of warranties, failure of      */
/* essential purpose or otherwise and even if advised of the possibility of   */
/* such damages. Renesas shall not be liable for any services or products     */
/* provided by third party vendors, developers or consultants identified or   */
/* referred to the User by Renesas in connection with the Product(s) and/or   */
/* the Application.                                                           */
/*                                                                            */
/*============================================================================*/
/* Environment:                                                               */
/*              Devices:        X1x                                           */
/*                                                                            */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:  07-Sep-2015    : Initial Version
 * V1.0.1   24-Oct-2016      Schedule manager API's changed according to
 *                           ASR 4.2.2 within ticket ARDAABD-855
 * V2.0.0:  02-Nov-2016    : Schm interface format changed according to 
 *                           SWS_Rte_07250, as part of ticket ARDAABD-855
 * V2.0.1:  28-Jun-2017    : Updated the file to add SchM_Enter/
 *                           Exit_Spi_SPI_REG_PROTECTION functions declarations.
 * V2.0.2:  02-Feb-2019    : As per Spi-redesign,
 *                           a. Remove un-used critical sections
 *                           b. Add SPI_INTERRUPT_CONTROL_PROTECTION
 *                           c. Support nested different critical sections
 *
*******************************************************************************/

/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "Platform_Types.h"
#include "SchM_Spi.h"
#include "Os.h"

/*******************************************************************************
**                         Global Data                                        **
*******************************************************************************/

/*******************************************************************************
**        SchM_Enter_Spi_SPI_RAM_DATA_PROTECTION()                            **
*******************************************************************************/
void SchM_Enter_Spi_SPI_RAM_DATA_PROTECTION()
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Spi_SPI_RAM_DATA_PROTECTION()                             **
*******************************************************************************/
void SchM_Exit_Spi_SPI_RAM_DATA_PROTECTION()
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**        SchM_Enter_Spi_SPI_INTERRUPT_CONTROL_PROTECTION()                   **
*******************************************************************************/
void SchM_Enter_Spi_SPI_INTERRUPT_CONTROL_PROTECTION()
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Spi_SPI_INTERRUPT_CONTROL_PROTECTION()                    **
*******************************************************************************/
void SchM_Exit_Spi_SPI_INTERRUPT_CONTROL_PROTECTION()
{
    ResumeAllInterrupts();
}

/*******************************************************************************
**                          End of File                                       **
*******************************************************************************/
