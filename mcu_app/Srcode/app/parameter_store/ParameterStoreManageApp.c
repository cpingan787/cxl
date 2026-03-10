#include <string.h>
#include "stdlib.h"
#include "flashHal.h"
#include "ParameterStoreManageApp.h"

#define WORKFLASH_ECU_PART_NUM_LEN	                16+2	//车辆信息参数长度
#define WORKFLASH_SYSTEM_SUPPLIER_ID_LEN	        16+2	//车辆信息参数长度
#define WORKFLASH_ECU_HARDWARE_VER_LEN	            16+2	//车辆信息参数长度
#define WORKFLASH_ECU_SOFTWARE_VER_LEN	            16+2	//车辆信息参数长度
#define WORKFLASH_SAP_ECU_MASK_LEN	                16+2	//车辆信息参数长度
#define WORKFLASH_ECU_MANUFACTURE_DATE_LEN	        16+2	//车辆信息参数长度
#define WORKFLASH_PART_NAME_LEN	                    16+2	//车辆信息参数长度
#define WORKFLASH_PUBLIC_ASE_KEY	                16+5	//车辆信息参数长度
#define WORKFLASH_WORK_ADDR_LEN	                    32+2	//车辆信息参数长度
#define WORKFLASH_WORK_PORT_LEN	                    16+2	//车辆信息参数长度
#define WORKFLASH_WORK_PUBLIC_KEY_LEN	            16+2	//车辆信息参数长度
#define WORKFLASH_TBOX_CALL_NUM_LEN	                20+2	//车辆信息参数长度
#define WORKFLASH_VIN_LEN	                        32+2	//车辆信息参数长度
#define WORKFLASH_BID_LEN	                        32+2	//车辆信息参数长度
#define WORKFLASH_ECU_SERIAL_NUM_LEN	            32+2	//车辆信息参数长度
#define WORKFLASH_ICCID_LEN	                        32+2	//车辆信息参数长度
#define WORKFLASH_IMEI_LEN	                        16+2	//车辆信息参数长度
#define WORKFLASH_IMSI_LEN	                        16+2	//车辆信息参数长度
#define WORKFLASH_REGISTER_FLAG_LEN	                4+2	    //车辆信息参数长度
#define WORKFLASH_REGISTER_KEY_TYPE_LEN	            4+2	    //车辆信息参数长度
#define WORKFLASH_CAN_LOAD_CYCLE_LEN	            16+2	//车辆信息参数长度
#define WORKFLASH_TBOX_MODEL_LEN	                12+2	//车辆信息参数长度
#define WORKFLASH_CAR_MODE_TYPE_LEN	                16+2	//车辆信息参数长度
#define WORKFLASH_SECURITY_VERSION_LEN	            16+2	//车辆信息参数长度
#define WORKFLASH_HARDWARE_NUM_LEN	                16+5	//车辆信息参数长度
#define WORKFLASH_SOFTWARE_NUM_LEN	                16+5	//车辆信息参数长度
#define WORKFLASH_DIAG_SN_LEN	                    16+5	//车辆信息参数长度
#define WORKFLASH_ECU_VARIANTCODE_LEN	            10+5	//车辆信息参数长度
#define WORKFLASH_ECU_EOL_LEN	                    10+5	//车辆信息参数长度
#define WORKFLASH_APP_SOFT_PRINT_LEN	            10+5	//车辆信息参数长度
#define WORKFLASH_SUBNET_CONFIG_LIST_SPEED_CAN_LEN	5+5	    //车辆信息参数长度
#define WORKFLASH_MCU_APP_SOFTWARE_VERSION_LEN	    8+5	    //车辆信息参数长度

