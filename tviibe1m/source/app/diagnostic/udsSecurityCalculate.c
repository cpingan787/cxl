#include "FreeRTOS.h"
#include "task.h"
#include <string.h>
#include "stdlib.h"
#include "udsSecurityCalculate.h"
#include "hsmHal.h"
#include "logHal.h"

/*********configure seed length**************/

static const uint8_t SeedLength = 4;

typedef unsigned char	u1;
typedef unsigned int	u2;
typedef unsigned long	u4;

#define	UNLOCKKEY 		0x00000000
#define	UNLOCKSEED 		0x00000000
#define	UNDEFINESEED 	0xFFFFFFFF
#define	SEEDMASK	 	0x80000000
#define	SHIFTBIT	 			1

#define NC_UDS_KEYMASK_LV1   0x44303331
#define NC_UDS_KEYMASK_LV2   0x44303332
#define NC_UDS_KEYMASK_LV3   0x44303333

/*******************************/
static unsigned long uds_calc_key_lv1(unsigned long seed)
{
   u1	i;
   u4 	key;
   
   key = UNLOCKKEY; 
   
   if(  !  (  ( seed == UNLOCKSEED  )
        ||  ( seed == UNDEFINESEED )  )  )
   {
   	for( i = 0; i < 35; i++ )
      {
   		if( seed & SEEDMASK )
   		{
   			seed = seed << SHIFTBIT;
   			seed = seed ^ NC_UDS_KEYMASK_LV1;
   		}
   		else
   		{
   			seed = seed << SHIFTBIT;
   		}
      }
      key = seed;
   }
   return key;
}

/*******************************/
static unsigned long uds_calc_key_lv2(unsigned long seed)
{
   u1	i;
   u4 	key;
   
   key = UNLOCKKEY; 
   
   if(  !  (  ( seed == UNLOCKSEED  )
        ||  ( seed == UNDEFINESEED )  )  )
   {
   	for( i = 0; i < 35; i++ )
      {
   		if( seed & SEEDMASK )
   		{
   			seed = seed << SHIFTBIT;
   			seed = seed ^ NC_UDS_KEYMASK_LV2;
   		}
   		else
   		{
   			seed = seed << SHIFTBIT;
   		}
      }
      key = seed;
   }
   return key;
}
/*******************************/
static unsigned long uds_calc_key_lv3(unsigned long seed)
{
   u1	i;
   u4 	key;
   
   key = UNLOCKKEY; 
   
   if(  !  (  ( seed == UNLOCKSEED  )
        ||  ( seed == UNDEFINESEED )  )  )
   {
   	for( i = 0; i < 35; i++ )
      {
   		if( seed & SEEDMASK )
   		{
   			seed = seed << SHIFTBIT;
   			seed = seed ^ NC_UDS_KEYMASK_LV3;
   		}
   		else
   		{
   			seed = seed << SHIFTBIT;
   		}
      }
      key = seed;
   }
   return key;
}

/*******************************/

void UdsSeedtoKey(uint8_t *seed,uint8_t seedLen,uint8_t *key,uint8_t *pKeyLen,SecurityCalculateLevel_t securityLevel)
{
#if 1
  uint32_t u32Key;
  uint32_t u32Seed;

  u32Key = 0x00;
  u32Seed = (seed[0]<<24)+(seed[1]<<16)+(seed[2]<<8)+(seed[3]<<0);

  if(securityLevel==E_SECURITY_CALCULATE_LEVEL1)
  {
    u32Key = uds_calc_key_lv1(u32Seed);
  }
  else if(securityLevel==E_SECURITY_CALCULATE_LEVEL2)//FBL
  {
    u32Key = uds_calc_key_lv2(u32Seed);
  }
  else if(securityLevel==E_SECURITY_CALCULATE_LEVEL3)//FBL
  {
    u32Key = uds_calc_key_lv3(u32Seed);
  }
  else if(securityLevel==E_SECURITY_CALCULATE_LEVEL2)
  {
    
  }
  key[0] = (uint8_t)(u32Key>>24);
  key[1] = (uint8_t)(u32Key>>16);
  key[2] = (uint8_t)(u32Key>>8);
  key[3] = (uint8_t)(u32Key>>0);
  *pKeyLen = 4;
#else
    uint8_t seedExt[16] = {0};
    const uint8_t key1[16] = {0x22,0xB2,0x26,0x2B,0x7F,0x57,0x4E,0x25,0x22,0x86,0x38,0x9D,0xA8,0x0D,0xE5,0x59};
    const uint8_t key3[16] = {0x7A,0x4F,0x24,0x6D,0x68,0x6C,0x67,0x5D,0x39,0xAC,0x6C,0x5D,0xC6,0x4C,0xA5,0xDE};
    uint8_t response[16] = {0};

    for(uint8_t i = 0; i < 4; i++)
    {
        TBOX_PRINT("%02x ",seed[i]);
    }
    TBOX_PRINT("\r\n");
    memcpy(seedExt, seed, 4);
    memcpy(&seedExt[4], seed, 4);
    memcpy(&seedExt[8], seed, 4);
    memcpy(&seedExt[12], seed, 4);
    if(securityLevel == E_SECURITY_CALCULATE_LEVEL1)
    {
        HsmHalAesEcbEncrypt(key1, 0, seedExt, 16, response);
        for(uint8_t i = 0; i < 16; i++)
        {
            TBOX_PRINT("%02x ",response[i]);
        }
        TBOX_PRINT("\r\n");
        key[0] = response[0] ^ response[4] ^ response[8] ^ response[12];
        key[1] = response[1] ^ response[5] ^ response[9] ^ response[13];
        key[2] = response[2] ^ response[6] ^ response[10] ^ response[14];
        key[3] = response[3] ^ response[7] ^ response[11] ^ response[15];
        *pKeyLen = 4;
    }
    else if(securityLevel == E_SECURITY_CALCULATE_LEVEL2)//FBL
    {
        HsmHalAesEcbEncrypt(key3, 0, seedExt, 16, response);
        for(uint8_t i = 0; i < 16; i++)
        {
            TBOX_PRINT("%02x ",response[i]);
        }
        TBOX_PRINT("\r\n");
        key[0] = response[0] ^ response[4] ^ response[8] ^ response[12];
        key[1] = response[1] ^ response[5] ^ response[9] ^ response[13];
        key[2] = response[2] ^ response[6] ^ response[10] ^ response[14];
        key[3] = response[3] ^ response[7] ^ response[11] ^ response[15];
        *pKeyLen = 4;
    }
    for(uint8_t i = 0; i < 4; i++)
    {
        TBOX_PRINT("%02x ",key[i]);
    }
    TBOX_PRINT("\r\n");
#endif
}

void UdsGetSeed(uint8_t *pSeed,uint8_t *pSeedLength)
{
#if(1)  
  uint32_t randData;
  uint16_t i;

  // randData = xTaskGetTickCount();
  // srand(randData);
  for (i = 0; i < SeedLength; i++)
  {
        // pSeed[i] = rand();
        HsmHalAesGetRandomData(&randData);
        pSeed[i] = randData & 0xFF;
  }
#else//debug test
  pSeed[0] = 0x12;
  pSeed[1] = 0x34;
  pSeed[2] = 0x56;
  pSeed[3] = 0x78;
#endif
  *pSeedLength = SeedLength;
}



