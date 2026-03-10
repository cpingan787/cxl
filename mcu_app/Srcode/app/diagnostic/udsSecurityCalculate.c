#include "FreeRTOS.h"
#include "task.h"
#include <string.h>
#include "stdlib.h"
#include "udsSecurityCalculate.h"



/*********configure seed length**************/

static const uint8_t SeedLength = 4;



#define NC_DEFAULT_SEED  0xa548fd85 /* default seed used if result from random generator is 0 */

#define NC_UDS_KEYMASK_LV1   0x2a7c9a38
#define NC_UDS_KEYMASK_LV2   0x391adc35
#define NC_UDS_KEYMASK_LV3   0x271ad321


const unsigned int ncUdsKeymul[32] = { 

0x7678,0x9130,0xd753,0x750f,0x72cb,0x55f7,0x13da,0x786b,
                                         

0x372a,0x4932,0x0e7c,0x3687,0x3261,0xa82c,0x8935,0xd00c,
                                         

0x1995,0x4311,0xb854,0x0d8d,0x9863,0x1a21,0xf753,0xd6d3,
                                         

0xb15d,0x7f3d,0x6821,0x791c,0x26c5,0x2e37,0x0e69,0x64a0 };
#if 0
/*******************************/
static unsigned long croleft(unsigned long c, unsigned int b)
{  
	unsigned long left=c<<b;
	unsigned long right=c>>(32-b);  
	unsigned long croleftvalue=left|right;  
	return croleftvalue;  
}  
/*******************************/

/*******************************/

static unsigned short int croshortright(unsigned short int c, unsigned short int b)
{  
	unsigned short int right=c>>b;
	unsigned short int left=c<<(16-b);  
	unsigned short int crorightvalue=left|right;  
	return crorightvalue;  
}  
/*******************************/

/*******************************/
static unsigned long mulu32_lv1(unsigned long val1,unsigned long val2)
{
  unsigned long x,y,z,p;
  x = (val1&NC_UDS_KEYMASK_LV1)|((~val1)&val2);
  y = ((croleft(val1,1))&(croleft(val2,14)))|((croleft(NC_UDS_KEYMASK_LV1,21))&(~(croleft(val1,30))));
  z = (croleft(val1,17))^(croleft(val2,4))^(croleft(NC_UDS_KEYMASK_LV1,11));
  p = x^y^z;
  return p;
}
/*******************************/

/*******************************/
/*
static unsigned long uds_calc_key_lv1(unsigned long seed)
{
  unsigned long temp;
  unsigned short int  index;
  unsigned short int  mult1;
  unsigned short int  mult2;

  if(seed == 0)
  {
	seed = NC_DEFAULT_SEED;
  }
  else
  {}
  for (index=0x5D39, temp=0x80000000; temp; temp>>=1)
  {
	if (temp & seed)
	{
		index = croshortright(index, 1);
		if (temp & NC_UDS_KEYMASK_LV1)
		{
			index ^= 0x74c9;
		}
	}
  }
  mult1 = (ncUdsKeymul[(index>>2) & ((1<<5)-1)]^index);
  mult2 = (ncUdsKeymul[(index>>8) & ((1<<5)-1)]^index);
  temp = (((unsigned long)mult1)<<16)|((unsigned long)mult2);
  temp = mulu32_lv1(seed,temp);
  return temp;
}
*/
/*******************************/

/*******************************/
static unsigned long mulu32_lv2(unsigned long val1,unsigned long val2)
{
  unsigned long x,y,z,p;
  x = (val1&NC_UDS_KEYMASK_LV2)|((~val1)&val2);
  y = ((croleft(val1,1))&(croleft(val2,14)))|((croleft(NC_UDS_KEYMASK_LV2,21))&(~(croleft(val1,30))));
  z = (croleft(val1,17))^(croleft(val2,4))^(croleft(NC_UDS_KEYMASK_LV2,11));
  p = x^y^z;
  return p;
}
/*******************************/

