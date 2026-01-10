/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name:       hsmHal.h
 Author:          lei.wang
 Created Time:    2024
 Description:     AES （ecb） encryption and decryption
 Others:          none
*************************************************/
#ifndef _HSM_HAL_H_
#define _HSM_HAL_H_

/****************************** include ***************************************/
#include "stdint.h"

/****************************** Macro Definitions ******************************/
#define HSM_HAL_STATUS_OK     0       //成功
#define HSM_HAL_STATUS_ERR    -1      //失败

/****************************** Type Definitions ******************************/
typedef struct
{
    uint32_t Ek[44];
    uint32_t Dk[44];
}HsmHalAes_t;

/****************************** Global Variables ******************************/
/****************************** Function Declarations *************************/
/*************************************************
  Function:       HsmHalInit
  Description:    HSM接口模块初始化
  Input:          无
  Output:         无
  Return:         无
  Others:         
*************************************************/
void HsmHalInit(void);

/*************************************************
  Function:       HsmHalAesEcbInit
  Description:    Aes ecb 计算初始化
  Input:          pAesData ：Aes计算对象
  Output:         无
  Return:         成功：FLASH_HAL_STATUS_OK
                  失败：FLASH_HAL_STATUS_ERR
  Others:         
*************************************************/
void HsmHalAesEcbInit(HsmHalAes_t *pAesData);

/*************************************************
  Function:       HsmHalAesEcbEncrypt
  Description:    Aes ecb 加密
  Input:          pKey ：Aes秘钥
                  lengthType：加密长度
                  pSrc：要加密的数据
                  srcSize:数据长度
  Output:         pDest：结果目标块地址
  Return:         成功：HSM_HAL_STATUS_OK
                  失败：HSM_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t HsmHalAesEcbEncrypt(const uint8_t *pKey,uint8_t lengthType,const uint8_t *pSrc,uint16_t srcSize,uint8_t *pDest);

/*************************************************
  Function:       HsmHalAesEcbDecrypt
  Description:    Aes ecb解密
  Input:          pKey ：Aes秘钥
                  lengthType：加密长度
                  pSrc：要解密的数据
                  srcSize:数据长度
  Output:         pDest：解密结果数据
  Return:         成功：HSM_HAL_STATUS_OK
                  失败：HSM_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t HsmHalAesEcbDecrypt(const uint8_t *pKey,uint8_t lengthType,const uint8_t *pSrc,uint16_t srcSize,uint8_t *pDest);

/*************************************************
  Function:       HsmHalAesCmacInit
  Description:    Cmac数据初始化
  Input:          pAesData：Aes计算对象
  Output:         执行结果
  Return:         无
  Others:         
*************************************************/
void HsmHalAesCmacInit(HsmHalAes_t *pAesData);

/*************************************************
  Function:       HsmHalAesCmacEncrypt
  Description:    计算cmac值
  Input:          pKey ：Aes秘钥
                  lengthType：加密长度
                  pSrc：要加密的数据
                  srcSize：要加密数据长度
  Output:         pDest：加密结果数据
  Return:         成功：HSM_HAL_STATUS_OK
                  失败：HSM_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t HsmHalAesCmacEncrypt(const uint8_t *pKey,uint8_t lengthType,uint8_t *pSrc,uint32_t srcSize,uint8_t *pDest);

/*************************************************
  Function:       HsmHalAesGetRandomData
  Description:    获取随机数
  Input:          无
  Output:         pRandomData ：生成的随机数
  Return:         无
  Others:         
*************************************************/
void HsmHalAesGetRandomData(uint32_t *pRandomData);


void HsmHalTestMain(void);

#endif
