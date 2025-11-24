#include "projectConfigure.h"
#include <string.h>

#define PARTNUMBER 24317098UL
#define SOFTWARE_NUMBER 24317098UL
#define MPU_SYSN_VERSION "000000000"
#define MCU_SYSN_VERSION "005" // mcu内部版本号
#define MCU_MPU_ALL_VERSION MPU_SYSN_VERSION MCU_SYSN_VERSION
// 0xF10B_cxl
static const uint8_t g_didF10B[4] = {
    0x10,
    0x35,
    0x01,
    0x01};

static const uint8_t g_didF17F[17] = "87H6ADE060  H.E00"; // 硬件版本号                                                                                  // 0xF17F_cxl                                                                                //// 0xF17F_cxl                                                                                   // 0xF17F_cxl                                                                                   // 0xF17F_cxl                                                                                     // 0xF17F_cxl
static const uint8_t g_didF180[17] = "000123456789B.100"; // 0xF180_cxl
static const uint8_t g_didF187[14] = "8550003ADE0600";    // 零件号                                                                                     // 0xF187_cxl
static const uint8_t g_didF189[17] = "8786ADE060  S.E00"; // 软件版本号                                                                                   // 0xF189_cxl
static const uint8_t g_didF18E[14] = "GAVN1234567890";    // 0xF18E_cxl
static const uint8_t g_didF193[6] = "123456";             // 0xF190_cxl
static const uint8_t g_didF195[6] = "TA 1.0";             // 0xF195_cxl
static const uint8_t g_didF18A[9] = {"GAEI12345"};        // 0xF18A_cxl
// static const uint8_t g_didF18F[20] = "TESTSN01234567890123";                                                                                      // 0xF18F_cxl
static const uint8_t g_didB279[5] = "1.0.2";                                                                                                      // 0xB279_cxl
static const uint8_t g_partNumber[] = {(PARTNUMBER >> 24) & 0xFF, (PARTNUMBER >> 16) & 0xFF, (PARTNUMBER >> 8) & 0xFF, (PARTNUMBER >> 0) & 0xFF}; //
static const uint8_t g_supplierId[] = "sirun-1";

static const uint8_t g_hardwareVersion[] = "V1.1";
static const uint8_t g_partName[] = "tbox-4G";
static const uint8_t g_softWareNumber[] = {(SOFTWARE_NUMBER >> 24) & 0xFF, (SOFTWARE_NUMBER >> 16) & 0xFF, (SOFTWARE_NUMBER >> 8) & 0xFF, (SOFTWARE_NUMBER >> 0) & 0xFF};

static const uint8_t g_softwareVersionD[] = "V017.016";
static const uint8_t g_customVersion[18] = "Q10000620SA0240012";
static uint8_t g_internalMcuMpuTotalVersion[] = MCU_MPU_ALL_VERSION;
/*********software version format *************************
PPP-MM-CCC-MMM
***********************************************************/
extern const unsigned char g_softwareVersion[];
/*static const uint8_t g_internalSoftwareVersion_Project[] = "071";
static const uint8_t g_internalSoftwareVersion_Main[] = "00";
static uint8_t g_internalSoftwareVersion_Cpu[5] = "017";
static const uint8_t g_internalSoftwareVersion_Mcu[] = "016";*/

int16_t ProjectConfigGetDiagSoftwareVersion(uint8_t *pVersion, uint32_t *pLength)
{
    memcpy(pVersion, g_softwareVersionD, sizeof(g_softwareVersionD));
    *pLength = sizeof(g_softwareVersionD) - 1;
    return 0;
}

int16_t ProjectConfigGetSoftwareNumber(uint8_t *pNumber, uint16_t *pLength)
{
    memcpy(pNumber, g_softWareNumber, sizeof(g_softWareNumber));
    *pLength = sizeof(g_softWareNumber);
    return 0;
}

void ProjectConfigGetSoftwareVersion(uint8_t *pVersion, uint32_t *pLength)
{
    // uint8_t softwareVersion[20];
    uint8_t size = 12;
    /*memcpy(pVersion,g_internalSoftwareVersion_Project,3);
    memcpy(pVersion+3,g_internalSoftwareVersion_Main,2);
    memcpy(pVersion+5,g_internalSoftwareVersion_Cpu,3);
    memcpy(pVersion+8,g_internalSoftwareVersion_Mcu,3);*/
    memcpy(pVersion, g_softwareVersion, 12);
    *pLength = size;
}

void ProjectConfigGetHardNumber(uint8_t *pNumber, uint16_t *pLength)
{
    memcpy(pNumber, g_softWareNumber, sizeof(g_softWareNumber));
    *pLength = sizeof(g_softWareNumber);
}

void ProjectConfigGetPartNumber(uint8_t *pPartNumber, uint32_t *pLength)
{
    uint8_t size = sizeof(g_partNumber);

    if (size > 0)
    {
        memcpy(pPartNumber, g_partNumber, size);
    }
    *pLength = size;
}

int16_t ProjectConfigGetSupplierIdentifier(uint8_t *pSupplierId, uint32_t *pLength)
{
    uint8_t size = sizeof(g_supplierId) - 1;

    if (size > 0)
    {
        memcpy(pSupplierId, g_supplierId, size);
    }
    *pLength = size;

    return 0;
}

