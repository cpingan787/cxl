/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_PBTypes.h                                               */
/* Version      = V1.0.1                                                      */
/* Date         = 03-Jun-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of AUTOSAR CAN Post Build time parameters.                       */
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
/*                                                                            */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:  31-May-2019  : Initial version
 * V1.0.1:  03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                         Add QAC message (2:0342).
 *          03-Jun-2021  : Added QAC Warning messages.
 */
/******************************************************************************/

#ifndef CAN_PBTYPES_H
#define CAN_PBTYPES_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Can.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_PBTYPES_AR_RELEASE_MAJOR_VERSION    CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_PBTYPES_AR_RELEASE_MINOR_VERSION    CAN_AR_RELEASE_MINOR_VERSION
#define CAN_PBTYPES_AR_RELEASE_REVISION_VERSION CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_PBTYPES_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_PBTYPES_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0342) Using the glue operator '##'..                    */
/* Rule          : MISRA-C:2004 Rule-19.13                                    */
/* Justification : This can be accepted, due to the implementation is         */
/*                 following AUTOSAR standard rule for SchM module's name.    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0342)-1 and                           */
/*                 END Msg(2:0342)-1 tags in the code.                        */
/******************************************************************************/
/******************************************************************************/
/**                      QAC warning                                         **/
/******************************************************************************/

/* 1. QAC Warning:                                                            */
/* Message       : (1:3132) Hard coded 'magic' number, 'n', used to define    */
/*                 the size of an array.                                      */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3132           */
/* Justification : These numbers are used to define register structures.      */
/*                 These completely depend on H/W and it is impossible to     */
/*                 define particular symbolic names.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(1:3132)-1 and                           */
/*                 END Msg(1:3132)-1 tags in the code.                        */
/******************************************************************************/
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* Index of the default baudrate in Can_ControllerBaudrateConfigType array */
#define CAN_DEFAULT_BAUDRATE_INDEX  0U

#if (CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
/* MISRA Violation: START Msg(2:0342)-1 */
#define CAN_ENTER_CRITICAL_SECTION(Exclusive_Area)\
                                              SchM_Enter_Can_##Exclusive_Area()
/* END Msg(2:0342)-1 */

/* MISRA Violation: START Msg(2:0342)-1 */
#define CAN_EXIT_CRITICAL_SECTION(Exclusive_Area)\
                                              SchM_Exit_Can_##Exclusive_Area()
/* END Msg(2:0342)-1 */
#else
#define CAN_ENTER_CRITICAL_SECTION(Exclusive_Area)
#define CAN_EXIT_CRITICAL_SECTION(Exclusive_Area)
#endif

/*******************************************************************************
**                     ACCEPTANCE FILTER RECEIVE RULE CONFIGURATION           **
*******************************************************************************/
/* This structure includes values of filter setting registers */
typedef struct STag_Can_FilterType
{
  /* Value of GAFLIDj */
  uint32 ulGAFLID;
  /* Value of GAFLMj */
  uint32 ulGAFLM;
  /* Value of GAFLP0j and GAFLP1j */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaGAFLP[2];
  /* END Msg(1:3132)-1 */
} Can_FilterType;

/* This structure includes static information for each CAN module */
typedef struct STag_Can_HWUnitInfoType
{
  /* Element number of pTMIEC */
  uint8 ucNoOfTMIEC;
  /* Valid number of aaGAFLCFG */
  uint8 ucNoOfGAFLCFG;
  /* Element number of pFilterConfig */
  uint16 usNoOfFilters;
  /* Value of RMNB including number and payload size of rx buffer */
  uint32 ulRMNB;
  /* Value of GCFG including mirror, DLC check, and priority features */
  uint32 ulGCFG;
  /* Value of GAFLCFGn including number of filters, [0]:ch.0-3 [1]:ch.4-7 */
  /* QAC Warning: START Msg(1:3132)-1 */
  uint32 aaGAFLCFG[2];
  /* END Msg(1:3132)-1 */
  /* Pointer to table including value of TMIECy */
  P2CONST(uint32, TYPEDEF, CAN_RSCAN_CONFIG_DATA) pTMIEC;
  /* Pointer to table including HW filter information */
  P2CONST(Can_FilterType, TYPEDEF, CAN_RSCAN_CONFIG_DATA) pFilterConfig;
#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
  uint32 ulRxFIFOWUFMask;
#endif
} Can_HWUnitInfoType;

