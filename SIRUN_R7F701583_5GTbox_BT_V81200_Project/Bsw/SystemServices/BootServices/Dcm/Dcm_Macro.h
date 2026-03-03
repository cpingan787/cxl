/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Dcm_MacroDefine.h
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
*   1.0         2024/07/19    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
#ifndef DCM_MACRO_H
#define DCM_MACRO_H
/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/
#define DCM_SuppressPosRes_BitMask                          ((uint8)0x80U)
/**************************Response Identifier - Negative response SID**************************/
#define DCM_RsId_NegativeResponse                           ((uint8)0x7FU)
#define DCM_RsLen_NegativeResponse                          ((uint8)0x03U)
/**************************Position of service id in the Dcm_SduBuffer**************************/
#define DCM_SID_Idx                                         ((uint8)0x00u)
/**************************Position of Subservices in the Dcm_SduBuffer**************************/
#define DCM_SubFun_Idx                                      ((uint8)0x01u)
/**************************Negative Response Service code**************************/
#define DCM_NRC_Idx                                         ((uint8)(DCM_SubFun_Idx+1U)) /* Position of negative response code */
/**************************Parameters for busy response handling function**************************/
#define DCM_NRC78_TIMEOUT                                   ((uint8)0x00)
#define DCM_NRC78_FORCE                                     ((uint8)0x01)

/**************************Negative Response Code (NRC) definition**************************/
#define DCM_NRC_positiveResponse                            ((uint8)0x00u)
#define DCM_NRC_serviceNotSupported                         ((uint8)0x11u)
#define DCM_NRC_SubFunctionNotSupported                     ((uint8)0x12u)
#define DCM_NRC_incorrectMessageLengthOrInvalidFormat       ((uint8)0x13u)
#define DCM_NRC_conditionsNotCorrect                        ((uint8)0x22u)
#define DCM_NRC_requestSequenceError                        ((uint8)0x24u)
#define DCM_NRC_requestOutOfRange                           ((uint8)0x31u)
#define DCM_NRC_securityAccessDenied                        ((uint8)0x33u)
#define DCM_NRC_authenticationRequired                      ((uint8)0x34u)
#define DCM_NRC_invalidKey                                  ((uint8)0x35u)
#define DCM_NRC_exceedNumberOfAttempts                      ((uint8)0x36u)
#define DCM_NRC_requiredTimeDelayNotExpired                 ((uint8)0x37u)
#define DCM_NRC_uploadDownloadNotAccepted                   ((uint8)0x70u)
#define DCM_NRC_transferDataSuspended                       ((uint8)0x71u)
#define DCM_NRC_generalProgrammingFailure                   ((uint8)0x72u)
#define DCM_NRC_wrongBlockSequenceCounter                   ((uint8)0x73u)
#define DCM_NRC_requestCorrectlyReceived_ResponsePending    ((uint8)0x78u)
#define DCM_NRC_SubFunctionNotSupportedInActiveSession      ((uint8)0x7Eu)
#define DCM_NRC_serviceNotSupportedInActiveSession          ((uint8)0x7Fu)
#define DCM_NRC_voltageTooHigh                              ((uint8)0x92u)
#define DCM_NRC_voltageTooLow                               ((uint8)0x93u)

/**************************Defines of UDS diag services**************************/
#define DCM_SID_DiagnosticSessionControl                    ((uint8)0x10U)
#define DCM_SID_EcuReset                                    ((uint8)0x11U)
#define DCM_SID_ReadDataByIdentifier                        ((uint8)0x22U)
#define DCM_SID_SecurityAccess                              ((uint8)0x27U)
#define DCM_SID_CommunicationControl                        ((uint8)0x28U)
#define DCM_SID_WriteDataByIdentifier                       ((uint8)0x2EU)
#define DCM_SID_RoutineControl                              ((uint8)0x31U)
#define DCM_SID_RequestDownload                             ((uint8)0x34U)
#define DCM_SID_TransferData                                ((uint8)0x36U)
#define DCM_SID_RequestTransferExit                         ((uint8)0x37U)
#define DCM_SID_TesterPresent                               ((uint8)0x3EU)
#define DCM_SID_ControlDTCSetting                           ((uint8)0x85U)
#define DCM_SID_Authentication                              ((uint8)0x29U)

