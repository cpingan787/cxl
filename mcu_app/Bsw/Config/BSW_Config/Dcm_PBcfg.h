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
 *  @file               : Dcm_PBcfg.h
 *  @author             : iSoft
 *  @date               : 2026-01-21 17:21:53
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef DCMPBCFG_H
#define DCMPBCFG_H
#include "PduR_PBcfg.h"

/****************************************************************************************
*********************************DcmDsl container***************************************
*****************************************************************************************/
#define  DCM_CHANNEL_NUM                            (2u)     /*number of configuration Channel*/
#define  DCM_CHANNEL_LENGTH                         (2048u)   /*the total length of channel*/
#define  DCM_TEMP_BUFFER_LENGTH                     (458u)
#define  DCM_DSLPROTOCOLROW_NUM_MAX                 (1u)     /*number of configuration protocol*/
#define  DCM_MAINCONNECTION_NUM                     (1u)
#define  DCM_PERIODICCONNECTION_NUM                 (0u)
#define  DCM_ROECONNECTION_NUM                      (0u)
#define  DCM_CONNECTION_NUM                         (1u)

#define  DCM_DSL_RX_ID_NUM                          (2u)
#define  DCM_DSL_TX_ID_NUM                          (1u)

#define DCM_Dcm_fun_rx_0x7df                                    0x0 /*RxPdu Id*/
#define DCM_Dcm_phy_rx_0x711                                    0x1 /*RxPdu Id*/

#define DCM_Dcm_phy_tx_0x719                                    0x0 /*TxPdu Id*/
#define DCM_PDUR_Dcm_phy_tx_0x719                                PDUR_SRCPDU_Dcm_phy_tx_0x719

/****************************************************************************************
*********************************DcmDsd container****************************************
*****************************************************************************************/
#define  DCM_SERVICE_TAB_NUM                        (1u)     /*number of service table*/
/*******************************************/
/*UDS protocol*/
#define  DCM_UDS_FUNC_ENABLED                       (STD_ON) /*Enable/Disable UDS Protocol*/

    #define  DCM_UDS_SERVICE_NUM                    (12u)
    #define  DCM_UDS_SERVICE0X10_ENABLED            (STD_ON) /*DiagnosticSessionControl*/
    #define  DCM_UDS_SERVICE0X11_ENABLED            (STD_ON) /*ECUReset*/
    #define  DCM_UDS_SERVICE0X14_ENABLED            (STD_ON) /*ClearDiagnosticInformation*/
    #define  DCM_UDS_SERVICE0X19_ENABLED            (STD_ON) /*ReadDTCInformation*/
    #define  DCM_UDS_SERVICE0X22_ENABLED            (STD_ON) /*ReadDataByIdentifier*/
    #define  DCM_UDS_SERVICE0X23_ENABLED            (STD_OFF) /*ReadMemoryByAddress*/
    #define  DCM_UDS_SERVICE0X24_ENABLED            (STD_OFF) /*ReadScalingDataByIdentifier*/
    #define  DCM_UDS_SERVICE0X27_ENABLED            (STD_ON) /*SecurityAccess*/
    #define  DCM_UDS_SERVICE0X28_ENABLED            (STD_ON) /*CommunicationControl*/
    #define  DCM_UDS_SERVICE0X29_ENABLED            (STD_OFF) /*Authentication*/
    #define  DCM_UDS_SERVICE0X2A_ENABLED            (STD_OFF) /*ReadDataByPeriodicIdentifier*/
    #define  DCM_UDS_SERVICE0X2C_ENABLED            (STD_OFF) /*DynamicallyDefineDataIdentifier*/
    #define  DCM_UDS_SERVICE0X2E_ENABLED            (STD_ON) /*WriteDataByIdentifier*/
    #define  DCM_UDS_SERVICE0X2F_ENABLED            (STD_ON) /*InputOutputControlByIdentifier*/
    #define  DCM_UDS_SERVICE0X31_ENABLED            (STD_ON) /*RoutineControl*/
    #define  DCM_UDS_SERVICE0X34_ENABLED            (STD_OFF) /*RequestDownload*/
    #define  DCM_UDS_SERVICE0X35_ENABLED            (STD_OFF) /*RequestUpload*/
    #define  DCM_UDS_SERVICE0X36_ENABLED            (STD_OFF) /*TransferData*/
    #define  DCM_UDS_SERVICE0X37_ENABLED            (STD_OFF) /*RequestTransferExit*/
    #define  DCM_UDS_SERVICE0X38_ENABLED            (STD_OFF) /*RequestFileTransfer*/
    #define  DCM_UDS_SERVICE0X3D_ENABLED            (STD_OFF) /*WriteMemoryByAddress*/
    #define  DCM_UDS_SERVICE0X3E_ENABLED            (STD_ON) /*TesterPresent*/
    #define  DCM_UDS_SERVICE0X83_ENABLED            (STD_OFF) /*AccessTimingParameter*/
    #define  DCM_UDS_SERVICE0X84_ENABLED            (STD_OFF) /*SecuredDataTransmission*/
    #define  DCM_UDS_SERVICE0X85_ENABLED            (STD_ON) /*ControlDTCSetting*/
    #define  DCM_UDS_SERVICE0X86_ENABLED            (STD_OFF) /*ResponseOnEvent*/
    #define  DCM_UDS_SERVICE0X87_ENABLED            (STD_OFF) /*LinkControl*/
    #define  DCM_UDS_SERVICE0XBB_22_ENABLED            (STD_ON) /*ReadDataByIdentifier*/
