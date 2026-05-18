/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss_Cfg.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef _VSS_CFG_H
#define _VSS_CFG_H
/****************************** include ***************************************/
#include "Vss.h"

/****************************** Macro Definitions ******************************/

/****************************** Type Definitions ******************************/
/****************************** Function Declarations *************************/
/*************************************************
 Function: Vss_InitConfig
 Description: VSS模块初始化配置
 Input: VssConfig_flashFunc - FLASH读写回调
        VssConfig_WdtFeed - 看门狗喂狗回调
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t Vss_InitConfig(void);

/*************************************************
  Function:       VssConfig_flashFunc
  Description:    配置项FLASH读写函数
  Input:          itemType - 配置项类型
                  rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_flashFunc(VssItemType_e itemType, VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_WdtFeed
  Description:    看门狗喂狗函数
  Input:          None
  Return:         None
*************************************************/
static void VssConfig_WdtFeed(void);

/*************************************************
  Function:       VssConfig_VSNRw
  Description:    VSN读写
  Input:          rwflag   - 读写标志
                  keyId    - 仅填0
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_VSNRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_VSNActiveRw
  Description:    VSN激活标志位读写
  Input:          rwflag   - 读写标志
                  keyId    - 仅填0
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_VSNActiveRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_SM4CmacKeyByindex
  Description:    SM4CMAC密钥配置项按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_SM4CmacKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_SM4CmacKeyActiveByindex
  Description:    SM4CMAC密钥激活标志按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_SM4CmacKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_AESKeyByindex
  Description:    AES密钥配置项按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_AESKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_AESKeyActiveByindex
  Description:    AES密钥激活标志按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_AESKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_SM2KeyActiveByindex
  Description:    SM2密钥激活标志按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_SM2KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/*************************************************
  Function:       VssConfig_Ecc256KeyByindex
  Description:    ECC256密钥配置项按索引读写
  Input:          rwflag   - 读写标志
                  keyId    - 密钥ID
                  pData    - 数据缓冲区
                  pLength  - 数据长度
  Return:         0-成功, 其他-失败
*************************************************/
static uint32_t VssConfig_Ecc256KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);


#endif
