/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_GeneralTypes.h                                          */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2017-2020 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* C header file for CAN Driver type definitions.                             */
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
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0: 23-Jun-2017  : Initial Version
 * V1.0.1: 18-July-2020 : As per #ARDAABD-3773, correct variable name
 *                        ANTRCV_TRCVMODE_STANDBY to CANTRCV_TRCVMODE_STANDBY
 *                        in CanTrcv_TrcvModeType
 *                        As per #ARDAABD-3169, correct macro name 
 *                        CAN_GENERALTYPES_H to CAN_GENERAL_TYPES_H
 */
/******************************************************************************/
#ifndef CAN_GENERAL_TYPES_H
#define CAN_GENERAL_TYPES_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "ComStack_Types.h"
/******************************************************************************/


/*******************************************************************************
**                      Can_PduType                                           **
*******************************************************************************/
/* General Types */
#ifdef CAN_CANTYPE_DECLARATION_UINT16
typedef uint16 Can_IdType;
typedef uint8 Can_HwHandleType;
#else
typedef uint32 Can_IdType;
typedef uint16 Can_HwHandleType;
#endif

/* This is used to provide CAN-ID, DLC and SDU from CanIf to CAN Driver */
typedef struct STag_Can_PduType
{
  /* Pointer to L-SDU */
  uint8      *sdu;
  /* CAN-ID */
  Can_IdType id;
  /* swPduHandle */
  PduIdType  swPduHandle;
  /* DLC */
  uint8 length;
} Can_PduType;

/* This type defines a data structure which clearly provides an Hardware
   Object Handle */
typedef struct STag_Can_HwType
{
  /* CAN-ID */
  Can_IdType CanId;
  /* ID of the corresponding Hoh */
  Can_HwHandleType  Hoh;
  /* ControllerId */
  uint8 ControllerId;
} Can_HwType;

/*******************************************************************************
**                      Can_StateTransitionType                               **
*******************************************************************************/
/* State transitions that are used by the function Can_SetControllerMode */
typedef enum ETag_Can_StateTransitionType
{
  CAN_T_START = 0,
  CAN_T_STOP,
  CAN_T_SLEEP,
  CAN_T_WAKEUP
} Can_StateTransitionType;


/*******************************************************************************
**                      Can_ReturnType                                        **
*******************************************************************************/
/*
CAN_OK      : Success
CAN_NOT_OK  : Error Occurred
CAN_BUSY    : Transmit request could not be processed because no
              transmit object was available
CAN_T_WAKEUP: Wakeup event occurred during sleep transition
*/

/* Return values of CAN Driver API */
typedef enum ETag_Can_ReturnType
{
  CAN_OK = 0,
  CAN_NOT_OK,
  CAN_BUSY
} Can_ReturnType;

/*******************************************************************************
**                      CanTrcv_TrcvModeType                                  **
*******************************************************************************/
/* Operating modes of the CAN Transceiver Driver */
typedef enum ETag_CanTrcv_TrcvModeType
{
  CANTRCV_TRCVMODE_NORMAL = 0U,
  CANTRCV_TRCVMODE_SLEEP,
  CANTRCV_TRCVMODE_STANDBY
} CanTrcv_TrcvModeType;

/*******************************************************************************
**                      CanTrcv_TrcvWakeupModeType                            **
*******************************************************************************/

/* CAN transceiver concerning wake up events and wake up notifications. */
typedef enum ETag_CanTrcv_TrcvWakeupModeType
{
  CANTRCV_WUMODE_ENABLE = 0U,
  CANTRCV_WUMODE_CLEAR,
  CANTRCV_WUMODE_DISABLE
} CanTrcv_TrcvWakeupModeType;

/*******************************************************************************
**                      CanTrcv_TrcvWakeupReasonType                          **
*******************************************************************************/
/* Wake up reason detected by the CAN transceiver */
typedef enum ETag_CanTrcv_TrcvWakeupReasonType
{
  CANTRCV_WU_ERROR = 0U,
  CANTRCV_WU_BY_BUS,
  CANTRCV_WU_BY_PIN,
  CANTRCV_WU_INTERNALLY,
  CANTRCV_WU_NOT_SUPPORTED,
  CANTRCV_WU_POWER_ON,
  CANTRCV_WU_RESET,
  CANTRCV_WU_BY_SYSERR
}CanTrcv_TrcvWakeupReasonType;

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif /* CAN_GENERAL_TYPES_H */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
