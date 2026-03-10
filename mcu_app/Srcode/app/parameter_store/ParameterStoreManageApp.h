/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       FlashParameterManageApp
  Author:          lei.wang
  Created Time:    2024
  Description:     Parameter storage flash operation
   Others:      // 其它说明
*************************************************/
#ifndef _PARAMETER_STORE_MANAGEAPP_H_
#define _PARAMETER_STORE_MANAGEAPP_H_

#include "stdint.h"

#define WORKFLASH_ADDRESS_VEHICLE_INFO_IMPORTANT	0x00000000	//重要的设备信息Flash存储偏移地址（不会经常更改）
#define WORKFLASH_ADDRESS_VEHICLE_INFO_VARIABLE		0x00002000	//可变的设备Flash信息存储偏移地址
#define WORKFLASH_ADDRESS_VEHICLE_DTC1	            0x00004000	//故障码信息Flash存储偏移地址1  
#define WORKFLASH_ADDRESS_VEHICLE_DTC2	            0x00006000	//故障码信息Flash存储偏移地址2
#define WORKFLASH_ADDRESS_REMOTE_CONTROL_VALUE	    0x00008000	//远控参数FLASH信息存储偏移地址
#define WORKFLASH_ADDRESS_FINGER_PRINT              0x0000A000	//诊断指纹信息FLASH信息存储偏移地址 
#define WORKFLASH_ADDRESS_BLUETOOTH_KEY	            0x0000C000	//蓝牙钥匙信息FLASH信息存储偏移地址
#define WORKFLASH_ADDRESS_RESERVED4	                0x0000E000	//预留FLASH信息存储地址
#define WORKFLASH_ADDRESS_RESERVED5	                0x00010000	//预留FLASH信息存储地址
#define WORKFLASH_ADDRESS_RESERVED6	                0x00012000	//预留FLASH信息存储地址
#define WORKFLASH_ADDRESS_RESERVED7	                0x00014000	//预留FLASH信息存储地址
//#define WORKFLASH_ADDRESS_SECURITY	                0x14017500	//安全访问失败次数存储地址

#define WORKFLASH_ADDRESS_SMALL_BLOCK_1	            0x14017500	//小块存储地址，一小块=128字节
#define WORKFLASH_ADDRESS_SMALL_BLOCK_2	            0x14017580	//小块存储地址，一小块=128字节




typedef enum
{
    E_PARAMETER_INFO_ECU_PART_NUMBER                 ,//
    E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID              ,//系统供应商标识
    E_PARAMETER_INFO_ECU_HARDWARE_VERSION            ,
    E_PARAMETER_INFO_ECU_SOFTWARE_VERSION            ,
    E_PARAMETER_INFO_SAP_ECU_MASK                    ,
    E_PARAMETER_INFO_ECU_MANUFACTURE_DATE            ,////TBOX生产日期
    E_PARAMETER_INFO_PART_NAME                       ,
    E_PARAMETER_INFO_VIN                             ,//
    E_PARAMETER_INFO_ECU_SERIAL_NUMBER               ,//
    E_PARAMETER_INFO_ESK_KEY                         ,
    E_PARAMETER_INFO_CAR_MODE_TYPE                   ,
    E_PARAMETER_INFO_SECURITY_VERSION                ,
    E_PARAMETER_INFO_ECU_HARDWARE_NUM                ,
    E_PARAMETER_INFO_ECU_SOFTWARE_NUM                ,//
    E_PARAMETER_INFO_ECU_DIAG_SN                     ,
    E_PARAMETER_INFO_ECU_INSTALL_DATE                ,
    E_PARAMETER_INFO_ECU_CODE                        ,
    E_PARAMETER_INFO_NATION_WORK_ADDRESS             ,
    E_PARAMETER_INFO_NATION_WORK_PORT                ,
    E_PARAMETER_INFO_GOVERNMENT_WORK_ADDRESS         ,
    E_PARAMETER_INFO_GOVERNMENT_WORK_PORT            ,
    E_PARAMETER_INFO_ECU_EOL_CONFIG                  ,
    E_PARAMETER_INFO_TBOX_REGISTER_FLAG              ,//

    E_PARAMETER_INFO_ICCID                           ,//
    E_PARAMETER_INFO_IMEI                            ,//
    E_PARAMETER_INFO_IMSI                            ,//

    E_PARAMETER_INFO_MCU_RESET_COUNT                 ,//
    E_PARAMETER_INFO_APP_SOFT_FINGER_PRINT           ,
    E_PARAMETER_INFO_SUBNET_CONFIG_LIST_SPEED_CAN    ,
    E_PARAMETER_INFO_MCU_APP_SOFTWARE_VERSION        ,//
    E_PARAMETER_INFO_TBOX_CALL_NUMBER                ,
    E_PARAMETER_INFO_MCU_APP_SOFTWARE_VERSION_F1C1   ,
    E_PARAMETER_INFO_VIN_hex                         ,
    E_PARAMETER_INFO_DIAG_CAN_REPORT                 ,
    E_PARAMETER_INFO_E_CALL_NUMBER                   ,
    E_PARAMETER_INFO_B_CALL_NUMBER                   ,
    E_PARAMETER_INFO_I_CALL_NUMBER                   ,
    
    E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1A1,//整车网络配置
    E_PARAMETER_INFO_VEHICLE_NETWORK_CONFIGURATION_F1B0,//整车网络配置
    E_PARAMETER_INFO_ECU_LEVEL_NETWORK_CONFIGURATION_DATA_IDENTIFIER_F1B1,
    E_PARAMETER_INFO_UIN,//终端安全序列号	ASCII	20
    E_PARAMETER_INFO_VEHICLE_MODEL_F112,//车辆
    E_PARAMETER_INFO_FINGERPRINT_F1F0,//指纹
    E_PARAMETER_INFO_FINGERPRINT_ETHERNET_F0FF,//以太网指纹
    E_PARAMETER_INFO_VEHICLE_SOFEWARE_VERSION_F1AB,//整车软件版本
    E_PARAMETER_INFO_WORKING_MODE_F1C2,//工作模式
    E_PARAMETER_INFO_SECOC_KEY_F1C7,//SecOC密钥
    E_PARAMETER_INFO_SK,//SK码
    E_PARAMETER_INFO_PIN,//PIN码
    E_PARAMETER_INFO_CSR_HASH_F1CD,
    //生产工装需要
    E_PARAMETER_INFO_MAINTENANCE_MODE_FD00,//维修模式
}FlashParaId_e;


typedef enum
{
    E_SECURITY_INFO,
    E_WORKING_MODE,
    E_SECOC_TRIP_COUNT,
}SmallBlockDataParamId_e;


int16_t WorkFlashVehicleInforRead(FlashParaId_e parameterId,uint8_t *data,uint32_t *dataLength);
int16_t WorkFlashVehicleInforStore(FlashParaId_e parameterId,uint8_t *data,uint32_t dataLength);

int16_t WorkFlashUserInfoStore(SmallBlockDataParamId_e parameterId,uint8_t *dataIn,uint32_t dataLenth);
int16_t WorkFlashUserInfoRead(SmallBlockDataParamId_e parameterId,uint8_t* pDataOut,uint32_t *dataLenth);

int16_t FlashDtcStore(const uint8_t *pDataIn,uint32_t lengthIn);
int16_t FlashDtcRead(uint8_t *pBufferIn,uint32_t readLength);

#endif
