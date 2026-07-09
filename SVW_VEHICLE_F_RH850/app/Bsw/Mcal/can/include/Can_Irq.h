/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_Irq.h                                                   */
/* Version      = V1.0.1                                                      */
/* Date         = 03-Jun-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* C header file for Can_Irq.c                                                */
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
 * V1.0.0: 31-May-2019  : Initial version
 * V1.0.1: 03-Jun-2021  : Added QAC Warning messages.
*/

#ifndef CAN_IRQ_H
#define CAN_IRQ_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* CAN module header file */
#include "Can.h"
/* Included for interrupt category definitions */
#include "Os.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_IRQ_AR_RELEASE_MAJOR_VERSION     CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_IRQ_AR_RELEASE_MINOR_VERSION     CAN_AR_RELEASE_MINOR_VERSION
#define CAN_IRQ_AR_RELEASE_REVISION_VERSION  CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_IRQ_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_IRQ_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION


/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* EICn */
#define CAN_EIC_EIRF_MASK       (uint16)0x1000U
#define CAN_EIC_EIMK_MASK       (uint16)0x0080U

/* Unit physical index */
#define CAN_PHYIDX_UNIT0             0U
#define CAN_PHYIDX_UNIT1             1U


/* Controller physical index */
#define CAN_PHYIDX_CONTROLLER0       0U
#define CAN_PHYIDX_CONTROLLER1       1U
#define CAN_PHYIDX_CONTROLLER2       2U
#define CAN_PHYIDX_CONTROLLER3       3U
#define CAN_PHYIDX_CONTROLLER4       4U
#define CAN_PHYIDX_CONTROLLER5       5U
#define CAN_PHYIDX_CONTROLLER6       6U
#define CAN_PHYIDX_CONTROLLER7       7U
#define CAN_PHYIDX_CONTROLLER8       8U
#define CAN_PHYIDX_CONTROLLER9       9U
#define CAN_PHYIDX_CONTROLLER10       10U
#define CAN_PHYIDX_CONTROLLER11       11U

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
/*******************************************************************************
**                                QAC Warning                                 **
*******************************************************************************/

/******************************************************************************/
/* 1. QAC warning:                                                            */
/* Message       : (2:0832) Macro substitution in #include preprocessing      */
/*                 directive.                                                 */
/* Rule          : No MISRA-C:2004 Rules applicable to message 0832           */
/* Justification : The included file name is necessary to be defined as macro */
/*                 to support multiple configration of Autosar version which  */
/*                 have different requirement for Memmap file name. In        */
/*                 additional, JB0019 coding guideline do not restrict        */
/*                 this usage of macro.                                       */
/* Verification  : This is quite legitimate in C. It is necessary for macro   */
/*                 substitution and it is not having any impact.              */
/* Reference     : Look for START Msg(2:0832)-1 and                           */
/*                 END Msg(2:0832)-1 tags in the code.                        */
/******************************************************************************/
/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_CODE_FAST
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

#if defined (Os_CAN_RSCAN0_RXFIFO_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_  FUNC(void, CAN_RSCAN_FAST_CODE) CAN_RSCAN0_RXFIFO_ISR(void);
#endif

#if defined (Os_CAN_RSCAN1_RXFIFO_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_  FUNC(void, CAN_RSCAN_FAST_CODE) CAN_RSCAN1_RXFIFO_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER0_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER0_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER1_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER1_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER2_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER2_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER3_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER4_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER5_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER6_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER7_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER8_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER9_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
                          CAN_CONTROLLER10_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
                          CAN_CONTROLLER11_RX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER0_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER0_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined  (Os_CAN_CONTROLLER1_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER1_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined  (Os_CAN_CONTROLLER2_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER2_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER3_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER4_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER5_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER6_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER7_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER8_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER9_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
                          CAN_CONTROLLER10_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
                          CAN_CONTROLLER11_TX_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER0_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER0_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER1_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER1_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER2_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER2_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER3_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER4_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER5_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER6_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER7_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER8_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER9_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER10_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER11_BUSOFF_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER0_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER0_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER1_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_  FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER1_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER2_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER2_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER3_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER4_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER5_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER6_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER7_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER8_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER9_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER10_WAKEUP_ISR(void);
#endif

/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* Use ISR() macro from Os.h */
/* Defines the CAT1 interrupt mapping */
#else
extern  _INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE)
  CAN_CONTROLLER11_WAKEUP_ISR(void);
#endif

#define CAN_RSCAN_STOP_SEC_CODE_FAST
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

#endif /* CAN_IRQ_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