/**********************************************/
/*OBD Protocol*/
#define  DCM_OBD_FUNC_ENABLED                       (STD_OFF)   /*Enable/Disable OBD Protocol*/

    #define  DCM_OBD_SERVICE_NUM                    (0u)
    #define  DCM_OBD_SERVICE0X01_ENABLED            (STD_OFF)    /*RequestCurrentPowertrainDiagnosticData*/
    #define  DCM_OBD_SERVICE0X02_ENABLED            (STD_OFF)    /*RequestPowertrainFreezeFrameData*/
    #define  DCM_OBD_SERVICE0X03_ENABLED            (STD_OFF)    /*RequestEmission_relatedDTC*/
    #define  DCM_OBD_SERVICE0X04_ENABLED            (STD_OFF)    /*ClearEmission_relatedDiagnosticInfo*/
    #define  DCM_OBD_SERVICE0X05_ENABLED            (STD_OFF)    /*RequestOxygenSensorMonitoringTestResults*/
    #define  DCM_OBD_SERVICE0X06_ENABLED            (STD_OFF)    /*RequestOn_boardMonitoringTestResults*/
    #define  DCM_OBD_SERVICE0X07_ENABLED            (STD_OFF)    /*RequestEmission_relatedDTCDuringLastDC*/
    #define  DCM_OBD_SERVICE0X08_ENABLED            (STD_OFF)    /*RequestControl*/
    #define  DCM_OBD_SERVICE0X09_ENABLED            (STD_OFF)    /*RequestVehicleInformation*/
    #define  DCM_OBD_SERVICE0X0A_ENABLED            (STD_OFF)    /*RequestEmission_relatedDTCWithPermanentStatus*/

#define DCM_REQUEST_QUEUED_ENABLED                  (STD_OFF)    /*Enable/Disable Protocol Queued Request*/
#define DCM_REQUEST_QUEUED_BUFFER_SIZE              (0u)      /*Total Size of Protocol Queued Request Buffer*/
/**********************************************/
#define  DCM_PERIODIC_FUNC_ENABLED                  (STD_OFF)     /*Enable/Disable Periodic Protocol*/
#define  DCM_ROE_FUNC_ENABLED                       (STD_OFF)     /*Enable/Disable ROE Protocol*/
#define  DCM_DSD_REQUEST_MANUFACTURER_NOTIFICATION_ENABLED    (STD_OFF)
#define  DCM_DSD_REQUEST_SUPPLIER_NOTIFICATION_ENABLED        (STD_OFF)

/******************************************************************************
 ********************************DcmDsp container*****************************
 ******************************************************************************/
#define  DCM_DSP_DID_FUNC_ENABLED                    (STD_ON)        /*Enable/disable DID function*/
#define  DCM_DSP_DID_FOR_2F_NUM                     (0u)            /*DID for 2F Number*/
#define  DCM_DSP_DATA_FUNC_ENABLED                  (STD_ON)

