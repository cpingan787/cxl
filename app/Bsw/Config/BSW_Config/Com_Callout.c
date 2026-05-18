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
 *  @MCU                : R7F7015833
 *  @file               : Com_Callout.c
 *  @author             : iSoft
 *  @date               : 2026-01-22 11:44:18
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#include "ComStack_Types.h"
#include "Com_Callout.h"
#include "Com.h"
#include "Dem.h"
#include "fvm.h"
#include "Rte_E2EXf.h"

#include "taskPowerManage.h"
#include "logHal.h"
#include "Vss.h"

/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK User Includes>
 */
/* Header file defined by User */
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
#define E2E_USER TRUE
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
/* ComIPduCallout IAM_CONNCAN_100ms__FrP18_CONTROLLER0_IAM_Tx code defined by User */
#if E2E_USER
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
		Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_PDU18_CRC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx ,&outputData[0]);
		Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_PDU18_RC_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &outputData[1]);
		Com_SendSignalGroup(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx);
	}
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx>
 */
/* ComIPduCallout IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
#endif
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
#if E2E_USER
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
#endif
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
#if E2E_USER
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
#endif
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
#if E2E_USER
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
#endif
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
#if E2E_USER
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
#endif
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
#if E2E_USER
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
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04(
    PduIdType PduId,
    PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04>
 */
/* ComIPduCallout IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04 code defined by User */
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
#if E2E_USER
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
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
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
#if E2E_USER
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;

#endif
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
#if E2E_USER
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}

boolean PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
 */  
/* ComIPduCallout TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_PEU_PTCANFD_100ms_FrP03_0x17c_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_0x200_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
#if E2E_USER

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

	result = E2EXf_Inv_Transformation_IAM_CONNCANFD_PEU_PTCANFD_50ms_FrP05_0x200_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
#endif
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
boolean ret = TRUE;

	uint8 result =0;
	uint8 inputData[30] = {0};
	uint32 inputLength = 30;
	uint32 outputLength;
	uint8 outputData[30] = {0};
	uint8 i = 0;

	for(i = 0;i < 30;i++)
	{
		inputData[i] = *(&PduInfoPtr->SduDataPtr[i]);
	}

	result = E2EXf_Inv_Transformation_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
    //         testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP10_0x309_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
#if E2E_USER
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

	result = E2EXf_Inv_Transformation_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
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
#if E2E_USER
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
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx>
 */
/* ComIPduCallout DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx code defined by User */
boolean ret = TRUE;
return ret;
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}

boolean ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_0x469_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_0x469_Rx>
 */
/* ComIPduCallout ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_0x469_Rx code defined by User */
boolean ret = TRUE;
#if E2E_USER

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

	result = E2EXf_Inv_Transformation_IAM_CONNCANFD_ICB_RZCUCANFD_200ms_FrP82_0x469_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
    //     testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_0x33d_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_0x33d_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_0x33d_Rx code defined by User */
boolean ret = TRUE;
#if E2E_USER

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

	result = E2EXf_Inv_Transformation_IAM_CONNCANFD_RHZCU_RHBKBCANFD_100ms_FrP10_0x33d_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
    //     testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_0x289_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_0x289_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_0x289_Rx code defined by User */
boolean ret = TRUE;
#if E2E_USER

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

	result = E2EXf_Inv_Transformation_IAM_CONNCANFD_RHZCU_RHBKBCANFD_50ms_FrP01_0x289_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_0x3dc_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_0x3dc_Rx>
 */
/* ComIPduCallout IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_0x3dc_Rx code defined by User */
boolean ret = TRUE;
#if E2E_USER

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

	result = E2EXf_Inv_Transformation_IAM_CONNCANFD_IBS_CHCANFD_100ms_FrP15_0x3dc_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
    //     testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}
