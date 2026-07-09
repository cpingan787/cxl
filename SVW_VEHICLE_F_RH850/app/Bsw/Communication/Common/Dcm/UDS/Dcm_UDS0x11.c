/**
 * Copyright (C) 2008-2025 isoft Infrastructure Software Co., Ltd.
 * SPDX-License-Identifier: LGPL-2.1-only-with-exception
 *
 * This library is free software; you can redistribute it and/or modify it under the terms of the
 * GNU Lesser General Public License as published by the Free Software Foundation; version 2.1.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License along with this library;
 * if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 * or see <https://www.gnu.org/licenses/>.
 */
/*
**************************************************************************** **
**                                                                           **
**  FILENAME    :                                                            **
**                                                                           **
**  Created on  : 2020/5/6 14:29:43                                          **
**  Author      : tao.yu                                                     **
**  Vendor      :                                                            **
**  DESCRIPTION :                                                            **
**                                                                           **
**  SPECIFICATION(S) :   AUTOSAR classic Platform 4.2.2                      **
**                                                                           **
**************************************************************************** */
#include "Dcm_Internal.h"
#include "Com.h"
#include "Com_Cfg.h"

#if (STD_ON == DCM_UDS_SERVICE0X11_ENABLED)
/****************************************************************
                UDS:ECUReset(0x11) service
 ***************************************************************/
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h"

#define DCM_APP_0X11_EPTRDYV_VALID_VALUE    ((uint8)0u)   //0:��Ч
#define DCM_APP_0X11_EPTRDY_NOT_READY_VALUE ((uint8)0u)   //0:δ����
#define DCM_APP_0X11_VEHSPD_VALID_VALUE     ((uint8)0u)   //0:��Ч
#define DCM_APP_0X11_VEHSPD_THRESHOLD_RAW   ((uint16)256u)   //����С��4km/h��4 / 0.015625 = 256����������4��Ӧ256

static FUNC(Std_ReturnType, DCM_CODE) Dcm_App_0x11_PreconditionCheck(        
    P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_VAR) ErrorCode)       
{                                                                             
    Std_ReturnType comRet = E_NOT_OK;                                         
    uint8 EPTRdyV = 0u;                                                       
    uint8 EPTRdy = 0u;                                                        
    uint8 VehSpdAvgV = 0u;                                                    
    uint16 VehSpdAvg = 0u;                                                    

    (void)Com_ReceiveSignalGroup(
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx);

    comRet = Com_ReceiveSignal(
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IEPTRdyV_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,
        &EPTRdyV);

    if ((comRet != E_OK) || (EPTRdyV != DCM_APP_0X11_EPTRDYV_VALID_VALUE))
    {
        return E_OK;
    }

    comRet = Com_ReceiveSignal(
        IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx_IEPTRdy_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,
        &EPTRdy);

    if (comRet != E_OK)
    {
        return E_OK;
    }

    if (EPTRdy != DCM_APP_0X11_EPTRDY_NOT_READY_VALUE)
    {
        *ErrorCode = (Dcm_NegativeResponseCodeType)0x83u;
        return E_NOT_OK;
    }

    (void)Com_ReceiveSignalGroup(
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx);

    comRet = Com_ReceiveSignal(
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,
        &VehSpdAvgV);

    if ((comRet != E_OK) || (VehSpdAvgV != DCM_APP_0X11_VEHSPD_VALID_VALUE))
    {
        return E_OK;
    }

    comRet = Com_ReceiveSignal(
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,
        &VehSpdAvg);

    if (comRet != E_OK)
    {
        return E_OK;
    }

    if (VehSpdAvg >= DCM_APP_0X11_VEHSPD_THRESHOLD_RAW)
    {
        *ErrorCode = (Dcm_NegativeResponseCodeType)0x88u;
        return E_NOT_OK;
    }

    return E_OK;
}    

