#ifndef _UDS_DID_FUNCTION_H
#define _UDS_DID_FUNCTION_H

#include <stdint.h>

#define COMMAND_UPDATA_SIZE_REQ			0x01	
#define COMMAND_UPDATA_SIZE_ACK			0x02	
#define COMMAND_UPDATA_DATA_REQ			0x03	
#define COMMAND_UPDATA_DATA_ACK			0x04	
#define COMMAND_UPDATA_PROGRESS_ACK		0x05	
#define COMMAND_UPDATA_CRC_REQ			0x06	
#define COMMAND_UPDATA_CRC_ACK			0x07	
#define COMMAND_START_UPDATA_REQ		0x08	
#define COMMAND_START_UPDATA_ACK		0x09	
#define COMMAND_UPDATA_LEVEL_REQ		0x0A	
#define COMMAND_UPDATA_RESULT_REQ		0x0B	
#define COMMAND_UPDATA_END_REQ			0x0C	
#define COMMAND_UPDATA_END_REQ			0x0D

//serive 22 read function
int16_t Service22ReadPartNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSupplierId(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadHardwareNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSoftwareNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBootSoftwareVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadAppSoftwareVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadHardwareVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadEOLHardwareVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSoftwareVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadActiveDiagnosticInformation(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBasicAppSoftwareNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadCalibrationSoftwareNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNetworkNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadOsSoftwareVersionNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadEcuMask(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadManufactureDate(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPartName(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSystemName(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadESKey(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadIpAddress(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadIpPort(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPublicKey(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxEcallNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxBcallNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxIcallNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTspCallNumber1(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTspCallNumber2(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTspCallNumber3(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadVIN(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBID(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSerialNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadICCID(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadIMEI(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadIMSI(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxPreKey(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxCallNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadRegisterFlag(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadKeyType(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxMsgNumber1(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxMsgNumber2(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadCanUploadCycle(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTboxModel(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadCarModeType(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSecurityVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTraceabilityNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBatchNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadOtaVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadOtataskVersion(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadFingerPrint(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadRemoteconfig(uint8_t *pData,uint16_t *pLength);

/************add 22 *******************************/
int16_t Service22ReadSubnetConfigListOnHighSpeedCan(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadInstallationDate(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSystemConfiguration(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadVariantcode(uint8_t *pData,uint16_t *pLength);

int16_t Service22ReadEOLconfig(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNationIpAddress(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNationIpPort(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGovernmentIpAddress(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGovernmentIpPort(uint8_t *pData,uint16_t *pLength);

int16_t Service22ReadNationIpAddress_DIG(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGovernmentIpAddress_DIG(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadIpAddress_DIG(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadInternalBatteryStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSS_test(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNetWorkProvider_test(uint8_t* buf, uint16_t *len);
int16_t Service22ReadPhoneSignal_test(uint8_t *pData,uint16_t *pLength);
/************add 22 *******************************/
int16_t Service22ReadBatteryStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadKL30Voltage(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadKL30ConnectStatus(uint8_t *pData,uint16_t *pLength);
//int16_t Service22ReadBatteryVoltage(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBatteryTemperature(uint8_t *pData,uint16_t *pLength);

int16_t Service22ReadGNSS(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSSLocationStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSSAntenaStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSS_LatitudeLongitude(uint8_t *pData,uint16_t *pLength);

int16_t Service22ReadEMMCStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGPRSModeStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGPRSNetWorkStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNADPrimaryAntenaStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNADMinorAntenaStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadMicConnectionStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadFactoryMode(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadRechargeWakeupTime(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadRechargeThreshold(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBackupBatterySleepTime(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadEcuName(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadAesKey(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadAPN1(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadAPN2(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadAPN3(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadAPN4(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadCanBusStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadCanBus2Status(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadCanBus3Status(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSleepMode(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadWIFIModeStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadUploadFrequency(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadStorageMemoryUsages(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadStorageMemoryStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBackupBatterySoc(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBackupBatteryStatus(uint8_t *pData,uint16_t *pLength);

int16_t Service22ReadKL30Voltage(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBatteryStatus(uint8_t *pData,uint16_t *pLength);
//int16_t Service22ReadBatteryTemperature(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSS(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPhoneSignal(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNetWorkProvider(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNetWorkType(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadApnNumber(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadCpuFlashCapacity(uint8_t *pData,uint16_t *pLength);
//
int16_t Service22ReadTboxTemperature(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSystemTime(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNetworkMCC(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNetworkMNC(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadConnectionType(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadModemTemperature(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSLiveTime(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSLiveHeigth(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSLiveHDOP(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSLiveSpeed(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSLiveHeading(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSCurrentNumOfSatallitesUsed(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadGNSSCurrentNumOfSatallitesInView(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBackupBatteryTemperature(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBackupBatteryAgeCoefficient(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBackupBatteryVoltage(uint8_t *pData,uint16_t *pLength);

int16_t Service22ReadIMMOStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPowerIn(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadEepromCheck(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadDiagnosticCanReport(uint8_t *pData,uint16_t *pLength);

//test 
int16_t Service22ReadPinIN_1Status(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPinIN_2Status(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPinKL15Status(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPinSRSStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadPinEcallStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBatteryChargeState(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadAppSoftwareFingerprint(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadUCUType(uint8_t *pData,uint16_t *pLength);

int16_t Service22ReadPhoneKeyOffLineUseTimes(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadNFCCardReaderID(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSEID(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadProlinesChannelKey3(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBleMac(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadUpDataProgress(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadUpDataResult(uint8_t *pData,uint16_t *pLength);

//service 2E write function
int16_t Service2EWriteProlinesChannelKey(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWritePhoneKeyOffLineUseTimes(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteNFCCardID(uint8_t *pData,uint16_t dataLength);

int16_t Service2EWritePartNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteSupplierId(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteHardwareVersion(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteSoftwareVersion(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteEcuMask(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteManufactureDate(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteProgrammingDate(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWritePartName(uint8_t *pData,uint16_t dataLength);
int16_t Service22ReadOEMPowerMode(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadTotalOdometer(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadVehiclespeed(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadSOC(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadBuiltantennaStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadUsimNetworkstandardStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadUsimOperatorStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadUsimWorkStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service22ReadOEMSKLearningStatus(uint8_t *pData,uint16_t *pLength);
int16_t Service2EWriteESKey(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteESKeyByEol(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteIpAddress(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteIpPort(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWritePublicKey(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxEcallNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxBcallNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxIcallNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTSPCallNumber1(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTSPCallNumber2(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTSPCallNumber3(uint8_t *pData,uint16_t dataLength);
int16_t Service22WriteOEMSKNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteVIN(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteBID(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteSerialNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteICCID(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteIMEI(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteIMSI(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxPreKey(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxCallNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxRegisterFlag(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteKeyType(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxMsgNumber1(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxMsgNumber2(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteCanUploadCycle(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteTboxModel(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteCarModeType(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteSecurityVersion(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteRemoteconfig(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteAppSoftwareFingerprint(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteFingerPrint(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteSubnetConfigListOnHighSpeedCan(uint8_t *pData,uint16_t dataLength);
//ADD 2e
int16_t Service2EWriteNationIpAddress(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteNationIpPort(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteGovernmentIpAddress(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteGovernmentIpPort(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteRepairShopCodeOrTestSN(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteInstallationDate(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteSystemConfiguration(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteFactoryMode(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteRechargeWakeupTime(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteRechargeThreshold(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteBackupBatterySleepTime(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteAesKey(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteEOLconfig(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteEOLconfigByEol(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteVariantcode(uint8_t *pData,uint16_t dataLength);

int16_t Service2EWriteIpAddress_DIG(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteNationIpAddress_DIG(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteGovernmentIpAddress_DIG(uint8_t *pData,uint16_t dataLength);

int16_t Service2EWriteHardwareNumber(uint8_t *pData,uint16_t dataLength);
int16_t Service2EWriteSoftwareNumber(uint8_t *pData,uint16_t dataLength);

int16_t Service2EWriteDiagnosticCanReport(uint8_t *pData,uint16_t dataLength);


//service 31 start routinue function
int16_t Service31CheckPreFlashConditon(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut);
int16_t Service31StopApplication(uint8_t *pDataIn,uint16_t lengthIn,uint8_t *pDataOut,uint16_t *pLengthOut);
void Service31StopApplicationSetDefault(void);
int16_t Service31RID0203Set(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut);
int16_t Service31WriteDiagnosticCanReport01(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut);
int16_t Service31WriteDiagnosticCanReport02(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut);
int16_t Service31WriteDiagnosticCanReport03(uint8_t *pData,uint16_t dataLength,uint8_t *pDataOut,uint16_t *pLengthOut);
void Service31WriteDiagnosticCanReportSetDefault(void);
//28,85
uint8_t Service28CommunicationControl(uint8_t ContolType, uint8_t SubService);
uint8_t Service85DtcControl(uint8_t subFunction);
void Service10ResetTboxStatusUpdate(void);
//

void CheckEolConfigureState(void);
void EolConfigureInit(void);
const uint8_t *GetVehicleTypeConfigure(void);

void DiagCanReportValueInit(void);
void CheckCanReportState(void);

void VinInit(void);
void CheckVinCyleProcess(void);
void CanGETVin(uint8_t *vin);
void EskkeyCheckInit(void);
void RemoteContrlCheckInit(void);
void CheckEskValidtateDtc(void);


#endif    //_UDS_DID_FUNCTION_H
