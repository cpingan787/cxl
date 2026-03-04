/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Det.h                                                       */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016 - 2017 Renesas Electronics Corporation                   */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file is a stub for DET component                  .                   */
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
 * V1.0.0:  01-Aug-2016  :  #ARDAABD-491
 *                          1. Initial Version
 * V1.0.1:  07-Sep-2016  :  #ARDAABD-495
 *                          1. Updated revision history
 * V1.0.2:  16-Oct-2017  :  #ARDAABD-2552
 *                          1. Added Det_ReportRuntimeError Function Prototype
 */
/******************************************************************************/

/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
#ifndef DET_H
#define DET_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
**                      Version Information                                  **
*******************************************************************************/
/* AUTOSAR release version information */
#define DET_AR_RELEASE_MAJOR_VERSION    4
#define DET_AR_RELEASE_MINOR_VERSION    2
#define DET_AR_RELEASE_REVISION_VERSION 2

/* Module Software version information */
#define DET_SW_MAJOR_VERSION    4
#define DET_SW_MINOR_VERSION    2
#define DET_SW_PATCH_VERSION    0

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/


/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/* Defining the structure to store the parameters of Det Report Error
   function */
typedef struct STag_tDet_Error
{ /* It will store the ModuleId of the reporting module */
  uint16 ModuleId;

  /* It will store the index based InstanceId of the reporting module */
  uint8 InstanceId;

  /* It will store the ApiId of the reporting function */
  uint8 ApiId;

  /* It will store the ErrorId of the reporting error */
  uint8 ErrorId;

}tDet_Error;


/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
extern Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);

extern Std_ReturnType Det_ReportRuntimeError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);
#endif /* DET_H */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
