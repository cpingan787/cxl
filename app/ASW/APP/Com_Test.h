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

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "Com.h"

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
#define  COM_TESTMODE  TRUE
#define  COM_SECOC_TESTMODE  FALSE
#define  CanTSyn_SlaveTestMODE       STD_OFF
#define  CanNM_RepeatMODE_Request       STD_ON
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

extern void Com_Test(void);
extern void Com_SecOC_Test(void);
extern void CanTSyn_SlaveTest(void);
extern void CanNM_RepeatReqTest(void);
extern void Dv_Test(void);

extern uint8 testE2EResult;