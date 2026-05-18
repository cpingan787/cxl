/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Compiler_Cfg.h                                              */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2012-2020 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains compiler macros                                         */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas. Any        */
/* warranty is expressly disclaimed and excluded by Renesas, either expressed */
/* or implied, including but not limited to those for non-infringement of     */
/* intellectual property, merchantability and/or fitness for the particular   */
/* purpose.                                                                   */
/*                                                                            */
/* Renesas shall not have any obligation to maintain, service or provide bug  */
/* fixes for the supplied Product(s) and/or the Application.                  */
/*                                                                            */
/* Each User is solely responsible for determining the appropriateness of     */
/* using the Product(s) and assumes all risks associated with its exercise    */
/* of rights under this Agreement, including, but not limited to the risks    */
/* and costs of program errors, compliance with applicable laws, damage to    */
/* or loss of data, programs or equipment, and unavailability or              */
/* interruption of operations.                                                */
/*                                                                            */
/* Limitation of Liability                                                    */
/*                                                                            */
/* In no event shall Renesas be liable to the User for any incidental,        */
/* consequential, indirect, or punitive damage (including but not limited     */
/* to lost profits) regardless of whether such liability is based on breach   */
/* of contract, tort, strict liability, breach of warranties, failure of      */
/* essential purpose or otherwise and even if advised of the possibility of   */
/* such damages. Renesas shall not be liable for any services or products     */
/* provided by third party vendors, developers or consultants identified or   */
/* referred to the User by Renesas in connection with the Product(s) and/or   */
/* the Application.                                                           */
/*                                                                            */
/*============================================================================*/
/* Environment:                                                               */
/*              Devices:        X1x                                           */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:  03-Sep-2012  : Initial Version
 *
 * V1.0.1:  24-Jul-2013  : As per SCR 216 for mantis #12996, memory class for
 *                         variable is added for all modules.
 *
 * V1.0.2:  07-Aug-2013  : As per CR 225, Copyright and Device name are updated
 *                         as part of merge activity.
 *
 * V1.0.3:  29-Aug-2013  : As per CR 237 for mantis #13035, additional
 *                         pointer class macros are added for ISR for all
 *                         modules.
 *
 * V1.0.4:  14-Nov-2013  : CORTST, FLSTST and RAMTST modules compiler macros
 *                         are added.
 *
 * V1.0.5:  17-Mar-2014  : Following changes are made:
 *                         1. The Copyright information is updated.
 *                         2. FLS related compiler macros are added.
 *                         3. WDG driverC compiler macros are added.
 * V1.0.6:  26-Oct-2016  : Following changes are made:
 *                         1. Added CORTST_PRIVATE_CODE.
 * V1.0.7:  03-Oct-2017  : Following changes are made:
 *                         1. As part of ARDAABD-2484,
 *                            Added memory section DIO_VAR_INIT.
 * V1.0.8:  13-Apr-2018  : Following changes are made:
 *                         1. As part of merging activity, #ARDAABD-3456
 *                            a. CAN_FAST_CODE, CAN_FAST_CONST and
 *                               CAN_FAST_DATA are changed to
 *                               CAN_RSCAN_FAST_CODE, CAN_RSCAN_FAST_CONST and
 *                               CAN_RSCAN_FAST_DATA, Ref: ARDAABD-908.
 *                            b. Copyright information updated.
 * V1.0.9:  09-Aug-2018  : Following changes are made:
 *                         1. As part of merging activity, #ARDAABD-3438
 *                            a. Remove all the redefined "#define Macros"
 *                            b. In the FLSTST sectio:
 *                               modify FLS_FAST_CODE to FLSTST_FAST_CODE
 *                               modify FLS_FAST_CODE to FLSTST_FAST_CONST
 *                               modify FLS_FAST_CODE to FLSTST_FAST_DATA
 * V1.0.10:  10-Jul-2019  : As per Specification of Compiler Abstraction:
 *                         Add REGSPACE, which be used for pointers to registers
 * V1.0.11:  25-Sep-2020  : Change FR_NOINIT_DATA into FR_VAR_NO_INIT.
 */
/******************************************************************************/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#ifndef COMPILER_CFG_H
#define COMPILER_CFG_H