static FUNC(Std_ReturnType, DCM_CODE)
    Dcm_UDS0x11_ConditionCheck(uint8 ProtocolCtrlId, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_VAR) ErrorCode)
{
    uint8 MsgCtrlId;
    Std_ReturnType ret;

    /*if the required protocol is configured,get the index of runtime datum*/
    MsgCtrlId = Dcm_ProtocolCtrl[ProtocolCtrlId].MsgCtrlIndex;

    /*check the required reset type is supported*/
    ret = Dcm_UdsSubServicesCheck(ProtocolCtrlId);
    if (E_NOT_OK == ret)
    {
        /*if the required reset type is not supported,send NRC 0x12*/
        *ErrorCode = DCM_E_SUBFUNCTIONNOTSUPPORTED;
    }
#if (STD_ON == DCM_UDS_SERVICE0X29_ENABLED)
    if (E_OK == ret)
    {
        ret = DspInternal_SubServiceAuthenticationCheck(ProtocolCtrlId, ErrorCode);
    }
#endif /* STD_ON == DCM_UDS_SERVICE0X29_ENABLED */
#if (STD_ON == DCM_SESSION_FUNC_ENABLED)
    if (E_OK == ret)
    {
        ret = DsdInternal_SubSesCheck(ProtocolCtrlId, SID_ECU_RESET, ErrorCode);
    }
#endif /* STD_ON == DCM_SESSION_FUNC_ENABLED */
#if (STD_ON == DCM_SECURITY_FUNC_ENABLED)
    if (E_OK == ret)
    {
        /*security check,check whether the current security supports the request service*/
        ret = DsdInternal_SubSecurityCheck(ProtocolCtrlId, SID_ECU_RESET, ErrorCode);
    }
#endif /* STD_ON == DCM_SECURITY_FUNC_ENABLED */
    if ((E_OK == ret) && (DCM_UDS0X11_REQ_DATA_LENGTH < Dcm_MsgCtrl[MsgCtrlId].MsgContext.ReqDataLen))
    {
        /*the length of massage is not correct,send NRC 0x13*/
        *ErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
        ret = E_NOT_OK;
    }

    if (E_OK == ret)
    {
       ret = Dcm_App_0x11_PreconditionCheck(ErrorCode); 
    }
    return ret;
}

FUNC(Std_ReturnType, DCM_CODE)
Dcm_UDS0x11(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_VAR) ErrorCode)
{
#if (STD_ON == DCM_DSP_ECU_RESET_FUNC_ENABLED)
    uint8 MsgCtrlId;
    uint8 resetType;
    uint8 TxChannelCtrlIndex;
    uint8 TxChannelCfgIndex;
    uint32 Offset;
    Std_ReturnType ret;

    DCM_UNUSED(OpStatus);
    /*if the required protocol is configured,get the index of runtime datum*/
    MsgCtrlId = Dcm_ProtocolCtrl[ProtocolCtrlId].MsgCtrlIndex;
    ret = Dcm_UDS0x11_ConditionCheck(ProtocolCtrlId, ErrorCode);
    if (E_OK == ret)
    {
        ret = RTE_PreConditonCheck();
        if (E_OK != ret)
        {
            *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
            ret = E_NOT_OK;
        }
    }
    if (E_OK == ret)
    {
        /*get the reset type*/
        resetType = Dcm_MsgCtrl[MsgCtrlId].Subfunction;
        /*if all return values are OK,assemble and send positive response*/
        TxChannelCtrlIndex = Dcm_MsgCtrl[MsgCtrlId].Dcm_TxCtrlChannelIndex;
        TxChannelCfgIndex = Dcm_ChannelCtrl[TxChannelCtrlIndex].Dcm_ChannelCfgIndex;
        const Dcm_DslBufferType* pDcmChannelCfg = &DcmPbCfgPtr->pDcmDslCfg->pDcmChannelCfg[TxChannelCfgIndex];
        Offset = pDcmChannelCfg->offset;
        /* check tx data length */
        if ((2u) > (pDcmChannelCfg->Dcm_DslBufferSize))
        {
            /*Pdu length is bigger than buffer size,ignore the request message */
            *ErrorCode = DCM_E_RESPONSETOOLONG;
            ret = E_NOT_OK;
        }
    }
    if (E_OK == ret)
    {
        /*assemble positive response*/
        (void)SchM_Switch_DcmEcuReset(resetType);
        Dcm_Channel[Offset] = 0x51;           /*response SID*/
        Dcm_Channel[Offset + 1u] = resetType; /*an echo of bits 6 - 0 of the sub-function parameter*/
        Dcm_MsgCtrl[MsgCtrlId].MsgContext.ResMaxDataLen = 2u;
        Dcm_MsgCtrl[MsgCtrlId].MsgContext.ResDataLen = 2u;
        Dcm_MsgCtrl[MsgCtrlId].MsgContext.pResData = &Dcm_Channel[Offset];
        DsdInternal_ProcessingDone(ProtocolCtrlId);
    }
    return ret;
#else  /* STD_ON == DCM_DSP_ECU_RESET_FUNC_ENABLED */
    DCM_UNUSED(OpStatus);
    DsdInternal_SetNrc(ProtocolCtrlId, DCM_E_REQUESTOUTOFRANGE);
    DsdInternal_ProcessingDone(ProtocolCtrlId);
    return E_NOT_OK;
#endif /* STD_ON == DCM_DSP_ECU_RESET_FUNC_ENABLED */
}
#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h"
#endif /* STD_ON == DCM_UDS_SERVICE0X11_ENABLED */