boolean RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_0x355_Rx(
    PduIdType PduId,
    const PduInfoType* PduInfoPtr
)
{
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_0x355_Rx>
 */
/* ComIPduCallout RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_0x355_Rx code defined by User */
boolean ret = TRUE;
#if E2E_USER

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

	result = E2EXf_Inv_Transformation_IAM_CONNCANFD_RHZCU_RHBKBCANFD_100ms_FrP09_0x355_Rx(&outputData[0], &outputLength, &inputData[0], inputLength);
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
    //     testE2EResult = ret;
    // CanTSyn_SlaveTest();
return TRUE;
#endif
/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */
}

void Rte_COMCbkTAck_IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx code defined by User */
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

void Rte_COMCbkTAck_ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
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

void Rte_COMCbk_IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx>
     */

    /* 
        1、CanId是0x3C, 信号是 ITripCntResetReq , StartBit是6, 占1bit, 总长是8字节;
        2、0: TripCntResetReq_0_NoRequest, 1: TripCntResetReq_1_EnableRequest, 方向: ZXD To IAM;
        3、若信号使能重置请求, 执行 行程计数器重置
        4、发送CanId是0x98，信号是 IIAMTripCntResetResp ,  StartBit是6, 占1bit, 总长是8字节;
        5、0: IAMTripCntResetResp_0_Failed,1: IAMTripCntResetResp_1_Success
    */
    uint16 TripCntResetReq_Request = 0u;
    Com_ReceiveSignal(ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx, &TripCntResetReq_Request); // 见Com_PBcfg.c
    TBOX_PRINT("ITripCntResetReq: 0x%X\n", TripCntResetReq_Request);
    SECOC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "TripCntReq: 0x%X\n", TripCntResetReq_Request);

    if (1 == TripCntResetReq_Request)
    {
        uint8 ITripCntResetReq = 0;
        Std_ReturnType status = Fvm_ResetTripCounter();
        if (status == E_OK)
        {
            /* 发送 IIAMComKeyEnbResp 成功信号 */
            ITripCntResetReq = 0x40u;
            Com_SendSignal(IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx, &ITripCntResetReq);
        }
        else {
            /* 发送 IIAMComKeyEnbResp 失败信号 */
            ITripCntResetReq = 0;
            Com_SendSignal(IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx, &ITripCntResetReq);
        }
        TBOX_PRINT("Fvm Reset Cnt status: %d\n", status);
        SECOC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "Fvm Reset Cnt status: %d\n", status);
    }

    /* ComNotification Rte_COMCbk_ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx code defined by User */
    /* 
        1、CanId是0x3C, 信号是 IComKeyEnbReq , StartBit是7, 占1bit, 总长是8字节;
        2、0: ComKeyEnbReq_0_No_Request, 1: ComKeyEnbReq_1_Enable_Request, 方向: ZXD To IAM;
        3、若信号使能通信密钥请求, 执行 使能通讯密钥
        4、发送CanId是0x576，信号是 IIAMComKeyEnbResp ,  StartBit是71, 占1bit, 总长是20字节;
        5、0: IAMComKeyEnbResp_0_Failed, 1: IAMComKeyEnbResp_1_Success
    */
   uint16 ComKeyEnbReq_Request = 0u;
   Com_ReceiveSignal(IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx, &ComKeyEnbReq_Request); // 见Com_PBcfg.c
   TBOX_PRINT("IComKeyEnbReq: 0x%X\n", ComKeyEnbReq_Request);
   SECOC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "IComKeyEnbReq: 0x%X\n", ComKeyEnbReq_Request);

   if (1 == ComKeyEnbReq_Request)
   {
       uint8 IIAMComKeyEnbResp = 0;
       uint32 status = Vss_SetSecOCKeyActive();
       if (status == VSS_RET_SUCCESS)
       {
           /* 发送 IIAMComKeyEnbResp 成功信号 */
           IIAMComKeyEnbResp = 0x80u;
           Com_SendSignal(IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx, &IIAMComKeyEnbResp);
       }
       else {
           /* 发送 IIAMComKeyEnbResp 失败信号 */
           IIAMComKeyEnbResp = 0;
           Com_SendSignal(IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx, &IIAMComKeyEnbResp);
       }
       TBOX_PRINT("Vss SecOC Key status: %d\n", status);
       SECOC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "Vss SecOC Key status: %d\n", status);
   }


    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkRxTOut_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkRxTOut_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComTimeoutNotification Rte_COMCbkRxTOut_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkRxTOut_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkRxTOut_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComTimeoutNotification Rte_COMCbkRxTOut_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkRxTOut_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkRxTOut_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComTimeoutNotification Rte_COMCbkRxTOut_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkRxTOut_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkRxTOut_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComTimeoutNotification Rte_COMCbkRxTOut_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkRxTOut_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkRxTOut_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComTimeoutNotification Rte_COMCbkRxTOut_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx code defined by User */


    /* 
        1、CanId是0x56D, 信号是 IIdentityChlg , StartBit是71, 占64bit, 总长是16字节;
        2、方向: ZXD To IAM;
        3、将8字节随机数挑战值使用8000-补齐至16宁节后计算, 调用SM4算法算出应答值，截取前8字节;
        4、发送CanId是0x576，信号是 IIAMIdentityResp ,  StartBit是7, 占64bit, 总长是20字节;
        5、方向: IAM To ZXD;
    */

    static uint8 IIdentityChlgBase[8] = {0};
    static uint8 IIdentityChlg[8] = {0};
    Com_ReceiveSignal(IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx, IIdentityChlgBase); // 见Com_PBcfg.c
    for (uint8 i = 0; i < 8; i++) {
        IIdentityChlg[7 - i] = IIdentityChlgBase[i];
    }

    TBOX_PRINT("IIdentityChlg: 0x%02X %02X %02X %02X %02X %02X %02X %02X\n", 
        IIdentityChlg[0], IIdentityChlg[1], IIdentityChlg[2], IIdentityChlg[3], 
        IIdentityChlg[4], IIdentityChlg[5], IIdentityChlg[6], IIdentityChlg[7]);
    VSS_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "IIdentityChlg: 0x%02X %02X %02X %02X %02X %02X %02X %02X\n", 
        IIdentityChlg[0], IIdentityChlg[1], IIdentityChlg[2], IIdentityChlg[3], 
        IIdentityChlg[4], IIdentityChlg[5], IIdentityChlg[6], IIdentityChlg[7]);
 
    static uint8 IIAMIdentityRespBase[8] = {0};
    static uint8 IIAMIdentityResp[8] = {0};
    uint32 status = Vss_Challenge_Response(IIdentityChlg, IIAMIdentityRespBase);
    for (uint8 i = 0; i < 8; i++) {
        IIAMIdentityResp[7 - i] = IIAMIdentityRespBase[i];
    }

    TBOX_PRINT("IIAMIdentityResp status: %d\n", status);
    Com_SendSignal(IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx, &IIAMIdentityResp);

    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