#define WORKFLASH_VEHICLE_NETWORK_CONFIGURATION_F1A1_LEN                    (17+2)//整车网络配置
#define WORKFLASH_VEHICLE_NETWORK_CONFIGURATION_F1B0_LEN                    (31+2)//整车网络配置
#define WORKFLASH_ECU_LEVEL_NETWORK_CONFIGURATION_DATA_IDENTIFIER_F1B1_LEN  (31+2)//整车网络配置（单ecu配置字）HEX
#define WORKFLASH_UIN_LEN                                                   (20+2)
#define WORKFLASH_VEHICLE_MODEL_F112_LEN                                    (20+2)//车辆
#define WORKFLASH_FINGERPRINT_F1F0_LEN                                      (26+2)//指纹
#define WORKFLASH_FINGERPRINT_ETHERNET_F0FF_LEN                             (48+2)//以太网指纹
#define WORKFLASH_VEHICLE_SOFEWARE_VERSION_F1AB_LEN                         (10+2)//整车软件版本
#define WORKFLASH_WORKING_MODE_F1C2_LEN                                     (1 +2)//工作模式
#define WORKFLASH_SECOC_KEY_F1C7_LEN                                        (32+2)//secoc密钥
#define WORKFLASH_SK_LEN                                                    (16+2)
#define WORKFLASH_PIN_LEN                                                   (4 +2)
#define WORKFLASH_CSR_HASH_F1CD_LEN                                         (20+1)
//维修模式
#define WORKFLASH_MAINTENANCE_MODE_FD00_LEN                                 (1 +2)//维修模式

