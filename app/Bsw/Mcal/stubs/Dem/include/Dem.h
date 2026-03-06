/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Dem.h                                                       */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016 Renesas Electronics Corporation                          */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file is a stub for DEM component                  .                   */
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
 */
/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
#ifndef DEM_H
#define DEM_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"
#include "Dem_Cfg.h"

/*******************************************************************************
**                      Version Information                                  **
*******************************************************************************/
/* AUTOSAR release version information */
#define DEM_AR_RELEASE_MAJOR_VERSION    4
#define DEM_AR_RELEASE_MINOR_VERSION    2
#define DEM_AR_RELEASE_REVISION_VERSION 2

/* Module Software version information */
#define DEM_SW_MAJOR_VERSION    4
#define DEM_SW_MINOR_VERSION    2
#define DEM_SW_PATCH_VERSION    0
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

typedef uint8 Dem_EventStatusType;
typedef uint16 Dem_EventIdType;

#define DEM_EVENT_STATUS_PASSED (Dem_EventStatusType)0x00
#define DEM_EVENT_STATUS_FAILED (Dem_EventStatusType)0x01

#define DEM_EVENT_STATUS_PREPASSED (Dem_EventStatusType)0x02
#define DEM_EVENT_STATUS_PREFAILED (Dem_EventStatusType)0x03

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/


extern void Dem_ReportErrorStatus
                    (Dem_EventIdType EventId, Dem_EventStatusType EventStatus);

#endif /* DEM_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
