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
#include "Adc.h"

extern Adc_ValueGroupType Adc0_Group0_Buffer[16];

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
uint8 UDS_ChildDtc_Test = 0;
// extern uint8 Rx_0x56F_5sTimeoutFlag ;
// extern uint8 Rx_0x1F1_2sTimeoutFlag ;
uint8 Rx_0x56F_5sTimeoutFlag ;
uint8 Rx_0x1F1_2sTimeoutFlag ;
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

    if(Rx_0x1F1_2sTimeoutFlag == TRUE)
    {
         Dem_SetEventStatus(EventParameter_0xC14687,DEM_EVENT_STATUS_FAILED); /***after 85 01 ,will be must set the Event*/
    }

    if(Rx_0x56F_5sTimeoutFlag == TRUE)/***after 85 01 ,will be must set the Event*/
    {
         Dem_SetEventStatus(EventParameter_0xD60087,DEM_EVENT_STATUS_FAILED); 
    }
    // uint16 K30_Voltage = Adc0_Group0_Buffer[13];
    // if((K30_Voltage >= 970 )||(K30_Voltage < 1750))
    // {
    //     Dem_SetEnableCondition(DemEnableCondition_PowerONDlyTimer_ID, TRUE);
    //     for(uint8 i = 0;i<DEM_EVENT_PARAMETER_NUM;i++)
    //     {
    //         Dem_SetEventStatus(i+1,DEM_EVENT_STATUS_FAILED); 
    //     }
    // }
    // else
    // {
    //     Dem_SetEnableCondition(DemEnableCondition_PowerONDlyTimer_ID, FALSE);
    // }
}