//车辆重要信息存储结构体
typedef struct 
{
    uint8_t u8SystemSupplierId[WORKFLASH_SYSTEM_SUPPLIER_ID_LEN]	                ;	//系统供应商标识号
    uint8_t u8ECU_RepairShopCodeOrTestSN[WORKFLASH_DIAG_SN_LEN]	                    ;	//维修点代码或诊断仪序列号
    uint8_t u8ECU_InstallationDate[WORKFLASH_ECU_MANUFACTURE_DATE_LEN]	            ;	//ECU 安装日期代码
    uint8_t u8ECU_Variantcode[WORKFLASH_ECU_VARIANTCODE_LEN]	                    ;	//ECU编码
    uint8_t u8SAP_ECU_MASK[WORKFLASH_SAP_ECU_MASK_LEN]	                            ;	//安全访问掩码
    uint8_t u8ECU_ManuFactureDate[WORKFLASH_ECU_MANUFACTURE_DATE_LEN]	            ;	//ECU制造日期
    uint8_t u8PartName[WORKFLASH_PART_NAME_LEN]	                                    ;	//零件名称
    uint8_t u8PublicAESKey[WORKFLASH_PUBLIC_ASE_KEY]	                            ;	//AES加密算法密钥
    uint8_t u8WorkAddr[WORKFLASH_WORK_ADDR_LEN]	                                    ;	//平台地址
    uint8_t u8WorkPort[WORKFLASH_WORK_PORT_LEN]	                                    ;	//平台port
    uint8_t u8PublicKey[WORKFLASH_WORK_PUBLIC_KEY_LEN]	                            ;	//公钥
    uint8_t u8TboxECallNumber[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//Ecall号码
    uint8_t u8TboxBCallNumber[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//Bcall号码
    uint8_t u8TboxICallNumber[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//Icall号码
    uint8_t u8TSPCallNumber1[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//TSPcall号码1
    uint8_t u8TSPCallNumber2[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//TSPcall号码2
    uint8_t u8TSPCallNumber3[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//TSPcall号码3
    uint8_t u8VIN[WORKFLASH_VIN_LEN]	                                            ;	//VIN
    uint8_t u8BID[WORKFLASH_BID_LEN]	                                            ;	//BID
    uint8_t u8ECU_SerialNumber[WORKFLASH_ECU_SERIAL_NUM_LEN]	                    ;	//电控单元序列号(ECU)
    uint8_t u8TboxPreKey[WORKFLASH_IMSI_LEN]	                                    ;	///
    uint8_t u8TSPMsgNumber1[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//TSP消息号1
    uint8_t u8TSPMsgNumber2[WORKFLASH_TBOX_CALL_NUM_LEN]	                        ;	//TSP消息号2
    uint8_t u8CanLoadCycle[WORKFLASH_CAN_LOAD_CYCLE_LEN]	                        ;	//Can下载周期
    uint8_t u8TboxModel[WORKFLASH_TBOX_MODEL_LEN]	                                ;	//Tbox Model
    uint8_t u8CarModeType[WORKFLASH_CAR_MODE_TYPE_LEN]	                            ;	//Car Mode Type
    uint8_t u8SecurityVersion[WORKFLASH_SECURITY_VERSION_LEN]	                    ;	//安全版本
    uint8_t u8NationWorkAddr[WORKFLASH_WORK_ADDR_LEN]	                            ;	//国家平台地址
    uint8_t u8NationWorkPort[WORKFLASH_WORK_PORT_LEN]	                            ;	//国家平台port
    uint8_t u8GovernmentWorkAddr[WORKFLASH_WORK_ADDR_LEN]	                        ;	//地方平台地址
    uint8_t u8GovernmentWorkPort[WORKFLASH_WORK_PORT_LEN]	                        ;	//地方平台port
    uint8_t u8EOLconfig[WORKFLASH_ECU_EOL_LEN]	                                    ;	//下线配置
    uint8_t u8AppSoftFingerPrint[WORKFLASH_APP_SOFT_PRINT_LEN]	                    ;	//软件指纹信息
    uint8_t u8SubnetConfigListSpeedCan[WORKFLASH_SUBNET_CONFIG_LIST_SPEED_CAN_LEN]	;	//高速can设置子网配置列表
    uint8_t u8VIN_hex[WORKFLASH_VIN_LEN]	                                        ;	//VIN Hex存储  
}vehicleInforParamImportant_t;

//车辆易变信息存储结构体
typedef struct 
{
    uint8_t u8ICCID[32]	                                                     ;   //ICCID
    uint8_t u8IMEI[16]	                                                     ;   //IMEI
    uint8_t u8IMSI[16]	                                                     ;   //IMSI
    uint8_t u8RegisterFlag[8]	                                             ;   //寄存器标记
    uint8_t u8KeyType[8]	                                                 ;   //密钥类型
    uint8_t u8McuResetCount[8]	                                             ;   //MCU复位次数计数
    uint8_t u8ECU_HardwareNumber[WORKFLASH_HARDWARE_NUM_LEN]	             ;   //硬件编号
    uint8_t u8ECU_SoftwareNumber[WORKFLASH_SOFTWARE_NUM_LEN]	             ;   //软件编号
    uint8_t u8ECU_HardwareVersion[WORKFLASH_ECU_HARDWARE_VER_LEN]	         ;   //硬件版本号
    uint8_t u8ECU_SoftwareVersion[WORKFLASH_ECU_SOFTWARE_VER_LEN]	         ;   //软件版本号
    uint8_t u8ECUPartNumber[WORKFLASH_ECU_PART_NUM_LEN]	                     ;   //电控单元零件号
    uint8_t u8MCU_AppSoftWareVersion[WORKFLASH_MCU_APP_SOFTWARE_VERSION_LEN] ;   //app软件版本号
    uint8_t u8TboxCallNumber[32]	                                         ;   //TBOXcall号码
    uint8_t u8MCU_AppSoftWareVersionF1C1[32]	                             ;   //APP软件版本F1C1号
    uint8_t u8DiagCanReport[8]	                                             ;   //转发某路can报文到诊断can设置标记

    uint8_t VehicleNetworkConfigurationF1A1[WORKFLASH_VEHICLE_NETWORK_CONFIGURATION_F1A1_LEN];
    uint8_t VehicleNetworkConfigurationF1B0[WORKFLASH_VEHICLE_NETWORK_CONFIGURATION_F1B0_LEN];
    uint8_t ECUlevelNetworkConfigurationDataIdentifierF1B1[WORKFLASH_ECU_LEVEL_NETWORK_CONFIGURATION_DATA_IDENTIFIER_F1B1_LEN];
    uint8_t UIN[WORKFLASH_UIN_LEN];
    uint8_t VehicleModelF112[WORKFLASH_VEHICLE_MODEL_F112_LEN];
    uint8_t FingerprintF1F0[WORKFLASH_FINGERPRINT_F1F0_LEN];
    uint8_t FingerprintEthernetF0FF[WORKFLASH_FINGERPRINT_ETHERNET_F0FF_LEN];
    uint8_t VehicleSoftwareVersionF1AB[WORKFLASH_VEHICLE_SOFEWARE_VERSION_F1AB_LEN];
    uint8_t WorkingModeF1C2[WORKFLASH_WORKING_MODE_F1C2_LEN];
    uint8_t SecOCKeyF1C7[WORKFLASH_SECOC_KEY_F1C7_LEN];
    uint8_t SK[WORKFLASH_SK_LEN];
    uint8_t PIN[WORKFLASH_PIN_LEN];
    uint8_t CSR_HASH[WORKFLASH_CSR_HASH_F1CD_LEN];
    uint8_t Maintenance[WORKFLASH_MAINTENANCE_MODE_FD00_LEN];
}vehicleInforParamVariable_t;


typedef struct
{
    uint8_t securityInfo[3];
    uint8_t workingMode[2];
}SmallBlock1DataTable_t;

typedef struct
{
    uint8_t secocTripCount[8];
}SmallBlock2DataTable_t;


/**********************************************************
pTypeFlag:
  0:Ecu_vehicleInforParameterVariable
  1:Ecu_vehicleInforParameterImportant
***********************************************************/

#define TBOX_PARAMTER_MAP_BEGIN()         static int16_t VehicleInforGetDataOffsetAddressAndLength(FlashParaId_e parameterId ,uint8_t *pTypeFlag,uint32_t *offsetAddress,uint32_t *length)   \
                                          {                                       \
                                            vehicleInforParamVariable_t *pData0;              \
                                            vehicleInforParamImportant_t *pData1;  \
                                            uint8_t *pDataElement;                      \
                                            int16_t ret;                                \
                                            uint32_t size;                              \
                                            ret = 0;                                    \
                                            pData0 = NULL;                               \
                                            pData1 = NULL;                               \
                                            switch(parameterId)                        \
                                            {                                           \

#define TBOX_PARAMETER_MAP(item,parameter,Important)      case item:                                      \
                                                {                                                \
                                                  pDataElement = pData##Important->parameter;               \
                                                    size = sizeof(pData##Important->parameter);   \
                                                  *pTypeFlag = Important;                          \
                                                }                                                \
                                                break;                                          \
                                              
#define TBOX_PARAMTER_MAP_END()               default: ret = -1;                       \
                                              break;	                                \
                                            }                                           \
                                            if(ret!=0)                                  \
                                            {                                           \
                                                return ret;                            \
                                            }                                           \
                                            *offsetAddress = (uint32_t)pDataElement;    \
                                            *length = size;                             \
                                            return ret;                                \
                                          }     

#define TBOX_SMALL_BLOCK_MAP_BEGIN()         static int16_t VehicleInforSmallBlockGetDataOffsetAddressAndLength(SmallBlockDataParamId_e parameterId ,uint8_t *pTypeFlag,uint32_t *offsetAddress,uint32_t *length)   \
                                          {                                       \
                                            SmallBlock1DataTable_t *pData1;              \
                                            SmallBlock2DataTable_t *pData2;  \
                                            uint8_t *pDataElement;                      \
                                            int16_t ret;                                \
                                            uint32_t size;                              \
                                            ret = 0;                                    \
                                            pData1 = NULL;                               \
                                            pData2 = NULL;                               \
                                            switch(parameterId)                        \
                                            {                                           \

#define TBOX_SMALL_BLOCK__MAP(item,parameter,blockNum)      case item:                                      \
                                                {                                                \
                                                  pDataElement = pData##blockNum->parameter;               \
                                                    size = sizeof(pData##blockNum->parameter);   \
                                                  *pTypeFlag = blockNum;                          \
                                                }                                                \
                                                break;                                          \
                                              
#define TBOX_SMALL_BLOCK__MAP_END()               default: ret = -1;                       \
                                              break;	                                \
                                            }                                           \
                                            if(ret!=0)                                  \
                                            {                                           \
                                                return ret;                            \
                                            }                                           \
                                            *offsetAddress = (uint32_t)pDataElement;    \
                                            *length = size;                             \
                                            return ret;                                \
                                          }  

TBOX_PARAMTER_MAP_BEGIN()
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_PART_NUMBER,u8ECUPartNumber,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID,u8SystemSupplierId,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_HARDWARE_VERSION,u8ECU_HardwareVersion,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_SOFTWARE_VERSION,u8ECU_SoftwareVersion,0)
//   BOX_PARAMETER_MAP(E_PARAMETER_INFO_SAP_ECU_MASK,u8SAP_ECU_MASK,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_MANUFACTURE_DATE,u8ECU_ManuFactureDate,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_PART_NAME,u8PartName,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ESK_KEY,u8PublicAESKey,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_WORK_ADDRESS,u8WorkAddr,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_WORK_PORT,u8WorkPort,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_PUBLIC_KEY,u8PublicKey,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TBOX_ECALL_NUMBER,u8TboxECallNumber,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TBOX_BCALL_NUMBER,u8TboxBCallNumber,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TBOX_ICALL_NUMBER,u8TboxICallNumber,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TSP_CALL_NUMBER1,u8TSPCallNumber1,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TSP_CALL_NUMBER2,u8TSPCallNumber2,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TSP_CALL_NUMBER3,u8TSPCallNumber3,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_VIN,u8VIN,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_VIN_hex,u8VIN_hex,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_BID,u8BID,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_PRE_KEY,u8TboxPreKey,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_SERIAL_NUMBER,u8ECU_SerialNumber,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TBOX_CALL_NUMBER,u8TboxCallNumber,0)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TSP_MSG_NUMBER1,u8TSPMsgNumber1,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TSP_MSG_NUMBER2,u8TSPMsgNumber2,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_CAN_LOAD_CYCLE,u8CanLoadCycle,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TBOX_MODEL,u8TboxModel,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_CAR_MODE_TYPE,u8CarModeType,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_SECURITY_VERSION,u8SecurityVersion,1)
  // variable parameterE_PARAMETER_INFO
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ICCID,u8ICCID,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_IMEI,u8IMEI,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_IMSI,u8IMSI,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_TBOX_REGISTER_FLAG,u8RegisterFlag,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_MCU_RESET_COUNT,u8McuResetCount,0) 
    //project parameterE_PARAMETER_INFO
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_HARDWARE_NUM,u8ECU_HardwareNumber,0) 
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_SOFTWARE_NUM,u8ECU_SoftwareNumber,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_DIAG_SN,u8ECU_RepairShopCodeOrTestSN,1) 
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_INSTALL_DATE,u8ECU_InstallationDate,1)    
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_CODE,u8ECU_Variantcode,1) 
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_NATION_WORK_ADDRESS,u8NationWorkAddr,1)
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_NATION_WORK_PORT,u8NationWorkPort,1) 
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_GOVERNMENT_WORK_ADDRESS,u8GovernmentWorkAddr,1)  
//  TBOX_PARAMETER_MAP(E_PARAMETER_INFO_GOVERNMENT_WORK_PORT,u8GovernmentWorkPort,1) 
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_EOL_CONFIG,u8EOLconfig,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_APP_SOFT_FINGER_PRINT,u8AppSoftFingerPrint,1) 
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_SUBNET_CONFIG_LIST_SPEED_CAN,u8SubnetConfigListSpeedCan,1) 
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_MCU_APP_SOFTWARE_VERSION,u8MCU_AppSoftWareVersion,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_MCU_APP_SOFTWARE_VERSION_F1C1,u8MCU_AppSoftWareVersionF1C1,0)   
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_DIAG_CAN_REPORT,u8DiagCanReport,0)  
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_E_CALL_NUMBER,u8TboxECallNumber,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_B_CALL_NUMBER,u8TboxBCallNumber,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_I_CALL_NUMBER,u8TboxICallNumber,1)
    //TBOX_PARAMETER_MAP(E_PARAMETER_INFO_PROLINES_CHANNEL_KEY,u8ProlinesChannelKey,0)
    //TBOX_PARAMETER_MAP(E_PARAMETER_INFO_PHONEKEY_OFFLINE_USETIMES,u8PhoneKeyOffLineUseTimes,0)
    //TBOX_PARAMETER_MAP(E_PARAMETER_INFO_NFC_CARD_ID,u8NfcCardID,0)
    //TBOX_PARAMETER_MAP(E_PARAMETER_INFO_SEID,u8SEID,0)
    //TBOX_PARAMETER_MAP(E_PARAMETER_INFO_PROLINES_CHANNEL_KEY3,u8ProlinesChannelKey3,0)
    //TBOX_PARAMETER_MAP(E_PARAMETER_INFO_BLE_MAC,u8BleMac,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1A1,VehicleNetworkConfigurationF1A1,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1B0,VehicleNetworkConfigurationF1B0,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_LEVEL_NETWORK_CONFIGURATION_DATA_IDENTIFIER_F1B1,ECUlevelNetworkConfigurationDataIdentifierF1B1,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_UIN,UIN,0)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_VEHICLE_MODEL_F112,VehicleModelF112,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_FINGERPRINT_F1F0,FingerprintF1F0,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_FINGERPRINT_ETHERNET_F0FF,FingerprintEthernetF0FF,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_VEHICLE_SOFEWARE_VERSION_F1AB,VehicleSoftwareVersionF1AB,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_WORKING_MODE_F1C2,WorkingModeF1C2,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_SECOC_KEY_F1C7,SecOCKeyF1C7,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_SK,SK,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_PIN,PIN,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_CSR_HASH_F1CD,CSR_HASH,0);
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_MAINTENANCE_MODE_FD00,Maintenance,0)
TBOX_PARAMTER_MAP_END()


