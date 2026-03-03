#include "projectConfigure.h"
#include <string.h>


#define PARTNUMBER           24317098UL
#define SOFTWARE_NUMBER       24317098UL

static const uint8_t g_partNumber[] = {(PARTNUMBER>>24)&0xFF,(PARTNUMBER>>16)&0xFF,(PARTNUMBER>>8)&0xFF,(PARTNUMBER>>0)&0xFF};//
static const uint8_t g_supplierId[] = "sirun-1";

static const uint8_t g_hardwareVersion[] = "V1.1";
static const uint8_t g_partName[] = "tbox-4G";
static const uint8_t g_softWareNumber[] = {(SOFTWARE_NUMBER>>24)&0xFF,(SOFTWARE_NUMBER>>16)&0xFF,(SOFTWARE_NUMBER>>8)&0xFF,(SOFTWARE_NUMBER>>0)&0xFF};


static const uint8_t g_softwareVersionD[] = "V017.016"; 
static const uint8_t g_customVersion[18] = "Q10000620SA0240012";

/*********software version format *************************
PPP-MM-CCC-MMM
***********************************************************/
extern const unsigned char g_softwareVersion[];
/*static const uint8_t g_internalSoftwareVersion_Project[] = "071";
static const uint8_t g_internalSoftwareVersion_Main[] = "00";
static uint8_t g_internalSoftwareVersion_Cpu[5] = "017";
static const uint8_t g_internalSoftwareVersion_Mcu[] = "016";*/



int16_t ProjectConfigGetDiagSoftwareVersion(uint8_t *pVersion,uint32_t *pLength)
{
  memcpy(pVersion,g_softwareVersionD,sizeof(g_softwareVersionD));
  *pLength = sizeof(g_softwareVersionD)-1;
  return 0;
}

int16_t ProjectConfigGetSoftwareNumber(uint8_t *pNumber,uint16_t *pLength)
{
  memcpy(pNumber,g_softWareNumber,sizeof(g_softWareNumber));
  *pLength = sizeof(g_softWareNumber);
  return 0;
}

void ProjectConfigGetSoftwareVersion(uint8_t *pVersion,uint32_t *pLength)
{
    //uint8_t softwareVersion[20];
    uint8_t size = 12;
    /*memcpy(pVersion,g_internalSoftwareVersion_Project,3);
    memcpy(pVersion+3,g_internalSoftwareVersion_Main,2);
    memcpy(pVersion+5,g_internalSoftwareVersion_Cpu,3);
    memcpy(pVersion+8,g_internalSoftwareVersion_Mcu,3);*/
    memcpy(pVersion,g_softwareVersion,12);
    *pLength = size;  
}

void ProjectConfigGetHardNumber(uint8_t* pNumber,uint16_t* pLength)
{
  memcpy(pNumber,g_softWareNumber,sizeof(g_softWareNumber));
  *pLength = sizeof(g_softWareNumber);
}


void ProjectConfigGetPartNumber(uint8_t* pPartNumber,uint32_t *pLength)
{
   uint8_t size = sizeof(g_partNumber);
  
  if(size>0)
  {
    memcpy(pPartNumber,g_partNumber,size);    
  }
  *pLength = size;
}

int16_t ProjectConfigGetSupplierIdentifier(uint8_t* pSupplierId,uint32_t *pLength)
{
   uint8_t size = sizeof(g_supplierId)-1;
  
  if(size>0)
  {
    memcpy(pSupplierId,g_supplierId,size);    
  }
  *pLength = size;  
  
  return 0;
}

int16_t ProjectConfigGetHardwareVersion(uint8_t* pVersion,uint32_t *pLength)
{
   uint8_t size = sizeof(g_hardwareVersion)-1;
  
  if(size>0)
  {
    memcpy(pVersion,g_hardwareVersion,size);    
  }
  *pLength = size;   
  
  return 0;
}

int16_t ProjectConfigGetPartName(uint8_t *pPartName,uint32_t *pLength)
{
   uint8_t size = sizeof(g_partName)-1;
  
  if(size>0)
  {
    memcpy(pPartName,g_partName,size);    
  }
  *pLength = size;  
  return 0;
}

int16_t ProjectConfigGetPartNameBootSoftwareVersion(uint8_t *pData,uint32_t *pLength)
{
  uint32_t internalSize = 4;
  uint8_t pBootVersion[4] = {0};
  
  //pBootVersion = (uint8_t *)0x019FA000;
  //*pBootVersion = 0x56312E30;
  pBootVersion[0] = 0x56;
  pBootVersion[1] = 0x31;
  pBootVersion[2] = 0x2E;
  pBootVersion[3] = 0x30;
  memcpy(pData,pBootVersion,internalSize);
  *pLength = internalSize;

  return 0;
}

int16_t ProjectConfigGetCustomVersion(uint8_t *pData,uint32_t *pLength)
{
  memcpy(pData,g_customVersion,sizeof(g_customVersion));
  *pLength = sizeof(g_customVersion);
  return 0;
}


