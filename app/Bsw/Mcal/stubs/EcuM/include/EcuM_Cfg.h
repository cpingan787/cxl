/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = EcuM_Cfg.h                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2020 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* Header file information for application.                                   */
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
 * V1.0.0:  07-Sep-2016  : Initial Version
 * V1.0.1:  20-Nov-2018  : As per JIRA ARDAABD-4030, the naming convention 
 *                         has been changed from 
 *                         EcuMConf_EcuMWakeUpSource_xxxx to 
 *                         ECUM_WKSOURCE_xxxx.
 * V1.0.2   01-Oct-2020  : As per ARDAABD-4204: Change wakeup source 0 value
 *                         to 0x00000020UL
 */
/******************************************************************************/
/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/

/*******************************************************************************
**                              Macros                                        **
*******************************************************************************/

#define  ECUM_WKSOURCE_EcuMWakeupSource0   \
                            (EcuM_WakeupSourceType) 0x00000020UL  /* 1 << 5 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_1  \
                            (EcuM_WakeupSourceType) 0x00000020UL  /* 1 << 5 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_2  \
                            (EcuM_WakeupSourceType) 0x00000040UL  /* 1 << 6 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_3  \
                            (EcuM_WakeupSourceType) 0x00000080UL  /* 1 << 7 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_4  \
                            (EcuM_WakeupSourceType) 0x00000100UL  /* 1 << 8 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_5  \
                            (EcuM_WakeupSourceType) 0x00000200UL  /* 1 << 9 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_6  \
                            (EcuM_WakeupSourceType) 0x00000400UL  /* 1 << 10 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_7  \
                            (EcuM_WakeupSourceType) 0x00000800UL  /* 1 << 11 */

#define  ECUM_WKSOURCE_EcuMWakeupSource_8  \
                            (EcuM_WakeupSourceType) 0x00001000UL  /* 1 << 12 */



/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
