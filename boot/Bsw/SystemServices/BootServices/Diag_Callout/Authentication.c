/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Authentication.c
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : Dongxue.Guo
************************************************************************************************
*   Description     :
*
************************************************************************************************
*   Limitations     : None
*
************************************************************************************************
*
************************************************************************************************
*   Revision History:
*
*   Version     Date          Initials           CR#         Descriptions
*   --------    -----------   ----------------   --------    -----------------------
*   1.0         2024/06/04    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Authentication.h"
#if(DCM_SERVICE_29_ENABLED == STD_ON)
#include "Common.h"
#include "CommonMacroDefine.h"
#include "SecM.h"
/***************************************************************************************************
*                              INTERNAL DATA TYPES AND STRUCTURES
***************************************************************************************************/

/***************************************************************************************************
*                                   INTERNAL CONSTANT MACROS
***************************************************************************************************/
#define cAuthnCOCOOffset           (1U)
/***************************************************************************************************
*                                     GLOBAL DATA PROTOTYPES
***************************************************************************************************/
Authn_State_t g_AuthnState;
Authn_VCB_t g_Authn_VCB =
{
        0,NULL_PTR,0,NULL_PTR,0,NULL_PTR,0,NULL_PTR,
        0,NULL_PTR,0,NULL_PTR
};
Authn_POWN_t g_Authn_POWN =
{
        0,NULL_PTR,0,NULL_PTR,0,NULL_PTR
};
/***************************************************************************************************
*                                    GLOBAL CONSTANT MACROS
***************************************************************************************************/

/***************************************************************************************************
*                                 INTERNAL FUNCTION PROTOTYPES
***************************************************************************************************/

