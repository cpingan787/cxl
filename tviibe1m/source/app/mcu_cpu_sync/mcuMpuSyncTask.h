



#ifndef _MCU_MPU_SYNC_TASK_H_
#define _MCU_MPU_SYNC_TASK_H_

#include "stdint.h"
#include "parameterStoreManageApp.h"

typedef enum
{
    E_ParamId_ICCID                                   =     0	 , //ICCID
    E_ParamId_IMEI                                    =     1	 , //
    E_ParamId_IMSI                                    =     2	 , //
    E_ParamId_SN                                      =     3	 , //
    E_ParamId_VIN                                     =     4	 , //
    E_ParamId_TSPAddr                                 =     5	 , //
    E_ParamId_TSPPort                                 =     6	 , //
    E_ParamId_GB32960Addr                             =     7	 , //
    E_ParamId_GB329060Port                            =     8	 , //
    E_ParamId_HJ1239Addr                              =     9	 , //重型车排放远程监控计数规范
    E_ParamId_HJ1239Port                              =     10	 , //
    E_ParamId_ECallNumber                             =     11	 , //
    E_ParamId_BCallNumber                             =     12	 , //
    E_ParamId_ICallNumber                             =     13	 , //
    E_ParamId_SW_Version                              =     14	 , //不存flash
    E_ParamId_HW_Version                              =     15	 , //不存flash
    E_ParamId_CustomSW_Version                        =     16	 , //客户版本号
    E_ParamId_CarVersion                              =     17	 , //整车版本号
    E_ParamId_ManufactureData                         =     18	 , //生产日期
    E_ParamId_ParatNumber                             =     19	 , //零部件号
    E_ParamId_SupIdentifier                           =     20	 , //供应商ID
    //E_ParamId_ecallConfigEnable                       =     21	 ,
    //E_ParamId_ecallConfigVoiceConf                    =     22	 ,
    //E_ParamId_ecallConfigMode                         =     23	 ,
    //E_ParamId_ecallConfigProcessinfo                  =     24	 ,
    //E_ParamId_ecallConfigStartTimer                   =     25	 ,
    //E_ParamId_ecallConfigHackTimer                    =     26	 ,
    //E_ParamId_ecallConfigMsdTransmission              =     27	 ,
    //E_ParamId_ecallConfigMoFailRedial                 =     28	 ,
    //E_ParamId_ecallConfigDropRedial                   =     29	 ,
    //E_ParamId_ecallConfigCleardownTimer               =     30	 ,
    //E_ParamId_ecallConfigInitiationTimer              =     31	 ,
    //E_ParamId_ecallConfigNadRegistrationTimer         =     32	 ,
    //E_ParamId_ecallConfigNadUnregistrationTimer       =     33	 ,
    //E_ParamId_ecallConfigSystem                       =     34	 ,
    //E_ParamId_ecallConfigEraGlonassRedialTimer        =     35	 ,
    //E_ParamId_ecallConfigEraGlonassAutoAnswerTimer    =     36	 ,
    //E_ParamId_ecallConfigRedialDurationTimer          =     37	 ,
    //E_ParamId_ecallConfigTestMode                     =     38	 ,
    //E_ParamId_ecallConfigTestNum                      =     39	 ,
    //E_ParamId_BaseEnd                                 =     63	 ,
    //E_ParamId_UserEnd                                 =     255  ,  

    E_PARAMETER_ITEM_NUM_MAX,
}ParameterItemId_e;


#define TBOX_PARAMTER_SYNC_MAP_WRITE_BEGIN()     static int16_t McuParameterWrite(uint8_t parameterItem,uint8_t *parameterData,uint16_t pDataLength)   \
                                          {                                             \
                                            uint32_t itemSize;                          \
                                            itemSize = 0;                               \
                                            uint8_t writeFlag = 1;                      \
                                            switch(parameterItem)                        \
                                            {                                           \
                                                
#define TBOX_PARAMETER_SYNC_WRITE_MAP(syncItem,parameterItem)      case syncItem:                                      \
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
                                              
#define TBOX_PARAMTER_SYNC_MAP_WRITE_END()               default: break;                       \
                                            }                                           \
                                            return 0;                                \
                                          }

#define TBOX_PARAMTER_SYNC_MAP_READ_BEGIN()     static int16_t McuParameterRead(uint8_t parameterItem,uint8_t *parameterData,uint16_t *pDataLength)   \
                                          {                                             \
                                            uint32_t itemSize;                          \
                                            itemSize = 0;                               \
                                            uint8_t writeFlag = 0;                      \
                                            switch(parameterItem)                        \
                                            {                                           \

#define TBOX_PARAMETER_SYNC_READ_MAP(syncItem,parameterItem)      case syncItem:                                      \
                                                {                                                \
                                                    WorkFlashVehicleInforRead(parameterItem,parameterData,&itemSize);       \
                                                }                       \
                                                break;                                          \
                                              
#define TBOX_PARAMTER_SYNC_MAP_READ_END()               default: break;                       \
                                            }                                           \
                                            if(!writeFlag)                                  \
                                            {                                           \
                                                *pDataLength = itemSize;                            \
                                            }                                           \
                                            return 0;                                \
                                          }


