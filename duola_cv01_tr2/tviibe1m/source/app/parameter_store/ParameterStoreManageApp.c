#include <string.h>
#include "stdlib.h"
#include "flashHal.h"
#include "ParameterStoreManageApp.h"
/*
#define TBOX_PARAMTER_SYNC_MAP_WRITE_BEGIN()     static    int16_t McuParameterReadAndWrite(uint8_t parameterItem,uint8_t *parameterData,uint16_t pDataLength)   \
                                          {                                             \
                                            uint32_t itemSize;                          \
                                            itemSize = 0;                               \
                                            uint8_t writeFlag = 1;                      \
                                            switch(parameterItem)                        \
                                            {                                           \

#define TBOX_PARAMTER_SYNC_MAP_READ_BEGIN()     static    int16_t McuParameterReadAndWrite(uint8_t parameterItem,uint8_t *parameterData,uint16_t *pDataLength)   \
                                          {                                             \
                                            uint32_t itemSize;                          \
                                            itemSize = 0;                               \
                                            uint8_t writeFlag = 0;                      \
                                            switch(parameterItem)                        \
                                            {                                           \

#define TBOX_PARAMETER_SYNC_MAP(syncItem,parameterItem)      case syncItem:                                      \
                                                {                                                \
                                                  if(writeFlag)               \
                                                  {   \
                                                    WorkFlashVehicleInforStore(parameterItem,parameterData,pDataLength);   \
                                                  }                                                \
                                                  else  \
                                                  {     \
                                                    WorkFlashVehicleInforRead(parameterItem,parameterData,&itemSize);       \
                                                  }     \
                                                }                       \
                                                break;                                          \
                                              
#define TBOX_PARAMTER_SYNC_MAP_END()               default: break;                       \
                                            }                                           \
                                            if(!writeFlag)                                  \
                                            {                                           \
                                                *pDataLength = itemSize;                            \
                                            }                                           \
                                            return 0;                                \
                                          }

*/


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
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_POWER_FLAG,u8PowerFlag,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_ECU_REMOTE_CONFIG,u8REMOTEconfig,1)
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
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_SYSTEM_CONFIG,u8SystemConfig,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_FACTORY_MODE,u8FactoryMode,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_RECHARGE_WAKEUP_TIME,u8RechargeWakeupTime,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_RECHARGE_THRESHOLD,u8RechargeThreshold,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_BACKUPBATTERY_SLEEP_TIME,u8BackupBatterySleepTime,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_AES_KEY,u8AesKey,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_OTA_VER_DATE,u8ProgrammingDate,1)
    TBOX_PARAMETER_MAP(E_PARAMETER_INFO_CV01_SERIAL_NUMBER,u8CV01_SerialNumber,1)

TBOX_PARAMTER_MAP_END()


static int16_t ByteArrayCompare(uint8_t *pData1,uint8_t *pData2,uint16_t length)
{
  uint16_t i;
  int16_t ret;
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
    uint8_t tem[64];
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

int16_t FlashDiagSecurityInfoStore(uint8_t counterId,uint8_t *dataIn)
{
    //uint8_t data[5] = {0};
    int16_t ret = 0;
    //ret = FlashHalSmallDataBlockRead(WORKFLASH_ADDRESS_SECURITY,0,data,3);
    //if(ret != 0)
    //{
    //    return ret;
    //}
    //if(data[counterId] != dataIn)
    //{
        ret = FlashHalSmallDataBlockWrite(WORKFLASH_ADDRESS_SECURITY,0,dataIn,3);
        if(ret != 0)
        {
            return ret;
        }
    //}
    return 0;
}

int16_t FlashDiagSecurityInfoRead(uint8_t counterId,uint8_t* PDataOut)
{
    //uint8_t data[5] = {0};
    int16_t ret = 0;
    ret = FlashHalSmallDataBlockRead(WORKFLASH_ADDRESS_SECURITY,0,PDataOut,3);
    if(ret != 0)
    {
        return ret;
    }
    //*PDataOut = data[counterId];
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






