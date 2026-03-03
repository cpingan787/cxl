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
#include "Com_Test.h"
#include "Com.h"


/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
uint8 Event_Test = 0;
uint64 Event_TestSig0 = 0;
uint8 Event_TestSig1 = 0;
//uint16 Test_E2ESig0 = 0;
uint8 Test_ComTxSig0 = 0;
uint8 Test_ComRxSig0 = 0;
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

void Com_Test(void)
{

    /*Test Com Tx&*/
    Com_SendSignal(IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,&Test_ComTxSig0);
    Com_ReceiveSignal(IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,&Test_ComRxSig0);
    /*Event Test*/
    if(Event_Test == 1)
    {
        Com_SendSignal(IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,&Event_TestSig0);
	    Event_Test = 0;
    }

}

