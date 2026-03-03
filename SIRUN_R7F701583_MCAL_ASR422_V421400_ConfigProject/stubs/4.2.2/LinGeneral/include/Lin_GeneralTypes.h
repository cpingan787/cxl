/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Lin_GeneralTypes.h                                          */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of type definitions used for LIN module.                         */
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
 * V1.0.0:  23-Sep-2016    : As part of JIRA ARDAAAB-368,integer literals are
 *                           added for macros.
 * V1.1.0:  05-Oct-2016    : Added 4.2.2 version macros
 *                           (Ref: JIRA #ARDAABC-906)
 * V1.2.0:  28-Feb-2017    : As part of ARDAABC-987, moved Autosar version
 *                           macro definitions to Lin.h
 * V1.2.1:  27-Aug-2019    : As part of JIRA ticket ARDAABD-3388, following
 *                           change are made:
 *                           1. Delete the enum eTag_Lin_RunModeType.
 *                           2. Update the copyright.
 * V1.2.2:  05-Aug-2021    : As part of ARDAABD-4502, the following changes are
 *                           made:
 *                           a) The macros 'LIN_CH_SLEEP_PENDING',
 *                              'LIN_CH_UNSELFTEST', 'LIN_SELFTEST_RX_OK',
 *                              'LIN_SELFTEST_TX_OK', 'LIN_SELFTEST_RX_ERROR',
 *                              'LIN_SELFTEST_TX_ERROR', 'LIN_CH_UNINIT' and
 *                              'LIN_CH_OPERATIONAL' is removed from
 *                              'eTag_Lin_StatusType'
 *                           b) Copyright information is updated.
 */
/******************************************************************************/

#ifndef LIN_GENERALTYPES_H
#define LIN_GENERALTYPES_H
/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
/* Included to get the pre-compile macros */
#include "Std_Types.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR Release version information */
#define LIN_GENERALTYPES_AR_RELEASE_MAJOR_VERSION     4
#define LIN_GENERALTYPES_AR_RELEASE_MINOR_VERSION     2
#define LIN_GENERALTYPES_AR_RELEASE_REVISION_VERSION  2

/* Module Software version information */
#define LIN_GENERALTYPES_SW_MAJOR_VERSION    4
#define LIN_GENERALTYPES_SW_MINOR_VERSION    2

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/*The Lin identifier Type, (0 to 0x3F) together with its two parity bits */
typedef uint8 Lin_FramePidType;

/* Checksum model for the Lin Frame  */
typedef enum eTag_Lin_FrameCsModelType
{
  LIN_ENHANCED_CS = 0x00,
  LIN_CLASSIC_CS = 0x01
} Lin_FrameCsModelType;


/* Lin Frame data length  */
typedef uint8 Lin_FrameDlType;

/* Lin Frame Type- Tx or Rx or anonymous */
typedef enum eTag_Lin_FrameResponseType
{
  LIN_MASTER_RESPONSE = 0x00,
  LIN_SLAVE_RESPONSE = 0x01,
  LIN_SLAVE_TO_SLAVE = 0x02
} Lin_FrameResponseType;

/* Lin PDU Type */
typedef struct STag_Lin_PduType
{
  Lin_FramePidType      Pid;
  Lin_FrameCsModelType  Cs;
  Lin_FrameResponseType Drc;
  Lin_FrameDlType       Dl;
  uint8 *SduPtr;
} Lin_PduType;


/* Lin channel status Type */
typedef enum eTag_Lin_StatusType
{
  LIN_NOT_OK = 0x00,
  LIN_TX_OK = 0x01,
  LIN_TX_BUSY = 0x02,
  LIN_TX_HEADER_ERROR = 0x03,
  LIN_TX_ERROR = 0x04,
  LIN_RX_OK = 0x05,
  LIN_RX_BUSY = 0x06,
  LIN_RX_ERROR = 0x07,
  LIN_RX_NO_RESPONSE = 0x08,
  LIN_OPERATIONAL = 0x09,
  LIN_CH_SLEEP = 0x0A
} Lin_StatusType;



/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif /* LIN_GENERALTYPES_H */

/*******************************************************************************
**                          End Of File                                       **
*******************************************************************************/
