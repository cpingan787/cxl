#ifndef _PROJECT_CONFIGURE_H
#define _PROJECT_CONFIGURE_H

#include <stdint.h>

#define MCU_SOFTWARE_VERSION_F189 0x00100000//0010
#define MCU_HARDWARE_VERSION_F191 0x00010000
#define MCU_OTA_VERTION_110F "V1.0           "
#define MCU_OTA_TASK_VERTION_1110 "               "

#define MCU_TRACEABILITY_NUMBER 0x01
#define MCU_BATCH_NUMBER 0x2505

void ProjectConfigGetMCUSoftwareVersion(uint8_t *pVersion,uint16_t *pLength);
void ProjectConfigGetSoftwareNumber(uint8_t *pNumber,uint16_t *pLength);
void ProjectConfigGetHardNumber(uint8_t* pNumber,uint16_t* pLength);
void ProjectConfigGetPartNumber(uint8_t* pPartNumber,uint16_t *pLength);
void ProjectConfigGetSupplierIdentifier(uint8_t* pSupplierId,uint16_t *pLength);
int16_t ProjectConfigGetPartName(uint8_t *pPartName,uint32_t *pLength);

int16_t ProjectConfigGetPartNameBootSoftwareVersion(uint8_t *pData,uint32_t *pLength);
int16_t ProjectConfigGetCustomVersion(uint8_t *pData,uint32_t *pLength);


int16_t ProjectConfigGetActiveDiagnosticInformation(uint8_t *pVersion,uint32_t *pLength);
int16_t ProjectConfigGetBasicAppSoftwareNumber(uint8_t *pVersion,uint32_t *pLength);
int16_t ProjectConfigGetCalibrationSoftwareNumber(uint8_t *pVersion,uint32_t *pLength);
int16_t ProjectConfigGetNetworkNumber(uint8_t *pVersion,uint32_t *pLength);
int16_t ProjectConfigGetOsSoftwareVersionNumber(uint8_t *pVersion,uint32_t *pLength);






#endif    //
