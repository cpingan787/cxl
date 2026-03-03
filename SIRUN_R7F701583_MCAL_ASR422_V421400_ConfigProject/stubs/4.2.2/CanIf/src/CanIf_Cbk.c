/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = CanIf_Cbk.c                                                 */
/* Version      = V1.0.1                                                      */
/* Date         = 07-Nov-2017                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2017 Renesas Electronics Corporation. All rights reserved.             */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains execution sequences to demonstrate the usage*/
/* of CAN Driver APIs.                                                        */
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
/*============================================================================*/

/*******************************************************************************
**                      Revision History                                      **
*******************************************************************************/
/*
 * V1.0.0:  24-Feb-2017  : Initial Version
 * V1.0.1:  07-Nov-2017  : As per V42.00.00_4.02.00 development, removed
 *                         File version information to remove warning message.
 */
/******************************************************************************/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#include "CanIf_Cbk.h"

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
/* AUTOSAR release version information */
#define CANIF_C_AR_RELEASE_MAJOR_VERSION     CAN_AR_RELEASE_MAJOR_VERSION_VALUE
#define CANIF_C_AR_RELEASE_MINOR_VERSION     CAN_AR_RELEASE_MINOR_VERSION_VALUE
#define CANIF_C_AR_RELEASE_REVISION_VERSION  CAN_AR_RELEASE_REVISION_VERSION_VALUE

/* File version information */
#define CANIF_C_SW_MAJOR_VERSION CAN_SW_MAJOR_VERSION
#define CANIF_C_SW_MINOR_VERSION CAN_SW_MINOR_VERSION


uint8 GucTransmitCount;
uint8 GucCancelCount;
uint8 GucReceiveCount;
uint8 GucErrFlag;
uint8 GblStartFlag;
uint8 GucCount;
uint8 GucWakeupCount;
uint8 GucBusOffCount;
uint8 GucStartCount;
uint16 GusTimeoutCount;
uint8 GucDelayCount;
uint8 GucTestCount;
uint8 GucReturnCount;
uint8 GucDetCount;
uint8 GucTestIndex;
uint8 GucTestCaseIndex;
uint8 GucDemCount;
uint8 sdu10[8];

/*******************************************************************************
**                         Global Data                                        **
*******************************************************************************/

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

/*******************************************************************************
**                             CanIf_RxIndication                             **
*******************************************************************************/
void CanIf_RxIndication(const Can_HwType* Mailbox, \
                    const PduInfoType* PduInfoPtr)
{

}
/*******************************************************************************
**                             CanIf_TxConfirmation                           **
*******************************************************************************/
void CanIf_TxConfirmation(PduIdType CanTxPduId)
{

}
/*******************************************************************************
                              CanIf_ControllerBusOff
*******************************************************************************/

void CanIf_ControllerBusOff (uint8 Controller)
{

}

/*******************************************************************************
                              CanIf_ControllerModeIndication
*******************************************************************************/

void CanIf_ControllerModeIndication (uint8 Controller, \
                                        CanIf_ControllerModeType ControllerMode)
{

}

Std_ReturnType CanIf_TriggerTransmit(PduIdType TxPduId, PduInfoType* PduInfoPtr)
{

  return E_OK;
}

/*******************************************************************************
                          End of the file
*******************************************************************************/
