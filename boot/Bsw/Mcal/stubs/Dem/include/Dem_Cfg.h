/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Dem_Cfg.h                                                   */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2017 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains the stub values for Dem_Cfg.h                           */
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
 * V1.0.0:  01-Aug-2016  :  #ARDAABD-491
 *                          1. Initial Version
 * V1.0.1:  07-Sep-2016  :  #ARDAABD-495
 *                          1. Updated revision history
 * V1.0.2:  07-Aug-2017  : Added Extended Dem for Eth Module 
 */
/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
#ifndef DEM_CFG_H
#define DEM_CFG_H
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define DEM_CFG_AR_RELEASE_MAJOR_VERSION     4
#define DEM_CFG_AR_RELEASE_MINOR_VERSION     2
#define DEM_CFG_AR_RELEASE_REVISION_VERSION  2

/* Module Software version information */
#define DEM_CFG_SW_MAJOR_VERSION  1
#define DEM_CFG_SW_MINOR_VERSION  0
#define DEM_CFG_SW_PATCH_VERSION  2


/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define DemConf_DemEventParameter_DemEventParameter0         (Dem_EventIdType)1

#define DemConf_DemEventParameter_DemEventParameter1         (Dem_EventIdType)2

#define DemConf_DemEventParameter_DemEventParameter2         (Dem_EventIdType)3

#define DemConf_DemEventParameter_DemEventParameter3         (Dem_EventIdType)4

#define DemConf_DemEventParameter_DemEventParameter4         (Dem_EventIdType)5

#define DemConf_DemEventParameter_DemEventParameter5         (Dem_EventIdType)6

#define DemConf_DemEventParameter_DemEventParameter6         (Dem_EventIdType)7

#define DemConf_DemEventParameter_DemEventParameter7         (Dem_EventIdType)8

/*Extended DEM from Dem_Eth.arxml*/
#define DemConf_DemEventParameter_DemEventParameter20 (Dem_EventIdType)20
#define DemConf_DemEventParameter_DemEventParameter21 (Dem_EventIdType)21
#define DemConf_DemEventParameter_DemEventParameter22 (Dem_EventIdType)22
#define DemConf_DemEventParameter_DemEventParameter23 (Dem_EventIdType)23
#define DemConf_DemEventParameter_DemEventParameter24 (Dem_EventIdType)24
#define DemConf_DemEventParameter_DemEventParameter25 (Dem_EventIdType)25
#define DemConf_DemEventParameter_DemEventParameter26 (Dem_EventIdType)26
#define DemConf_DemEventParameter_DemEventParameter27 (Dem_EventIdType)27
#define DemConf_DemEventParameter_DemEventParameter28 (Dem_EventIdType)28
#define DemConf_DemEventParameter_DemEventParameter29 (Dem_EventIdType)29

/* DEM IDs for Davici configuration */
#define DemConf_DemEventParameter_DemEventParameter         (Dem_EventIdType)0

#define DemConf_DemEventParameter_DemEventParameter_001     (Dem_EventIdType)1

#define DemConf_DemEventParameter_DemEventParameter_002     (Dem_EventIdType)2

#define DemConf_DemEventParameter_DemEventParameter_003     (Dem_EventIdType)3

#define DemConf_DemEventParameter_DemEventParameter_004     (Dem_EventIdType)4

#define DemConf_DemEventParameter_DemEventParameter_005     (Dem_EventIdType)5

#define DemConf_DemEventParameter_DemEventParameter_006     (Dem_EventIdType)6

#define DemConf_DemEventParameter_DemEventParameter_007     (Dem_EventIdType)7

#define DemConf_DemEventParameter_DemEventParameter_008     (Dem_EventIdType)8

#define DemConf_DemEventParameter_DemEventParameter_009     (Dem_EventIdType)9

#define DemConf_DemEventParameter_DemEventParameter_010     (Dem_EventIdType)10

#endif /* DEM_CFG_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
