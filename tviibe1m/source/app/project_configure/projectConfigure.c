#include "projectConfigure.h"
#include <string.h>
#include "ParameterStoreManageApp.h"


#define PARTNUMBERSIZE           15
#define SOFTWARE_NUMBERSIZE       4

static const uint8_t g_partNumber[PARTNUMBERSIZE] = {'C','K','3','6','0','1','1','0','0','V','9','0','0','1',' '};
static const uint8_t g_supplierId[] = "DL03005";
static const uint8_t g_hardwareNumber[SOFTWARE_NUMBERSIZE] = {'0', '0', '0', '1'};
static const uint8_t g_partName[] = "TBOX  ";
static const uint8_t g_softWareNumber[SOFTWARE_NUMBERSIZE] = {'0', '0', '1', '0'};
static const uint8_t g_softwareVersionD[] = "0051"; 

static const uint8_t g_customVersion[18] = "Q10000620SA0240012";

static const uint8_t g_activeDiagnosticInformation[] = "00001";  // 诊断版本
static const uint8_t g_basicAppSoftwareNumber[] = "00001";  // 控制器应用软件版本号
static const uint8_t g_calibrationSoftwareNumber[] = "00001";  // 控制器标定软件号
static const uint8_t g_networkNumber[] = "00001";  // 控制器通信协议版本
static const uint8_t g_osSoftwareVersionNumber[] = "00001";  // 控制器操作系统版本号

/*********software version format *************************
PPP-MM-CCC-MMM
***********************************************************/
extern const unsigned char g_softwareVersion[];
/*static const uint8_t g_internalSoftwareVersion_Project[] = "071";
static const uint8_t g_internalSoftwareVersion_Main[] = "00";
static uint8_t g_internalSoftwareVersion_Cpu[5] = "017";
static const uint8_t g_internalSoftwareVersion_Mcu[] = "016";*/



void ProjectConfigGetMCUSoftwareVersion(uint8_t *pVersion,uint16_t *pLength)
{
	memcpy(pVersion,g_softwareVersionD,sizeof(g_softwareVersionD));
	*pLength = sizeof(g_softwareVersionD)-1;
}

void ProjectConfigGetSoftwareNumber(uint8_t *pNumber,uint16_t *pLength)
{
  memcpy(pNumber,g_softWareNumber,sizeof(g_softWareNumber));
  *pLength = sizeof(g_softWareNumber);
}


void ProjectConfigGetHardNumber(uint8_t* pNumber,uint16_t* pLength)
{
  memcpy(pNumber,g_hardwareNumber,sizeof(g_hardwareNumber));
  *pLength = sizeof(g_hardwareNumber);
}


void ProjectConfigGetPartNumber(uint8_t* pPartNumber,uint16_t *pLength)
{
   uint8_t size = sizeof(g_partNumber);
  
  if(size>0)
  {
    memcpy(pPartNumber,g_partNumber,size);    
  }
  *pLength = size;
}

void ProjectConfigGetSupplierIdentifier(uint8_t* pSupplierId,uint16_t *pLength)
{
   uint8_t size = sizeof(g_supplierId)-1;
  
  if(size>0)
  {
    memcpy(pSupplierId,g_supplierId,size);    
  }
  *pLength = size;  
  
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

int16_t ProjectConfigGetActiveDiagnosticInformation(uint8_t *pVersion,uint32_t *pLength)
{
  memcpy(pVersion,g_activeDiagnosticInformation,sizeof(g_activeDiagnosticInformation));
  *pLength = sizeof(g_activeDiagnosticInformation)-1;
  return 0;
}

int16_t ProjectConfigGetBasicAppSoftwareNumber(uint8_t *pVersion,uint32_t *pLength)
{
  memcpy(pVersion,g_basicAppSoftwareNumber,sizeof(g_basicAppSoftwareNumber));
  *pLength = sizeof(g_basicAppSoftwareNumber)-1;
  return 0;
}

int16_t ProjectConfigGetCalibrationSoftwareNumber(uint8_t *pVersion,uint32_t *pLength)
{
  memcpy(pVersion,g_calibrationSoftwareNumber,sizeof(g_calibrationSoftwareNumber));
  *pLength = sizeof(g_calibrationSoftwareNumber)-1;
  return 0;
}

int16_t ProjectConfigGetNetworkNumber(uint8_t *pVersion,uint32_t *pLength)
{
  memcpy(pVersion,g_networkNumber,sizeof(g_networkNumber));
  *pLength = sizeof(g_networkNumber)-1;
  return 0;
}

int16_t ProjectConfigGetOsSoftwareVersionNumber(uint8_t *pVersion,uint32_t *pLength)
{
  memcpy(pVersion,g_osSoftwareVersionNumber,sizeof(g_osSoftwareVersionNumber));
  *pLength = sizeof(g_osSoftwareVersionNumber)-1;
  return 0;
}