/**************************Defines length of service request**************************/
#define DCM_RqLen_DiagnosticSessionControl                  ((uint8)0x02U)
#define DCM_RqLen_EcuReset                                  ((uint8)0x02U)
#define DCM_RqLen_ReadDataByIdentifierMin                   ((uint8)0x03U)
#if(DCM_SERVICE_27_ENABLED==STD_ON)
#define DCM_RqLen_SecurtityAccessMin                        ((uint8)0x02U)
#define DCM_RqLen_SecurityAccessSeed                        ((uint8)0x02U)
#define DCM_RqLen_SecurityAccessKey                         ((uint8)0x02U + SA_L1_KEYLEN)/*key length=4*/
#endif
#define DCM_RqLen_CommunicationControl                      ((uint8)0x03U)
#define DCM_RqLen_WriteDataByIdentifierMin                  ((uint8)0x04U)
#define DCM_RqLen_RoutineControlMin                         ((uint8)0x04U)
#define DCM_RqLen_RequestDownload                           ((uint8)0x03U + \
                                                        DCM_34_ADDR_FORMAT + DCM_34_SIZE_FORMAT)
#define DCM_RqLen_RequestDownloadMin                        ((uint8)0x05U)
#define DCM_RqLen_TransferData                              ((uint8)DCM_TRANSDATA_MAXNUM_OF_BLOCKLENGTH)
#define DCM_RqLen_TransferDataMin                           ((uint8)0x03U)
#define DCM_RqLen_RequestTransferExit                       ((uint8)0x02U)
#define DCM_RqLen_TesterPresent                             ((uint8)0x02U)
#define DCM_RqLen_ControlDTCSetting                         ((uint8)0x02U)
#if(DCM_SERVICE_29_ENABLED == STD_ON)
#define DCM_RqLen_AuthenticationMin                         ((uint8)0x02U)
#define DCM_RqLen_Authn_DA                                  ((uint8)0x02U)         
#endif/*#if(DCM_SERVICE_29_ENABLED == STD_ON)*/

/**************************Defines for response length codes**************************/
#define DCM_RsLen_DiagnosticSessionControl                  ((uint8)0x06)
#define DCM_RsLen_EcuReset                                  ((uint8)0x02)
#if(DCM_SERVICE_27_ENABLED==STD_ON)
#define DCM_RsLen_SecurityAccessSeed                        ((uint8)(0x02 + SA_L1_SEEDLEN))
#define DCM_RsLen_SecurityAccessKey                         ((uint8)0x02)
#endif
#define DCM_RsLen_CommunicationControl                      ((uint8)0x02)
#define DCM_RsLen_WriteDataByIdentifier                     ((uint8)0x03)
#define DCM_RsLen_RoutineControl                            ((uint8)0x05)
#define DCM_RsLen_RequestDownload                           ((uint8)(0x02 + DCM_34_LENGTH))
#define DCM_RsLen_TransferData                              ((uint8)0x02)
#define DCM_RsLen_RequestTransferExit                       ((uint8)0x04)
#define DCM_RsLen_TesterPresent                             ((uint8)0x02)
#define DCM_RsLen_ControlDTCSetting                         ((uint8)0x02)

/**************************DiagnosticSessionControl**************************/
#define DCM_SubFun_DefaultSession                           ((uint8)0x01U)
#define DCM_SubFun_ProgrammingSession                       ((uint8)0x02U)
#define DCM_SubFun_ExtendedDiagnosticSession                ((uint8)0x03U)

/**************************EcuReset**************************/
#define DCM_SubFun_HardReset                                ((uint8)0x01U)

/**************************SecurityAccess**************************/
#define DCM_SeedKey_Idx                                     ((uint8)(DCM_SubFun_Idx + 0x01U))

