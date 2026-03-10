

#ifndef CANTP_CFG_H
#define CANTP_CFG_H


#include "ComStack_Types.h"


/* Defines */

/* TRACE[SWS_CanTp_00267] CanTp Module/Version Information */
#define CANTP_VENDOR_ID                     (6u)
#define CANTP_MODULE_ID                     (35u)
#define CANTP_INSTANCE_ID                   (0u)

#define CANTP_AR_RELEASE_MAJOR_VERSION      (4u)
#define CANTP_AR_RELEASE_MINOR_VERSION      (2u)
#define CANTP_AR_RELEASE_REVISION_VERSION   (2u)
#define CANTP_SW_MAJOR_VERSION              (5u)
#define CANTP_SW_MINOR_VERSION              (0u)
#define CANTP_SW_PATCH_VERSION              (0u)

#define CANTP_ON                            (1u)
#define CANTP_OFF                           (0u)


#define CANTP_CHANGE_PARAMETER_API          CANTP_OFF

#define CANTP_TX_BURST_MODE                 CANTP_OFF

#define CANTP_STRICTDLCCHECK                CANTP_OFF


#define CANTP_FD_CALLOUT_SUPPORT            CANTP_OFF
#define CANTP_CANFD_SUPPORT                 CANTP_ON
#define CANTP_SCHM_SUPPORT                  CANTP_OFF


#define CANTP_DYNAMIC_FC_SUPPORT            CANTP_OFF
#define CANTP_CYCLE_COUNTER                 CANTP_ON
#define CANTP_PADDING_SUPPORT               CANTP_ON /*gdx added: enable/disable padding*/
#define CanTp_FdCallOut                     


#define CANTP_NO_OF_CANTPCONFIGSETS         (1u)

#define CANTP_MAX_RX_CONNECTION_SIZE        (2u)
#define CANTP_MAX_TX_CONNECTION_SIZE        (1u)
#define CANTP_MAX_NO_OF_TX_NPDU             (1u)
#define CANTP_MAX_CHANNEL_SIZE              (1u)
#if(CANTP_CANFD_SUPPORT == CANTP_ON)
#define CANTP_MAX_NPDU_LENGTH               (64u)
#else
#define CANTP_MAX_NPDU_LENGTH               (8u)
#endif
#define CANTP_DEFAULT_STMIN_TICKS           (0u)
#define CANTP_INVALID_STMIN_TICKS           (128u)
#define CANTP_PADDING_BYTE                  (0xAAu)
/*gdx add: Rx/Tx config*/
#if(CANTP_CANFD_SUPPORT == CANTP_ON)
#define CANTP_CONFIG_FD                     (0x01U)
#else
#define CANTP_CONFIG_FD                     (0x00U)
#endif
#if(CANTP_PADDING_SUPPORT == CANTP_ON)
#define CANTP_CONFIG_PADDING                (0x08U)
#else
#define CANTP_CONFIG_PADDING                (0x00U)
#endif
/* 3:IsPadingOn|2:IsFunctional|1:IsFcDisabled|0:IsFdEnabled */
#define CANTP_PHY_RX_CONFIG                 (0x00U | CANTP_CONFIG_PADDING | CANTP_CONFIG_FD)
#define CANTP_FUN_RX_CONFIG                 (0x04U | CANTP_CONFIG_PADDING | CANTP_CONFIG_FD)
/* 4:IsTcDisabled|3:IsPadingOn|2:IsFunctional|1:IsFcDisabled|0:IsFdEnabled */
#define CANTP_TX_CONFIG                     (0x10U | CANTP_CONFIG_PADDING | CANTP_CONFIG_FD)



/* Forward incomplete declaration for EcuM */

struct CanTp_ConfigStructType;
typedef struct CanTp_ConfigStructType CanTp_ConfigType;

extern const struct CanTp_ConfigStructType CanTp_Config;

/* Function like Macro definitions */
#if(CANTP_STRICTDLCCHECK == CANTP_ON)
#define CanTp_Cfg_DlcCheck(SduLength, ExpectedLength) (((SduLength) == (ExpectedLength)) ? (E_OK) : (E_NOT_OK))
#else
#define CanTp_Cfg_DlcCheck(SduLength, ExpectedLength) (((SduLength) >= (ExpectedLength)) ? (E_OK) : (E_NOT_OK))
#endif
#define CanTp_Cfg_GetUsToTicks(Us)                    (((Us) * 1000u)/1000000u)


#endif /* CANTP_CFG_H */
