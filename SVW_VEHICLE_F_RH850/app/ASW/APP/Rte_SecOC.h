/*******************************************************************************
**                                                                            **
**  FILENAME    : Com_Test.c                                                  **
**                                                                            **
**  Created on  :                                                             **
**  Author      :                                                  **
**  Vendor      :                                                             **
**  DESCRIPTION :                                     **
**                                                                            **
**  SPECIFICATION(S) : AUTOSAR Classic Platform 4.2.2 and R19-11              **
**                                                                            **
*******************************************************************************/
#ifndef RTEDEM_H
#define RTEDEM_H
#include "queue_fifo.h"
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
extern QueueFIFO SecOC_ErrorLogQueue;
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

extern void App_VerificationStatusCallout(SecOC_VerificationStatusType VerificationStatus);
extern void App_SecOC_ErrorLogProcess(void);
#endif /*RTEDEM_H*/

