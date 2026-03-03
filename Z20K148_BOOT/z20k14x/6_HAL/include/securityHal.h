#ifndef _SECURITYHAL_H
#define _SECURITYHAL_H

#include "platform_cfg.h"	// 包含MCU平台配置信息的头文件

int16_t SecurityHalInit(void);
void SecurityHalSetMode(uint8_t wakeMode);
void SecurityHalTestMain(void);

#endif  // _SECURITYHAL_H