TBOX_SMALL_BLOCK_MAP_BEGIN()
    TBOX_SMALL_BLOCK__MAP(E_SECURITY_INFO, securityInfo,   1 )
    TBOX_SMALL_BLOCK__MAP(E_WORKING_MODE,  workingMode,    1 )
    TBOX_SMALL_BLOCK__MAP(E_SECOC_TRIP_COUNT,secocTripCount,2)
    //TBOX_SMALL_BLOCK__MAP()
TBOX_SMALL_BLOCK__MAP_END()

static int16_t ByteArrayCompare(uint8_t *pData1,uint8_t *pData2,uint16_t length)
{
  uint16_t i;
  int16_t ret;
  if(pData1 == NULL || pData2 == NULL)
  {
    return -1;
  }
  ret = 0;
  for(i=0;i<length;i++)
  {
    if(pData1[i]!=pData2[i])
    {
      ret = 1;
      break;
    }
  }
  return ret;
}


static int16_t WorkFlashWriteVehicleInfo(uint8_t importantFlag,uint32_t address,const uint8_t *data,uint32_t dataLength)
{
  uint32_t workFlashAddress;
  if(importantFlag==0)
  {
    workFlashAddress = WORKFLASH_ADDRESS_VEHICLE_INFO_VARIABLE;   
  }
  else
  {
    workFlashAddress = WORKFLASH_ADDRESS_VEHICLE_INFO_IMPORTANT;    
  }

  return FlashHalDataBlockWrite(workFlashAddress,address,data,dataLength);
}

