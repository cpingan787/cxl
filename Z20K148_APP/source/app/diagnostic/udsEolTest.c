/**************************************************
author: xiewenming

finish date:2018.7.31



*****************************************************/
#include "FreeRTOS.h"
#include "task.h"
#include <string.h>
#include "udsEolTest.h"
#include "stdlib.h"

#include "udsDidFunction.h"

// #include "mcu_control_cpu_interface.h"
#include "peripheralHal.h"
#include "canHal.h"
#include "batteryHal.h"

#include "powerManageSdk.h"
#include "batterySdk.h"
#include "eolTestSyncWithCpu.h"
#include "taskDtcProcess.h"
#include "stateSyncSdk.h"

#define UDS_EOL_TEST_DEBUG 1

typedef enum
{
    TestUdsSecurity_LevelNone,
    TestUdsSecurityLevel_Level1,
    TestUdsSecurityLevel_Level2,
    TestUdsSecurityLevel_Level3,
} enum_TestUdsSecurityLevel;

typedef int16_t (*pRead_DIDFunction)(uint8_t *pReadData, uint16_t *pDataLength);
typedef int16_t (*pWrite_DIDFunction)(uint8_t *pWriteData, uint16_t dataLength);

typedef struct
{
    uint16_t u16DID;
    pWrite_DIDFunction pFun;
} struc_WriteDidMap;

typedef struct
{
    uint16_t u16DID;
    pRead_DIDFunction pFun;
} struc_ReadDidMap;

