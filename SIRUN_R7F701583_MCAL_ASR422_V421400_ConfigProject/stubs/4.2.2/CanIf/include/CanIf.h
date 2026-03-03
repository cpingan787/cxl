/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = CanIf.h                                                     */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2017 Renesas Electronics Corporation                          */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of external declaration of constants, global data, type          */
/* definitions, APIs and service IDs.                                         */
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
 * V1.0.0:  23-Jun-2017  : Initial Version
 */
/******************************************************************************/

#ifndef CANIF_H
#define CANIF_H
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* Com Stack Types Header File */
#include "ComStack_Types.h"
/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release Version Information */
    #define CANIF_AR_RELEASE_MAJOR_VERSION      4
    #define CANIF_AR_RELEASE_MINOR_VERSION      2
    #define CANIF_AR_RELEASE_PATCH_VERSION      2
/* Software Version Information */
    #define CANIF_SW_MAJOR_VERSION  1
    #define CANIF_SW_MINOR_VERSION  0
    #define CANIF_SW_PATCH_VERSION  0
/* Vendor ID */
#define CANIF_VENDOR_ID (uint8)59

/* Module ID */
#define CANIF_MODULE_ID (uint16)80

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                   CanIf_WakeupSourceType                                   **
*******************************************************************************/
/* Return value of the WakeupSourceType. */
typedef enum ETag_CanIf_WakeupSourceType
{
  CANIF_CONTROLLER_WAKEUP = 0,
  CANIF_TRANSCEIVER_WAKEUP
} CanIf_WakeupSourceType;

/*******************************************************************************
**                   CanIf_TransceiverModeType                                **
*******************************************************************************/
/* Return value of the CanIf_TransceiverModeType. */
typedef enum ETag_CanIf_TransceiverModeType
{
  CANIF_TRCV_MODE_NORMAL = 0,
  CANIF_TRCV_MODE_STANDBY,
  CANIF_TRCV_MODE_SLEEP
} CanIf_TransceiverModeType;
/*******************************************************************************
**                   CanIf_TrcvWakeupReasonType                               **
*******************************************************************************/

/* Return value of the CanIf_TrcvWakeupReasonType. */
typedef enum ETag_CanIf_TrcvWakeupReasonType
{
  CANIF_TRCV_WU_ERROR = 0,
  CANIF_TRCV_WU_NOT_SUPPORTED,
  CANIF_TRCV_WU_BY_BUS,
  CANIF_TRCV_WU_INTERNALLY,
  CANIF_TRCV_WU_RESET,
  CANIF_TRCV_WU_POWER_ON
} CanIf_TrcvWakeupReasonType;
/*******************************************************************************
**                   CanIf_TrcvWakeupModeType                                 **
*******************************************************************************/
/* Return value of the CanIf_TrcvWakeupModeType. */
typedef enum ETag_CanIf_TrcvWakeupModeType
{
  CANIF_TRCV_WU_ENABLE = 0,
  CANIF_TRCV_WU_DISABLE,
  CANIF_TRCV_WU_CLEAR
} CanIf_TrcvWakeupModeType;
/*******************************************************************************
**                   CanIf_ControllerModeType                                 **
*******************************************************************************/
/* Return values of CanIf_ControllerModeIndication */
typedef enum ETag_CanIf_ControllerModeType
{
  CANIF_CS_UNINIT =0,
  CANIF_CS_STOPPED,
  CANIF_CS_SLEEP,
  CANIF_CS_STARTED
} CanIf_ControllerModeType;

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

extern uint8 GucTransmitCount;
extern uint8 GucCancelCount;
extern uint8 GucTestCount;
extern uint8 GucReceiveCount;
extern uint8 GucTestIndex;
extern uint8 GucTestCaseIndex;
extern uint8 GucErrFlag;
extern uint8 GucWakeupCount;
extern uint8 GucBusOffCount;
extern uint8 GucStartCount;
extern uint8 Can_GaaDataArray[];
extern uint8 sdu10[];
extern uint8 GblStartFlag;
extern uint8 GucCount;
extern uint16 GucServiceId;
extern uint16 GusTimeoutCount;
extern uint8 GucDelayCount;
extern uint8 GucReturnCount;
extern uint8 GucDetCount;
extern uint8 GucDemCount;
extern uint8 GucTestCaseId;


extern uint8 *GpDataArray1;
extern uint8 *GpDataArray2;



extern uint16 App_Can_GaaPassTestCaseId[];
extern uint16 App_Can_GaaFailTestCaseId[];

extern boolean Appl_Can_DataCompare
                  (const uint8 *CanSduPtr, const uint8 *DataPtr, uint8 CanDlc);

extern void Can_Increment_TxByteValue(uint8 *SduPtr, uint8 Length);
extern void Can_Increment_RxByteValue(uint16 offset , uint8 Length);

#endif /* CANIF_H */


/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