static int16_t WorkFlashReadVehicleInfo(uint8_t importantFlag,uint32_t address,uint8_t *data,uint32_t dataLength)
{
  uint32_t baseAddress ;
  
  if(address+dataLength>4096)
  {
    return -1;
  }
  if(0==importantFlag)
  {
    baseAddress = WORKFLASH_ADDRESS_VEHICLE_INFO_VARIABLE;    
  }
  else
  {
    baseAddress = WORKFLASH_ADDRESS_VEHICLE_INFO_IMPORTANT;
  }
 
  FlashHalDataBlockRead(baseAddress,address,data,dataLength); 

  return 0;
}

int16_t WorkFlashVehicleInforStore(FlashParaId_e parameterId,uint8_t *data,uint32_t dataLength)
{
    int16_t ret;
    uint32_t OffsetAddress;
    uint32_t length;
    uint8_t importantFlag;
    uint8_t tem[32];
    uint8_t i;
    
    if(data==NULL)
    {
      return -1;
    }
    
    ret = VehicleInforGetDataOffsetAddressAndLength(parameterId,&importantFlag,&OffsetAddress,&length);
    if(ret!=0)
    {
      return ret;
    }
    
    if(length<dataLength)
    {
      return -2;
    }
    if(length>(sizeof(tem)-1))//tem max is 32
    {
      length = (sizeof(tem)-1);
    }
    
    //read from work flash
    ret = WorkFlashReadVehicleInfo(importantFlag,OffsetAddress,tem,length);
    if(ret!=0)
    {
      return ret;
    }
    if(tem[0]==dataLength)
    {
      if(ByteArrayCompare(&tem[1],data,dataLength)==0)//value is same and do not change
      {
        return 0;
      }
    }
    //write work flash
    tem[0] = dataLength;
    for(i=0;i<dataLength;i++)
    {
      tem[i+1] = data[i];
    }
    ret = WorkFlashWriteVehicleInfo(importantFlag,OffsetAddress,tem,dataLength+1);
    if(ret!=0)
    {
      return ret;
    }
    return 0;
}

