
#ifndef CANTP_CBK_H
#define CANTP_CBK_H

#include "CanTp_Cfg.h"

/***********************************************************************************************************************
 * CanTp - AUTOSAR interfaces to CanIf (Lower Layer)
 * This interface provides the public callbacks of Component CanTp and is to be included by the lower layer Component
 * CanIf. To use this interface and corresponding symbolic names generated, include the header CanTp_Cbk.h
 **********************************************************************************************************************/



extern void CanTp_TxConfirmation(PduIdType TxPduId);
extern void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType *PduInfoPtr);



#endif /* CANTP_CBK_H */
