
#ifndef CANTP_H
#define CANTP_H

#include "CanTp_Cfg.h"

/***********************************************************************************************************************
 * CanTp - AUTOSAR interfaces to PduR (Upper Layer)
 * This interface provides Public export of Component CanTp and is to be included by the upper layer Component PduR.
 * To use this interface include the header CanTp.h
 **********************************************************************************************************************/

/* Macros for Function names to be passed as a parameter to DET Apis */
#define CANTP_INIT                              (0x01u)
#define CANTP_SHUTDOWN                          (0x02u)
#define CANTP_TRANSMIT                          (0x03u)
#define CANTP_TXCONFIRMATION                      (0x40u)
#define CANTP_RXINDICATION                      (0x42u)
#define CANTP_MAINFUNCTION                      (0x06u)
#define CANTP_GETVERSIONINFO                    (0x07u)
#define CANTP_CANCELTRANSMIT                    (0x08u)
#define CANTP_CANCELRECEIVE                        (0x09u)
#define CANTP_CHANGEPARAMETER                   (0x0Au)
#define CANTP_READPARAMETER                        (0x0Bu)
#define CANTP_TRIGGERTRANSMIT                    (0x0Cu)

/* TRACE[SWS_CanTp_00293][SWS_CanTp_00352] Possible CanTp Development Error */
#define CANTP_E_PARAM_CONFIG                    (0x01u)
#define CANTP_E_PARAM_ID                        (0x02u)
#define CANTP_E_PARAM_POINTER                   (0x03u)
#define CANTP_E_INIT_FAILED                     (0x04u)
#define CANTP_E_UNINIT                          (0x20u)
#define CANTP_E_INVALID_TX_ID                   (0x30u)
#define CANTP_E_INVALID_RX_ID                   (0x40u)
#define CANTP_E_PADDING                          (0x70u)
#define CANTP_E_INVALID_TATYPE                  (0x90u)
#define CANTP_E_OPER_NOT_SUPPORTED              (0xA0u)
#define CANTP_E_COM                             (0xB0u)
#define CANTP_E_RX_COM                          (0xC0u)
#define CANTP_E_TX_COM                          (0xD0u)



extern uint8 CanTp_MainState; /* Variables exported for debugging outside CanTp module */


/* Function Prototypes from CanTp for upper layer */




extern void CanTp_Init(const CanTp_ConfigType *CfgPtr);

#if(CANTP_SCHM_SUPPORT != CANTP_ON)
extern void CanTp_MainFunction(void); /* If CANTP_SCHM_SUPPORT is ON then declaration is through SchM_CanTp.h. */
#endif
extern Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType *CanTpTxInfoPtr);




#endif /* CANTP_H */