uint8 Rx_0x56F_5sTimeoutFlag = FALSE;
static uint8 Rx_SyncMsgCnt = 0;
void Rte_COMCbk_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx>
     */
    uint8 ICBVC_SecOC_SyncMsg[8];
    uint32 ICBVC_SecOC_SyncMsg_TripCnt = 0; 
    uint32 ICBVC_SecOC_SyncMsg_ResetCnt = 0; 
    Com_ReceiveSignal(SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,ICBVC_SecOC_SyncMsg);
    ICBVC_SecOC_SyncMsg_TripCnt |= ICBVC_SecOC_SyncMsg[4] << 16;
    ICBVC_SecOC_SyncMsg_TripCnt |= ICBVC_SecOC_SyncMsg[3] << 8;
    ICBVC_SecOC_SyncMsg_TripCnt |= ICBVC_SecOC_SyncMsg[2] ;
    
    ICBVC_SecOC_SyncMsg_ResetCnt |= ICBVC_SecOC_SyncMsg[1] << 8;
    ICBVC_SecOC_SyncMsg_ResetCnt |= ICBVC_SecOC_SyncMsg[0] ;

    Fvm_UpdateSynCounters(ICBVC_SecOC_SyncMsg_TripCnt, ICBVC_SecOC_SyncMsg_ResetCnt);

    TBOX_PRINT("TripCnt: 0x%x, ResetCnt: 0x%x\n", ICBVC_SecOC_SyncMsg_TripCnt, ICBVC_SecOC_SyncMsg_ResetCnt);
    SECOC_LOG_SEND(LOG_LEVEL_INFO, LOG_EVT_RX_MSG, "TripCnt: 0x%x, ResetCnt: 0x%x\n", ICBVC_SecOC_SyncMsg_TripCnt, ICBVC_SecOC_SyncMsg_ResetCnt);

    if(GetSyncMsgLossAndIccEnable()==1)
    {
        if (Rx_SyncMsgCnt++ >= 6) /**1s 发三帧 */
        {
            /* code */
            Rx_SyncMsgCnt = 0;
            Dem_SetEventStatus(EventParameter_0xD60087,DEM_EVENT_STATUS_PASSED); /***Continuous receive for 2s*/
        }
    }
    Rx_0x56F_5sTimeoutFlag = FALSE;
    /* ComNotification Rte_COMCbk_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkRxTOut_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkRxTOut_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx>
     */
    /* ComTimeoutNotification Rte_COMCbkRxTOut_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx code defined by User */
    Rx_0x56F_5sTimeoutFlag = TRUE;
    if(GetSyncMsgLossAndIccEnable()==1)
    {
        Rx_SyncMsgCnt = 0;
        Dem_SetEventStatus(EventParameter_0xD60087,DEM_EVENT_STATUS_FAILED);/**TimeOut is 5.0s*/
    }
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx code defined by User */
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