static int16_t ServiceGetApnPingTestResult(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceGetWifiConnectTestResult(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceGetetBlueToothConnectTestResult(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceGetetCallNumberTestResult(uint8_t *pData, uint16_t *pLength);

static int16_t ServiceSetTboxTestMode(uint8_t *pData, uint16_t length);
static int16_t ServiceSetTboxSleepMode(uint8_t *pData, uint16_t length);
static int16_t ServiceSetApnPingTest(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetWifiConnectTest(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetBlueToothConnectTest(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetCallNumberTest(uint8_t *pData, uint16_t dataLength);
// start routine
static int16_t ServiceSetPinOUT_1State(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetPinOUT_2State(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetPinLED_1State(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetPinLED_2State(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetBatteryCharge(uint8_t *pData, uint16_t dataLength);
static int16_t ServiceSetPinMuteState(uint8_t *pData, uint16_t dataLength);
// read by identifier
static int16_t ServiceReadPinIN_1Status(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadPinIN_2Status(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadPinKL15Status(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadPinSRSStatus(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadPinEcallStatus(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadBatteryChargeState(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadBlueToothName(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadBlueToothMacAddress(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadBlueToothSoftVersion(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceReadPowerOnCount(uint8_t *pData, uint16_t *pLength);
static int16_t ServiceWritePowerOnCount(uint8_t *pData, uint16_t length);

static int16_t TestService22ReadKL30Voltage(uint8_t *pData, uint16_t *pLength);

static int16_t ToolReadCanChannelStatus(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadICCID(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadIMSI(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadIMEI(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadApn1(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadApn2(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadApn3(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadPhoneSignal(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadGNSSStatus(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadEmmcStatus(uint8_t *pData, uint16_t *pLength);
static int16_t ToolQuickSleepStatus(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadSoftwareNumber(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadVehicleSoftwareVersionF1AB(uint8_t *pData, uint16_t *pLength);
static int16_t ToolRead4GAntennaStatus(uint8_t *pData, uint16_t *pLength);
static int16_t ToolReadGNSSAntennaStatus(uint8_t *pData, uint16_t *pLength);
static int16_t Service2EWriteBluetoothName(uint8_t *Data, uint16_t len);

static const struc_ReadDidMap m_readDidMap[] =
    {
        {0x1201, ServiceReadPinKL15Status},
        {0x1202, TestService22ReadKL30Voltage},
        {0x1212, ToolReadCanChannelStatus}, // 3. CAN通道 (读)
        {0x1203, ToolReadICCID},            // 4. ICCID
        {0x1204, ToolReadIMSI},             // 5. IMSI
        {0x1205, ToolReadIMEI},             // 6. IMEI
        {0x1206, ToolReadApn1},             // 7. APN1
        {0x1207, ToolReadApn2},                // 8. APN2
        {0x1208, ToolReadApn3},                // 9. APN3
        {0x1209, ToolReadPhoneSignal},         // 10. CSQ (>=14)
        {0x1210, ToolReadGNSSStatus},               // 11. GNSS (1:就绪)
        //{0x1211, ToolReadEmmcStatus},               // 12. EMMC (1:挂载成功)
        //{0x1213, ToolQuickSleepStatus},         // 14. 快速休眠状态(1:快速休眠)
        // 13, 14, 15, 16 均为非DID读取或Write项
        // {0x1214, ToolReadSoftwareNumber},      // 17. 软件版本号(内部)
        //{0x1215, ToolReadVehicleSoftwareVersionF1AB}, // 18. 软件版本号(外部)
        //{0x1216, ToolRead4GAntennaStatus},          // 19. 4G天线
        //{0x1217, ToolReadGNSSAntennaStatus},        // 20. GNSS天线
        //    {0xF1B0, Service22ReadEcuMask                 },       //安全访问掩码
        //    {0x1201, Service22ReadTboxCallNumber          },       //tbox电话号码
        //    {0x1204, Service22ReadPublicASEKey            },       //PublicASEKey
        //    {0x1205, Service22ReadPublicKey               },       //PublicKey
        //    {0x1206, Service22ReadTboxEcallNumber         },       //TboxEcallNumber
        //    {0x1207, Service22ReadTboxBcallNumber         },       //TboxBcallNumber
        //    {0x1208, Service22ReadTboxIcallNumber         },       //TboxIcallNumber
        //    {0x1209, Service22ReadTspCallNumber1          },       //TspCallNumber1
        //    {0x120A, Service22ReadTspCallNumber2          },       //TspCallNumber2
        //    {0x120B, Service22ReadTspCallNumber3          },       //TspCallNumber3
        //    {0x120C, Service22ReadIpAddress               },       //企业平台地址
        //    {0x120D, Service22ReadIpPort                  },       //企业平台端口
        //    {0x120E, Service22ReadBID                     },       //BID
        {0x120F, Service22ReadIMSI}, // IMSI
        //    {0x1210, Service22ReadTboxPreKey              },       //TboxPreKey
        //    {0x1211, Service22ReadKeyType                 },       //KeyType
        //    {0x1212, Service22ReadTboxMsgNumber1,         },
        //    {0x1213, Service22ReadTboxMsgNumber1,         },
        //    {0x1214, Service22ReadCanUploadCycle,         },
        //    {0x1216, Service22ReadTboxModel,              },
        //    {0x1217, Service22ReadCarModeType,            },
        //    {0x1218, Service22ReadSecurityVersion,        },
        {0x127C, Service22ReadRegisterFlag},    // 网络注册状态
        {0x127D, Service22ReadNetWorkType},     // 网络类型
        {0x127E, Service22ReadPhoneSignal},     // 网络信号强度
        {0x127F, Service22ReadApnNumber},       // apn number
        {0x1280, Service22ReadGNSS},            // GPS状态
        {0x1281, Service22ReadNetWorkProvider}, // 注册登录状态
        //{0x1282, TestService22ReadKL30Voltage         },       //
        {0x1283, Service22ReadBatteryStatus},      //
        {0x1285, Service22ReadCpuFlashCapacity},   //
        {0x1286, ServiceReadBlueToothName},        //
        {0x1287, ServiceReadBlueToothMacAddress},  //
        {0x1288, ServiceReadBlueToothSoftVersion}, //
        {0x1290, ServiceReadPowerOnCount},         //
        {0x1401, ServiceReadPinIN_1Status},        //
        {0x1402, ServiceReadPinIN_2Status},        //
        //{0x1403, ServiceReadPinKL15Status             },       //
        {0x1404, ServiceReadPinSRSStatus},       //
        {0x1405, ServiceReadPinEcallStatus},     //
        {0x1406, ServiceReadBatteryChargeState}, //

        /***************add***************************/
        {0xF1B2, Service22ReadVehicleManufacturingDate},       // Installation Date
        {0xF192, Service22ReadHardwareNumber},                 // 供应商ECU硬件版本号
        {0xF194, Service22ReadSoftwareNumber},                 // 供应商ECU软件版本号
        {0x2409, Service22ReadEOLconfig},                      // 下线配置
        {0x2408, Service22ReadVehicleManufacturingDate},       //
        {0x240A, Service22ReadAppSoftwareFingerprint},         // e50
        {0x240B, Service22ReadSubnetConfigListOnHighSpeedCan}, // e50
        {0x240C, Service22ReadDiagnosticCanReport},            // e50

};

static const struc_WriteDidMap m_writeDidMap[] =
    {
        /*RDID  Lenth   point_store*/
        {
            0xF187,
            Service2EWritePartNumber,
        }, // EndModelPartNumber
        {
            0xF18A,
            Service2EWriteSupplierId,
        },
        {
            0xF193,
            Service2EWriteHardwareVersion,
        },
        //{0xF195, Service2EWriteSoftwareVersion,     },
        {
            0xF197,
            Service2EWritePartName,
        },
        {
            0xF15A,
            Service2EWriteFingerPrint,
        },
        {
            0xF18B,
            Service2EWriteManufactureDate,
        },
        {
            0xF190,
            Service2EWriteVIN,
        },
        {
            0xF1B0,
            Service2EWriteESKeyByEol,
        },
        //{0xF18C, Service2EWriteSerialNumber,         },
        //    {0x1201, Service2EWriteTboxCallNumber,       },
        //    {0x1202, Service2EWriteIMEI,                 },
        //    {0x1203, Service2EWriteICCID,                },
        //    {0x1204, Service2EWritePublicASEKey,         },
        //    {0x1205, Service2EWritePublicKey,            },
        //    {0x1206, Service2EWriteTboxEcallNumber,      },
        //    {0x1207, Service2EWriteTboxBcallNumber,      },
        //    {0x1208, Service2EWriteTboxIcallNumber,      },
        //    {0x1209, Service2EWriteTSPCallNumber1,       },
        //    {0x120A, Service2EWriteTSPCallNumber2,       },
        //    {0x120B, Service2EWriteTSPCallNumber3,       },
        //    {0x120C, Service2EWriteIpAddress,            },
        //    {0x120D, Service2EWriteIpPort,               },
        //    {0x120E, Service2EWriteBID,                  },
        //    {0x120F, Service2EWriteIMSI,                 },
        //    {0x1210, Service2EWriteTboxPreKey,           },
        //    {0x1211, Service2EWriteKeyType,              },
        //    {0x1212, Service2EWriteTboxMsgNumber1,       },
        //    {0x1213, Service2EWriteTboxMsgNumber1,       },
        //    {0x1214, Service2EWriteCanUploadCycle,       },
        //    {0x1216, Service2EWriteTboxModel,            },
        //    {0x1217, Service2EWriteCarModeType,          },
        //    {0x1218, Service2EWriteSecurityVersion,      },
        //    {0x127C, Service2EWriteTboxRegisterFlag,     },
        {
            0x1286,
            Service2EWriteBluetoothName,
        },
        {
            0x1290,
            ServiceWritePowerOnCount,
        },

        /***************add***************************/
        {0x2401, Service2EWriteVariantcode}, // ECU编码
        {0x2402, Service2EWriteEOLconfig},   // 车辆下线配置
        //    {0x2403, Service2EWriteNationIpAddress      },       //国家平台地址
        //    {0x2404, Service2EWriteNationIpPort         },       //国家平台端口
        //    {0x2405, Service2EWriteGovernmentIpAddress  },       //地方平台地址
        //    {0x2406, Service2EWriteGovernmentIpPort     },       //地方平台端口
        {0x2407, Service2EWriteRepairShopCodeOrTestSN},         // Repair Shop Code Or TestSN
        {0x2408, Service2EWriteInstallationDate},               // Vehicle Manufacturing Date
        {0xF192, Service2EWriteHardwareNumber},                 // 供应商ECU硬件号
        {0xF194, Service2EWriteSoftwareNumber},                 // 供应商ECU软件号
        {0x2409, Service2EWriteEOLconfigByEol},                 // 下线配置
        {0x240A, Service2EWriteAppSoftwareFingerprint},         // e50
        {0x240B, Service2EWriteSubnetConfigListOnHighSpeedCan}, // e50
        {0x240C, Service2EWriteDiagnosticCanReport},            // e5
};

static const struc_WriteDidMap m_routineStartDidMap[] =
    {
        {
            0x1301,
            ServiceSetTboxTestMode,
        },
        {
            0x1303,
            ServiceSetTboxSleepMode,
        },
        {
            0x1304,
            ServiceSetApnPingTest,
        },
        {
            0x1305,
            ServiceSetWifiConnectTest,
        },
        {
            0x1306,
            ServiceSetBlueToothConnectTest,
        },
        {
            0x1307,
            ServiceSetCallNumberTest,
        },
        {
            0x1410,
            ServiceSetPinOUT_1State,
        },
        {
            0x1411,
            ServiceSetPinOUT_2State,
        },
        {
            0x1412,
            ServiceSetPinLED_1State,
        },
        {
            0x1413,
            ServiceSetPinLED_2State,
        },
        {
            0x1283,
            ServiceSetBatteryCharge,
        },
        {
            0x1414,
            ServiceSetPinMuteState,
        },
};

static const struc_ReadDidMap m_routineResultDidMap[] =
    {
        {
            0x1304,
            ServiceGetApnPingTestResult,
        },
        {
            0x1305,
            ServiceGetWifiConnectTestResult,
        },
        {
            0x1306,
            ServiceGetetBlueToothConnectTestResult,
        },
        {
            0x1307,
            ServiceGetetCallNumberTestResult,
        },

};

static enum_TestUdsSecurityLevel m_securityLevel = TestUdsSecurity_LevelNone;
static enum_TestUdsSecurityLevel m_SeedGetLevel = TestUdsSecurity_LevelNone;
static uint8_t m_returnKey[10];
static uint8_t m_seedArray[10];
static uint32_t m_securityTimeOutCount = 0;
static uint8_t m_diagnosticCanChannel = TBOX_CAN_CHANNEL_1;

static void GetRandomKey(uint8_t *pKeyArray, uint8_t *pKeySize)
{
    uint32_t randData;
    uint16_t i;
    randData = xTaskGetTickCount();
    srand(randData);
    for (i = 0; i < 4; i++)
    {
        pKeyArray[i] = rand();
    }
    *pKeySize = 4;
}

#define TEST_SECURITY_LEVEL1 0
#define TEST_SECURITY_LEVEL2 1
#define TEST_SECURITY_LEVEL3 2

static const uint8_t Xor[4] = {0x26, 0xBF, 0x6D, 0x96};

static void SeedToKey(uint8_t *seed, uint8_t *key, uint8_t securityLevel)
{
    uint32_t i;
    uint8_t data[8];
    for (i = 0; i < 4; i++)
    {
        data[i] = seed[i] ^ Xor[i];
    }
    if (securityLevel == TEST_SECURITY_LEVEL1)
    {
        key[0] = ((data[0] & 0x0F) << 4) | (data[3] & 0xF0 >> 4);
        key[1] = ((data[1] & 0x0F) << 4) | ((data[2] & 0xF0) >> 4);
        key[2] = ((data[3] & 0x1C) << 3) | ((data[0] & 0x3E) >> 1);
        key[3] = (data[2] & 0xF0) | ((data[1] & 0x0F) >> 4);
    }
    else if (securityLevel == TEST_SECURITY_LEVEL3) // FBL
    {
        key[0] = ((data[1] & 0xF0)) | ((data[3] & 0x3C) >> 2);
        key[1] = ((data[0] & 0xF0)) | ((data[2] & 0x0F));
        key[2] = ((data[3] & 0x0F) << 4) | ((data[1] & 0x3C) >> 2);
        key[3] = ((data[2] & 0x1E) << 3) | ((data[0] & 0x78) >> 3);
    }
    else if (securityLevel == TEST_SECURITY_LEVEL2)
    {
    }
}

/*****************************************************************
ret:
0:same
1:different
*******************************************************************/
static int16_t CheckByteArrayIsSame(uint8_t *pArray1, uint8_t *pArray2, uint16_t length)
{
    int8_t ret = 0;
    uint16_t i;

    for (i = 0; i < length; i++)
    {
        if (pArray1[i] != pArray2[i])
        {
            ret = 1;
            break;
        }
    }
    return ret;
}

static void ResetSecurityTimer(void)
{
    m_securityTimeOutCount = 0;
}

int16_t ServiceTestSecurityProcess(uint8_t *pUdsDataIn, uint16_t lenIn, uint8_t *pUdsDataOut, uint16_t *pLenOut)
{
    // int16_t negativeNum;

    // negativeNum = 0;
    // pUdsDataOut[0] = pUdsDataIn[0]+0x40;
    // pUdsDataOut[1] = pUdsDataIn[1];

    uint8_t negativeNum;
    uint8_t subFunction;
    // uint8_t responseData[20];
    negativeNum = 0;
    subFunction = pUdsDataIn[1];
    if (0x01 == subFunction) // extended security seed
    {
        uint8_t seedSize;
        GetRandomKey(m_seedArray, &seedSize);
        SeedToKey(m_seedArray, m_returnKey, TEST_SECURITY_LEVEL1);
        pUdsDataOut[0] = 0xFA;
        pUdsDataOut[1] = 0x01;
        memcpy(&pUdsDataOut[2], m_seedArray, 4);
        *pLenOut = 6;
        m_SeedGetLevel = TestUdsSecurityLevel_Level1;
        // m_securityTimeOutCount = 0;
    }
    else if (0x02 == subFunction) // extended security key
    {
        if (m_SeedGetLevel == TestUdsSecurityLevel_Level1)
        {
            if (CheckByteArrayIsSame(m_returnKey, pUdsDataIn + 2, 4) == 0) // key is valid
            {
                m_securityLevel = TestUdsSecurityLevel_Level1;
                m_SeedGetLevel = TestUdsSecurity_LevelNone;
                // m_securityTimeOutCount = 0;
                pUdsDataOut[0] = 0xFA;
                pUdsDataOut[1] = 0x02;
                *pLenOut = 2;
            }
            else // key invalid
            {
                negativeNum = 0x35; // invalid key
            }
        }
        else
        {
            negativeNum = 0x35; // invalid key
        }
    }
    else if (0x09 == subFunction) // FBL seed
    {
        uint8_t seedSize;
        GetRandomKey(m_seedArray, &seedSize);
        SeedToKey(m_seedArray, m_returnKey, TEST_SECURITY_LEVEL3);
        pUdsDataOut[0] = 0xFA;
        pUdsDataOut[1] = 0x09;
        memcpy(&pUdsDataOut[2], m_seedArray, 4);
        *pLenOut = 6;
        m_SeedGetLevel = TestUdsSecurityLevel_Level2;
        m_securityTimeOutCount = 0;
    }
    else if (0x0A == subFunction) // FBL key
    {
        if (m_SeedGetLevel == TestUdsSecurityLevel_Level2)
        {
            if (CheckByteArrayIsSame(m_returnKey, pUdsDataIn + 2, 4) == 0) // key is valid
            {
                m_securityLevel = TestUdsSecurityLevel_Level2;
                m_SeedGetLevel = TestUdsSecurity_LevelNone;
                pUdsDataOut[0] = 0xFA;
                pUdsDataOut[1] = 0x0A;
                *pLenOut = 2;
            }
            else // key invalid
            {
                negativeNum = 0x35; // invalid key
            }
        }
        else
        {
            negativeNum = 0x35; // invalid key
        }
    }
    else if (0x05 == subFunction)
    {
        negativeNum = 0x12; // sub function not supported
    }
    else if (0x06 == subFunction)
    {
        negativeNum = 0x12; // sub function not supported
    }
    ResetSecurityTimer();
    return negativeNum;
}

static int16_t ServiceGetWriteDidFunction(uint16_t WDID, pWrite_DIDFunction *pfun)
{
    int16_t ret;

    uint16_t i = 0;
    uint16_t listSize;

    listSize = sizeof(m_writeDidMap) / sizeof(m_writeDidMap[0]);
    ret = -1; // invalid did
    *pfun = NULL;

    for (i = 0; i < listSize; i++)
    {
        if (m_writeDidMap[i].u16DID == WDID)
        {
            if (m_writeDidMap[i].pFun != NULL)
            {
                *pfun = m_writeDidMap[i].pFun;
                ret = 0;
            }
            break;
        }
    }

    return ret;
}

static int16_t ServiceGetReadDidFunction(uint16_t RDID, pRead_DIDFunction *pfun)
{
    uint16_t i;
    uint16_t listSize;
    int16_t ret;

    *pfun = NULL;
    ret = -1;
    listSize = sizeof(m_readDidMap) / sizeof(m_readDidMap[0]);

    for (i = 0; i < listSize; i++)
    {
        if (m_readDidMap[i].u16DID == RDID)
        {
            if (m_readDidMap[i].pFun != NULL)
            {
                *pfun = m_readDidMap[i].pFun;
                ret = 0;
            }
            break;
        }
    }

    return ret;
}

static int16_t ServiceGetRoutineStartDidFunction(uint16_t WDID, pWrite_DIDFunction *pfun)
{
    int16_t ret;

    uint16_t i = 0;
    uint16_t listSize;

    listSize = sizeof(m_routineStartDidMap) / sizeof(m_routineStartDidMap[0]);
    ret = -1; // invalid did
    *pfun = NULL;

    for (i = 0; i < listSize; i++)
    {
        if (m_routineStartDidMap[i].u16DID == WDID)
        {
            if (m_routineStartDidMap[i].pFun != NULL)
            {
                *pfun = m_routineStartDidMap[i].pFun;
                ret = 0;
            }
            break;
        }
    }

    return ret;
}

static int16_t ServiceGetRoutineResultDidFunction(uint16_t RDID, pRead_DIDFunction *pfun)
{
    uint16_t i;
    uint16_t listSize;
    int16_t ret;

    *pfun = NULL;
    ret = -1;
    listSize = sizeof(m_routineResultDidMap) / sizeof(m_routineResultDidMap[0]);

    for (i = 0; i < listSize; i++)
    {
        if (m_routineResultDidMap[i].u16DID == RDID)
        {
            if (m_routineResultDidMap[i].pFun != NULL)
            {
                *pfun = m_routineResultDidMap[i].pFun;
                ret = 0;
            }
            break;
        }
    }

    return ret;
}

static int16_t ServiceTestReadDtc(uint8_t *pDataIn, uint16_t lenIn, uint8_t *pDataOut, uint16_t *pLenOut)
{
    uint8_t subFun;
    uint8_t negativeNum;

    subFun = pDataIn[0];
    pDataOut[0] = pDataIn[0];
    negativeNum = 0;

    switch (subFun)
    {
    case 0x01:
    {
        if (pDataIn[1] & 0x09)
        {
            // 读取故障码个数函数
            pDataOut[4] = 0;
            pDataOut[5] = 0;
        }
        else
        {
            pDataOut[4] = 0;
            pDataOut[5] = 0;
        }
        *pLenOut = 3;
        // UdsDataTransmit(m_physicalTransmitCanId,responseData,6,0);
    }
    break;
    case 0x02:
    {
        uint32_t dtcNum;
        dtcNum = 0;
        DtcProcessTestGetListByMask(pDataIn[1], &pDataOut[2], &dtcNum, &(pDataOut[1]));
        *pLenOut = dtcNum * 4 + 2;
        // UdsDataTransmit(m_physicalTransmitCanId,responseData,3+(dtcNum*4),0);
    }
    break;
    default:
        negativeNum = 0x12;
        break;
    }

    return negativeNum;
}

static int16_t ServiceTestClearDtc(uint8_t *pDataIn, uint16_t lenIn, uint8_t *pDataOut, uint16_t *pLenOut)
{
    uint32_t groupOfDTC;
    uint8_t negativeNum;
    negativeNum = 0;
    groupOfDTC = ((uint32_t)pDataIn[0] << 16) + ((uint32_t)pDataIn[1] << 8) + (uint32_t)pDataIn[2];

    if (0x100000 == groupOfDTC) // Powertrain group
    {
        DtcProcessClearAll();
    }
    else if (0x400000 == groupOfDTC) // Chassis group
    {
        DtcProcessClearAll();
    }
    else if (0x800000 == groupOfDTC) // Body group
    {
        DtcProcessClearAll();
    }
    else if (0xC00000 == groupOfDTC) // Network communication group
    {
        DtcProcessClearAll();
    }
    else if (0xFFFFFF == groupOfDTC) // all dtc
    {
        DtcProcessClearAll();
    }
    else
    {
        /*请求超出范围-31*/
        negativeNum = 0x31;
    }
    *pLenOut = 0;
    return negativeNum;
}

void ServiceTestSetDiagnosticCan(uint8_t canChannel)
{
    m_diagnosticCanChannel = canChannel;
}
static uint8_t ServiceTestProcessSecurityCheck(uint8_t *pUdsDataIn, uint16_t lenIn, uint8_t *pUdsDataOut, uint16_t *pLenOut)
{
    uint8_t negativeNum = 0;
    if (TestUdsSecurityLevel_Level1 == m_securityLevel) // security check///////
    {
        uint16_t did;
        pWrite_DIDFunction pStartRoutineFunction;
        int16_t ret;
        did = ((uint16_t)pUdsDataIn[2] << 8) + pUdsDataIn[3];
        pUdsDataOut[2] = pUdsDataIn[2];
        pUdsDataOut[3] = pUdsDataIn[3];
        ret = ServiceGetRoutineStartDidFunction(did, &pStartRoutineFunction);
        if (ret == 0) // valid did
        {
            ret = pStartRoutineFunction(&pUdsDataIn[4], lenIn - 4);
            if (ret == 0)
            {
                *pLenOut = 4;
            }
            else
            {
                negativeNum = 0x22; // set function failed
            }
        }
        else
        {
            negativeNum = 0x31; // invalid did
        }
    }
    else
    {
        negativeNum = 0x7F; // invalid security
    }
    return negativeNum;
}

int16_t ServiceTestProcess(uint8_t *pUdsDataIn, uint16_t lenIn, uint8_t *pUdsDataOut, uint16_t *pLenOut)
{
    int16_t negativeNum;
    uint8_t subFunction;

    negativeNum = 0;
    pUdsDataOut[0] = pUdsDataIn[0] + 0x40;
    pUdsDataOut[1] = pUdsDataIn[1];

    subFunction = pUdsDataIn[1];
    if (0x01 == subFunction) // start routine
    {
        if (lenIn >= 4) // length check
        {
            negativeNum = ServiceTestProcessSecurityCheck(pUdsDataIn, lenIn, pUdsDataOut, pLenOut);
        }
        else
        {
            negativeNum = 0x13; // length error
        }
    }
    else if (0x03 == subFunction) // read
    {
        if (lenIn >= 4) // length check
        {
            uint16_t did;
            pRead_DIDFunction pRoutineResultFunction;
            int16_t ret;
            did = ((uint16_t)pUdsDataIn[2] << 8) + pUdsDataIn[3];
            pUdsDataOut[2] = pUdsDataIn[2];
            pUdsDataOut[3] = pUdsDataIn[3];
            ret = ServiceGetRoutineResultDidFunction(did, &pRoutineResultFunction);
            if (ret == 0)
            {
                uint16_t readLength;
                ret = pRoutineResultFunction(&pUdsDataOut[4], &readLength);
                if (ret == 0)
                {
                    *pLenOut = readLength + 4;
                }
                else
                {
                    negativeNum = 0x22; // read error
                }
            }
            else
            {
                negativeNum = 0x31; // invalid did
            }
        }
        else
        {
            negativeNum = 0x13; // length error
        }
    }
    else if (0x04 == subFunction) // read by identifier
    {
        if (lenIn >= 4) // length check
        {
            uint16_t did;
            pRead_DIDFunction pReadFunction;
            int16_t ret;
            did = ((uint16_t)pUdsDataIn[2] << 8) + pUdsDataIn[3];
            pUdsDataOut[2] = pUdsDataIn[2];
            pUdsDataOut[3] = pUdsDataIn[3];
            ret = ServiceGetReadDidFunction(did, &pReadFunction);
            if (ret == 0)
            {
                uint16_t readLength;
                ret = pReadFunction(&pUdsDataOut[4], &readLength);
                if (ret == 0)
                {
                    *pLenOut = readLength + 4;
                }
                else
                {
                    negativeNum = 0x22; // read error
                }
            }
            else
            {
                negativeNum = 0x31; // invalid did
            }
        }
        else
        {
            negativeNum = 0x13; // length error
        }
    }
    else if (0x05 == subFunction) // write by identifier
    {
        if (lenIn >= 4) // length check
        {
            if (TestUdsSecurityLevel_Level1 == m_securityLevel) // security check
            // if(1)
            {
                uint16_t did;
                pWrite_DIDFunction pSetFunction;
                int16_t ret;
                did = ((uint16_t)pUdsDataIn[2] << 8) + pUdsDataIn[3];
                pUdsDataOut[2] = pUdsDataIn[2];
                pUdsDataOut[3] = pUdsDataIn[3];
                ret = ServiceGetWriteDidFunction(did, &pSetFunction);
                if (ret == 0) // valid did
                {
                    ret = pSetFunction(&pUdsDataIn[4], lenIn - 4);
                    if (ret == 0)
                    {
                        *pLenOut = 4;
                    }
                    else
                    {
                        negativeNum = 0x72; // set function failed---programing error
                    }
                }
                else
                {
                    negativeNum = 0x31; // invalid did
                }
            }
            else
            {
                negativeNum = 0x7F; // invalid security
            }
        }
        else
        {
            negativeNum = 0x13; // length error
        }
    }
    else if (0x06 == subFunction) // read dtc
    {
        uint16_t length;
        negativeNum = ServiceTestReadDtc(&pUdsDataIn[2], lenIn - 2, &pUdsDataOut[2], &length);
        *pLenOut = length + 2;
    }
    else if (0x07 == subFunction) // clear dtc
    {
        if (TestUdsSecurityLevel_Level1 == m_securityLevel) // security check
        {
            uint16_t length;
            negativeNum = ServiceTestClearDtc(&pUdsDataIn[2], lenIn - 2, &pUdsDataOut[2], &length);
            *pLenOut = length + 2;
        }
        else
        {
            negativeNum = 0x7F; // invalid security
        }
    }
    else
    {
        negativeNum = 0x12; // sub function not supported
    }
    ResetSecurityTimer();
    return negativeNum;
}

void ServiceTestCycleProcess(uint32_t cycleTime)
{
    if ((m_securityTimeOutCount * cycleTime) < 40000)
    {
        m_securityTimeOutCount++;
    }
    else
    {
        if (m_SeedGetLevel != TestUdsSecurity_LevelNone)
        {
#if (UDS_EOL_TEST_DEBUG)

#else
            BatteryHalEnableCheck(0);
#endif
        }
        m_securityTimeOutCount = 0;
        m_SeedGetLevel = TestUdsSecurity_LevelNone;
        m_securityLevel = TestUdsSecurity_LevelNone;
    }
}

/************service 0x31 get result function****************************************/
static int16_t ServiceGetApnPingTestResult(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;

    ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_APN_PING_RESULT, pData, pLength);

    return ret;
}

static int16_t ServiceGetWifiConnectTestResult(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;

    ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_WIFI_CONNECT_RESULT, pData, pLength);

    return ret;
}

static int16_t ServiceGetetBlueToothConnectTestResult(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;

    ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_BLUETOOTH_CONNECT_RESULT, pData, pLength);
    return ret;
}

static int16_t ServiceGetetCallNumberTestResult(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;

    ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_CALL_TEST_RESULT, pData, pLength);

    return ret;
}
/************service 0x31 start stop function****************************************/
/***************************

data:1,test mode,0:normal mode
**************************/
static int16_t ServiceSetTboxTestMode(uint8_t *pData, uint16_t length)
{
    uint16_t ret;
    uint8_t TestModeFlag;
    ret = 0;
    TestModeFlag = pData[0];
    PowerManageSdkSetTestMode(TestModeFlag);
    if (TestModeFlag == 0)
    {
        CanHalSetCanTestMode(TBOX_CAN_CHANNEL_1, 0);
        CanHalSetCanTestMode(TBOX_CAN_CHANNEL_2, 0);
        CanHalSetCanTestMode(TBOX_CAN_CHANNEL_3, 0);
        CanHalSetCanTestMode(TBOX_CAN_CHANNEL_4, 0);
        CanHalSetCanTestMode(TBOX_CAN_CHANNEL_5, 0);
        CanHalSetCanTestMode(TBOX_CAN_CHANNEL_6, 0);
        PeripheralHalSetTestMode(0);
        BatterySdkSetNormalMode();
    }
    else
    {
        if (TBOX_CAN_CHANNEL_1 == m_diagnosticCanChannel)
        {
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_2, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_3, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_4, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_5, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_6, 1);
        }
        else if (TBOX_CAN_CHANNEL_2 == m_diagnosticCanChannel)
        {
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_1, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_3, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_4, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_5, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_6, 1);
        }
        else if (TBOX_CAN_CHANNEL_3 == m_diagnosticCanChannel)
        {
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_1, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_2, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_4, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_5, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_6, 1);
        }
        else if (TBOX_CAN_CHANNEL_4 == m_diagnosticCanChannel)
        {
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_1, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_2, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_3, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_5, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_6, 1);
        }
        else if (TBOX_CAN_CHANNEL_5 == m_diagnosticCanChannel)
        {
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_1, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_2, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_3, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_4, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_6, 1);
        }
        else if (TBOX_CAN_CHANNEL_6 == m_diagnosticCanChannel)
        {
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_1, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_2, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_3, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_4, 1);
            CanHalSetCanTestMode(TBOX_CAN_CHANNEL_5, 1);
        }
        PeripheralHalSetTestMode(1);
        BatterySdkSetTestMode();
    }

    ret = EolTestSyncWithCpuTransmit(SYNC_CPU_CONTROL_ITEM_TEST_MODE, &TestModeFlag, 1);

    return ret;
}

static int16_t ServiceSetTboxSleepMode(uint8_t *pData, uint16_t length)
{
    PowerManageSdkForceSleep();
    return 0;
}

static int16_t ServiceSetApnPingTest(uint8_t *pData, uint16_t dataLength)
{
    uint16_t ret;

    ret = EolTestSyncWithCpuTransmit(SYNC_CPU_CONTROL_ITEM_APN_PING, pData, dataLength);

    return ret;
}

static int16_t ServiceSetWifiConnectTest(uint8_t *pData, uint16_t dataLength)
{
    uint16_t ret;

    ret = EolTestSyncWithCpuTransmit(SYNC_CPU_CONTROL_ITEM_WIFI_CONNECT, pData, dataLength);

    return ret;
}

static int16_t ServiceSetBlueToothConnectTest(uint8_t *pData, uint16_t dataLength)
{
    uint16_t ret;

    ret = EolTestSyncWithCpuTransmit(SYNC_CPU_CONTROL_ITEM_BLUETOOTH_CONNECT, pData, dataLength);

    return ret;
}

static int16_t ServiceSetCallNumberTest(uint8_t *pData, uint16_t dataLength)
{
    uint16_t ret;

    ret = EolTestSyncWithCpuTransmit(SYNC_CPU_CONTROL_ITEM_CALL_TEST, pData, dataLength);
    return ret;
}

/********************2F set function************************************************/
static int16_t ServiceSetPinOUT_1State(uint8_t *pData, uint16_t dataLength)
{

    // PeripheralDriverHal_TestModeSetOUT_1(pData[0]);
    return 0;
}

static int16_t ServiceSetPinOUT_2State(uint8_t *pData, uint16_t dataLength)
{

    // PeripheralDriverHal_TestModeSetOUT_2(pData[0]);
    return 0;
}

static int16_t ServiceSetPinLED_1State(uint8_t *pData, uint16_t dataLength)
{
    // cpu communication
    return 0;
}

static int16_t ServiceSetPinLED_2State(uint8_t *pData, uint16_t dataLength)
{
    // PeripheralDriverHal_TestModeSetLED_2(pData[0]);
    return 0;
}

static int16_t ServiceSetBatteryCharge(uint8_t *pData, uint16_t dataLength)
{
    if (pData[0] == 0)
    {
        BatterySdkTestModeChargeStop();
    }
    else if (pData[0] == 1)
    {
        BatterySdkTestModeChargeStart();
    }
    else if (pData[0] == 2)
    {
        BatterySdkTestModeDischargeStop();
    }
    else if (pData[0] == 3)
    {
        BatterySdkTestModeDischargeStart();
    }
    else if (pData[0] == 4)
    {
        BatteryHalEnableCheck(1);
    }
    else if (pData[0] == 5)
    {
        BatteryHalEnableCheck(0);
    }
    else
    {
        return -1;
    }
    return 0;
}

static int16_t ServiceSetPinMuteState(uint8_t *pData, uint16_t dataLength)
{
    // PeripheralDriverHal_SetMUTE(pData[0]);
    return 0;
}
//透传函数
static int16_t LocalReadMpuDid(uint16_t mpuDid, uint8_t *pData, uint16_t *pLength)
{
    uint8_t mpuRequest[3];
    uint8_t mpuResponse[128];
    uint16_t mpuRespLen = 0;
    int16_t ret;

    mpuRequest[0] = 0x22;
    mpuRequest[1] = (uint8_t)(mpuDid >> 8);
    mpuRequest[2] = (uint8_t)(mpuDid & 0xFF);

    ret = CanPassthrough_RequestAndGetResponse(mpuRequest, 3, mpuResponse, &mpuRespLen);

    if (ret == 0 && mpuRespLen > 3 && mpuResponse[0] == 0x62 &&
        mpuResponse[1] == mpuRequest[1] && mpuResponse[2] == mpuRequest[2])
    {
        uint16_t dataLen = mpuRespLen - 3;

        memcpy(pData, &mpuResponse[3], dataLen);
        *pLength = dataLen;

        return 0;
    }

    return -1;
}

static int16_t ToolReadCanChannelStatus(uint8_t *pData, uint16_t *pLength)
{

    pData[0] = 0x01;
    *pLength = 1;
    return 0;
}

static int16_t ToolReadICCID(uint8_t *pData, uint16_t *pLength)
{
    uint16_t len = 0;
    Service22ReadICCID(pData, &len);
    *pLength = len;
    return 0;
}

static int16_t ToolReadIMSI(uint8_t *pData, uint16_t *pLength)
{
    uint16_t len = 0;
    Service22ReadIMSI(pData, &len);
    *pLength = len;
    return 0;
}

static int16_t ToolReadIMEI(uint8_t *pData, uint16_t *pLength)
{
    uint16_t len = 0;
    Service22ReadIMEI(pData, &len);
    *pLength = len;
    return 0;
}

static int16_t ToolReadApn1(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret = LocalReadMpuDid(0x011B, pData, pLength);
    if (ret != 0)
        return 0x22;
    return 0;
}

static int16_t ToolReadApn2(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret = LocalReadMpuDid(0x013C, pData, pLength);
    if (ret != 0) return 0x22;
    return 0;
}

static int16_t ToolReadApn3(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret = LocalReadMpuDid(0x1061, pData, pLength);
    if (ret != 0) return 0x22;
    return 0;
}

static int16_t ToolReadPhoneSignal(uint8_t *pData, uint16_t *pLength)
{
    const ftyCircleDataToMcu_t *ftyData = StateSyncGetFtyData();

    if (ftyData != NULL)
    {
        // 2. 从结构体中提取信号强度
        // 注意：这里取的是 lteNetworkStatus.rssi
        // 工装要求：大于等于 14，非 99。这里只负责读取原始值。
        pData[0] = ftyData->lteNetworkStatus.rssi; 
        
        *pLength = 1;
        return 0; // 成功
    }
    
    // 如果获取不到数据 (例如 MCU 刚启动还没同步到数据)
    return 0x22; // 返回 NRC 22
}

static int16_t ToolReadGNSSStatus(uint8_t *pData, uint16_t *pLength)
{
    // 1. 获取状态同步大结构体指针
    const ftyCircleDataToMcu_t *ftyData = StateSyncGetFtyData();

    // 2. 检查指针有效性，防止 MPU 尚未同步数据时导致 MCU 崩溃
    if (ftyData != NULL)
    {
        // 3. 读取 GNSS 模块状态
        // 根据 stateSyncSdk.h 定义: gnssModuleStatus.gnssEnableState (1 bit)
        // 1: gnss就绪/使能, 0: 未就绪
        pData[0] = (uint8_t)ftyData->gnssModuleStatus.gpsEnable;
        
        *pLength = 1;
        return 0; // 成功
    }
    
    // 4. 如果尚未获取到同步数据，返回 NRC 0x22 (ConditionsNotCorrect)
    // 此时诊断仪会收到否定响应，提示当前状态不可读
    return 0x22; 
}

static int16_t ToolReadEmmcStatus(uint8_t *pData, uint16_t *pLength)
{
    uint8_t status = 0;
    uint16_t len = 0;
    Service22ReadEmmcState(&status, &len);
    // 假设 Service22ReadEmmcState 返回 1 表示正常/挂载
    pData[0] = status;
    *pLength = 1;
    return 0;
}

static int16_t ToolQuickSleepStatus(uint8_t *pData, uint16_t *pLength)
{
    uint8_t status = 0;
    // PowerManageSdkGetQuickSleepStatus(&status);
    pData[0] = status;
    *pLength = 1;
    return 0;
}

static int16_t ToolRead4GAntennaStatus(uint8_t *pData, uint16_t *pLength)
{
    uint8_t status = 0;
    // uint16_t len = 0;
    // Service22ReadNADPrimaryAntenaStatus(&status, &len);

    if (status == 0x00) // Connected
    {
        pData[0] = 0x01; // 正常
    }
    else
    {
        pData[0] = 0x00; // 异常 (断开/短路)
    }
    *pLength = 1;
    return 0;
}

static int16_t ToolReadGNSSAntennaStatus(uint8_t *pData, uint16_t *pLength)
{
    uint8_t status = 0;
    // uint16_t len = 0;
    // Service22ReadGNSSSAntenaStatus(&status, &len);

    if (status == 0x00) // Connected
    {
        pData[0] = 0x01; // 正常
    }
    else
    {
        pData[0] = 0x00; // 异常
    }
    *pLength = 1;
    return 0;
}
static int16_t ServiceReadPinIN_1Status(uint8_t *pData, uint16_t *pLength)
{
    int16_t state;
#if (UDS_EOL_TEST_DEBUG)
    state = 0;
#else
    state = PeripheralDriverHal_GetPinIN_1State();
#endif
    pData[0] = state;

    *pLength = 1;
    return 0;
}

static int16_t ServiceReadPinIN_2Status(uint8_t *pData, uint16_t *pLength)
{
    int16_t state;
#if (UDS_EOL_TEST_DEBUG)
    state = 0;
#else
    state = PeripheralDriverHal_GetPinIN_2State();
#endif
    pData[0] = state;

    *pLength = 1;
    return 0;
}

static int16_t ServiceReadPinKL15Status(uint8_t *pData, uint16_t *pLength)
{
    int16_t state;

    state = PeripheralHalGetKl15Status();
    pData[0] = state;

    *pLength = 1;
    return 0;
}

static int16_t ServiceReadPinSRSStatus(uint8_t *pData, uint16_t *pLength)
{
    int16_t state;
#if (UDS_EOL_TEST_DEBUG)
    state = 0;
#else
    state = PeripheralDriverHal_GetPinSRSState();
#endif
    pData[0] = state;

    *pLength = 1;
    return 0;
}

static int16_t ServiceReadPinEcallStatus(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret = 0;

    ret = 0;
    // ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_PIN_ECALL_STATE,pData,pLength);

    return ret;
}

static int16_t ServiceReadBatteryChargeState(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;

    ret = 0; // test
    // ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_CALL_TEST_RESULT,pData,pLength);

    return ret;
}

static int16_t ServiceReadBlueToothName(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;
    uint16_t length;

    ret = EolTestSyncWithCpuRecv(SYNC_CPU_GET_INFO_ITEM_BLUE_TOOTH_NAME, pData, &length);

    if (ret != 0)
    {
        return ret;
    }

    *pLength = length;
    return ret;
}

static int16_t ServiceReadBlueToothMacAddress(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;
    uint16_t length;

#if (UDS_EOL_TEST_DEBUG)
    ret = 0;
    length = 0;
#else
    ret = BlueToothGetParameter(BLE_EXTERNAL_COMMAND_READ_MAC, pData, &length);
#endif
    if (ret != 0)
    {
        return ret;
    }

    *pLength = length;
    return ret;
}

static int16_t ServiceReadBlueToothSoftVersion(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;
    uint8_t version[10];
#if (UDS_EOL_TEST_DEBUG)
    ret = 0;
    version[0] = 0;
#else
    uint16_t length;
    ret = BlueToothGetParameter(BLE_EXTERNAL_COMMAND_READ_VERSION, version, &length);
#endif
    if (ret != 0)
    {
        return ret;
    }
    pData[0] = ((version[0] / 10) % 10) + 0x30;
    pData[1] = (version[0] % 10) + 0x30;
    pData[2] = '.';
    pData[3] = ((version[1] / 10) % 10) + 0x30;
    pData[4] = (version[1] % 10) + 0x30;
    *pLength = 5;
    return 0;
}

static int16_t ServiceReadPowerOnCount(uint8_t *pData, uint16_t *pLength)
{
    int16_t ret;
    uint32_t count = 0;
    ret = 0; // test
    // ret = WorkFlashReadMcuResetCount(&count);
    if (ret != 0)
    {
        return ret;
    }
    pData[0] = (count >> 24) & 0xFF;
    pData[1] = (count >> 16) & 0xFF;
    pData[2] = (count >> 8) & 0xFF;
    pData[3] = (count >> 0) & 0xFF;
    *pLength = 4;
    return ret;
}

static int16_t ServiceWritePowerOnCount(uint8_t *pData, uint16_t length)
{
    int16_t ret;
    // uint32_t count;
    ret = 0; // test
    if (length != 4)
    {
        return -1;
    }
    // count = (pData[0]<<24)+(pData[1]<<16)+(pData[2]<<8)+(pData[3]<<0);
    // ret = WorkFlashWriteMcuResetCount(count);
    if (ret != 0)
    {
        return ret;
    }
    return ret;
}

static int16_t TestService22ReadKL30Voltage(uint8_t *pData, uint16_t *pLength)
{
    uint32_t voltage;
    // uint32_t tem;
    PeripheralHalAdGet(AD_CHANNEL_KL30, &voltage);
    pData[0] = 0x00;
    pData[1] = 0x00;
    pData[2] = (voltage >> 8) & 0xFF;
    pData[3] = (voltage) & 0xFF;

    *pLength = 4;
    return 0;
}

static int16_t Service2EWriteBluetoothName(uint8_t *Data, uint16_t len)
{
    int16_t ret;

    ret = EolTestSyncWithCpuTransmit(SYNC_CPU_CONTROL_ITEM_SET_BLUE_TOOTH_NAME, Data, len);

    if (ret != 0)
    {
        return -1;
    }
    return 0;
}
