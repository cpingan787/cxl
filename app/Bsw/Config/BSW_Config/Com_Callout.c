/*==============================================================================*/
/**
 *
 * Copyright (C) iSOFT   (2023)
 *
 * All rights reserved.
 *
 * This document contains proprietary information belonging to iSOFT.
 * Passing on and copying of this document, and communication
 * of its contents is not permitted without prior written authorization.
 * 
 ********************************************************************************
 * 
 *  @MCU                : R7F7015813
 *  @file               : Com_Callout.c
 *  @author             : iSoft
 *  @date               : 2026-07-15 10:10:12
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#include "ComStack_Types.h"
#include "Com_Callout.h"
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK User Includes>
 */
/* Header file defined by User */
#include "Com.h"
#include "E2E.h"
#include "Rte_E2EXf.h"
#include "Com_Test.h"
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */

#define COM_START_SEC_CODE
#include "Com_MemMap.h"
/* PRQA S 1532 ++ */ /* MISRA Rule 8.7 */
boolean IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx>
 */
/* ComIPduCallout IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx code defined by User */
boolean ret = TRUE;
    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_CONNCAN_100ms_FrP18_0x32b_Tx(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_CRC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_RC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &outputData[1]);
        Com_SendSignalGroup(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx);
    }
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx>
 */
/* ComIPduCallout IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx code defined by User */
boolean ret = TRUE;
    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_CRC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group56_RC_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx, &outputData[1]);
        Com_SendSignalGroup(IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx);
    }
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06 code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07 code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08 code defined by User */
boolean ret = TRUE;

    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_CRC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group08_RC_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx, &outputData[1]);
        Com_SendSignalGroup(IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx);
    }
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13 code defined by User */
boolean ret = TRUE;

    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_CRC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group13_RC_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &outputData[1]);
        Com_SendSignalGroup(IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx);
    }

return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34 code defined by User */
boolean ret = TRUE;

    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_CRC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group34_RC_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &outputData[1]);
        Com_SendSignalGroup(IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx);
    }
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35 code defined by User */
boolean ret = TRUE;
    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_PDU35_CRC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_PDU35_RC_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &outputData[1]);
        Com_SendSignalGroup(IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx);
    }
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39 code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40 code defined by User */
boolean ret = TRUE;
    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_CRC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group40_RC_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx, &outputData[1]);
        Com_SendSignalGroup(IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx);
    }
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03 code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41 code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57 code defined by User */
boolean ret = TRUE;
    uint8 inputData[7] = {0};
    uint32 inputLength = 7;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 7;i ++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i+1]);
    }

    ret = E2EXf_Transformation_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx(&outputData[0], &outputLength, &inputData[0], inputLength);
    if(E_OK == ret)
    {
        Com_SendSignal(IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_CRC_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx ,&outputData[0]);
        Com_SendSignal(IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_IIAM_ZONE_100ms_Group57_RC, &outputData[1]);
        Com_SendSignalGroup(IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx);
    }
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8;
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_CCU_PTCANFD_100ms_FrP02_0x317_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout CCU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[12] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[12] = {0};
    uint8 i = 0;

    for(i = 0;i < 12;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_CCU_PTCANFD_100ms_FrP03_0x376_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout CCU_PTCANFD_100ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[24] = {0};
    uint32 inputLength = 24; 
    uint32 outputLength;
    uint8 outputData[24] = {0};
    uint8 i = 0;

    for(i = 0;i < 24;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_CCU_PTCANFD_100ms_FrP07_0x3E0_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout CCU_PTCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[16] = {0};
    uint32 inputLength = 16; 
    uint32 outputLength;
    uint8 outputData[16] = {0};
    uint8 i = 0;

    for(i = 0;i < 16;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_CCU_PTCANFD_100ms_FrP11_0x3E4_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ECM_ERCANFD_10ms_FrP00_0x84_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP20_0x308_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP32_0x331_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP58_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTCANFD_100ms_FrP58_0x301_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTCANFD_20ms_FrP01_0x12c_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTCANFD_50ms_FrP14_0x211_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTEXTDCAN_100ms_FrP59_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ESS_PTEXTDCAN_100ms_FrP59_0x3BF_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout FVCM_BKPCANFD_50ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[12] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[12] = {0};
    uint8 i = 0;

    for(i = 0;i < 12;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_FVCM_BKPCANFD_50ms_FrP03_0x2EB_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_IBS_CHCANFD_100ms_FrP15_0x3DC_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_IBS_CHCANFD_10ms_FrP04_0xb8_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 12; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_100ms_FrP19_0x3FF_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_PTCANFD_10ms_FrP25_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[20] = {0};
    uint32 inputLength = 20; 
    uint32 outputLength;
    uint8 outputData[20] = {0};
    uint8 i = 0;

    for(i = 0;i < 20;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_PEU_PTCANFD_10ms_FrP25_0x99_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_PTCANFD_50ms_FrP28_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[32] = {0};
    uint32 inputLength = 32; 
    uint32 outputLength;
    uint8 outputData[32] = {0};
    uint8 i = 0;

    for(i = 0;i < 32;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_PEU_PTCANFD_50ms_FrP28_0x2E8_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PICU_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[20] = {0};
    uint32 inputLength = 20; 
    uint32 outputLength;
    uint8 outputData[20] = {0};
    uint8 i = 0;

    for(i = 0;i < 20;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_PICU_PTCANFD_100ms_FrP29_0x330_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_PTCANFD_10ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[24] = {0};
    uint32 inputLength = 24; 
    uint32 outputLength;
    uint8 outputData[24] = {0};
    uint8 i = 0;

    for(i = 0;i < 24;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_RZCU_PTCANFD_10ms_FrP05_0xE7_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_RZCU_PTCANFD_20ms_FrP06_0x194_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP01_0x163_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
    uint8 result =0;
    uint8 inputData[8] = {0};
    uint32 inputLength = 8; 
    uint32 outputLength;
    uint8 outputData[8] = {0};
    uint8 i = 0;

    for(i = 0;i < 8;i++)
    {
        inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
    }

    result = E2EXf_Inv_Transformation_SDM_CHCANFD_20ms_FrP02_0x187_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
        /*============================================================================*/
    /*Here you can Process the received Data according to ret Value*/
    if(E2E_P_OK == (result & 0x0F))
    {
        /*E2E_P_OK*/
        ret = E2E_P_OK;
    }
    else if(E2E_P_REPEATED == (result & 0x0F))
    {
        /*E2E_P_REPEATED*/
        ret = E2E_P_REPEATED;
    }
    else if(E2E_P_WRONGSEQUENCE == (result & 0x0F))
    {
        /*E2E_P_WRONGSEQUENCE*/
        ret = E2E_P_WRONGSEQUENCE;
    }
    else if(E2E_P_ERROR == (result & 0x0F))
    {
        /*E2E_P_CRCERROR*/
        ret = E2E_P_ERROR;
    }
    // testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
void Rte_COMCbkTAck_IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

/* PRQA S 1532 -- */ /* MISRA Rule 8.7 */
 #define COM_STOP_SEC_CODE
 #include "Com_MemMap.h"
/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/