#ifdef __cplusplus
#define BEGIN_C_DECLS \
    extern "C"        \
    {
#define END_C_DECLS }
#else
#define BEGIN_C_DECLS
#define END_C_DECLS
#endif
/* Comestack */
#define AUTOSAR_COMSTACKDATA

/* BFX */
#define BFX_APPL_DATA
#define BFX_BIT16_CODE
#define BFX_BIT32_CODE
#define BFX_BIT8_CODE
#define BFX_CODE

/* BSWM */
#define BSWM_APPL_CODE
#define BSWM_APPL_DATA
#define BSWM_CANSM_CODE
#define BSWM_CLEARED
#define BSWM_CODE
#define BSWM_COMM_CODE
#define BSWM_CONFIG_DATA
#define BSWM_CONST
#define BSWM_DCM_CODE
#define BSWM_ECUM_CODE
#define BSWM_ETHIF_CODE
#define BSWM_ETHSM_CODE
#define BSWM_FRSM_CODE
#define BSWM_J1939DCM_CODE
#define BSWM_J1939NM_CODE
#define BSWM_LINSM_CODE
#define BSWM_LINTP_CODE
#define BSWM_NMIF_CODE
#define BSWM_NVM_CODE
#define BSWM_SD_CODE
#define BSWM_SWC_CODE
#define BSWM_VAR_CLEARED
#define BSWM_VAR_NO_INIT_SINGLE_8
#define BSWM_WDGM_CODE

/* CANIF */
#define CANIF_APPL_CODE
#define CANIF_APPL_CONST
#define CANIF_APPL_DATA
#define CANIF_CODE
#define CANIF_CONFIG_DATA
#define CANIF_CONST
#define CANIF_CONST_PBCFG
#define CANIF_PBCFG_CONST
#define CANIF_VAR
#define CANIF_VAR_POWER_ON_INIT

/* CANNM */
#define CANNM_APPL_CONST
#define CANNM_APPL_DATA
#define CANNM_CODE
#define CANNM_CONST
#define CANNM_VAR
#define CANNM_VAR_POWER_ON_INIT

/* CANSM */
#define CANSM_CHECKTRANSCEIVERWAKEFLAGINDICATION_CODE
#define CANSM_CLEARTRCVWUFFLAGINDICATION_CODE
#define CANSM_CODE
#define CANSM_CONFIG_DATA
#define CANSM_CONFIRMPNAVAILABILITY_CODE
#define CANSM_CONST
#define CANSM_CONST_PBCFG
#define CANSM_ECUM_CODE
#define CANSM_TRANSCEIVERMODEINDICATION_CODE
#define CANSM_TXTIMEOUTEXCEPTION_CODE
#define CANSM_VAR
#define CANSM_VAR_POWER_ON_INIT

/* CANTP */
#define CANTP_APPL_CODE
#define CANTP_APPL_CONST
#define CANTP_APPL_DATA
#define CANTP_CODE
#define CANTP_CONST
#define CANTP_VAR_NOINIT
#define CANTP_VAR_POWER_ON_INIT

/* CANTRCV */
#define CANTRCV_APPL_DATA
#define CANTRCV_CODE
#define CANTRCV_CONST
#define CANTRCV_CONST_PBCFG
#define CANTRCV_VAR
#define CANTRCV_VAR_NOINIT
#define CANTRCV_VAR_POWER_ON_INIT

/* CANTSYN */
#define CANTSYN_APPL_DATA
#define CANTSYN_CONST
#define CANTSYN_CONST_PBCFG

/* CDD */
#define CDD_ASIC_DI_CODE
#define CDD_FOTA_CODE
#define CDD_FOTA_VAR
#define CDD_FVM_APPL_CONST
#define CDD_FVM_APPL_DATA
#define CDD_FVM_CFG_CONST
#define CDD_FVM_CODE
#define CDD_FVM_CONST
#define CDD_FVM_VAR_POWER_ON_INIT
#define CDD_FVM__CONST
#define CDD_FVM__VAR

/* CMAC */
#define CMAC_CODE

/* COM */
#define COM_APPL_CODE
#define COM_APPL_CONST
#define COM_APPL_DATA
#define COM_CODE
#define COM_CONST
#define COM_CONST_PBCFG
#define COM_VAR
#define COM_VAR_POWER_ON_INIT

/* COMM */
#define COMM_APPL_CONST
#define COMM_APPL_DATA
#define COMM_CODE
#define COMM_CONST
#define COMM_VAR

/* COMXF */
#define COMXF_APPL_DATA
#define COMXF_CODE
#define COMXF_CONST
#define COMXF_CONST_PBCFG
#define COMXF_VAR
#define COMXF_VAR_POWER_ON_INIT

/* CPT */
#define CPT_APP_ADC_CODE
#define CPT_APP_SENDER_CODE

/* CRC */
#define CRC_APPL_CONST
#define CRC_CODE

/* CRYIF */
#define CRYIF_APPL_CODE
#define CRYIF_APPL_DATA
#define CRYIF_CODE
#define CRYIF_VAR_CLEARED_BOOLEAN

/* CRYPTO */
#define CRYPTO_APPL_CONST
#define CRYPTO_APPL_DATA
#define CRYPTO_CODE
#define CRYPTO_CONST
#define CRYPTO_VAR

/* CSM */
#define CSM_APPL_CODE
#define CSM_APPL_DATA
#define CSM_CBK_NOTIFICATION_CODE
#define CSM_CODE
#define CSM_CONST
#define CSM_VAR_CLEARED_BOOLEAN
#define CSM_VAR_CLEARED_UNSPECIFIED
#define CSM_VAR_NO_INIT_PTR
#define CSM_VAR_NO_INIT_UNSPECIFIED

/* Crypto */
#define Crypto_VAR_CLEARED_BOOLEAN

/* DCM */
#define DCM_APPL_CODE
#define DCM_CODE
#define DCM_CONST
#define DCM_CONST_PBCFG
#define DCM_STOP_CODE
#define DCM_VAR
#define DCM_VAR_NOINIT
#define DCM_VAR_POWER_ON_INIT

/* DEM */
#define DEM_APPL_DATA
#define DEM_CODE
#define DEM_CONST
#define DEM_CONST_PBCFG
#define DEM_READDATA_CODE
#define DEM_VAR

/* DET */
#define DET_APPL_CONST
#define DET_APPL_DATA
#define DET_CODE
#define DET_CONST
#define DET_VAR

/* DLT */
#define DLT_APPL_CODE
#define DLT_APPL_CONST
#define DLT_APPL_DATA
#define DLT_APPL_VAR
#define DLT_CODE
#define DLT_CONST

/* DOIP */
#define DOIP_APPL_CODE
#define DOIP_APPL_CONST
#define DOIP_CODE
#define DOIP_CONST
#define DOIP_VAR
#define DOIP_VAR_CLEARED
#define DOIP_VAR_INIT

/* E2E */
#define E2E_APPL_CONST
#define E2E_APPL_DATA
#define E2E_CODE
#define E2E_CONST
#define E2E_CONST_UNSPECIFIED
#define E2E_VAR_CLEARED

/* E2EXF */
#define E2EXF_APPL_DATA
#define E2EXF_CODE
#define E2EXF_CONST
#define E2EXF_VAR
#define E2EXF_VAR_CLEARED
#define E2EXF_VAR_POWER_ON_INIT

/* EA */
#define EA_APPL_CODE
#define EA_APPL_DATA
#define EA_CODE
#define EA_CONST
#define EA_PRIVATE_CONST
#define EA_PUBLIC_CODE
#define EA_VAR

/* ECUM */
#define ECUM_AL_DRIVERINITBSWM_CODE
#define ECUM_AL_DRIVERINITONE_CODE
#define ECUM_AL_DRIVERINITZERO_CODE
#define ECUM_AL_DRIVERRESTART_CODE
#define ECUM_AL_RESET_CODE
#define ECUM_AL_SETPROGRAMMABLEINTERRUPTS_CODE
#define ECUM_AL_SWITCHOFF_CODE
#define ECUM_APPL_CONST
#define ECUM_APPL_DATA
#define ECUM_CALCULATEELAPSEDMS_CODE
#define ECUM_CHECKRAMHASH_CODE
#define ECUM_CHECKVALIDATION_CODE
#define ECUM_CHECKWAKEUP_CODE
#define ECUM_CLEARED
#define ECUM_CODE
#define ECUM_CONFIG_DATA
#define ECUM_CONST
#define ECUM_CURRENTTIMESTAMPMS_CODE
#define ECUM_DETERMINEPBCONFIGURATION_CODE
#define ECUM_DISABLEWAKEUPSOURCES_CODE
#define ECUM_ENABLEWAKEUPSOURCES_CODE
#define ECUM_ENDCHECKWAKEUP_CODE
#define ECUM_ERRORHOOK_CODE
#define ECUM_GENERATERAMHASH_CODE
#define ECUM_INTERNALSTARTCHECKWAKEUP_CODE
#define ECUM_LOOPDETECTION_CODE
#define ECUM_MCUSETMODE_CODE
#define ECUM_ONGOOFFONE_CODE
#define ECUM_ONGOOFFTWO_CODE
#define ECUM_SETWAKEUPEVENT_CODE
#define ECUM_SLEEPACTIVITY_CODE
#define ECUM_STARTCHECKWAKEUP_CODE
#define ECUM_STARTWAKEUPSOURCES_CODE
#define ECUM_STOPWAKEUPSOURCES_CODE
#define ECUM_VALIDATEWAKEUPEVENT_CODE
#define ECUM_VAR
#define ECUM_VAR_CLEARED_PTR
#define ECUM_VAR_NO_INIT

/* EEP */
#define EEP_APPL_CODE
#define EEP_APPL_CONST
#define EEP_APPL_DATA
#define EEP_CODE
#define EEP_CONST
#define EEP_CONST_PBCFG
#define EEP_PRIVATE_CODE
#define EEP_PUBLIC_CODE

/* ETHIF */
#define ETHIF_APPL_CODE
#define ETHIF_APPL_CONST
#define ETHIF_APPL_DATA
#define ETHIF_CODE
#define ETHIF_VAR

/* ETHSM */
#define ETHSM_CODE
#define ETHSM_CONST
#define ETHSM_VAR
#define ETHSM_VAR_POWER_ON_INIT

/* ETHSWT */
#define ETHSWT_APPL_CODE
#define ETHSWT_APPL_CONST
#define ETHSWT_APPL_DATA
#define ETHSWT_CODE
#define ETHSWT_CONFIG_DATA
#define ETHSWT_CONST
#define ETHSWT_VAR
#define ETHSWT_VAR_ZERO_INIT

/* ETHTRCV */
#define ETHTRCV_APPL_DATA
#define ETHTRCV_CODE
#define ETHTRCV_CONFIG_DATA
#define ETHTRCV_CONST
#define ETHTRCV_VAR_NOINIT
#define ETHTRCV_VAR_ZERO_INIT

/* ETHTSYN */
#define ETHTSYN_VAR

/* FEE */
#define FEE_APPL_CODE
#define FEE_APPL_CONST
#define FEE_APPL_DATA
#define FEE_CODE
#define FEE_CONST
#define FEE_CONST_PBCFG
#define FEE_VAR

/* FIM */
#define FIM_APPL_DATA
#define FIM_CODE
#define FIM_VAR_INIT_32
#define FIM_VAR_INIT_8
#define FIM_VAR_NO_INIT_UNSPECIFIED

/* FLSTST */
#define FLSTST_APPL_CONST
#define FLSTST_CODE

/* FOTAMASTER */
#define FOTAMASTER_APPL_VAR
#define FOTAMASTER_CODE
#define FOTAMASTER_CONST
#define FOTAMASTER_INIT_DATA
#define FOTAMASTER_VAR_ZERO_INIT

/* FRARTP */
#define FRARTP_CODE
#define FRARTP_CONST
#define FRARTP_VAR
#define FRARTP_VAR_POWER_ON_INIT

/* FRIF */
#define FRIF_APPL_CODE
#define FRIF_APPL_CONST
#define FRIF_APPL_DATA
#define FRIF_CODE
#define FRIF_CONST
#define FRIF_VAR
#define FRIF_VAR_POWER_ON_INIT

/* FRNM */
#define FRNM_APPL_CODE
#define FRNM_APPL_CONST
#define FRNM_APPL_DATA
#define FRNM_CODE
#define FRNM_CONST
#define FRNM_CONST_PBCFG
#define FRNM_VAR
#define FRNM_VAR_POWER_ON_INIT

/* FRSM */
#define FRSM_APPL_CODE
#define FRSM_APPL_DATA
#define FRSM_CODE
#define FRSM_CONFIG_DATA
#define FRSM_CONST
#define FRSM_CONST_PBCFG
#define FRSM_VAR
#define FRSM_VAR_POWER_ON_INIT

/* FlsTst */
#define FLSTST_APPL_CONST
#define FLSTST_APPL_DATA
#define FLSTST_CODE

/* IOHWAB */
#define IOHWAB_APPL_CONST
#define IOHWAB_APPL_DATA
#define IOHWAB_CODE
#define IOHWAB_VAR

/* IPDUM */
#define IPDUM_APPL_CONST
#define IPDUM_APPL_DATA
#define IPDUM_CODE
#define IPDUM_CONST
#define IPDUM_RXINDICATION_CODE
#define IPDUM_TRIGGERTRANSMIT_CODE
#define IPDUM_TXCONFIRMATION_CODE
#define IPDUM_VAR
#define IPDUM_VAR_NOINIT
#define IPDUM_VAR_POWER_ON_INIT

/* J1939DCM */
#define J1939DCM_APPL_CODE
#define J1939DCM_APPL_DATA
#define J1939DCM_CODE
#define J1939DCM_CONST_16
#define J1939DCM_CONST_32
#define J1939DCM_CONST_BOOLEAN
#define J1939DCM_CONST_UNSPECIFIED
#define J1939DCM_COPYRXDATA_CODE
#define J1939DCM_COPYTXDATA_CODE
#define J1939DCM_DEMTRIGGERONDTCSTATUS_CODE
#define J1939DCM_REQUESTINDICATION_CODE
#define J1939DCM_RXINDICATION_CODE
#define J1939DCM_STARTOFRECEPTION_CODE
#define J1939DCM_TPRXINDICATION_CODE
#define J1939DCM_TPTXCONFIRMATION_CODE
#define J1939DCM_TXCONFIRMATION_CODE
#define J1939DCM_VAR_CLEARED_16
#define J1939DCM_VAR_CLEARED_32
#define J1939DCM_VAR_CLEARED_8
#define J1939DCM_VAR_CLEARED_BOOLEAN
#define J1939DCM_VAR_INIT_16
#define J1939DCM_VAR_NO_INIT_UNSPECIFIED

/* J1939NM */
#define J1939NM_APPL_CODE
#define J1939NM_APPL_DATA
#define J1939NM_CODE
#define J1939NM_CONST_16
#define J1939NM_CONST_8
#define J1939NM_CONST_BOOLEAN
#define J1939NM_CONST_UNSPECIFIED
#define J1939NM_REQUESTINDICATION_CODE
#define J1939NM_RXINDICATION_CODE
#define J1939NM_TXCONFIRMATION_CODE
#define J1939NM_VAR_CLEARED_32
#define J1939NM_VAR_CLEARED_8
#define J1939NM_VAR_CLEARED_UNSPECIFIED
#define J1939NM_VAR_INIT_BOOLEAN
#define J1939NM_VAR_UNSPECIFIED

/* J1939RM */
#define J1939RM_APPL_CODE
#define J1939RM_APPL_DATA
#define J1939RM_CODE
#define J1939RM_COMRXIPDUCALLOUT_CODE
#define J1939RM_CONFIG_DATA
#define J1939RM_CONST_16
#define J1939RM_CONST_BOOLEAN
#define J1939RM_CONST_UNSPECIFIED
#define J1939RM_PBCFG
#define J1939RM_RXINDICATION_CODE
#define J1939RM_TXCONFIRMATION_CODE
#define J1939RM_VAR
#define J1939RM_VAR_CLEARED_32
#define J1939RM_VAR_CLEARED_BOOLEAN
#define J1939RM_VAR_CLEARED_UNSPECIFIED
#define J1939RM_VAR_NO_INIT_UNSPECIFIED

/* J1939TP */
#define J1939TP_APPL_DATA
#define J1939TP_CODE
#define J1939TP_CONST_16
#define J1939TP_CONST_8
#define J1939TP_CONST_UNSPECIFIED
#define J1939TP_RXINDICATION_CODE
#define J1939TP_TXCONFIRMATION_CODE
#define J1939TP_VAR_CLEARED_32
#define J1939TP_VAR_CLEARED_PTR
#define J1939TP_VAR_CLEARED_UNSPECIFIED
#define J1939TP_VAR_NO_INIT_8
#define J1939TP_VAR_NO_INIT_UNSPECIFIED

/* KEYM */
#define KEYM_APPL_CODE
#define KEYM_APPL_CONST
#define KEYM_APPL_DATA
#define KEYM_CODE
#define KEYM_CONST
#define KEYM_VAR

/* LDCOM */
#define LDCOM_APPL_CODE
#define LDCOM_APPL_DATA
#define LDCOM_CODE
#define LDCOM_CONST
#define LDCOM_CONST_PBCFG
#define LDCOM_COPYRXDATA_CODE
#define LDCOM_COPYTXDATA_CODE
#define LDCOM_RXINDICATION_CODE
#define LDCOM_STARTOFRECEPTION_CODE
#define LDCOM_TPRXINDICATION_CODE
#define LDCOM_TPTXCONFIRMATION_CODE
#define LDCOM_TRIGGERTRANSMIT_CODE
#define LDCOM_TXCONFIRMATION_CODE
#define LDCOM_VAR
#define LDCOM_VAR_POWER_ON_INIT

/* LINIF */
#define LINIF_APPL_CODE
#define LINIF_APPL_CONST
#define LINIF_APPL_DATA
#define LINIF_CODE
#define LINIF_CONST
#define LINIF_DATA
#define LINIF_VAR

/* LINSM */
#define LINSM_CODE
#define LINSM_CONST
#define LINSM_CONST_PBCFG
#define LINSM_VAR
#define LINSM_VAR_POWER_ON_INIT

/* LINTP */
#define LINTP_CODE

/* MEMIF */
#define MEMIF_APPL_CONST
#define MEMIF_APPL_DATA
#define MEMIF_CODE
#define MEMIF_CONST

/* NM */
#define NM_APPL_DATA
#define NM_CODE
#define NM_CONST
#define NM_VAR_CLEARED_BOOLEAN
#define NM_VAR_NO_INIT_UNSPECIFIED

/* NVM */
#define NVM_APPL_CODE
#define NVM_APPL_DATA
#define NVM_CODE
#define NVM_CONST
#define NVM_VAR
#define NVM_VAR_NOINIT
#define NVM_VAR_POWER_ON_INIT

/* OS */
#define OS_APPL_CODE
#define OS_CODE
#define OS_CODE_FAST
#define OS_CONST
#define OS_VAR

/* OSEKNM */
#define OSEKNM_APPL_CODE
#define OSEKNM_APPL_DATA
#define OSEKNM_CODE
#define OSEKNM_CONST
#define OSEKNM_PBCFG_CONST
#define OSEKNM_RXINDICATION_CODE
#define OSEKNM_TXCONFIRMATION_CODE
#define OSEKNM_VAR_CLEARED_32
#define OSEKNM_VAR_CLEARED_BOOLEAN
#define OSEKNM_VAR_NO_INIT_UNSPECIFIED

/* PDUR */
#define PDUR_CODE
#define PDUR_CONST
#define PDUR_CONST_PBCFG
#define PDUR_VAR
#define PDUR_VAR_POWER_ON_INIT

/* RTE */
#define RTE_APPL_DATA
#define RTE_CODE
#define RTE_COMPAREKEY_DCMDSPSECURITYROW_CODE
#define RTE_CONDITIONCHECKREAD_CODE
#define RTE_FREEZECURRENTSTATE_CODE
#define RTE_GETSECURITYATTEMPTCOUNTER_DCMDSPSECURITYROW_CODE
#define RTE_GETSEED_DCMDSPSECURITYROW_CODE
#define RTE_NVMNOTIFYJOBFINISHED_CODE
#define RTE_READDATALENGTH_CODE
#define RTE_READDATA_CODE
#define RTE_REQUESTRESULTS_CODE
#define RTE_RETURNCONTROLTOECU_CODE
#define RTE_SETSECURITYATTEMPTCOUNTER_DCMDSPSECURITYROW_CODE
#define RTE_SHORTTERMADJUSTMENT_CODE
#define RTE_STARTPROTOCOL_CODE
#define RTE_START_CODE
#define RTE_STOPPROTOCOL_CODE
#define RTE_WRITEDATA_CODE

/* RamTst */
#define RAMTST_APPL_CONST
#define RAMTST_APPL_DATA
#define RAMTST_CODE
#define RAMTST_VAR

/* SD */
#define SD_CONST

/* SECOC */
#define SECOC_APPL_CONST
#define SECOC_APPL_DATA
#define SECOC_CFG_CONST
#define SECOC_CFG_DATA
#define SECOC_CFG_VAR
#define SECOC_CODE
#define SECOC_CONST
#define SECOC_VAR
#define SECOC_VAR_POWER_ON_INIT

/* SOAD */
#define SOAD_APPL_CODE
#define SOAD_APPL_CONST
#define SOAD_APPL_DATA
#define SOAD_CALLBACK_CODE
#define SOAD_CODE
#define SOAD_CONST
#define SOAD_CONST_PBCFG
#define SOAD_VAR
#define SOAD_VAR_POWER_ON_INIT

/* SOMEIPTP */
#define SOMEIPTP_APPL_CONST
#define SOMEIPTP_APPL_DATA
#define SOMEIPTP_CODE
#define SOMEIPTP_CONST
#define SOMEIPTP_VAR
#define SOMEIPTP_VAR_POWER_ON_INIT

/* SOMEIPXF */
#define SOMEIPXF_APPL_CONST
#define SOMEIPXF_APPL_DATA
#define SOMEIPXF_CODE
#define SOMEIPXF_CONST
#define SOMEIPXF_VAR

/* STBM */
#define STBM_APPL_DATA
#define STBM_CONST
#define STBM_CONST_PBCFG

/* TCPIP */
#define TCPIP_APPL_CONST
#define TCPIP_APPL_DATA
#define TCPIP_APPL_VAR
#define TCPIP_CODE
#define TCPIP_CONFIG_DATA
#define TCPIP_CONST
#define TCPIP_VAR
#define TCPIP_VAR_ZERO_INIT

/* TM */
#define TM_APPL_CONST
#define TM_APPL_DATA
#define TM_CODE

/* TRANSFORMCHAIN */
#define TRANSFORMCHAIN_CODE
#define TRANSFORMCHAIN_CONST
#define TRANSFORMCHAIN_VAR

/* UDPNM */
#define UDPNM_APPL_CONST
#define UDPNM_APPL_DATA
#define UDPNM_CODE
#define UDPNM_CONST
#define UDPNM_VAR
#define UDPNM_VAR_POWER_ON_INIT

/* WDGIF */
#define WDGIF_CODE
#define WDGIF_CONST

/* WDGM */
#define WDGM_CODE
#define WDGM_CONST

/* XCP */
#define XCP_APPL_CONST
#define XCP_APPL_DATA
#define XCP_CANIFRXINDICATION_CODE
#define XCP_CANIFTXCONFIRMATION_CODE
#define XCP_CANIFTXINDICATION_CODE
#define XCP_CODE
#define XCP_CONST
#define XCP_CONST_PBCFG
#define XCP_SOADIFRXINDICATION_CODE
#define XCP_SOADIFTXCONFIRMATION_CODE
#define XCP_SOADIFTXINDICATION_CODE
#define XCP_TEST_CODE
#define XCP_VAR
#define XCP_VAR_CLEARED_32
#define XCP_VAR_CLEARED_8
#define XCP_VAR_CLEARED_UNSPECIFIED
#define XCP_VAR_INIT_16
#define XCP_VAR_INIT_8
#define XCP_VAR_INIT_UNSPECIFIED
#define XCP_VAR_NO_INIT_8

/*******************************************************************************
**                      Version Information                                  **
*******************************************************************************/
/* AUTOSAR specification release version information for R4.0.3 */
#define COMPILER_CFG_AR_RELEASE_MAJOR_VERSION     4
#define COMPILER_CFG_AR_RELEASE_MINOR_VERSION     5
#define COMPILER_CFG_AR_RELEASE_REVISION_VERSION  0

/* AUTOSAR specification version information as per R3.2.2 */
#define COMPILER_CFG_AR_MAJOR_VERSION  2
#define COMPILER_CFG_AR_MINOR_VERSION  2
#define COMPILER_CFG_AR_PATCH_VERSION  0
#define COMPILER_CFG_SW_MAJOR_VERSION  1
#define COMPILER_CFG_SW_MINOR_VERSION  0
#define COMPILER_CFG_SW_PATCH_VERSION  0

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
 **                      Configuration data                                   **
*******************************************************************************/
/*
 * The following memory and pointer classes can be configured per module.
 * These #defines are passed to the compiler abstraction macros in Compiler.h
 *
 * Note:
 * module internal functions (statics) that get into one section
 * (together with API) shall fit into one page.
 */
/* ---------------------------------------------------------------------------*/
/*                   General                                                  */
/* ---------------------------------------------------------------------------*/
#define REGSPACE                       /* Registers                           */

/* ---------------------------------------------------------------------------*/
/*                   MCU                                                      */
/* ---------------------------------------------------------------------------*/

#define MCU_PUBLIC_CODE                /* API functions                       */
#define MCU_PUBLIC_CONST               /* API constants                       */

#define MCU_PRIVATE_CODE               /* Internal functions                  */

#define MCU_PRIVATE_DATA               /* Module internal data                */
#define MCU_PRIVATE_CONST              /* Internal ROM Data                   */

#define MCU_APPL_CODE                  /* callbacks of the Application        */
#define MCU_APPL_CONST                 /* Applications' ROM Data              */
#define MCU_APPL_DATA                  /* Applications' RAM Data              */

#define MCU_FAST_CODE                   /* API functions                       */
#define MCU_FAST_CONST                  /* API constants                       */
#define MCU_FAST_DATA                   /* API constants                       */

#define MCU_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define MCU_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define MCU_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define MCU_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define MCU_CONST                      /* Data Constants                      */
#define MCU_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define MCU_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   GPT                                                      */
/* ---------------------------------------------------------------------------*/

#define GPT_PUBLIC_CODE                /* API functions                       */
#define GPT_PUBLIC_CONST               /* API constants                       */

#define GPT_PRIVATE_CODE               /* Internal functions                  */

#define GPT_PRIVATE_DATA               /* Module internal data                */
#define GPT_PRIVATE_CONST              /* Internal ROM Data                   */

#define GPT_APPL_CODE                  /* callbacks of the Application        */
#define GPT_APPL_CONST                 /* Applications' ROM Data              */
#define GPT_APPL_DATA                  /* Applications' RAM Data              */

#define GPT_FAST_CODE                   /* API functions                       */
#define GPT_FAST_CONST                  /* API constants                       */
#define GPT_FAST_DATA                   /* API constants                       */

#define GPT_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define GPT_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define GPT_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define GPT_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define GPT_CONST                      /* Data Constants                      */
#define GPT_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define GPT_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   WDG   DRIVER A                                           */
/* ---------------------------------------------------------------------------*/

#define WDG_59_DRIVERA_PUBLIC_CODE        /* API functions                    */
#define WDG_59_DRIVERA_PUBLIC_CONST       /* API constants                    */

#define WDG_59_DRIVERA_PRIVATE_CODE       /* Internal functions               */

#define WDG_59_DRIVERA_PRIVATE_DATA       /* Module internal data             */
#define WDG_59_DRIVERA_PRIVATE_CONST      /* Internal ROM Data                */

#define WDG_59_DRIVERA_APPL_CODE          /* callbacks of the Application     */
#define WDG_59_DRIVERA_APPL_CONST         /* Applications' ROM Data           */
#define WDG_59_DRIVERA_APPL_DATA          /* Applications' RAM Data           */

#define WDG_59_DRIVERA_FAST_CODE           /* API functions                    */
#define WDG_59_DRIVERA_FAST_CONST          /* API constants                    */
#define WDG_59_DRIVERA_FAST_DATA           /* API constants                    */

#define WDG_59_DRIVERA_CONFIG_CONST       /* Desc. Tables -> Config-dependent */
#define WDG_59_DRIVERA_CONFIG_DATA        /* Config. dependent (reg. size)
                                             data                             */

#define WDG_59_DRIVERA_INIT_DATA          /* Data which is initialized during
                                             Startup                          */
#define WDG_59_DRIVERA_NOINIT_DATA        /* Data which is not initialized
                                             during Startup                   */
#define WDG_59_DRIVERA_CONST              /* Data Constants                   */
#define WDG_59_DRIVERA_VAR             /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define WDG_59_DRIVERA_VAR_NOINIT      /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   WDG   DRIVER B                                           */
/* ---------------------------------------------------------------------------*/

#define WDG_59_DRIVERB_PUBLIC_CODE        /* API functions                    */
#define WDG_59_DRIVERB_PUBLIC_CONST       /* API constants                    */

#define WDG_59_DRIVERB_PRIVATE_CODE       /* Internal functions               */

#define WDG_59_DRIVERB_PRIVATE_DATA       /* Module internal data             */
#define WDG_59_DRIVERB_PRIVATE_CONST      /* Internal ROM Data                */

#define WDG_59_DRIVERB_APPL_CODE          /* callbacks of the Application     */
#define WDG_59_DRIVERB_APPL_CONST         /* Applications' ROM Data           */
#define WDG_59_DRIVERB_APPL_DATA          /* Applications' RAM Data           */

#define WDG_59_DRIVERB_FAST_CODE           /* API functions                    */
#define WDG_59_DRIVERB_FAST_CONST          /* API constants                    */
#define WDG_59_DRIVERB_FAST_DATA           /* API constants                    */

#define WDG_59_DRIVERB_CONFIG_CONST       /* Desc. Tables -> Config-dependent */
#define WDG_59_DRIVERB_CONFIG_DATA        /* Config. dependent (reg. size)
                                             data                             */

#define WDG_59_DRIVERB_INIT_DATA          /* Data which is initialized during
                                             Startup                          */
#define WDG_59_DRIVERB_NOINIT_DATA        /* Data which is not initialized
                                             during Startup                   */
#define WDG_59_DRIVERB_CONST              /* Data Constants                   */
#define WDG_59_DRIVERB_VAR             /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define WDG_59_DRIVERB_VAR_NOINIT      /* Memory class for global variables   */
                                       /* which are initialized by driver     */
/* ---------------------------------------------------------------------------*/
/*                   WDG   DRIVER C                                           */
/* ---------------------------------------------------------------------------*/

#define WDG_59_DRIVERC_PUBLIC_CODE        /* API functions                    */
#define WDG_59_DRIVERC_PUBLIC_CONST       /* API constants                    */

#define WDG_59_DRIVERC_PRIVATE_CODE       /* Internal functions               */

#define WDG_59_DRIVERC_PRIVATE_DATA       /* Module internal data             */
#define WDG_59_DRIVERC_PRIVATE_CONST      /* Internal ROM Data                */

#define WDG_59_DRIVERC_APPL_CODE          /* callbacks of the Application     */
#define WDG_59_DRIVERC_APPL_CONST         /* Applications' ROM Data           */
#define WDG_59_DRIVERC_APPL_DATA          /* Applications' RAM Data           */

#define WDG_59_DRIVERC_FAST_CODE           /* API functions                    */
#define WDG_59_DRIVERC_FAST_CONST          /* API constants                    */
#define WDG_59_DRIVERC_FAST_DATA           /* API constants                    */

#define WDG_59_DRIVERC_CONFIG_CONST       /* Desc. Tables -> Config-dependent */
#define WDG_59_DRIVERC_CONFIG_DATA        /* Config. dependent (reg. size)
                                             data                             */

#define WDG_59_DRIVERC_INIT_DATA          /* Data which is initialized during
                                             Startup                          */
#define WDG_59_DRIVERC_NOINIT_DATA        /* Data which is not initialized
                                             during Startup                   */
#define WDG_59_DRIVERC_CONST              /* Data Constants                   */
#define WDG_59_DRIVERC_VAR             /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define WDG_59_DRIVERC_VAR_NOINIT      /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   PORT                                                     */
/* ---------------------------------------------------------------------------*/

#define PORT_PUBLIC_CODE                /* API functions                      */
#define PORT_PUBLIC_CONST               /* API constants                      */

#define PORT_PRIVATE_CODE               /* Internal functions                 */

#define PORT_PRIVATE_DATA               /* Module internal data               */
#define PORT_PRIVATE_CONST              /* Internal ROM Data                  */

#define PORT_APPL_CODE                  /* callbacks of the Application       */
#define PORT_APPL_CONST                 /* Applications' ROM Data             */
#define PORT_APPL_DATA                  /* Applications' RAM Data             */

#define PORT_FAST_CODE                   /* API functions                      */
#define PORT_FAST_CONST                  /* API constants                      */
#define PORT_FAST_DATA                   /* API constants                      */

#define PORT_CONFIG_CONST               /* Desc. Tables -> Config-dependent   */
#define PORT_CONFIG_DATA                /* Config. dependent (reg. size) data */

#define PORT_INIT_DATA                  /* Data which is initialized during
                                           Startup                            */
#define PORT_NOINIT_DATA                /* Data which is not initialized during
                                           Startup                            */
#define PORT_CONST                      /* Data Constants                     */
#define PORT_VAR                        /* Memory class for global variables  */
                                        /* which are initialized after every  */
                                        /* reset                              */
#define PORT_VAR_NOINIT                 /* Memory class for global variables  */
                                        /* which are initialized by driver    */

/* ---------------------------------------------------------------------------*/
/*                   DIO                                                      */
/* ---------------------------------------------------------------------------*/

#define DIO_PUBLIC_CODE                /* API functions                       */
#define DIO_PUBLIC_CONST               /* API constants                       */

#define DIO_PRIVATE_CODE               /* Internal functions                  */

#define DIO_PRIVATE_DATA               /* Module internal data                */
#define DIO_PRIVATE_CONST              /* Internal ROM Data                   */

#define DIO_APPL_CODE                  /* callbacks of the Application        */
#define DIO_APPL_CONST                 /* Applications' ROM Data              */
#define DIO_APPL_DATA                  /* Applications' RAM Data              */

#define DIO_FAST_CODE                   /* API functions                       */
#define DIO_FAST_CONST                  /* API constants                       */
#define DIO_FAST_DATA                   /* API constants                       */

#define DIO_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define DIO_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define DIO_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define DIO_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define DIO_CONST                      /* Data Constants                      */
#define DIO_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define DIO_VAR_INIT                   /* Memory class for global variables   */
                                       /* which are initialized by RAM     */
#define DIO_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   FEE                                                      */
/* ---------------------------------------------------------------------------*/

#define FEE_PUBLIC_CODE                /* API functions                       */
#define FEE_PUBLIC_CONST               /* API constants                       */

#define FEE_PRIVATE_CODE               /* Internal functions                  */

#define FEE_PRIVATE_DATA               /* Module internal data                */
#define FEE_PRIVATE_CONST              /* Internal ROM Data                   */

#define FEE_APPL_CODE                  /* callbacks of the Application        */
#define FEE_APPL_CONST                 /* Applications' ROM Data              */
#define FEE_APPL_DATA                  /* Applications' RAM Data              */

#define FEE_FAST_CODE                   /* API functions                       */
#define FEE_FAST_CONST                  /* API constants                       */
#define FEE_FAST_DATA                   /* API constants                       */

#define FEE_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define FEE_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define FEE_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define FEE_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define FEE_CONST                      /* Data Constants                      */
#define FEE_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define FEE_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   PWM                                                      */
/* ---------------------------------------------------------------------------*/

#define PWM_PUBLIC_CODE                /* API functions                       */
#define PWM_PUBLIC_CONST               /* API constants                       */

#define PWM_PRIVATE_CODE               /* Internal functions                  */

#define PWM_PRIVATE_DATA               /* Module internal data                */
#define PWM_PRIVATE_CONST              /* Internal ROM Data                   */

#define PWM_APPL_CODE                  /* callbacks of the Application        */
#define PWM_APPL_CONST                 /* Applications' ROM Data              */
#define PWM_APPL_DATA                  /* Applications' RAM Data              */

#define PWM_FAST_CODE                   /* API functions                       */
#define PWM_FAST_CONST                  /* API constants                       */
#define PWM_FAST_DATA                   /* API constants                       */

#define PWM_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define PWM_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define PWM_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define PWM_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define PWM_CONST                      /* Data Constants                      */
#define PWM_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define PWM_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   SPI                                                      */
/* ---------------------------------------------------------------------------*/

#define SPI_PUBLIC_CODE                /* API functions                       */
#define SPI_PUBLIC_CONST               /* API constants                       */

#define SPI_PRIVATE_CODE               /* Internal functions                  */

#define SPI_PRIVATE_DATA               /* Module internal data                */
#define SPI_PRIVATE_CONST              /* Internal ROM Data                   */

#define SPI_APPL_CODE                  /* callbacks of the Application        */
#define SPI_APPL_CONST                 /* Applications' ROM Data              */
#define SPI_APPL_DATA                  /* Applications' RAM Data              */

#define SPI_FAST_CODE                   /* API functions                       */
#define SPI_FAST_CONST                  /* API constants                       */
#define SPI_FAST_DATA                   /* API constants                       */

#define SPI_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define SPI_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define SPI_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define SPI_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define SPI_CONST                      /* Data Constants                      */
#define SPI_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define SPI_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   ADC                                                      */
/* ---------------------------------------------------------------------------*/

#define ADC_PUBLIC_CODE                /* API functions                       */
#define ADC_PUBLIC_CONST               /* API constants                       */

#define ADC_PRIVATE_CODE               /* Internal functions                  */

#define ADC_PRIVATE_DATA               /* Module internal data                */
#define ADC_PRIVATE_CONST              /* Internal ROM Data                   */

#define ADC_APPL_CODE                  /* callbacks of the Application        */
#define ADC_APPL_CONST                 /* Applications' ROM Data              */
#define ADC_APPL_DATA                  /* Applications' RAM Data              */

#define ADC_FAST_CODE                   /* API functions                       */
#define ADC_FAST_CONST                  /* API constants                       */
#define ADC_FAST_DATA                   /* API constants                       */

#define ADC_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define ADC_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define ADC_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define ADC_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define ADC_CONST                      /* Data Constants                      */
#define ADC_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define ADC_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   ICU                                                      */
/* ---------------------------------------------------------------------------*/

#define ICU_PUBLIC_CODE                /* API functions                       */
#define ICU_PUBLIC_CONST               /* API constants                       */

#define ICU_PRIVATE_CODE               /* Internal functions                  */

#define ICU_PRIVATE_DATA               /* Module internal data                */
#define ICU_PRIVATE_CONST              /* Internal ROM Data                   */

#define ICU_APPL_CODE                  /* callbacks of the Application        */
#define ICU_APPL_CONST                 /* Applications' ROM Data              */
#define ICU_APPL_DATA                  /* Applications' RAM Data              */

#define ICU_FAST_CODE                   /* API functions                       */
#define ICU_FAST_CONST                  /* API constants                       */
#define ICU_FAST_DATA                   /* API constants                       */

#define ICU_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define ICU_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define ICU_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define ICU_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define ICU_CONST                      /* Data Constants                      */
#define ICU_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define ICU_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */


/* -------------------------------------------------------------------------- */
/*             FlexRay Driver                                                 */
/* -------------------------------------------------------------------------- */
#define FR_PRIVATE_CODE                /* module internal functions           */
#define FR_PRIVATE_CONST               /* module internal consts              */
#define FR_PRIVATE_DATA                /* module internal data                */

#define FR_PUBLIC_CODE                 /* API functions                       */
#define FR_PUBLIC_CONST                /* API constants                       */
#define FR_CODE
#define FR_APPL_CODE                   /* callbacks of the Application        */
#define FR_APPL_CONST                  /* Applications' ROM Data              */

#define FR_FAST_CODE                   /* API functions                        */
#define FR_FAST_CONST                  /* API constants                        */
#define FR_FAST_DATA                   /* API constants                        */

#define FR_INIT_DATA                   /* module variables                    */
#define FR_CONST                       /* module constants                    */

#define FR_VAR_NO_INIT                 /* module variables that are           */
                                              /* not initialized              */
#define FR_VAR_POWER_ON_INIT           /* module variables that are           */
                                             /* initialized on Powerup        */
#define FR_VAR                         /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define FR_VAR_NOINIT                  /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/*
 * the applications' data blocks must have the same classifier
 * like the EEPIF expects
 */
#define FR_APPL_DATA              /* Applications' Ram Data                   */
#define FR_CONFIG_CONST           /* Descriptor Tables -> Config-dependent    */
#define FR_CONFIG_DATA            /* Configuration dependent (reg. size) data */
#define FR_DATA                   /* Global Variables                         */

/* ---------------------------------------------------------------------------*/
/*                   CAN                                                      */
/* ---------------------------------------------------------------------------*/

#define CAN_RSCAN_PUBLIC_CODE          /* API functions                       */
#define CAN_RSCAN_PUBLIC_CONST         /* API constants                       */

#define CAN_RSCAN_PRIVATE_CODE         /* Internal functions                  */

#define CAN_RSCAN_PRIVATE_DATA         /* Module internal data                */
#define CAN_RSCAN_PRIVATE_CONST        /* Internal ROM Data                   */

#define CAN_RSCAN_APPL_CODE            /* callbacks of the Application        */
#define CAN_RSCAN_APPL_CONST           /* Applications' ROM Data              */
#define CAN_RSCAN_APPL_DATA            /* Applications' RAM Data              */
#define CAN_RSCAN_FAST_DATA            /* 'Near' RAM Data                     */

#define CAN_RSCAN_FAST_CODE            /* API functions                       */
#define CAN_RSCAN_FAST_CONST           /* API constants                       */


#define CAN_RSCAN_CONFIG_CONST         /* Desc. Tables -> Config-dependent    */
#define CAN_RSCAN_CONFIG_DATA          /* Config. dependent (reg. size) data  */

#define CAN_RSCAN_INIT_DATA            /* Data which is initialized during
                                          Startup                             */
#define CAN_RSCAN_NOINIT_DATA          /* Data which is not initialized during
                                          Startup                             */
#define CAN_RSCAN_CONST                /* Data Constants                      */
#define CAN_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define CAN_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */


/* ---------------------------------------------------------------------------*/
/*                   LIN                                                      */
/* ---------------------------------------------------------------------------*/

#define LIN_PUBLIC_CODE                /* API functions                       */
#define LIN_PUBLIC_CONST               /* API constants                       */

#define LIN_PRIVATE_CODE               /* Internal functions                  */

#define LIN_PRIVATE_DATA               /* Module internal data                */
#define LIN_PRIVATE_CONST              /* Internal ROM Data                   */

#define LIN_APPL_CODE                  /* callbacks of the Application        */
#define LIN_APPL_CONST                 /* Applications' ROM Data              */
#define LIN_APPL_DATA                  /* Applications' RAM Data              */

#define LIN_FAST_CODE                   /* API functions                       */
#define LIN_FAST_CONST                  /* API constants                       */
#define LIN_FAST_DATA                   /* API constants                       */

#define LIN_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define LIN_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define LIN_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define LIN_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define LIN_CONST                      /* Data Constants                      */
#define LIN_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define LIN_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   FLS                                                      */
/* ---------------------------------------------------------------------------*/

#define FLS_PUBLIC_CODE                /* API functions                       */
#define FLS_PUBLIC_CONST               /* API constants                       */

#define FLS_PRIVATE_CODE               /* Internal functions                  */

#define FLS_PRIVATE_DATA               /* Module internal data                */
#define FLS_PRIVATE_CONST              /* Internal ROM Data                   */

#define FLS_APPL_CODE                  /* callbacks of the Application        */
#define FLS_APPL_CONST                 /* Applications' ROM Data              */
#define FLS_APPL_DATA                  /* Applications' RAM Data              */
#define FLS_FAST_DATA                  /* 'Near' RAM Data                     */

#define FLS_FAST_CODE                   /* API functions                       */
#define FLS_FAST_CONST                  /* API constants                       */
#define FLS_FAST_DATA                   /* API constants                       */

#define FLS_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define FLS_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define FLS_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define FLS_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define FLS_CONST                      /* Data Constants                      */
#define FLS_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define FLS_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* ---------------------------------------------------------------------------*/
/*                   FLSTST                                                   */
/* ---------------------------------------------------------------------------*/

#define FLSTST_PUBLIC_CODE                /* API functions                    */
#define FLSTST_PRIVATE_CODE               /* Internal functions               */
#define FLSTST_PUBLIC_CONST               /* API constants                    */

#define FLSTST_APPL_CODE                  /* callbacks of the Application        */
#define FLSTST_APPL_CONST                 /* Applications' ROM Data              */
#define FLSTST_APPL_DATA                  /* Applications' RAM Data              */
#define FLSTST_FAST_DATA                  /* 'Near' RAM Data                     */

#define FLSTST_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define FLSTST_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define FLSTST_INIT_DATA                  /* Data which is initialized during    */
                                          /*Startup                              */
#define FLSTST_NOINIT_DATA                /* Data which is not initialized during */
                                          /*Startup                              */
#define FLSTST_CONST                      /* Data Constants                      */
#define FLSTST_FAST_CODE                   /* API functions                       */
#define FLSTST_FAST_CONST                  /* API constants                       */
#define FLSTST_FAST_DATA                   /* API constants                       */

/* ---------------------------------------------------------------------------*/
/*                   CORTST                                                   */
/* ---------------------------------------------------------------------------*/

#define CORTST_PUBLIC_CODE             /* API functions                       */
#define CORTST_PRIVATE_CODE            /* Internal functions                  */

#define CORTST_APPL_CODE               /* callbacks of the Application        */
#define CORTST_APPL_DATA               /* Applications' RAM Data              */

#define CORTST_CONFIG_CONST            /* Desc. Tables -> Config-dependent    */
#define CORTST_CONFIG_DATA             /* Config. dependent (reg. size) data  */

#define CORTST_INIT_DATA               /* Data which is initialized during    */
                                       /* Startup                             */
#define CORTST_NOINIT_DATA             /* Data which is not initialized during*/
                                       /* Startup                             */
#define CORTST_CONST                   /* Data Constants                      */
#define CORTST_FAST_CODE               /* API functions                       */

/* ---------------------------------------------------------------------------*/
/*                   RAMTST                                                   */
/* ---------------------------------------------------------------------------*/

#define RAMTST_PUBLIC_CODE                /* API functions                    */
#define RAMTST_PUBLIC_CONST               /* API constants                    */

#define RAMTST_PRIVATE_CODE               /* Internal functions               */

#define RAMTST_PRIVATE_DATA               /* Module internal data             */
#define RAMTST_PRIVATE_CONST              /* Internal ROM Data                */

#define RAMTST_APPL_CODE                  /* callbacks of the Application     */
#define RAMTST_APPL_CONST                 /* Applications' ROM Data           */
#define RAMTST_APPL_DATA                  /* Applications' RAM Data           */
#define RAMTST_FAST_DATA                  /* 'Near' RAM Data                  */


#define RAMTST_CONFIG_CONST               /* Desc. Tables -> Config-dependent */
#define RAMTST_CONFIG_DATA                /* Config. dependent (reg. size)
                                                                        data  */

#define RAMTST_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define RAMTST_NOINIT_DATA                /* Data which is not initialized
                                          during Startup                      */
#define RAMTST_CONST                      /* Data Constants                   */

#define RAMTST_CODE

/* ---------------------------------------------------------------------------*/
/*                   ETH                                                      */
/* ---------------------------------------------------------------------------*/

#define ETH_59_PUBLIC_CODE                /* API functions                       */
#define ETH_59_PUBLIC_CONST               /* API constants                       */

#define ETH_59_PRIVATE_CODE               /* Internal functions                  */

#define ETH_59_PRIVATE_DATA               /* Module internal data                */
#define ETH_59_PRIVATE_CONST              /* Internal ROM Data                   */

#define ETH_59_APPL_CODE                  /* callbacks of the Application        */
#define ETH_59_APPL_CONST                 /* Applications' ROM Data              */
#define ETH_59_APPL_DATA                  /* Applications' RAM Data              */

#define ETH_59_FAST_CODE                   /* API functions                       */
#define ETH_59_FAST_CONST                  /* API constants                       */
#define ETH_59_FAST_DATA                   /* API constants                       */

#define ETH_59_CONFIG_CONST               /* Desc. Tables -> Config-dependent    */
#define ETH_59_CONFIG_DATA                /* Config. dependent (reg. size) data  */

#define ETH_59_INIT_DATA                  /* Data which is initialized during
                                          Startup                             */
#define ETH_59_NOINIT_DATA                /* Data which is not initialized during
                                          Startup                             */
#define ETH_59_CONST                      /* Data Constants                      */
#define ETH_59_VAR                        /* Memory class for global variables   */
                                       /* which are initialized after every   */
                                       /* reset                               */
#define ETH_59_VAR_NOINIT                 /* Memory class for global variables   */
                                       /* which are initialized by driver     */

/* Configurable memory class for code. */
#define OS_CODE

/* Configurable memory class for ISR code. */
#define OS_CODE_FAST

/*
 * Configurable memory class for all global or static variables that are never
 * initialized.
 */
#define OS_VAR_NOINIT

/*
 * Configurable memory class for all global or static variables that are
 * initialized only after power on reset.
 */
#define OS_VAR_POWER_ON_INIT

/*
 * Configurable memory class for all global or static variables that are
 * initialized after every reset.
 */
#define OS_VAR

/*
 * Configurable memory class for all global or static variables that will
 * be accessed frequently.
 */
#define OS_VAR_NOINIT_FAST

/*
 * Configurable memory class for all global or static variables that have at
 * be accessed frequently.
 */
#define OS_VAR_POWER_ON_INIT_FAST

/*
 * Configurable memory class for all global or static variables that have at
 * be accessed frequently.
 */
#define OS_VAR_FAST

/* Configurable memory class for global or static constants. */
#define OS_CONST

/*
 * Configurable memory class for global or static constants that will be
 * accessed frequently.
 */
#define OS_CONST_FAST

/* Configurable memory class for global or static constants in post build. */
#define OS_CONST_PBCFG

/*
 * Configurable memory class for pointers to applicaiton data(expected to be
 * in RAM or ROM)passed via API.
 */
#define OS_APPL_DATA

/*
 * Configurable memory class for pointers to applicaiton constants(expected to
 * be certainly in ROM,for instance point of Init-function)passed via API.
 */
#define OS_APPL_CONST

/*
 * Configurable memory class for pointers to applicaiton functions(e.g. call
 * back function pointers).
 */
#define OS_APPL_CODE


/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/


#endif /* COMPILER_CFG_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