/**************************CommunicationControl**************************/
#define DCM_SubFun_EnableRxAndTx                            ((uint8)0x00U)
#if DCM_SERVICE_28_01_ENABLED
#define DCM_SubFun_EnableRxAndDisableTx                     ((uint8)0x01U)
#endif
#if DCM_SERVICE_28_02_ENABLED
#define DCM_SubFun_DisableRxAndEnableTx                     ((uint8)0x02U)
#endif
#define DCM_SubFun_DisableRxAndTx                           ((uint8)0x03U)

#define DCM_CommTypeNormalComm                              ((uint8)0x01U)
#define DCM_CommTypeNmComm                                  ((uint8)0x02U)
#define DCM_CommTypeNormalAndNmComm                         ((uint8)0x03U)

/**************************RoutineControl**************************/
#define DCM_RoutineParam_Idx                                ((uint8)(DCM_SubFun_Idx + 0x03U))
#define DCM_SubFun_StartRoutine                             ((uint8)0x01U)

#define DCM_Routine_CorrectResult                           ((uint8)0x00U)
#define DCM_Routine_IncorrectResult                         ((uint8)0x01U)

/**************************RequestDownload**************************/
#define DCM_34_DataFormat_Idx                               ((uint8)(DCM_SID_Idx + 1))
#define DCM_34_AddrLenFormat_Idx                            ((uint8)(DCM_34_DataFormat_Idx + 1))
#define DCM_34_MemAddr_Idx                                  ((uint8)(DCM_34_AddrLenFormat_Idx + 1))
#define DCM_34_MemSize_Idx                                  ((uint8)(DCM_34_MemAddr_Idx + DCM_34_ADDR_FORMAT))

/**************************TransferData**************************/
#define DCM_36_BSC_Idx                                      ((uint8)(DCM_SubFun_Idx))
#define DCM_36_Data_Idx                                     ((uint8)(DCM_36_BSC_Idx + 1))

/**************************TesterPresent**************************/
#define DCM_SubFun_ZeroSubFunction                          ((uint8)0x00U)

/**************************ControlDTCSetting**************************/
#define DCM_SubFun_DTCSettingOn                             ((uint8)0x01U)
#define DCM_SubFun_DTCSettingOff                            ((uint8)0x02U)

/**************************Authentication**************************/
#if(DCM_SERVICE_29_ENABLED == STD_ON)
#define DCM_SubFun_deAuthenticate                           ((uint8)0x00U)
#if(AuthnConcept_APCE_En == STD_ON)
#if(AuthnVerifyUnidirectional == STD_ON)
#define DCM_SubFun_verifyCertificateUnidirectional          ((uint8)0x01U)
#endif
#if(AuthnVerifyBidirectional == STD_ON)
#define DCM_SubFun_verifyCertificateBidirectional           ((uint8)0x02U)
#endif
#define DCM_SubFun_proofOfOwnership                         ((uint8)0x03U)
#define DCM_SubFun_transmitCertificate                      ((uint8)0x04U)
#endif/*#if(AuthnConcept_APCE_En == STD_ON)*/
#if(AuthnConcept_ACR_En == STD_ON)
#define DCM_SubFun_requestChallengeForAuthentication        ((uint8)0x05U)
#if(AuthnVerifyUnidirectional == STD_ON)
#define DCM_SubFun_verifyProofOfOwnershipUnidirectional     ((uint8)0x06U)
#endif
#if(AuthnVerifyBidirectional == STD_ON)
#define DCM_SubFun_verifyProofOfOwnershipBidirectional      ((uint8)0x07U)
#endif
#endif/*#if(AuthnConcept_ACR_En == STD_ON)*/
#define DCM_SubFun_authenticationConfiguration              ((uint8)0x08U)

#define DCM_Authn_RetVal_Idx                                ((uint8)(DCM_SubFun_Idx + 0x01U))
#endif/*#if(DCM_SERVICE_29_ENABLED == STD_ON)*/

#endif /* DCM_MACRO_H */
