/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_Version.c                                               */
/* Version      = V1.0.0                                                      */
/* Date         = 31-May-2019                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2019 Renesas Electronics Corporation. All rights reserved.    */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of Version Information.                                          */
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
 * V1.0.0:  31-May-2019  : Initial version
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Can.h"

#if (CAN_WAKEUP_SUPPORT == STD_ON)
/* ECUM Header File */
#include "EcuM.h"
#endif
#if (CAN_DEV_ERROR_DETECT == STD_ON)
/* Included for the declaration of Det_ReportError() */
#include "Det.h"
#endif
#if (CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
/*
* RTE module version information is required only when critical section
* protection is enabled
*/
#include "Rte.h"
#endif
/* CANIF Header File */
#include "CanIf.h"
/* OS module version information is required */
#include "Os.h"

#include "Dem.h"
/* CAN module header file */
#include "Can.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_VERSION_C_AR_RELEASE_MAJOR_VERSION\
                                          CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_VERSION_C_AR_RELEASE_MINOR_VERSION\
                                          CAN_AR_RELEASE_MINOR_VERSION
#define CAN_VERSION_C_AR_RELEASE_REVISION_VERSION\
                                           CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_VERSION_C_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_VERSION_C_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
/* Functionality related to R4.0 */
#if (CAN_VERSION_C_AR_RELEASE_MAJOR_VERSION != \
        CAN_AR_RELEASE_MAJOR_VERSION_VALUE)
  #error "Can_Version.c : Mismatch in Release Major Version"
#endif
#if (CAN_VERSION_C_AR_RELEASE_MINOR_VERSION != \
        CAN_AR_RELEASE_MINOR_VERSION_VALUE)
  #error "Can_Version.c : Mismatch in Release Minor Version"
#endif
#if (CAN_VERSION_C_AR_RELEASE_REVISION_VERSION != \
        CAN_AR_RELEASE_REVISION_VERSION_VALUE)
  #error "Can_Version.c : Mismatch in Release Revision Version"
#endif

#if (CAN_VERSION_C_SW_MAJOR_VERSION != CAN_SW_MAJOR_VERSION_VALUE)
  #error "Can_Version.c : Mismatch in Software Major Version"
#endif
#if (CAN_VERSION_C_SW_MINOR_VERSION != CAN_SW_MINOR_VERSION_VALUE)
  #error "Can_Version.c : Mismatch in Software Minor Version"
#endif

#if (CAN_VERSION_CHECK_EXT_MODULES == STD_ON)
#if ((CANIF_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION) || \
              (CANIF_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION))
  #error "The AR version of CanIf.h does not match the expected version"
#endif

#if (CAN_DEV_ERROR_DETECT == STD_ON)
#if ((DET_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION) || \
              (DET_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION))
  #error "The AR version of Det.h does not match the expected version"
#endif
#endif

#if ((DEM_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION) || \
              (DEM_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION))
  #error "The AR version of Dem.h does not match the expected version"
#endif

#if(CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
#if ((RTE_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION) || \
               (RTE_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION))
  #error "The AR version of Rte.h does not match the expected version"
#endif
#endif /* End of CAN_CRITICAL_SECTION_PROTECTION */

#if(CAN_WAKEUP_SUPPORT == STD_ON)
#if ((ECUM_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION) || \
                (ECUM_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION))
  #error "The AR version of Ecum_Cbk.h does not match the expected version"
#endif
#endif

#if ((OS_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION) || \
                (OS_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION))
  #error "The AR version of Os.h does not match the expected version"
#endif



#endif /* (CAN_VERSION_CHECK_EXT_MODULES == STD_ON) */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
