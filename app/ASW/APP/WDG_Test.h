#ifndef WDG_TEST_H
#define WDG_TEST_H

#include "Com.h"
#include "Can_GeneralTypes.h"
#include "Can_Cfg.h"

#define MSG_ID_111 0x111
#define MSG_ID_112 0x112
#define MSG_ID_222 0x222
#define MSG_STATUS_POSITIVE 0x11
#define MSG_STATUS_NEGATIVE 0x22

#define WDG_TEST_ENABLE 0

extern uint8 WDGCPCount;
extern uint8 WDGRunMainFuc;
extern uint8 WDGRunPerformReset;
extern uint32 WDGInitStartTime;
extern uint32 WDGInitEndTime;
extern uint32 WDGInitTotalTime;
extern uint32 WDGCurrentTime;
extern uint8 WdgM_FirstRun;

void SendMsg_111(uint8 status);
void SendMsg_112(void);
void ProcessMsg_222(const uint8* data, uint8 length);

#endif