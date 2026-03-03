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
#include "CanTSyn.h"
#include "StbM.h"
#include "Can.h"

#define	StbM_SlaveTimeBaseId	0		/*  StbM Slave time domain ID */

#define	SlaveTimeID0	        0		/*  CanTSyn Slave time domain ID */

#define	SlaveTestCanID	        0x666	/*  CanTSyn Slave Test CAN ID */
#define	SlaveTestCanLength	    8	    /*  CanTSyn Slave Test Data Length */
#define	SlaveTestCanHth	        CanConf_CanHardwareObject_CanHardwareObject_Tx0	    /*  CanTSyn Slave Test Can Hth */
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
uint8 Event_Test = 0;
uint64 Event_TestSig0 = 0;
uint8 Event_TestSig1 = 0;
//uint16 Test_E2ESig0 = 0;
uint8 Test_ComTxSig0 = 0;
uint8 Test_ComRxSig0 = 0;
uint8 testcom[8]={0};

StbM_TimeStampType timestamp;
StbM_UserDataType userData;
uint8 Data[SlaveTestCanLength] = {0};
Can_PduType PduInfo = {&Data[0],SlaveTestCanID,0,SlaveTestCanLength};
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
        //Com_SendSignal(IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,&Event_TestSig0);
        Com_SendSignal(IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx,&Event_TestSig0);
	    Event_Test = 0;
    }

    // Com_SendSignal(IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[0]);
    // Com_SendSignal(IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[1]);
    // Com_SendSignal(IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[2]);
    // Com_SendSignal(IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[3]);
    // Com_SendSignal(IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[4]);
    // Com_SendSignal(IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[5]);
    // Com_SendSignal(IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[6]);
    // Com_SendSignal(IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[7]);

    // Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_Reserved1_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &testcom);
	// Com_SendSignalGroup(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx);
}

void Com_SecOC_Test(void)
{

    /*Event Test*/
    if(Event_Test == 1)
    {
        Com_SendSignal(IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x98
        Com_SendSignal(IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0xB3
        Com_SendSignal(IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x9F
        Com_SendSignal(IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x7D
	    Event_Test = 0;
    }
    
}

void CanTSyn_SlaveTest(void)
{
    StbM_GetCurrentTime(StbM_SlaveTimeBaseId, &timestamp,&userData);

    PduInfo.sdu[0] = (uint8)((timestamp.seconds & 0xff000000) >> 24);
    PduInfo.sdu[1] = (uint8)((timestamp.seconds & 0x00ff0000) >> 16);
    PduInfo.sdu[2] = (uint8)((timestamp.seconds & 0x0000ff00) >> 8);
    PduInfo.sdu[3] = (uint8)((timestamp.seconds & 0x000000ff));
    PduInfo.sdu[4] = (uint8)((timestamp.nanoseconds & 0xff000000) >> 24);
    PduInfo.sdu[5] = (uint8)((timestamp.nanoseconds & 0x00ff0000) >> 16);
    PduInfo.sdu[6] = (uint8)((timestamp.nanoseconds & 0x0000ff00) >> 8);
    PduInfo.sdu[7] = (uint8)((timestamp.nanoseconds & 0x000000ff));

    Can_Write(SlaveTestCanHth, &PduInfo);
}