void Rte_COMCbk_IRRChildProtnSts_RHZCU_RRDCM_BDCAN_500ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRChildProtnSts_RHZCU_RRDCM_BDCAN_500ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRChildProtnSts_RHZCU_RRDCM_BDCAN_500ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLChildProtnSts_LHZCU_RLDCM_BDCAN_500ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLChildProtnSts_LHZCU_RLDCM_BDCAN_500ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLChildProtnSts_LHZCU_RLDCM_BDCAN_500ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLTirePrsV_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITPMSIdficnLrnCm_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITPMSIdficnLrnCm_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITPMSIdficnLrnCm_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLTireTem_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICB_200ms_Group82_Reserved3_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICB_200ms_Group82_Reserved3_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICB_200ms_Group82_Reserved3_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICB_200ms_Group82_Reserved2_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICB_200ms_Group82_Reserved2_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICB_200ms_Group82_Reserved2_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFuelLvlPcntRaw_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFuelLvlPcntRaw_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFuelLvlPcntRaw_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFuelLvlSnsrFlrStsInvsn_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFuelLvlSnsrFlrStsInvsn_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFuelLvlSnsrFlrStsInvsn_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFuelLvlPcntRawV_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFuelLvlPcntRawV_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFuelLvlPcntRawV_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICB_200ms_Group82_Reserved1_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICB_200ms_Group82_Reserved1_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICB_200ms_Group82_Reserved1_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFuelTotCapct_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFuelTotCapct_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFuelTotCapct_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFuelLvlPcnt_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFuelLvlPcnt_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFuelLvlPcnt_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRefuBtnReq_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRefuBtnReq_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRefuBtnReq_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFuelLvlPcntV_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFuelLvlPcntV_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFuelLvlPcntV_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFuelLvlSnsrFlrSts_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFuelLvlSnsrFlrSts_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFuelLvlSnsrFlrSts_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICB_200ms_Group82_RC_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICB_200ms_Group82_RC_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICB_200ms_Group82_RC_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICB_200ms_Group82_CRC_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICB_200ms_Group82_CRC_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICB_200ms_Group82_CRC_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDschrgTrgtSOCVal_ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDschrgTrgtSOCVal_ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDschrgTrgtSOCVal_ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IExtrLckHornReq_LHZCU_BKBCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IExtrLckHornReq_LHZCU_BKBCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IExtrLckHornReq_LHZCU_BKBCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IExtrLckLghtRmndr_LHZCU_BKBCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IExtrLckLghtRmndr_LHZCU_BKBCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IExtrLckLghtRmndr_LHZCU_BKBCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLChrgrFlapSts_RZCU_LHBKBCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLChrgrFlapSts_RZCU_LHBKBCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLChrgrFlapSts_RZCU_LHBKBCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group10_Reserved5_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group10_Reserved5_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group10_Reserved5_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group10_Reserved4_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group10_Reserved4_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group10_Reserved4_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group10_Reserved3_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group10_Reserved3_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group10_Reserved3_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group10_Reserved2_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group10_Reserved2_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group10_Reserved2_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group10_Reserved1_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group10_Reserved1_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group10_Reserved1_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group10_RC_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group10_RC_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group10_RC_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group10_CRC_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group10_CRC_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group10_CRC_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IITMSACCoolngFanActPWMV_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IITMSACCoolngFanActPWMV_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IITMSACCoolngFanActPWMV_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IITMSACCoolngFanActPWM_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IITMSACCoolngFanActPWM_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IITMSACCoolngFanActPWM_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IAmbtTemFaltSts_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IAmbtTemFaltSts_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IAmbtTemFaltSts_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACComprActuPwr_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACComprActuPwr_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACComprActuPwr_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACAmbtTemV_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACAmbtTemV_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACAmbtTemV_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACAmbtTemMsk_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACAmbtTemMsk_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACAmbtTemMsk_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACAmbtTem_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACAmbtTem_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACAmbtTem_RHZCU_RHBKBCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFLDoorLckSts_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFLDoorLckSts_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFLDoorLckSts_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehLckActnFailRsn_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehLckActnFailRsn_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehLckActnFailRsn_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehLckResResp_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehLckResResp_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehLckResResp_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IVehLckTypResp_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IVehLckTypResp_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IVehLckTypResp_LHZCU_LHBKBCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRLDoorLckSts_LHZCU_BKBCANFD_50ms_FrP34_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRLDoorLckSts_LHZCU_BKBCANFD_50ms_FrP34_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRLDoorLckSts_LHZCU_BKBCANFD_50ms_FrP34_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDoorLckCtrlReq_LHZCU_LHBKBCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDoorLckCtrlReq_LHZCU_LHBKBCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDoorLckCtrlReq_LHZCU_LHBKBCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_Reserved5_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_Reserved5_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_Reserved5_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_Reserved6_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_Reserved6_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_Reserved6_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_Reserved4_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_Reserved4_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_Reserved4_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_Reserved3_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_Reserved3_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_Reserved3_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCUeSw41Sts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCUeSw41Sts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCUeSw41Sts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_Reserved2_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_Reserved2_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_Reserved2_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_Reserved1_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_Reserved1_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_Reserved1_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCUeSw41DiagSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCUeSw41DiagSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCUeSw41DiagSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFrtPsngDoorOpenSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFrtPsngDoorOpenSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFrtPsngDoorOpenSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRDoorOpenSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRDoorOpenSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRDoorOpenSts_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_RC_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_RC_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_RC_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_50ms_Group01_CRC_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_50ms_Group01_CRC_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_50ms_Group01_CRC_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved9_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved9_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved9_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved8_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved8_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved8_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved7_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved7_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved7_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved6_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved6_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved6_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved5_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved5_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved5_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved4_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved4_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved4_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved3_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved3_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved3_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved2_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved2_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved2_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_Reserved1_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_Reserved1_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_Reserved1_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_RC_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_RC_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_RC_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_50ms_Group05_CRC_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_50ms_Group05_CRC_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_50ms_Group05_CRC_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IISGStaBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IISGStaBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IISGStaBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IISGHVILStsBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IISGHVILStsBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IISGHVILStsBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IISGSpdVBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IISGSpdVBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IISGSpdVBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IISGActuToqBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IISGActuToqBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IISGActuToqBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IISGActuToqVBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IISGActuToqVBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IISGActuToqVBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IISGFltLvlStsBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IISGFltLvlStsBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IISGFltLvlStsBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IISGSpdBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IISGSpdBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IISGSpdBkup_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOfbdChrgrOtptVol_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOfbdChrgrOtptVol_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOfbdChrgrOtptVol_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOfbdChrgrOtptCrnt_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOfbdChrgrOtptCrnt_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOfbdChrgrOtptCrnt_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOfbdChrgrOtptVolV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOfbdChrgrOtptVolV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOfbdChrgrOtptVolV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBMSOfbdChrgrOtptCrnV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBMSOfbdChrgrOtptCrnV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBMSOfbdChrgrOtptCrnV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACFrtLftTemDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACFrtLftTemDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACFrtLftTemDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRmnDrvngDist_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRmnDrvngDist_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRmnDrvngDist_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IClstrDspdFltLghtSts_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IClstrDspdFltLghtSts_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IClstrDspdFltLghtSts_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IInsdAirPrtclMtrCDC_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IInsdAirPrtclMtrCDC_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IInsdAirPrtclMtrCDC_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACFrtInCarTemV_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACFrtInCarTemV_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACFrtInCarTemV_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICBVehElecRng_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICBVehElecRng_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICBVehElecRng_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITPMSF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITPMSF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITPMSF_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITPMSTirePrsLowIO_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITPMSTirePrsLowIO_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITPMSTirePrsLowIO_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITPMSSystemFault_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITPMSSystemFault_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITPMSSystemFault_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITPMSFrtAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITPMSFrtAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITPMSFrtAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITPMSRrAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITPMSRrAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITPMSRrAxleStdPrsVal_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_Reserved7_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_Reserved7_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_Reserved7_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_Reserved6_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_Reserved6_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_Reserved6_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_Reserved5_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_Reserved5_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_Reserved5_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDistRCAvgDrvnV_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDistRCAvgDrvnV_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDistRCAvgDrvnV_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_Reserved4_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_Reserved4_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_Reserved4_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDistRCAvgDrvn_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDistRCAvgDrvn_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDistRCAvgDrvn_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_Reserved3_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_Reserved3_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_Reserved3_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICsbLvlSts_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICsbLvlSts_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICsbLvlSts_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDistRCAvgDrvnRstOcd_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDistRCAvgDrvnRstOcd_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDistRCAvgDrvnRstOcd_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IDistRCAvgDrvnSrc_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IDistRCAvgDrvnSrc_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IDistRCAvgDrvnSrc_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBrkFrc_GB_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBrkFrc_GB_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBrkFrc_GB_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_Reserved1_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_Reserved1_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_Reserved1_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IBrkFltAlrm_GB_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IBrkFltAlrm_GB_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IBrkFltAlrm_GB_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_RC_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_RC_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_RC_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_Reserved2_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_Reserved2_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_Reserved2_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_100ms_Group15_CRC_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_100ms_Group15_CRC_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_100ms_Group15_CRC_IBS_CHCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILVentFootTem_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILVentFootTem_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILVentFootTem_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IROtsdMirPosRclSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IROtsdMirPosRclSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IROtsdMirPosRclSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IEngAuxHeatDspCmd_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IEngAuxHeatDspCmd_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IEngAuxHeatDspCmd_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRExtrDoorHndlCapSnsrSwtActv_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRExtrDoorHndlCapSnsrSwtActv_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRExtrDoorHndlCapSnsrSwtActv_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRExtrDoorHndlCapSnsrSwtActv_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRExtrDoorHndlCapSnsrSwtActv_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRExtrDoorHndlCapSnsrSwtActv_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRDoorLckSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRDoorLckSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRDoorLckSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group09_Reserved2_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group09_Reserved2_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group09_Reserved2_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACFrtBlwrWorkPcnt_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACFrtBlwrWorkPcnt_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACFrtBlwrWorkPcnt_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRPwrDoorCtrlReq_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRPwrDoorCtrlReq_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRPwrDoorCtrlReq_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRRPwrDoorCtrlReq_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRRPwrDoorCtrlReq_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRRPwrDoorCtrlReq_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IFRDoorLckSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IFRDoorLckSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IFRDoorLckSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACEvapoTemFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACEvapoTemFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACEvapoTemFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHExtrDoorHndlLampSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHExtrDoorHndlLampSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHExtrDoorHndlLampSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IACTemUnitDspCmd_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IACTemUnitDspCmd_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IACTemUnitDspCmd_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IHtdFrtRtVwWndFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IHtdFrtRtVwWndFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IHtdFrtRtVwWndFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IOtsdAirQultSnrValue_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IOtsdAirQultSnrValue_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IOtsdAirQultSnrValue_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IOtsdAirQultSnrFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IOtsdAirQultSnrFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IOtsdAirQultSnrFaltSts_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group09_Reserved1_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group09_Reserved1_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group09_Reserved1_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group09_RC_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group09_RC_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group09_RC_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRHZCU_100ms_Group09_CRC_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRHZCU_100ms_Group09_CRC_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRHZCU_100ms_Group09_CRC_RHZCU_RHBKBCANFD_100ms_FrP09_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}