#define  DCM_DSP_DDDID_MAX_NUMBER                   (0u)            /*max number of the DDDID for 0x2C*/
#define  DCM_DSP_DDDID_ELEMENTS_MAX                 (0u)            /*One DDDID can contain max number of elements */
/**=======================================================**/
#define  DCM_DSP_ECU_RESET_FUNC_ENABLED                (STD_ON)           /*Enable/disable EcuReset function,corresponding UDS protocol 0x11 Service*/
/**=======================================================**/
#define  DCM_DSP_READ_DTC_FUNC_ENABLED                (STD_ON)           /*Enable/disable ReadDTC function,corresponding UDS protocol 0x19 Service*/
#define  DCM_UDS_SERVICE0X19_01_ENABLED                (STD_ON)
#define  DCM_UDS_SERVICE0X19_02_ENABLED                (STD_ON)
#define  DCM_UDS_SERVICE0X19_03_ENABLED                (STD_OFF)
#define  DCM_UDS_SERVICE0X19_04_ENABLED                (STD_ON)
#define  DCM_UDS_SERVICE0X19_06_ENABLED                (STD_ON)
#define  DCM_UDS_SERVICE0X19_0A_ENABLED                (STD_ON)
#define  DCM_UDS_SERVICE0X19_0E_ENABLED             (STD_OFF)
/**=======================================================**/
/*deAuthenticate*/
#define DCM_UDS_0X29_DEAUTHENTICATE_ENABLED                        (STD_OFF)
/*verifyCertificateUnidirectional*/
#define DCM_UDS_0X29_VERIFYCERTIFICATE_UNIDIRECTIONAL_ENABLED      (STD_OFF)
/*verifyCertificateBidirectional*/
#define DCM_UDS_0X29_BIDIRECTIONAL_ENABLED       (STD_OFF)
/*proofOfOwnership*/
#define DCM_UDS_0X29_PROOFOFOWNERSHIP_ENABLED                      (STD_OFF)
/*authenticationConfiguration*/
#define DCM_UDS_0X29_AUTHENTICATION_CONFIGURATION_ENABLED          (STD_OFF)
#define DCM_DSP_AUTHENTICATION_MAX_ECU_CHALLENGE_LENGTH    0u
#define DCM_DSP_AUTHENTICATION_DID_WHITE_LIST        0u
#define DCM_DSP_AUTHENTICATION_RID_WHITE_LIST        0u
#define DCM_DSP_AUTHENTICATION_SERVICE_WHITE_LIST    0u
/**=======================================================**/

#define  DCM_DSP_ROUTINE_FUNC_ENABLED                (STD_ON)           /*Enable/disable RoutinControl function,corresponding UDS protocol 0x31 Service.*/
#define  DCM_DSP_ROUTINE_MAX_NUM                    (11u)               /*Number of RoutineID*/

#define  DCM_DSP_ROUTINE_CHECK_RESTART               (STD_OFF)           /*Enable/disable RoutineControl restart check */

/**=======================================================**/
#define  DCM_SESSION_FUNC_ENABLED                    (STD_ON)           /*Enable/disable SessionControl Function*/
/**=======================================================**/
#define  DCM_SECURITY_FUNC_ENABLED                    (STD_ON)           /*Enable/disable SecurityAccess Function*/
#define  DCM_SECURITY_NUM                           (1u)            /*security total number*/
#define  DCM_SEED_MAX_SIZE                          (4u)            /*security total number*/
#define  DCM_SECURITY_MAX_READOUT_TIME              (0u)
#if (STD_ON == DCM_SECURITY_FUNC_ENABLED)
    #define  DCM_SECURITY_ADR_MAXSIZE                 (0u)              /*In all security levels,the maximum length of ADR*/
#endif
/**=======================================================**/
#define  DCM_DSP_PID_FUNC_ENABLED                   (STD_OFF)        /*corresponding OBD protocol 0x01 Service*/
/**=======================================================**/
#define  DCM_DSP_REQUESTCONTROL_FUNC_ENABLED          (STD_OFF)       /*corresponding OBD protocol 0x08 Service*/
/**=======================================================**/
#define  DCM_DSP_VEHINFO_FUNC_ENABLED                (STD_OFF)       /*corresponding OBD protocol 0x09 Service*/

#define  DCM_DSP_MAX_PERIODIC_DID_TO_READ            0xau
#define  DCM_DSP_MAX_PERIODIC_DID_SCHEDULER          0xFFu
#define  DCM_DSP_ROE_NUM                             (0u)
#define  DCM_ROE_STORAGE_BLOCKID                     (0xffu)               /*ROE Storage BlockID*/
#define  DCM_UDS_SERVICE0X86_00_ENABLED              (STD_OFF)
#define  DCM_UDS_SERVICE0X86_01_ENABLED              (STD_OFF)
#define  DCM_UDS_SERVICE0X86_03_ENABLED              (STD_OFF)
#define  DCM_UDS_SERVICE0X86_04_ENABLED              (STD_OFF)
#define  DCM_UDS_SERVICE0X86_05_ENABLED              (STD_OFF)
#define  DCM_UDS_SERVICE0X86_06_ENABLED              (STD_OFF)

#endif /* DCMPBCFG_H_ */