TBOX_PARAMTER_SYNC_MAP_WRITE_BEGIN()
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_ICCID           ,E_PARAMETER_INFO_ICCID)
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_IMEI            ,E_PARAMETER_INFO_IMEI )
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_IMSI            ,E_PARAMETER_INFO_IMSI )
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_SN              ,E_PARAMETER_INFO_CV01_SERIAL_NUMBER)
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_VIN             ,E_PARAMETER_INFO_VIN )
    //TBOX_PARAMETER_SYNWRITE_C_MAP(E_ParamId_TSPAddr         , )
    //TBOX_PARAMETER_SYNWRITE_C_MAP(E_ParamId_TSPPort         , )
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_GB32960Addr     ,E_PARAMETER_INFO_NATION_WORK_ADDRESS )
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_GB329060Port    ,E_PARAMETER_INFO_NATION_WORK_PORT )
    //TBOX_PARAMETER_SYNWRITE_C_MAP(E_ParamId_HJ1239Addr      , )
    //TBOX_PARAMETER_SYNWRITE_C_MAP(E_ParamId_HJ1239Port      , )
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_ECallNumber     ,E_PARAMETER_INFO_E_CALL_NUMBER )
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_BCallNumber     ,E_PARAMETER_INFO_B_CALL_NUMBER )
    TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_ICallNumber     ,E_PARAMETER_INFO_I_CALL_NUMBER )
    //TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_SW_Version      ,E_PARAMETER_INFO_ECU_SOFTWARE_NUM )
    //TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_HW_Version      ,E_PARAMETER_INFO_ECU_HARDWARE_NUM )
    //TBOX_PARAMETER_SYNWRITE_C_MAP(E_ParamId_CustomSW_Version, )
    //TBOX_PARAMETER_SYNWRITE_C_MAP(E_ParamId_CarVersion      , )
    //TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_ManufactureData ,E_PARAMETER_INFO_ECU_SERIAL_NUMBER )
    //TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_ParatNumber     ,E_PARAMETER_INFO_ECU_PART_NUMBER )
    //TBOX_PARAMETER_SYNC_WRITE_MAP(E_ParamId_SupIdentifier   ,E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID )    
TBOX_PARAMTER_SYNC_MAP_WRITE_END()

TBOX_PARAMTER_SYNC_MAP_READ_BEGIN()
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_ICCID           ,E_PARAMETER_INFO_ICCID)
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_IMEI            ,E_PARAMETER_INFO_IMEI )
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_IMSI            ,E_PARAMETER_INFO_IMSI )
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_SN              ,E_PARAMETER_INFO_CV01_SERIAL_NUMBER)
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_VIN             ,E_PARAMETER_INFO_VIN )
    //TBOX_PARAMETER_SYNREAD_C_MAP(E_ParamId_TSPAddr         , )
    //TBOX_PARAMETER_SYNREAD_C_MAP(E_ParamId_TSPPort         , )
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_GB32960Addr     ,E_PARAMETER_INFO_NATION_WORK_ADDRESS )
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_GB329060Port    ,E_PARAMETER_INFO_NATION_WORK_PORT )
    //TBOX_PARAMETER_SYNREAD_C_MAP(E_ParamId_HJ1239Addr      , )
    //TBOX_PARAMETER_SYNREAD_C_MAP(E_ParamId_HJ1239Port      , )
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_ECallNumber     ,E_PARAMETER_INFO_E_CALL_NUMBER )
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_BCallNumber     ,E_PARAMETER_INFO_B_CALL_NUMBER )
    TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_ICallNumber     ,E_PARAMETER_INFO_I_CALL_NUMBER )
    //TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_SW_Version      ,E_PARAMETER_INFO_ECU_SOFTWARE_NUM )
    //TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_HW_Version      ,E_PARAMETER_INFO_ECU_HARDWARE_NUM )
    //TBOX_PARAMETER_SYNREAD_C_MAP(E_ParamId_CustomSW_Version, )
    //TBOX_PARAMETER_SYNREAD_C_MAP(E_ParamId_CarVersion      , )
    //TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_ManufactureData ,E_PARAMETER_INFO_ECU_SERIAL_NUMBER )
    //TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_ParatNumber     ,E_PARAMETER_INFO_ECU_PART_NUMBER )
    //TBOX_PARAMETER_SYNC_READ_MAP(E_ParamId_SupIdentifier   ,E_PARAMETER_INFO_SYSTEM_SUPPLIER_ID )    
TBOX_PARAMTER_SYNC_MAP_READ_END()

void mcuMpuSyncTaskMain(void *pvParameters);

#endif