int16_t WorkFlashVehicleInforRead(FlashParaId_e parameterId,uint8_t *data,uint32_t *dataLength)
{
    int16_t ret;
    uint32_t OffsetAddress;
    uint32_t length;
    uint8_t importantFlag; 
    uint8_t flashData[64];
    //uint16_t len;
    if(data==NULL)
    {
      return -1;
    }

    ret = VehicleInforGetDataOffsetAddressAndLength(parameterId,&importantFlag,&OffsetAddress,&length);
    if(ret!=0)
    {
      return ret;
    }
    
    ret = WorkFlashReadVehicleInfo(importantFlag,OffsetAddress,flashData,length);
    if(ret!=0)
    {
      return ret;
    }
    if(flashData[0]<length)
    {
      length = flashData[0];
    }
    else
    {
      length -= 1;
    }
    memcpy(data,&flashData[1],length);
    *dataLength = length;
    return 0;	
}

int16_t WorkFlashUserInfoStore(SmallBlockDataParamId_e parameterId,uint8_t *dataIn,uint32_t dataLenth)
{
    //uint8_t data[5] = {0};
    int16_t ret = -1;
    uint32_t OffsetAddress;
    uint32_t length;
    uint8_t importantFlag; 
    
    if((dataIn == NULL) || (dataLenth == 0))
    {
        return -1;
    }
        
    ret = VehicleInforSmallBlockGetDataOffsetAddressAndLength(parameterId,&importantFlag,&OffsetAddress,&length);
    if(ret != 0)
    {
        return -1;
    }
    if(length < dataLenth)
    {
        return -1;
    }
    
    if(importantFlag == 1)
    {
        ret = FlashHalSmallDataBlockWrite(WORKFLASH_ADDRESS_SMALL_BLOCK_1,OffsetAddress,dataIn,dataLenth);
    }
    else if(importantFlag == 2)
    {
        ret = FlashHalSmallDataBlockWrite(WORKFLASH_ADDRESS_SMALL_BLOCK_2,OffsetAddress,dataIn,dataLenth);
    }
    else
    {
        return -1;
    }
    

    return 0;
}

