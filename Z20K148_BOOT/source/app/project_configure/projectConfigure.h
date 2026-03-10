#ifndef _PROJECT_CONFIGURE_H
#define _PROJECT_CONFIGURE_H

#include <stdint.h>


int16_t ProjectConfigGetDiagSoftwareVersion(uint8_t *pVersion,uint32_t *pLength);
int16_t ProjectConfigGetSoftwareNumber(uint8_t *pNumber,uint16_t *pLength);
void ProjectConfigGetSoftwareVersion(uint8_t *pVersion,uint32_t *pLength);
void ProjectConfigGetHardNumber(uint8_t* pNumber,uint16_t* pLength);
void ProjectConfigGetPartNumber(uint8_t* pPartNumber,uint32_t *pLength);
int16_t ProjectConfigGetSupplierIdentifier(uint8_t* pSupplierId,uint32_t *pLength);
int16_t ProjectConfigGetHardwareVersion(uint8_t* pVersion,uint32_t *pLength);
int16_t ProjectConfigGetPartName(uint8_t *pPartName,uint32_t *pLength);

int16_t ProjectConfigGetPartNameBootSoftwareVersion(uint8_t *pData,uint32_t *pLength);
int16_t ProjectConfigGetCustomVersion(uint8_t *pData,uint32_t *pLength);








#endif    //
