#ifndef  _UDS_SECURITY_CALCULATE_H
#define  _UDS_SECURITY_CALCULATE_H

#include <stdint.h>

typedef enum
{
    E_SECURITY_CALCULATE_LEVEL1,
    E_SECURITY_CALCULATE_LEVEL2,
    E_SECURITY_CALCULATE_LEVEL3,//FBL
    E_SECURITY_CALCULATE_LEVEL4,
    E_SECURITY_CALCULATE_LEVEL5,
    E_SECURITY_CALCULATE_LEVEL9,
}SecurityCalculateLevel_t;

void UdsGetSeed(uint8_t *pSeed,uint8_t *pSeedLength);

void UdsSeedtoKey(uint8_t *seed,uint8_t seedLen,uint8_t *key,uint8_t *pKeyLen,SecurityCalculateLevel_t securityLevel);



#endif