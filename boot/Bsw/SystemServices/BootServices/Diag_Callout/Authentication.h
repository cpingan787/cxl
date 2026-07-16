/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Authentication.h
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

#ifndef AUTHENTICATION_H
#define AUTHENTICATION_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Dcm_cfg.h"
#if(DCM_SERVICE_29_ENABLED == STD_ON)
#include "Std_Types.h"
/***************************************************************************************************
*                                           CONSTANTS
***************************************************************************************************/

/***************************************************************************************************
*                                       DEFINES AND MACROS
***************************************************************************************************/
/*Authentication concept*/
#define AuthnConcept_APCE_En         (STD_ON)
#define AuthnConcept_ACR_En          (STD_OFF)
/*Verify direction*/
#define AuthnVerifyUnidirectional    (STD_OFF)
#define AuthnVerifyBidirectional     (STD_ON)
/***************************************************************************************************
*                                             ENUMS
***************************************************************************************************/
typedef enum
{
    E_RequestAccepted, /*RequestAccepted*/
    E_GeneralReject, /*GeneralReject*/
    E_AC_APCE, /*AuthenticationConfiguration APCE*/
    E_AC_ACR_AC, /*AuthenticationConfiguration ACR with asymmetric cryptography*/
    E_AC_ACR_SC, /*AuthenticationConfiguration ACR with symmetric cryptography*/
    E_DA_Succes = 0x10, /*DeAuthentication successful*/
    E_CVOVN, /*CertificateVerified, OwnershipVerificationNecessary. Certificate could be verified in first step, second step is pending.*/
    E_OVAC, /*OwnershipVerified, AuthenticationComplete. Proof of Ownership could be verified, Authentication is complete.*/
    E_CertificateVerified, /*CertificateVerified*/
}AuthnRet_t;

typedef struct
{
    /*in*/
    uint16 CertClt_Len; /*lengthOfCertificateClient*/
    uint8* CertClt_Sdu; /*certificateClient*/
    uint16 ChallengeClt_Len; /*lengthOfChallengeClient*/
    uint8* ChallengeClt_Sdu; /*challengeClient*/
    /*out*/
    uint16 ChallengeSrv_Len; /*lengthOfChallengeServer*/
    uint8* ChallengeSrv_Sdu; /*challengeServer*/
    uint16 CertSrv_Len; /*lengthOfCertificateServer*/
    uint8* CertSrv_Sdu; /*certificateServer*/
    uint16 POwnSrv_Len; /*lengthOfProofOfOwnershipClient*/
    uint8* POwnSrv_Sdu; /*proofOfOwnershipClient*/
    uint16 EPKSrv_Len; /*lengthOfEphemeralPublicKeyServer*/
    uint8* EPKSrv_Sdu; /*ephemeralPublicKeyServer*/
}Authn_VCB_t; /*used by subfunction verifyCertificateBidirectional(02)*/

typedef struct
{
    /*in*/
    uint16 POwnClt_Len; /*lengthOfProofOfOwnershipClient*/
    uint8* POwnClt_Sdu; /*proofOfOwnershipClient*/
    uint16 EPKClt_Len; /*lengthOfEphemeralPublicKeyClient*/
    uint8* EPKClt_Sdu; /*ephemeralPublicKeyClient*/
    /*out*/
    uint16 SessionKey_Len; /*lengthOfSessionKeyInfo*/
    uint8* SessionKey_Sdu; /*sessionKeyInfo*/
}Authn_POWN_t; /*used by subfunction proofOfOwnership(03)*/

typedef enum
{
    E_UnVerified,
    E_CertVerified,
    E_FullVerified
}Authn_State_t;
/***************************************************************************************************
*                                 STRUCTURES AND OTHER TYPEDEFS
***************************************************************************************************/

/***************************************************************************************************
*                                 GLOBAL VARIABLE DECLARATIONS
***************************************************************************************************/
extern Authn_State_t g_AuthnState;
extern Authn_VCB_t g_Authn_VCB;
extern Authn_POWN_t g_Authn_POWN;
/***************************************************************************************************
*                                     FUNCTION PROTOTYPES
***************************************************************************************************/
extern AuthnRet_t Authn_DeAuthentication (void);
extern uint8 Authn_VCB_PreProcess (uint16 TotLen, uint8* Data);
extern AuthnRet_t Authn_VCB (void);
extern uint16 Authn_VCB_PostProcess (uint8* data);
extern uint8 Authn_POwn_PreProcess (uint16 TotLen, uint8* Data);
extern AuthnRet_t Authn_POwn (void);
extern uint16 Authn_POwn_PostProcess (uint8* data);
#endif /*#if(DCM_SERVICE_29_ENABLED == STD_ON)*/
#endif /* AUTHENTICATION_H */