/*******************************************************************************
**            HARDWARE TRANSMIT/RECEIVE HARDWARE OBJECT STRUCTURE             **
*******************************************************************************/
/* HRH or HTH */
typedef enum ETag_Can_HohType
{
  /* This is HRH */
  CAN_HOH_HRH,
  /* This is HTH */
  CAN_HOH_HTH
} Can_HohType;

/* Buffer type */
typedef enum ETag_Can_BufferType
{
  /* Single buffer */
  CAN_BUFFERTYPE_BUFFER,
  /* Transmit/Receive FIFO */
  CAN_BUFFERTYPE_TXRXFIFO,
  /* Gateway mode */
  CAN_BUFFERTYPE_GATEWAY,
  /* Receive FIFO */
  CAN_BUFFERTYPE_RXFIFO,
  /* Transmit Queue */
  CAN_BUFFERTYPE_TXQUEUE
} Can_BufferType;

/* Hardware Transmit Handle Structure */
typedef struct STag_Can_HohConfigType
{
  /* HRH or HTH */
  Can_HohType enHoh;
  /* Index of CanMainFunctionRWPeriod */
  uint8 ucMainFunctionRIndex;
  /* Index of controller which this HxH allocated to */
  uint8 ucController;
  /* TMDLC value indicating the maximum payload length */
  uint8 ucTMDLC;
  /* ID of HRH or HTH */
  uint16 usHohId;
  /* Type of the buffer */
  Can_BufferType enBufferType;
  /* Index for TxBuffer, RxBuffer, RxFIFO or TxRxFIFO */
  uint8 ucBufferIndex;
#if (CAN_TRIGGER_TRANSMIT_FUNCTION == STD_ON)
  /* Whether trigger transmit is enabled for this HTH */
  boolean blTriggerTransmitEnable;
#endif
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
  /* Padding value for CANFD */
  uint8 ucPaddingValue;
#endif
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_TX_QUEUE == STD_ON) || \
  (CAN_RX_FIFO == STD_ON) || (CAN_RX_COMFIFO == STD_ON) || \
  (CAN_GATEWAY_COMFIFO == STD_ON))
  /* Register value for CFCC, RFCC or TXQCC */
  uint32 ulXXCCRegValue;
#endif
} Can_HohConfigType;

/*******************************************************************************
**             CAN Controller Post-build Structure                            **
*******************************************************************************/
/* Baud rate structure */
typedef struct STag_Can_BaudrateConfigType
{
  /* Value of CanControllerBaudRateConfigID used by Can_SetBaudrate API */
  uint8 ucBaudrateConfigID;
  /* Value of CanControllerBaudRate used by Can_ChangeBaudrate API */
  uint16 usBaudrateConfig;
  /* Value of CmCFG including baudrate and timing settings */
  uint32 ulCFG;
#if(CAN_RSCANFD_CONFIGURED == STD_ON)
  /* Value of CmDCFG including baudrate and timing settings for FD */
  uint32 ulDCFG;
  /* Value of CmFDCFG */
  uint32 ulFDCFG;
  /* Whether baudrate switching is enabled or disabled */
  boolean blBRS;
  /* Whether CanControllerFdBaudrateConfig is configured */
  boolean blFdConfigured;
#endif
} Can_ControllerBaudrateConfigType;

/* This structure includes Post-Build configurations for each Controller */
typedef struct STag_Can_ControllerPBConfigType
{
  /* Index of CanMainFunctionRWPeriod */
  uint8 ucMainFunctionWIndex;
  /* Element number of pBaudrateConfig */
  uint16 usNoOfBaudrate;
  /* Pointer to baud-rate configuration structure */
  P2CONST(Can_ControllerBaudrateConfigType, TYPEDEF, CAN_RSCAN_CONFIG_DATA)
    pBaudrateConfig;
} Can_ControllerPBConfigType;

/*******************************************************************************
**                      Extern declarations for Global Data                   **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
#endif /* CAN_PBTYPES_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