int16_t ProjectConfigGetHardwareVersion(uint8_t *pVersion, uint32_t *pLength)
{
    uint8_t size = sizeof(g_hardwareVersion) - 1;

    if (size > 0)
    {
        memcpy(pVersion, g_hardwareVersion, size);
    }
    *pLength = size;

    return 0;
}

int16_t ProjectConfigGetPartName(uint8_t *pPartName, uint32_t *pLength)
{
    uint8_t size = sizeof(g_partName) - 1;

    if (size > 0)
    {
        memcpy(pPartName, g_partName, size);
    }
    *pLength = size;
    return 0;
}

int16_t ProjectConfigGetPartNameBootSoftwareVersion(uint8_t *pData, uint32_t *pLength)
{
    uint32_t internalSize = 4;
    uint8_t pBootVersion[4] = {0};

    // pBootVersion = (uint8_t *)0x019FA000;
    //*pBootVersion = 0x56312E30;
    pBootVersion[0] = 0x56;
    pBootVersion[1] = 0x31;
    pBootVersion[2] = 0x2E;
    pBootVersion[3] = 0x30;
    memcpy(pData, pBootVersion, internalSize);
    *pLength = internalSize;

    return 0;
}

int16_t ProjectConfigGetCustomVersion(uint8_t *pData, uint32_t *pLength)
{
    memcpy(pData, g_customVersion, sizeof(g_customVersion));
    *pLength = sizeof(g_customVersion);
    return 0;
}
//_cxl
void ProjectConfigGetGacDiagParamVersion_F10B(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF10B, sizeof(g_didF10B));
    *pLength = sizeof(g_didF10B);
}

void ProjectConfigGetGacSparePartNumber_F17F(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF17F, sizeof(g_didF17F));
    *pLength = sizeof(g_didF17F);
}

void ProjectConfigGetBootSwPartNumber_F180(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF180, sizeof(g_didF180));
    *pLength = sizeof(g_didF180);
}

void ProjectConfigGetGacEcuPartNumber_F187(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF187, sizeof(g_didF187));
    *pLength = sizeof(g_didF187);
}

void ProjectConfigSiRunSwVersion_C100(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_internalMcuMpuTotalVersion, sizeof(g_internalMcuMpuTotalVersion));
    *pLength = sizeof(g_internalMcuMpuTotalVersion);
}

void ProjectConfigGetEcuSwVersion_F189(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF189, sizeof(g_didF189));
    *pLength = sizeof(g_didF189);
}

void ProjectConfigGetVisteonPartNumber_F18E(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF18E, sizeof(g_didF18E));
    *pLength = sizeof(g_didF18E);
}

void ProjectConfigGetSupplierSwVersion_F195(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF195, sizeof(g_didF195));
    *pLength = sizeof(g_didF195);
}

void ProjectConfigGetSupplierId_F18A(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didF18A, sizeof(g_didF18A));
    *pLength = sizeof(g_didF18A);
}

// void ProjectConfigGetSerialNumber_F18F(uint8_t *pData, uint16_t *pLength)
// {
//   memcpy(pData, g_didF18F, sizeof(g_didF18F));
//   *pLength = sizeof(g_didF18F);
// }

void ProjectConfigGetAppSoftwareVersion_B279(uint8_t *pData, uint16_t *pLength)
{
    memcpy(pData, g_didB279, sizeof(g_didB279));
    *pLength = sizeof(g_didB279);
}

void ProjectConfigGetSupplierHdVersion_F193(uint8_t *pSerialNumber, uint16_t *pLength)
{
    memcpy(pSerialNumber, g_didF193, sizeof(g_didF193));
    *pLength = sizeof(g_didF193);
}

/**
 * @brief Get the combined MCU and MPU version
 * @param pVersion Pointer to store the version string
 * @param pLength Pointer to store the version string length
 * @return 0 on success
 */
int16_t ProjectConfigGetMcuMpuTotalVersion(uint8_t *pVersion, uint16_t *pLength)
{
    int16_t result = 0;
    uint8_t size = sizeof(g_internalMcuMpuTotalVersion) - 1;

    if (size > 0)
    {
        memcpy(pVersion, g_internalMcuMpuTotalVersion, size);
    }
    *pLength = size;

    return result;
}

/**
 * @brief Set the MPU system version
 * @param pMpuVersion Pointer to the new MPU version string
 * @param versionLen Length of the version string
 * @return 0 on success, -1 if input is invalid
 */
int16_t ProjectConfigSetMpuVersion(const uint8_t *pMpuVersion, uint16_t versionLen)
{
    int16_t result = 0;
    uint8_t mpuVersionLen = strlen((const char *)MPU_SYSN_VERSION);
    uint8_t mcuVersionLen = strlen((const char *)MCU_SYSN_VERSION);
    uint8_t totalVersionLen = mpuVersionLen + mcuVersionLen;

    // Check if input is valid
    if (pMpuVersion == NULL || versionLen != totalVersionLen)
    {
        result = -1;
    }
    else
    {
        // Update MPU version part
        memcpy(g_internalMcuMpuTotalVersion, pMpuVersion, mpuVersionLen);

        // Ensure MCU version part remains unchanged
        memcpy(g_internalMcuMpuTotalVersion + mpuVersionLen, MCU_SYSN_VERSION, mcuVersionLen + 1); // +1 to include null terminator
    }

    return result;
}