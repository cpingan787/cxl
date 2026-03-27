/*******************************************************************************
**                                                                            **
**  FILENAME    : Uds_Test.c                                                  **
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

#include "Uds_Test.h"

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
uint8 UDS_ChildDtc_Test = 0;

/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

void Uds_Test(void)
{
    /*Test Com Tx&*/
    #if (UDS_TEUDS_ChildDtc_Test == TRUE)
    {

         /*Event Test*/
        if(UDS_ChildDtc_Test == 1)
        {
            Dem_SetEventStatus(EventParameter_0xD56217,DEM_EVENT_STATUS_FAILED);
            Dem_SetEnableCondition(DemEnableCondition_U156217_ID, FALSE);

            
            //Dem_SetEventStatus(EventParameter_0x951511,DEM_EVENT_STATUS_PASSED); /*If a parent DTC fails, child faults shall be cleared and shall not be reported even if they have been triggered.*/
        }
        else if(UDS_ChildDtc_Test == 2)
        {
            Dem_SetEventStatus(EventParameter_0x951511,DEM_EVENT_STATUS_FAILED);
        }
        else
        {
            Dem_SetEventStatus(EventParameter_0xD56217,DEM_EVENT_STATUS_PASSED);
            Dem_SetEnableCondition(DemEnableCondition_U156217_ID, TRUE);
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
    #endif
}

