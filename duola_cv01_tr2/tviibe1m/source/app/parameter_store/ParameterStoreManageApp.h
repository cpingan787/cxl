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
#define WORKFLASH_ADDRESS_SECURITY	                0x14017500	//安全访问失败次数存储地址



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
#define WORKFLASH_SYSTEM_CONFIG_LEN                 23+2    //
#define WORKFLASH_FACTORY_MODE_LEN                  1+2     //
#define WORKFLASH_RECHARGE_WAKEUP_TIME_LEN          2+2     //
#define WORKFLASH_RECHARGE_THRESHOLD_LEN            1+2     //
#define WORKFLASH_BACKUPBATTERY_SLEEP_TIME_LEN      1+2     //
#define WORKFLASH_AES_KEY_LEN                       16+2    //
#define WORKFLASH_PROGRAMMING_DATE_LEN              16+2    //
#define WORKFLASH_ECU_CV01_SERIAL_NUM_LEN	        64+2	//DUOLA SN

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
    uint8_t u8SystemConfig[WORKFLASH_SYSTEM_CONFIG_LEN]	                            ;
    uint8_t u8FactoryMode[WORKFLASH_FACTORY_MODE_LEN]	                            ;
    uint8_t u8RechargeWakeupTime[WORKFLASH_RECHARGE_WAKEUP_TIME_LEN]	            ;
    uint8_t u8RechargeThreshold[WORKFLASH_RECHARGE_THRESHOLD_LEN]	                ;
    uint8_t u8BackupBatterySleepTime[WORKFLASH_BACKUPBATTERY_SLEEP_TIME_LEN]	    ;
    uint8_t u8AesKey[WORKFLASH_AES_KEY_LEN]	                                        ;
    uint8_t u8ProgrammingDate[WORKFLASH_PROGRAMMING_DATE_LEN]	                    ;
	uint8_t u8REMOTEconfig[WORKFLASH_ECU_EOL_LEN]									;
	uint8_t u8PowerFlag[WORKFLASH_ECU_EOL_LEN]										;
	uint8_t u8CV01_SerialNumber[WORKFLASH_ECU_CV01_SERIAL_NUM_LEN]					;
}vehicleInforParamImportant_t;

//车辆易变信息存储结构体
typedef struct 
{
    uint8_t u8ICCID[32]	                                                     ;   //ICCID
    uint8_t u8IMEI[16]	                                                     ;   //IMEI
    uint8_t u8IMSI[16]	                                                     ;   //IMSI
    uint8_t u8RegisterFlag[8]	                                             ;   //寄存器标记
    uint8_t u8KeyType[8]	                                                 ;   //密钥类型
    uint8_t u8UdsSecurityErrorCount[8]	                                     ;   //诊断认证错误计数
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
}vehicleInforParamVariable_t;

typedef enum
{
    E_PARAMETER_INFO_ECU_PART_NUMBER                 ,
    E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID              ,
    E_PARAMETER_INFO_ECU_HARDWARE_VERSION            ,
    E_PARAMETER_INFO_ECU_SOFTWARE_VERSION            ,
    E_PARAMETER_INFO_SAP_ECU_MASK                    ,
    E_PARAMETER_INFO_ECU_MANUFACTURE_DATE            ,
    E_PARAMETER_INFO_PART_NAME                       ,
    E_PARAMETER_INFO_VIN                             ,
    E_PARAMETER_INFO_ECU_SERIAL_NUMBER               ,
    E_PARAMETER_INFO_ESK_KEY                         ,
    E_PARAMETER_INFO_CAR_MODE_TYPE                   ,
    E_PARAMETER_INFO_SECURITY_VERSION                ,
    E_PARAMETER_INFO_ECU_HARDWARE_NUM                ,
    E_PARAMETER_INFO_ECU_SOFTWARE_NUM                ,
    E_PARAMETER_INFO_ECU_DIAG_SN                     ,
    E_PARAMETER_INFO_ECU_INSTALL_DATE                ,
    E_PARAMETER_INFO_ECU_CODE                        ,
    E_PARAMETER_INFO_NATION_WORK_ADDRESS             ,
    E_PARAMETER_INFO_NATION_WORK_PORT                ,
    E_PARAMETER_INFO_GOVERNMENT_WORK_ADDRESS         ,
    E_PARAMETER_INFO_GOVERNMENT_WORK_PORT            ,
    E_PARAMETER_INFO_ECU_EOL_CONFIG                  ,
    E_PARAMETER_INFO_TBOX_REGISTER_FLAG              ,
    E_PARAMETER_INFO_ICCID                           ,
    E_PARAMETER_INFO_IMEI                            ,
    E_PARAMETER_INFO_IMSI                            ,
    E_PARAMETER_INFO_ECU_POWER_FLAG					 ,
    E_PARAMETER_INFO_ECU_REMOTE_CONFIG      		 ,
    E_PARAMETER_INFO_MCU_RESET_COUNT                 ,
    E_PARAMETER_INFO_APP_SOFT_FINGER_PRINT           ,
    E_PARAMETER_INFO_SUBNET_CONFIG_LIST_SPEED_CAN    ,
    E_PARAMETER_INFO_MCU_APP_SOFTWARE_VERSION        ,
    E_PARAMETER_INFO_TBOX_CALL_NUMBER                ,
    E_PARAMETER_INFO_MCU_APP_SOFTWARE_VERSION_F1C1   ,
    E_PARAMETER_INFO_VIN_hex                         ,
    E_PARAMETER_INFO_DIAG_CAN_REPORT                 ,
    E_PARAMETER_INFO_E_CALL_NUMBER                   ,
    E_PARAMETER_INFO_B_CALL_NUMBER                   ,
    E_PARAMETER_INFO_I_CALL_NUMBER                   ,
    //E_PARAMETER_INFO_PROLINES_CHANNEL_KEY            ,
    //E_PARAMETER_INFO_PHONEKEY_OFFLINE_USETIMES       ,
    //E_PARAMETER_INFO_NFC_CARD_ID                     ,
    //E_PARAMETER_INFO_SEID                            ,
    //E_PARAMETER_INFO_PROLINES_CHANNEL_KEY3           ,
    //E_PARAMETER_INFO_BLE_MAC                         ,
    E_PARAMETER_INFO_SYSTEM_CONFIG                   ,
    E_PARAMETER_INFO_FACTORY_MODE                    ,
    E_PARAMETER_INFO_RECHARGE_WAKEUP_TIME            ,
    E_PARAMETER_INFO_RECHARGE_THRESHOLD              ,
    E_PARAMETER_INFO_BACKUPBATTERY_SLEEP_TIME        ,
    E_PARAMETER_INFO_AES_KEY                         ,
    E_PARAMETER_INFO_OTA_VER_DATE                    ,
    E_PARAMETER_INFO_CV01_SERIAL_NUMBER             ,
}FlashParaId_e;




int16_t WorkFlashVehicleInforRead(FlashParaId_e parameterId,uint8_t *data,uint32_t *dataLength);
int16_t WorkFlashVehicleInforStore(FlashParaId_e parameterId,uint8_t *data,uint32_t dataLength);

int16_t FlashDiagSecurityInfoStore(uint8_t counterId,uint8_t* dataIn);
int16_t FlashDiagSecurityInfoRead(uint8_t counterId,uint8_t* PDataOut);

int16_t FlashDtcStore(const uint8_t *pDataIn,uint32_t lengthIn);
int16_t FlashDtcRead(uint8_t *pBufferIn,uint32_t readLength);

#endif