/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Authn_DeAuthentication
*
* Description   : This function is called when a deAuthentication (0x29 0x00)
*                 service request is received.
*
* Inputs        :
*
* Outputs       : None
*
* Return        : Authentication state
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
AuthnRet_t Authn_DeAuthentication (void)
{
    AuthnRet_t ret = E_RequestAccepted;

    g_AuthnState = E_UnVerified;
    ret = E_DA_Succes;

    return ret;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Authn_VCB_PreProcess
*
* Description   : This function is used to gather all service parameters for
*                 verifyCertificateBidirectional (0x29 0x02) and verify if the length
*                 is accurate.
*
* Inputs        : TotLen: Received total length of the service.
*                 Data: Received service parameters, including communicationConfiguration,
*                 lengthOfCertificateClient, certificateClient, lengthOfChallengeClient,
*                 ChallengeClient.
*
* Outputs       : None
*
* Return        : Length check pass or fail
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 Authn_VCB_PreProcess (uint16 TotLen, uint8* Data)
{
    uint8 ret = E_OK;

    g_Authn_VCB.CertClt_Len = (((uint16)Data[cAuthnCOCOOffset]) << BIT_NUM_OF_BYTE)|\
                                ((uint16)Data[cAuthnCOCOOffset+1u]);
    g_Authn_VCB.ChallengeClt_Len = \
            (((uint16)Data[cAuthnCOCOOffset+g_Authn_VCB.CertClt_Len+2u]) << BIT_NUM_OF_BYTE)
            |((uint16)Data[cAuthnCOCOOffset+g_Authn_VCB.CertClt_Len+3u]);

    /*fixed-length = 29 02 +COCO(1byte)+cert length(2bytes)+challenge length(2bytes)*/
    if(TotLen != (7U + g_Authn_VCB.CertClt_Len + g_Authn_VCB.ChallengeClt_Len))
    {
        ret = E_NOT_OK;
    }
    else
    {
        /*Offset = COCO(1byte)+cert length(2bytes)*/
        g_Authn_VCB.CertClt_Sdu = &Data[cAuthnCOCOOffset+2u];
        /*Offset = COCO(1byte)+cert length(2bytes)+challenge length(2bytes)*/
        g_Authn_VCB.ChallengeClt_Sdu = &Data[5U + g_Authn_VCB.CertClt_Len];
    }

    return ret;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Authn_VCB
*
* Description   : This function is used to process verifyCertificateBidirectional(0x29 0x02),
*                 including verifying certificate client, creating challenge server R2,
*                 generating proof of ownership(PO) server.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : Authentication state
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
AuthnRet_t Authn_VCB (void)
{
    AuthnRet_t ret = E_RequestAccepted;

    /*input: challenge client(R1), certificate client
    **output: return value, challenge server(R2), certificate server, PO server,
              EPK server(not used)*/
    /*1. Verify certificate client*/
    SecM_HSE_Process(1);
    /*2. Create challenge server R2: random number(32 bytes) + ECU id(32 bytes)*/
    SecM_HSE_Process(2);
    /*3. Generate proof of ownership(PO) server: PO = sign(R2|CertSrv|R1)*/
    SecM_HSE_Process(3);

    g_AuthnState = E_CertVerified;
    ret = E_CVOVN;
    return ret;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Authn_VCB_PostProcess
*
* Description   : This function is used to return response total length and fill the response
*                 buffer for verifyCertificateBidirectional(0x29 0x02), including
*                 lengthOfChallengeServer, challengeServer, lengthOfCertificateServer,
*                 certificateServer, lengthOfProofOfOwnershipServer, proofOfOwnershipServer,
*                 lengthOfEphemeralPublicKeyServer.
*                 The returnValue is generated in Authn_VCB() and filled in Dcm module.
*                 The ephemeralPublicKeyServer is not used.
*
* Inputs        :
* *
* Outputs       : data: Diagnostic response buffer
*
* Return        : Diagnostic response total length
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint16 Authn_VCB_PostProcess (uint8* data)
{
    uint16 totlen = 0;
    /*fill challenge server length and data*/
    data[0] = (uint8)(g_Authn_VCB.ChallengeSrv_Len >> BIT_NUM_OF_BYTE);
    data[1] = (uint8)g_Authn_VCB.ChallengeSrv_Len;
    CommF_DataCopy(&data[2],g_Authn_VCB.ChallengeSrv_Sdu,g_Authn_VCB.ChallengeSrv_Len);

    /*fill certificate server length and data*/
    data[2U + g_Authn_VCB.ChallengeSrv_Len] = (uint8)(g_Authn_VCB.CertSrv_Len >> BIT_NUM_OF_BYTE);
    data[3U + g_Authn_VCB.ChallengeSrv_Len] = (uint8)g_Authn_VCB.CertSrv_Len;
    CommF_DataCopy(&data[4U + g_Authn_VCB.ChallengeSrv_Len],g_Authn_VCB.CertSrv_Sdu,
            g_Authn_VCB.CertSrv_Len);

    /*fill PO server length and data*/
    data[4U + g_Authn_VCB.ChallengeSrv_Len + g_Authn_VCB.CertSrv_Len] =
            (uint8)(g_Authn_VCB.POwnSrv_Len >> BIT_NUM_OF_BYTE);
    data[5U + g_Authn_VCB.ChallengeSrv_Len + g_Authn_VCB.CertSrv_Len] =
            (uint8)g_Authn_VCB.POwnSrv_Len;
    CommF_DataCopy(&data[6U + g_Authn_VCB.ChallengeSrv_Len + g_Authn_VCB.CertSrv_Len],
            g_Authn_VCB.POwnSrv_Sdu,g_Authn_VCB.POwnSrv_Len);

    /*fill ephemeral Public Key server length. EPK is not used*/
    data[6U + g_Authn_VCB.ChallengeSrv_Len + g_Authn_VCB.CertSrv_Len + g_Authn_VCB.POwnSrv_Len] =
            (uint8)(g_Authn_VCB.EPKSrv_Len >> BIT_NUM_OF_BYTE);
    data[7U + g_Authn_VCB.ChallengeSrv_Len + g_Authn_VCB.CertSrv_Len + g_Authn_VCB.POwnSrv_Len] =
            (uint8)g_Authn_VCB.EPKSrv_Len;

    /*fixed-length = 69 02 + ret(1byte) + challenge server length(2bytes) + certificate server length(2bytes)
     *  + PO server length(2bytes) + ephemeral Public Key server length(2bytes)*/
    totlen = 11U + g_Authn_VCB.ChallengeSrv_Len + g_Authn_VCB.CertSrv_Len
            + g_Authn_VCB.POwnSrv_Len + g_Authn_VCB.EPKSrv_Len;
    return totlen;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Authn_POwn_PreProcess
*
* Description   : This function is used to gather all service parameters for
*                 proofOfOwnership (0x29 0x03) and verify if the length is accurate.
*
* Inputs        : TotLen: Received total length of the service.
*                 Data: Received service parameters, including lengthOfProofOfOwnershipClient,
*                 proofOfOwnershipClient, lengthOfEphemeralPublicKeyClient,
*                 ephemeralPublicKeyClient.
*                 The ephemeralPublicKeyClient is not used.
*
* Outputs       : None
*
* Return        : Length check pass or fail
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 Authn_POwn_PreProcess (uint16 TotLen, uint8* Data)
{
    uint8 ret = E_OK;

    g_Authn_POWN.POwnClt_Len = (((uint16)Data[0]) << BIT_NUM_OF_BYTE) | ((uint16)Data[1u]);
    g_Authn_POWN.EPKClt_Len = (((uint16)Data[g_Authn_POWN.POwnClt_Len+2u]) << BIT_NUM_OF_BYTE)
                              |((uint16)Data[g_Authn_POWN.POwnClt_Len+3u]);

    /*fixed-length = 29 03 +POWN length(2bytes)+EPK length(2bytes)*/
    if(TotLen != (6U + g_Authn_POWN.POwnClt_Len + g_Authn_POWN.EPKClt_Len))
    {
        ret = E_NOT_OK;
    }
    else
    {
        /*Offset = POWN length(2bytes)*/
        g_Authn_POWN.POwnClt_Sdu = &Data[2];
        if(g_Authn_POWN.EPKClt_Len != 0U)
        {
            /*Offset = POWN client length(2bytes) + EPK length(2bytes)*/
            g_Authn_POWN.EPKClt_Sdu = &Data[4U + g_Authn_POWN.POwnClt_Len];
        }
    }
    return ret;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Authn_POwn
*
* Description   : This function is used to process proofOfOwnership(0x29 0x03),
*                 including verifying proof of ownership(PO) client.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : Authentication state
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
AuthnRet_t Authn_POwn (void)
{
    AuthnRet_t ret = E_RequestAccepted;

    /*input: proof of ownership(PO) client, ephemeral Public Key Client(not used)
    **output: return value, session key info(not used)*/
    /*1. Verify PO client*/
    SecM_HSE_Process(4);

    g_AuthnState = E_FullVerified;
    ret = E_OVAC;
    return ret;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : Authn_POwn_PostProcess
*
* Description   : This function is used to return response total length and fill the response
*                 buffer for proofOfOwnership(0x29 0x03), including lengthOfSessionKeyInfo.
*                 The returnValue is generated in Authn_POwn() and filled in Dcm module.
*                 The sessionKeyInfo is not used.
*
* Inputs        :
*
* Outputs       : data: Diagnostic response buffer
*
* Return        : Diagnostic response total length
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint16 Authn_POwn_PostProcess (uint8* data)
{
    uint16 totlen = 0;
    /*fill session key info length. session key is not used*/
    data[0] = (uint8)(g_Authn_POWN.SessionKey_Len >> BIT_NUM_OF_BYTE);
    data[1] = (uint8)(g_Authn_POWN.SessionKey_Len);

    /*fixed-length = 69 03 + ret(1byte) + session key length(2bytes)*/
    totlen = 5U + g_Authn_POWN.SessionKey_Len;
    return totlen;
}
#endif /*#if(DCM_SERVICE_29_ENABLED == STD_ON)*/