/*******************************/
/*
static unsigned long uds_calc_key_lv2(unsigned long seed)
{
  unsigned long temp;
  unsigned short int  index;
  unsigned short int  mult1;
  unsigned short int  mult2;

  if(seed == 0)
  {
	seed = NC_DEFAULT_SEED;
  }
  else
  {}
  for (index=0x5D39, temp=0x80000000; temp; temp>>=1)
  {
	if (temp & seed)
	{
		index = croshortright(index, 1);
		if (temp & NC_UDS_KEYMASK_LV2)
		{
			index ^= 0x74c9;
		}
	}
  }
  mult1 = (ncUdsKeymul[(index>>2) & ((1<<5)-1)]^index);
  mult2 = (ncUdsKeymul[(index>>8) & ((1<<5)-1)]^index);
  temp = (((unsigned long)mult1)<<16)|((unsigned long)mult2);
  temp = mulu32_lv2(seed,temp);
  return temp;
}
*/
static unsigned long mulu32_lv3(unsigned long val1,unsigned long val2)
{
  unsigned long x,y,z,p;
  x = (val1&NC_UDS_KEYMASK_LV3)|((~val1)&val2);
  y = ((croleft(val1,1))&(croleft(val2,14)))|((croleft(NC_UDS_KEYMASK_LV3,21))&(~(croleft(val1,30))));
  z = (croleft(val1,17))^(croleft(val2,4))^(croleft(NC_UDS_KEYMASK_LV3,11));
  p = x^y^z;
  return p;
}
/*
static unsigned long uds_calc_key_lv3(unsigned long seed)
{
  unsigned long temp;
  unsigned short int  index;
  unsigned short int  mult1;
  unsigned short int  mult2;

  if(seed == 0)
  {
	seed = NC_DEFAULT_SEED;
  }
  else
  {
    
  }
  for (index=0x5D39, temp=0x80000000; temp; temp>>=1)
  {
	if (temp & seed)
	{
		index = croshortright(index, 1);
		if (temp & NC_UDS_KEYMASK_LV3)
		{
			index ^= 0x74c9;
		}
	}
  }
  mult1 = (ncUdsKeymul[(index>>2) & ((1<<5)-1)]^index);
  mult2 = (ncUdsKeymul[(index>>8) & ((1<<5)-1)]^index);
  temp = (((unsigned long)mult1)<<16)|((unsigned long)mult2);
  temp = mulu32_lv3(seed,temp);
  return temp;
}
*/
/*******************************/
#endif
void UdsSeedtoKey(uint8_t *seed,uint8_t seedLen,uint8_t *key,uint8_t *pKeyLen,SecurityCalculateLevel_e securityLevel)
{
  /*
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
*/
      uint32_t i;
  uint32_t u32Key;
  uint32_t u32Seed;

  u32Key = 0x00;
  u32Seed = (seed[0]<<24)+(seed[1]<<16)+(seed[2]<<8)+(seed[3]<<0);

 if(u32Seed != 0)
  {
  	for(i = 0;i<35;i++)
  	{
  		if(u32Seed&0x80000000)
  		{
  			u32Seed = u32Seed << 1;
            if(securityLevel == E_SECURITY_CALCULATE_LEVEL1)//APP
  			{
  				u32Seed = u32Seed ^ 0x54424F58;
  			}
  			else if(securityLevel == E_SECURITY_CALCULATE_LEVEL2)//BOOT
  			{
  				u32Seed = u32Seed ^ 0x54424F35;
  			}
  		}
  		else
  		{
  			u32Seed = u32Seed << 1;
  		}
  	}
  	u32Key = u32Seed;
  }
  key[0] = (uint8_t)(u32Key>>24);
  key[1] = (uint8_t)(u32Key>>16);
  key[2] = (uint8_t)(u32Key>>8);
  key[3] = (uint8_t)(u32Key>>0);
  *pKeyLen = 4;
}

void UdsGetSeed(uint8_t *pSeed,uint8_t *pSeedLength)
{
#if(1)  
  uint32_t randData;
  uint16_t i;

  randData = xTaskGetTickCount();
  srand(randData);
  for (i = 0; i < SeedLength; i++)
  {
        pSeed[i] = rand();
  }
#else//debug test
  pSeed[0] = 0x12;
  pSeed[1] = 0x34;
  pSeed[2] = 0x56;
  pSeed[3] = 0x78;
#endif
  *pSeedLength = SeedLength;
}