void Rte_COMCbkTAck_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx>
     */
    Com_IncreaseFrpo3Count();
    /* ComNotification Rte_COMCbkTAck_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx code defined by User */
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

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkTAck_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx>
     */
    /* ComNotification Rte_COMCbkTAck_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
uint8 Rx_0x1F1_100msTimeoutFlag = FALSE;
uint8 Rx_0x1F1_2sTimeoutFlag = FALSE;
uint16 Rx_0x1F1_100msTimeoutCnt = 0 ;
void Rte_COMCbk_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    if(GetSyncMsgLossAndIccEnable())
    {
        static uint8 Rx_0x1F1_MsgCnt = 0;
        if (Rx_0x1F1_MsgCnt ++ >= 20) /**Cycle is 20ms */
        {
            /* code */
            Rx_0x1F1_MsgCnt = 0;
            Dem_SetEventStatus(EventParameter_0xC14687,DEM_EVENT_STATUS_PASSED); /***Continuous receive for 40ms*/
        }
        Rx_0x1F1_100msTimeoutFlag = FALSE ;
        Rx_0x1F1_2sTimeoutFlag = FALSE;
        Rx_0x1F1_100msTimeoutCnt = 0;
    }
    /* ComNotification Rte_COMCbk_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

uint8 Time_Out_1F1=FALSE;

void Rte_COMCbkRxTOut_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbkRxTOut_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx>
     */
    Time_Out_1F1=TRUE;
    /**timeout is 5 帧 ，Timeout is 5* 20 = 100ms**/
    if(GetSyncMsgLossAndIccEnable())
    {
        Rx_0x1F1_100msTimeoutFlag = TRUE ;
        Rx_0x1F1_100msTimeoutCnt++;
        /****/
        if(Rx_0x1F1_100msTimeoutCnt % 2 == 0) /**10帧 */
        {
            
        }
        if(Rx_0x1F1_100msTimeoutCnt % 4 == 0) /**20帧 */
        {
    
        }
        if(Rx_0x1F1_100msTimeoutCnt % 5 == 0) /**25帧 */
        {

        }
        if(Rx_0x1F1_100msTimeoutCnt % 20 == 0) /**100帧 2s DTC */
        {
            Rx_0x1F1_2sTimeoutFlag = TRUE;
            Dem_SetEventStatus(EventParameter_0xC14687,DEM_EVENT_STATUS_FAILED); /***Continuous receive for 40ms*/
        }
    }
    
    /* ComTimeoutNotification Rte_COMCbkRxTOut_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx code defined by User */
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

void Rte_COMCbk_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx(void)
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_COMCbk_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx>
     */
    /* ComNotification Rte_COMCbk_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx code defined by User */
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