int16_t WorkFlashUserInfoRead(SmallBlockDataParamId_e parameterId,uint8_t* pDataOut,uint32_t *dataLenth)
{
    //uint8_t data[5] = {0};
    int16_t ret = -1;
    uint32_t OffsetAddress;
    uint32_t length;
    uint8_t importantFlag; 
    
    if((pDataOut == NULL) || (dataLenth == 0))
    {
        return -1;
    }
        
    ret = VehicleInforSmallBlockGetDataOffsetAddressAndLength(parameterId,&importantFlag,&OffsetAddress,&length);
    if(ret != 0)
    {
        return -1;
    }
    
    if(importantFlag == 1)
    {
        ret = FlashHalSmallDataBlockRead(WORKFLASH_ADDRESS_SMALL_BLOCK_1,OffsetAddress,pDataOut,length);
    }
    else if(importantFlag == 2)
    {
        ret = FlashHalSmallDataBlockRead(WORKFLASH_ADDRESS_SMALL_BLOCK_2,OffsetAddress,pDataOut,length);
    }
    else
    {
        return -1;
    }
    
    //*PDataOut = data[counterId];
    *dataLenth = length;
    return 0;
}

int16_t FlashDtcStore(const uint8_t *pDataIn,uint32_t lengthIn)
{    
    int16_t ret = 0;
    if((lengthIn > (4088 * 2)) || (pDataIn == NULL) || (lengthIn == 0))
    {
        return -1;
    }
    if(lengthIn>4088)
    {
        //TBOX_PRINT("dtc1 flash wirite  %d\r\n",WORKFLASH_ADDRESS_VEHICLE_DTC1);
        ret = FlashHalDataBlockWrite(WORKFLASH_ADDRESS_VEHICLE_DTC1,0,(uint8_t*)pDataIn,4088);
        if(ret!=0)
        {
              return ret;
        }
        //TBOX_PRINT("dtc2 flash wirite  %d\r\n",WORKFLASH_ADDRESS_VEHICLE_DTC2);
        ret = FlashHalDataBlockWrite(WORKFLASH_ADDRESS_VEHICLE_DTC2,0,((uint8_t*)pDataIn)+4088,lengthIn-4088);
    }
    else
    {
        ret = FlashHalDataBlockWrite(WORKFLASH_ADDRESS_VEHICLE_DTC1,0,(uint8_t*)pDataIn,lengthIn);
    }
    return ret;
}

int16_t FlashDtcRead(uint8_t *pBufferIn,uint32_t readLength)
{
    
    int16_t ret = 0;
    if((readLength > (4088 * 2)) || (pBufferIn == NULL))
    {
        return -1;
    }
    if(readLength>4088)
    {
        ret = FlashHalDataBlockRead(WORKFLASH_ADDRESS_VEHICLE_DTC1,0,(uint8_t*)pBufferIn,4088);
        if(ret!=0)
        {
              return ret;
        }
        ret = FlashHalDataBlockRead(WORKFLASH_ADDRESS_VEHICLE_DTC2,0,((uint8_t*)pBufferIn)+4088,readLength-4088);
    }
    else
    {
        ret = FlashHalDataBlockRead(WORKFLASH_ADDRESS_VEHICLE_DTC1,0,(uint8_t*)pBufferIn,readLength);
    }
    return ret;
}






