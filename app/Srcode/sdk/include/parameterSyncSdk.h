/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: parameterSyncSdk.h
 Author: 
 Created Time: 
 Description:
 Others:
*************************************************/
#ifndef _PARAMETER_SYNC_SDK_H_
#define _PARAMETER_SYNC_SDK_H_

/****************************** include ***************************************/

#include "stdint.h"
#include "mpuHal.h"

/****************************** Type Definitions ******************************/
typedef enum
{
    E_PARAMID_ICCID                                   =     0	 ,
    E_PARAMID_IMEI                                    =     1	 ,
    E_PARAMID_IMSI                                    =     2	 ,
    E_PARAMID_SN                                      =     3	 ,
    E_PARAMID_VIN                                     =     4	 ,
    E_PARAMID_TSPAddr                                 =     5	 ,
    E_PARAMID_TSPPort                                 =     6	 ,
    E_PARAMID_GB32960Addr                             =     7	 ,
    E_PARAMID_GB329060Port                            =     8	 ,
    E_PARAMID_HJ1239Addr                              =     9	 ,
    E_PARAMID_HJ1239Port                              =     10	 ,
    E_PARAMID_ECallNumber                             =     11	 ,
    E_PARAMID_BCallNumber                             =     12	 ,
    E_PARAMID_ICallNumber                             =     13	 ,
    E_PARAMID_SW_Version                              =     14	 ,
    E_PARAMID_HW_Version                              =     15	 ,
    E_PARAMID_CustomSW_Version                        =     16	 ,
    E_PARAMID_CarVersion                              =     17	 ,
    E_PARAMID_ManufactureData                         =     18	 ,
    E_PARAMID_ParatNumber                             =     19	 ,
    E_PARAMID_SupIdentifier                           =     20	 ,

    E_PARAMETER_ITEM_NUM_MAX,
}ParameterItemId_e;

/*************************************************
  Function:       pMcuParametFun_t
  Description:    参数读写回调函数定义
  Input:          parameterItem：参数ID,用来调用接口的时候识别对应的参数
                  parameterData：参数数据
                  pDataLength：参数数据长度
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
typedef  int16_t (*pMcuParametReadFun_t)(uint8_t parameterItem,uint8_t *parameterData,uint16_t *pDataLength);

/*************************************************
  Function:       pMcuParametFun_t
  Description:    参数读写回调函数定义
  Input:          parameterItem：参数ID,用来调用接口的时候识别对应的参数
                  parameterData：参数数据
                  pDataLength：参数数据长度
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
typedef  int16_t (*pMcuParametWriteFun_t)(uint8_t parameterItem,uint8_t *parameterData,uint16_t pDataLength);

/****************************** Function Declarations *************************/
/*************************************************
  Function:       ParameterSyncSdkInit
  Description:    参数同步模块初始化接口
  Input:          mpuHandle ：mpu通信句柄
                  mcuParamReadCb：读取参数接口回调函数
                  mcuParamWriteCb：写入参数接口回调函数
                  cycleTime：周期调用接口调用周期，单位ms，>0
                  syncParamList:参数ID列表
                  syncParamSize：参数列表大小
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:
*************************************************/
int16_t ParameterSyncSdkInit(int16_t mpuHandle,pMcuParametReadFun_t mcuParamReadCb,pMcuParametWriteFun_t mcuParamWriteCb,uint16_t cycleTime,uint8_t *syncParamList,uint8_t syncParamSize);

/*************************************************
  Function:       ParameterSyncSdkCycleProcess
  Description:    参数同步模块周期调用接口
  Input:          recvDataPack：接收到的mpu参数同步请求响应数据包，未收到传入NULL
  Output:         无
  Return:         无
  Others:         
*************************************************/
void ParameterSyncSdkCycleProcess(MpuHalDataPack_t  *recvDataPack);

/*************************************************
  Function:       ParameterSyncSdkSetToCpu
  Description:    同步参数至MPU
  Input:          parameterId：需要同步至MPU的参数ID
                  pData:参数数据
                  length：参数数据长度
  Output:         无
  Return:         0：成功
                  -1：失败
  Others:         
*************************************************/
int16_t ParameterSyncSdkSetToCpu(uint8_t parameterId,uint8_t *pData,uint16_t length);

/*************************************************
  Function:       SyncParameterSdkGetFromCpuIsFinished
  Description:    获取参数同步的结果
  Input:          无
  Output:         无
  Return:         0：同步成功
                  -1：同步未成功
  Others:         
*************************************************/
int16_t ParameterSyncSdkGetFromCpuIsFinished(void);

/*************************************************
 Function: McuParameterWrite
 Description: Write the parameter data to flash
 Input: parameterItem - the parameter item to write
        parameterData - the pointer to the parameter data
        pDataLength - the length of the parameter data
 Output: void
 Return: 0 - success
        -1 - invalid parameter item or parameterData is NULL
        -2 - invalid flash parameter id
        -3 - work flash vehicle infor store failed
 Others:
*************************************************/
int16_t McuParameterWrite(uint8_t parameterItem, uint8_t *parameterData, uint16_t pDataLength);

/*************************************************
 Function: McuParameterRead
 Description: Read the parameter data from flash
 Input: parameterItem - the parameter item to read
        parameterData - the pointer to store the parameter data
        pDataLength - the pointer to store the length of the parameter data
 Output: void
 Return: 0 - success
        -1 - invalid parameter item or parameterData is NULL
        -2 - invalid flash parameter id
        -3 - work flash vehicle infor read failed
 Others:
*************************************************/
int16_t McuParameterRead(uint8_t parameterItem, uint8_t *parameterData, uint16_t *pDataLength);

/*************************************************
 Function: IsFlashDataValid
 Description: 检测本地flash数据是否有效，用于检测FLASH中读出的数据是否为全0或全FF  
 Input: data - 数据指针
        len - 数据长度
 Output: void
 Return: 0 - 全0/全FF
         1 - 数据有效
 Others:
*************************************************/
uint8_t IsFlashDataValid(uint8_t *data, uint16_t len);
#endif
