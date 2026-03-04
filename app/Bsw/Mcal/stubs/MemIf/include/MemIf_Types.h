/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = MemIf_Types.h                                               */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2013 Renesas Electronics Corporation                          */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file is a stub for MemIf component.                                   */
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
 * V1.0.0:  21-Mar-2013  : Initial version
 *
 * V1.0.1:  07-Aug-2013 : As per CR 225, Copyright and Device name are updated  
 *                        as part of merge activity.
 */
/******************************************************************************/

#ifndef MEMIF_TYPES_H
#define MEMIF_TYPES_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define MEMIF_TYPES_AR_RELEASE_MAJOR_VERSION      4
#define MEMIF_TYPES_AR_RELEASE_MINOR_VERSION      2
#define MEMIF_TYPES_AR_RELEASE_REVISION_VERSION   2

/* Module software version information */
#define MEMIF_TYPES_SW_MAJOR_VERSION         1
#define MEMIF_TYPES_SW_MINOR_VERSION         0

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/* Type definition for MEMIF status types */
typedef enum
{
  MEMIF_UNINIT = 0,
  MEMIF_IDLE,
  MEMIF_BUSY,
  MEMIF_BUSY_INTERNAL
} MemIf_StatusType;

/* Type definition for MEMIF job result types */
typedef enum
{
  MEMIF_JOB_OK = 0,
  MEMIF_JOB_FAILED,
  MEMIF_JOB_PENDING,
  MEMIF_JOB_CANCELED,
  MEMIF_BLOCK_INCONSISTENT,
  MEMIF_BLOCK_INVALID
} MemIf_JobResultType;

/* Type definition for MEMIF mode types */
typedef enum
{
  MEMIF_MODE_SLOW = 0,
  MEMIF_MODE_FAST
} MemIf_ModeType;

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif /* MEMIF_TYPES_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
