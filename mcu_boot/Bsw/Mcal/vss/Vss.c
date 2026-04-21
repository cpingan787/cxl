/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss.c
 Author: CaoLiang
 Created Time: 2026-03-31
 Description: 车辆安全服务（VSS）模块核心实现，包含密码算法、密钥管理、校验和计算等功能
 Others: 实现了SM2、SM3、SM4、SHA256、ECC256等密码算法的封装
*************************************************/
/****************************** include ***************************************/
#include "Vss.h"
#include "logHal.h"

/****************************** Macro Definitions ******************************/
#define VSS_KEY_CTX_SIZE_MAX     256    // 密钥上下文最大尺寸
#define VSS_VSN_SIZE             32     // 车辆安全码（VSN）长度

/****************************** Type Definitions ******************************/
/**
 * @brief VSS模块状态枚举
 * @details 定义VSS模块的初始化状态
 */
typedef enum
{
    VSS_UNINIT = 0,    // 未初始化状态
    VSS_INIT   = 1     // 已初始化状态
} Vss_State_t;

/**
 * @brief VSS模块全局上下文结构体
 * @details 存储VSS模块的状态、配置和密钥信息
 */
static struct
{
    Vss_State_t state;                           // VSS模块状态
    uint8_t vsn[VSS_VSN_SIZE];                  // 车辆安全码（VSN）
    uint8_t vsnActiveFlg;                       // VSN激活标志
    uint8_t algFlg;                             // 算法标识（国密/国际）
    uint8_t sm4Key[VSS_SM4_KEY_MAX][VSS_CONFIG_SM4CMAC_KEY_LEN];  // SM4密钥数组
    uint8_t sm4KeyActiveFlg[VSS_SM4_KEY_MAX];   // SM4密钥激活标志
    uint8_t sm2Key[VSS_CONFIG_SM2_KEY_LEN];     // SM2密钥
    uint8_t ecc256Key[VSS_CONFIG_ECC256_KEY_LEN]; // ECC256密钥
    VssflashFunc* flashCb;                      // Flash读写回调函数
    VssWdtFeedFunc* wdtCb;                      // 看门狗喂狗回调函数
} gVssCtx;

/****************************** Global Variables ******************************/

/****************************** Function Declarations *************************/
/**
 * @brief 根据密钥ID获取密钥
 * @details 从Flash中读取指定ID和类型的密钥
 * @param keyId 密钥索引
 * @param vssitem 密钥类型
 * @param pkey 密钥存储指针
 * @param keyLen 密钥长度
 * @return 0-成功, 其他-失败
 */
static uint32_t VssGetKeyByKeyId(uint32_t keyId, VssItemType_e vssitem, uint8_t* pkey, uint32_t keyLen);

/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: VssCryptoInit
 Description: 算法库初始化（MCU软算法版本）。注册回调并初始化底层软算法库适配层。
 Input:  flashCb FLASH密钥存储区域读写回调
         wdtCb   看门狗喂狗回调
 Output: None
 Return: 0x00-成功
         0x18-算法不支持（type非0）
         其他-由适配层返回
 Others:
*************************************************/
uint32_t VssCryptoInit(VssflashFunc* flashCb, VssWdtFeedFunc* wdtCb)
{
    uint32_t ret = VSS_RET_SUCCESS;

    // 初始化底层软算法库适配层
    ret = VssAdapter_InitSoft();
    if (ret != VSS_RET_SUCCESS)
    {
        return ret; // 初始化失败，直接返回错误码
    }

    // 更新VSS模块状态为已初始化
    gVssCtx.state   = VSS_INIT;
    // 注册Flash读写回调函数
    gVssCtx.flashCb = flashCb;
    // 注册看门狗喂狗回调函数
    gVssCtx.wdtCb   = wdtCb;

    // 初始化VSN激活标志，默认为0（未激活）
    ret = gVssCtx.flashCb(VSS_ITEM_VSN_ACTIVE, VSS_FLASH_Write, VSS_VSN_0, &gVssCtx.vsnActiveFlg, VSS_CONFIG_KEY_VALID_LEN);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSecocCmacGen
 Description: 生成SECOC CMAC
 Input:  inData  输入数据
         inLen   输入数据长度
 Output: out16   输出的CMAC(16字节)
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSecocCmacGen(uint8_t* inData, uint32_t inLen, uint8_t* out16)
{
    uint32_t ret = VSS_RET_SUCCESS;
    uint8_t keyValid = 0;

#if 0
    /* 获取VSN是否已写入 */
    ret = VssGetKeyActive(VSS_ITEM_VSN_ACTIVE, VSS_VSN_0, &keyValid);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret;
    }

    if (keyValid == 0)
    {
        // 电控单元车辆安全码未写入, 同步报文及安全报文无法发出
        return VSS_ERR_KEY_INVALID;
    }

    ret = VssGetKeyActive(VSS_ITEM_SM4_KEY_ACTIVE, VSS_SECOC_KEY, &keyValid);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_FLASH_RW_FAILED;
    }

    ret = VssGetAlgFlag(&gVssCtx.algFlg);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret;
    }

    /* 通讯密钥未使能 */
    if (keyValid == 0)
    {
        // 使用默认密钥进行CMAC计算
        uint8_t defaultKey[VSS_CONFIG_SM4CMAC_KEY_LEN] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10};
        if (gVssCtx.algFlg == VSS_ALG_TYPE_NATIONAL_CRYP)
        {
            ret = VssAdapter_Sm4CMac(defaultKey, inData, inLen, out16);
        }
    } else {
        // 使用激活的SECOC密钥进行CMAC计算
        if (gVssCtx.algFlg == VSS_ALG_TYPE_NATIONAL_CRYP)
        {
            ret = VssSM4CMacByKeyId(VSS_SECOC_KEY, inData, inLen, out16);
        }
    }
#else
    // 当前版本直接使用默认密钥进行CMAC计算
    uint8_t defaultKey[VSS_CONFIG_SM4CMAC_KEY_LEN] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10};
    ret = VssAdapter_Sm4CMac(defaultKey, inData, inLen, out16);
#endif

    return ret;
}

/*************************************************
 Function: VssGenerateKeyByCode
 Description: 根据VSN产生密钥
 Input:  len              VSN长度（固定32）
         vsn              VSN数据（32字节）
         keyId            密钥ID
         AutoSetWroteFlag 是否自动写wroteFlag（0/1）
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGenerateKeyByCode(uint32_t len, uint8_t* vsn, uint8_t keyId, uint8_t AutoSetWroteFlag)
{
    // 检查VSS模块是否已初始化
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED; // 未初始化错误
    }
    
    // 检查参数有效性
    if ((vsn == NULL) || (len != VSS_VSN_SIZE) || (AutoSetWroteFlag > 1u))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    /* 待大众提供派生算法，当前采用直接使用密钥方案 */
    // 后续将根据大众提供的派生算法实现从VSN到密钥的转换

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssGetAlgFlag
 Description: 根据输入的VSN的最后一位来判断国密/国际算法标识，本接口返回算法标识
              如果VSN未输入，则返回”2-国密算法”
 Input:   None
 Output:  nAlgFlag[out]    --算法标识: 1-国际算法；2-国密算法
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGetAlgFlag(uint8_t* nAlgFlag)
{
    uint32_t ret = VSS_RET_SUCCESS;
    uint8_t keyValid = 0;
    uint8_t vsnFlag = 0;
    uint8_t vsn[VSS_VSN_SIZE];

    // 检查输出参数是否为空
    if (nAlgFlag == NULL)
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    /* 获取VSN是否已写入 */
    ret = VssGetKeyActive(VSS_ITEM_VSN_ACTIVE, VSS_VSN_0, &keyValid);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret; // 获取VSN激活状态失败
    }

    // 如果VSN未激活，默认返回国密算法
    if (keyValid == 0)
    {
        *nAlgFlag = VSS_ALG_TYPE_NATIONAL_CRYP; // 国密算法
        return VSS_RET_SUCCESS;
    }

    // 读取VSN数据
    ret = VssGetVSN(vsn, VSS_VSN_SIZE);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret; // 读取VSN失败
    }

    // 根据VSN最后一位的最低位判断算法类型
    vsnFlag = vsn[VSS_VSN_SIZE - 1] & 1;
    if (vsnFlag == 0)
    {
        *nAlgFlag = VSS_ALG_TYPE_NATIONAL_CRYP; // 国密算法
    } 
    else if (vsnFlag == 1)
    {
        *nAlgFlag = VSS_ALG_TYPE_INTERNATIONAL_CRYP; // 国际算法
    } else {
        ret = VSS_ERR_DATA_INVALID; // 数据无效错误
    }

    return ret;
}

/*************************************************
 Function: VssSetKeyActive
 Description: 修改密钥激活属性
 Input:  vssitem  VSS密钥类型
         keyId  密钥ID
         valid  0-不可用；1-可用
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t valid)
{
    uint32_t ret = VSS_RET_SUCCESS;

    // 检查VSS模块是否已初始化
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED; // 未初始化错误
    }
    
    // 检查参数有效性
    if ((gVssCtx.flashCb == NULL) || (vssitem >= VSS_ITEM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 处理VSN激活标志
    if (vssitem == VSS_ITEM_VSN_ACTIVE)
    {
        // 检查keyId是否有效
        if (keyId >= VSS_VSN_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
        }
        
        // 只有当标志值发生变化时才写入Flash
        if (gVssCtx.vsnActiveFlg != valid)
        {
            gVssCtx.vsnActiveFlg = valid; // 更新内存中的标志
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Write, keyId, &gVssCtx.vsnActiveFlg, VSS_CONFIG_KEY_VALID_LEN); // 写入Flash
        }
    }
    // 处理SM4密钥激活标志
    else if (vssitem == VSS_ITEM_SM4_KEY_ACTIVE)
    {
        // 检查keyId是否有效
        if (keyId >= VSS_SM4_KEY_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
        }
        
        // 只有当标志值发生变化时才写入Flash
        if (gVssCtx.sm4KeyActiveFlg[keyId] != valid)
        {
            gVssCtx.sm4KeyActiveFlg[keyId] = valid; // 更新内存中的标志
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Write, keyId, &gVssCtx.sm4KeyActiveFlg[keyId], VSS_CONFIG_KEY_VALID_LEN); // 写入Flash
        }
    } else;

    return ret;
}

/*************************************************
 Function: VssGetKeyActive
 Description: 查询密钥激活属性
 Input:  vssitem  VSS密钥类型
         keyId  密钥ID
 Output: valid  0-不可用；1-可用
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t* valid)
{
    uint32_t ret = VSS_RET_SUCCESS;

    // 检查VSS模块是否已初始化
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED; // 未初始化错误
    }
    
    // 检查参数有效性
    if ((gVssCtx.flashCb == NULL) || (valid == NULL) || (vssitem >= VSS_ITEM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 处理VSN激活标志查询
    if (vssitem == VSS_ITEM_VSN_ACTIVE)
    {
        // 检查keyId是否有效
        if (keyId >= VSS_VSN_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
        }
        
        // 从Flash读取VSN激活标志
        ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.vsnActiveFlg, VSS_CONFIG_KEY_VALID_LEN);
        if (ret != VSS_RET_SUCCESS)
        {
            return VSS_ERR_FLASH_RW_FAILED; // Flash读写失败
        }
        *valid = gVssCtx.vsnActiveFlg; // 返回激活状态
    }
    // 处理SM4密钥激活标志查询
    else if (vssitem == VSS_ITEM_SM4_KEY_ACTIVE)
    {
        // 检查keyId是否有效
        if (keyId >= VSS_SM4_KEY_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
        }
        
        // 从Flash读取SM4密钥激活标志
        if (gVssCtx.sm4KeyActiveFlg[keyId] != valid)
        {
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.sm4KeyActiveFlg[keyId], VSS_CONFIG_KEY_VALID_LEN);
            if (ret != VSS_RET_SUCCESS)
            {
                return VSS_ERR_FLASH_RW_FAILED; // Flash读写失败
            }
            *valid = gVssCtx.sm4KeyActiveFlg[keyId]; // 返回激活状态
        }
    } else;

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSetVSN
 Description: 设置VSN
 Input:  vsn: vsn数据
         inLen: vsn输入的长度
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSetVSN(uint8_t* vsn, uint32_t inLen)
{
    uint32_t ret = VSS_RET_SUCCESS;

    // 检查VSS模块是否已初始化
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED; // 未初始化错误
    }
    
    // 检查参数有效性
    if ((gVssCtx.flashCb == NULL) || (vsn == NULL) || (inLen != VSS_VSN_SIZE))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    /* 若vsn与历史值一致，则不进行写入 */
    if (memcmp(gVssCtx.vsn, vsn, inLen) != 0)
    {
        memcpy(gVssCtx.vsn, vsn, inLen); // 更新内存中的VSN
        ret = gVssCtx.flashCb(VSS_ITEM_VSN, VSS_FLASH_Write, VSS_VSN_0, gVssCtx.vsn, VSS_VSN_SIZE); // 写入Flash
    }

    return ret;
}

/*************************************************
 Function: VssGetVSN
 Description: 查询VSN
 Input:  inLen: vsn输入的长度
 Output: vsn: vsn数据
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGetVSN(uint8_t* vsn, uint32_t inLen)
{
    uint32_t ret = VSS_RET_SUCCESS;

    // 检查VSS模块是否已初始化
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED; // 未初始化错误
    }
    
    // 检查参数有效性
    if ((gVssCtx.flashCb == NULL) || (vsn == NULL) || (inLen != VSS_VSN_SIZE))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 从Flash读取VSN数据
    ret = gVssCtx.flashCb(VSS_ITEM_VSN, VSS_FLASH_Read, VSS_VSN_0, gVssCtx.vsn, VSS_VSN_SIZE);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_FLASH_RW_FAILED; // Flash读写失败
    }
    
    // 将读取的VSN数据复制到输出缓冲区
    memcpy(vsn, gVssCtx.vsn, VSS_VSN_SIZE);

    return ret;
}

/*************************************************
 Function: VssSM4CalcByKeyId
 Description: SM4加解密
 Input:  keyId   密钥索引
         inData  输入数据
         inLen   输入数据长度
         calcFlag 0: 解密 (Decrypt), 1: 加密 (Encrypt)
 Output: outData  输出的数据
         pOutLen  输出的数据长度
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM4CalcByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData, uint32_t* pOutLen)
{
    uint32_t ret = VSS_RET_SUCCESS;
    uint8_t pkey[VSS_CONFIG_SM4CMAC_KEY_LEN] = {0};

    // 检查VSS模块是否已初始化
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED; // 未初始化错误
    }

    // 检查参数有效性
    if ((calcFlag >= VSS_CRYPT_TYPE_MAX) || (keyId > VSS_CONFIG_KEY_NUM_MAX) || (inData == NULL) || (outData == NULL) || (pOutLen == NULL) || (inLen == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 根据密钥ID获取SM4密钥
    VssGetKeyByKeyId(keyId, VSS_ITEM_SM4_KEY, pkey, VSS_CONFIG_SM4CMAC_KEY_LEN);

    if (calcFlag == VSS_ENCRYPT) // 加密逻辑
    {
        /* 1. 执行 PKCS7 填充逻辑，计算填充后的长度(确认填充策略) */
        uint8_t pad_len = 16 - (inLen % 16); // 计算需要填充的字节数
        uint32_t total_len = inLen + pad_len; // 计算填充后的总长度
        
        // 复制原始数据到输出缓冲区
        memcpy(outData, inData, inLen);
        
        // 执行PKCS7填充，填充值等于填充字节数
        for (uint32_t i = 0; i < pad_len; i++) {
            outData[inLen + i] = pad_len; // 填充值等于填充字节数
        }
        
        /* 2. 调用底层驱动进行分组加密 */
        ret = VssAdapter_Sm4Calc(pkey, outData, total_len, VSS_ENCRYPT, outData);
        if (ret != VSS_RET_SUCCESS)
        {
            return ret; // 加密失败
        }
        
        // 设置输出长度为填充后的长度
        *pOutLen = total_len;
    } else { // 解密逻辑
        // 检查输入数据长度是否为16的倍数（SM4算法要求）
        if (inLen % 16 != 0) {
            return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
        }
        
        // 调用底层驱动进行解密
        ret = VssAdapter_Sm4Calc(pkey, inData, inLen, VSS_DECRYPT, outData);
        if (ret != VSS_RET_SUCCESS)
        {
            return ret; // 解密失败
        }
        
        /* 3. 解析并剔除 PKCS7 填充 */
        uint8_t last_byte = outData[inLen - 1]; // 获取最后一个字节（填充值）
        
        // PKCS7 填充值合法范围是 1 到 16
        if (last_byte >= 1 && last_byte <= 16) {
            // 安全校验：末尾的 last_byte 个字节必须全部等于 last_byte
            uint8_t is_valid_padding = 1;
            for (uint8_t i = 0; i < last_byte; i++) {
                if (outData[inLen - 1 - i] != last_byte) {
                    is_valid_padding = 0;
                    break;
                }
            }

            if (is_valid_padding) {
                *pOutLen = inLen - last_byte; // 剔除填充，返回原始长度
            } else {
                // 如果末尾不符合填充规则，可能数据未填充或密钥错误
                *pOutLen = inLen; 
            }
        } else {
            // 最后一个字节不在1-16范围内，说明数据没有填充
            *pOutLen = inLen;
        }
    }

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSM4CMacByKeyId
 Description: SM4 CMAC计算
 Input:  keyId   密钥索引
         inData  输入数据
         inLen   输入数据长度
 Output: outData 输出的CMAC(16字节)
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM4CMacByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, uint8_t* outData)
{
    uint32_t ret = VSS_RET_SUCCESS;
    uint8_t pkey[VSS_CONFIG_SM4CMAC_KEY_LEN] = {0};

    // 检查VSS模块是否已初始化
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED; // 未初始化错误
    }

    // 检查参数有效性
    if ((keyId > VSS_CONFIG_KEY_NUM_MAX) || (inData == NULL) || (outData == NULL) || (inLen == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 根据密钥ID获取SM4密钥
    VssGetKeyByKeyId(keyId, VSS_ITEM_SM4_KEY, pkey, VSS_CONFIG_SM4CMAC_KEY_LEN);

    // 调用适配层计算SM4 CMAC
    ret = VssAdapter_Sm4CMac(pkey, inData, inLen, outData);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret; // CMAC计算失败
    }
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSM3Init
 Description: SM3初始化
 Input:  ctx  SM3上下文指针
 Output: ctx  初始化后的SM3上下文
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM3Init(SM3_CTX_USER* ctx)
{
    // 检查上下文指针是否为空
    if (ctx == NULL)
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 调用适配层初始化SM3上下文
    VssAdapter_Sm3Init(ctx);
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSM3Update
 Description: SM3更新
 Input:  ctx  SM3上下文指针
         data 输入数据
         len  输入数据长度
 Output: ctx  更新后的SM3上下文
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len)
{
    // 检查参数有效性
    if ((ctx == NULL) || (data == NULL) || (len == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 调用适配层更新SM3上下文
    VssAdapter_Sm3Update(ctx, data, len);
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSM3Final
 Description: SM3结束计算
 Input:  ctx  SM3上下文指针
 Output: hash 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM3Final(SM3_CTX_USER *ctx, uint8_t *hash)
{
    // 检查参数有效性
    if ((ctx == NULL) || (hash == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 调用加密库完成SM3计算
    Crypto_SM3_Final(ctx, hash);
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSM3Calc
 Description: SM3哈希计算
 Input:  data 输入数据
         len  输入数据长度
 Output: hash 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM3Calc(const uint8_t* data, uint32_t len, uint8_t* hash)
{
    // 检查参数有效性
    if ((hash == NULL) || (len == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
#ifdef TIME_TEST
    uint32_t current_time = 0;
    uint32_t lastTick = 0;
    (void)GetCounterValue(0, &lastTick);
#endif
    uint32_t ret = VssAdapter_Sm3Calc(data, len, hash);
#ifdef TIME_TEST
    (void)GetCounterValue(0, &current_time);
    uint32_t elapsed_time = current_time - lastTick;
    TBOX_PRINT("SM3 calc: %ld ms\r\n", elapsed_time);
#endif
    return ret;
}

/*************************************************
 Function: VssSHA256Calc
 Description: SHA256哈希计算
 Input:  p_in 输入数据
         inLen 输入数据长度
 Output: p_out 32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSHA256Calc(const uint8_t* p_in, uint32_t inLen, uint8_t* p_out)
{
    // 检查参数有效性
    if ((p_in == NULL) || (p_out == NULL) || (inLen == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 声明SHA256上下文
    Crypto_SHA256_Context ctx;
    
    // 初始化SHA256上下文
    VssSHA256Init(&ctx);
    
    // 更新SHA256上下文
    VssSHA256Update(&ctx, p_in, inLen);
    
    // 完成SHA256计算
    VssSHA256Final(&ctx, p_out);
    
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSHA256Init
 Description: SHA256初始化
 Input:  ctx  SHA256上下文指针
 Output: ctx  初始化后的SHA256上下文
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSHA256Init(Crypto_SHA256_Context* ctx)
{
    // 检查上下文指针是否为空
    if (ctx == NULL)
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 调用适配层初始化SHA256上下文
    VssAdapter_SHA256_Init(ctx);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSHA256Update
 Description: SHA256更新
 Input:  ctx  SHA256上下文指针
         p_in 输入数据
         inLen 输入数据长度
 Output: ctx  更新后的SHA256上下文
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSHA256Update(Crypto_SHA256_Context* ctx, const uint8_t* p_in, uint32_t inLen)
{
    // 检查参数有效性
    if ((ctx == NULL) || (p_in == NULL) || (inLen == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 调用适配层更新SHA256上下文
    VssAdapter_SHA256_Update(ctx, p_in, inLen);
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSHA256Final
 Description: SHA256结束计算
 Input:  ctx  SHA256上下文指针
 Output: p_out 32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSHA256Final(Crypto_SHA256_Context* ctx, uint8_t* p_out)
{
    // 检查参数有效性
    if ((ctx == NULL) || (p_out == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 调用适配层完成SHA256计算
    VssAdapter_SHA256_Final(ctx, p_out);
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssSM2_Verify
 Description: SM2验签
 Input:  data        待验签数据
         len         待验签数据长度
         signature   签名数据
         signature_len 签名数据长度
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, VssSM2KeyType_e keyId)
{
    uint32_t ret = VSS_RET_SUCCESS;

    // 检查参数有效性
    if ((data == NULL) || (signature == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }
    
    // 从Flash读取SM2公钥
    ret = gVssCtx.flashCb(VSS_ITEM_SM2_KEY, VSS_FLASH_Read, keyId, gVssCtx.sm2Key, VSS_CONFIG_SM2_KEY_LEN);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_FLASH_RW_FAILED; // Flash读写失败
    }
#ifdef TIME_TEST
    uint32_t current_time = 0;
    uint32_t lastTick = 0;
    (void)GetCounterValue(0, &lastTick);
#endif
    // 调用适配层进行SM2验签
    ret = VssAdapter_SM2_Verify(data, len, signature, signature_len, gVssCtx.sm2Key);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_VERIFY_FAILED; // 验签失败
    }
#ifdef TIME_TEST
    (void)GetCounterValue(0, &current_time);
    uint32_t elapsed_time = current_time - lastTick;
    TBOX_PRINT("SM2 verify: %ld ms\r\n", elapsed_time);
#endif
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssEcc256_Verify
 Description: ECC256验签
 Input:  data        待验签数据
         len         待验签数据长度
         signature   签名数据
         signature_len 签名数据长度
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssEcc256_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len)
{
    uint32_t ret = VSS_RET_SUCCESS;

    // 检查参数有效性
    if ((data == NULL) || (signature == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 从Flash读取ECC256公钥
    ret = gVssCtx.flashCb(VSS_ITEM_ECC256_KEY, VSS_FLASH_Read, VSS_OTA_ECC256_KEY, gVssCtx.ecc256Key, VSS_CONFIG_ECC256_KEY_LEN);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_FLASH_RW_FAILED; // Flash读写失败
    }

    // 调用适配层进行ECC256验签
    ret = VssAdapter_ECC_Verify(data, len, signature, signature_len, gVssCtx.ecc256Key);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_VERIFY_FAILED; // 验签失败
    }

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_Crc32Init
 Description: 初始化 CRC32 动态查询表
 Input:  context    - CRC32 上下文指针
         polynomial - CRC32 生成多项式
 Output: init_crc   - 标准初始 CRC 建议值 (固定为 0xFFFFFFFF)
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了对 context 和 init_crc 的空指针校验
*************************************************/
uint32_t Vss_Crc32Init(crc32_context_t *context, uint32_t polynomial, uint32_t *init_crc)
{
    // 检查参数有效性
    if ((context == NULL) || (init_crc == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 调用适配层初始化CRC32上下文
    *init_crc = VssAdapter_Crc32Init(context, polynomial);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_Crc32
 Description: 计算数据块的连续 CRC32 值 (支持分包累加)
 Input:  context     - CRC32 上下文指针
         current_crc - 当前的 CRC 累加值
         data        - 待验证的原始数据指针
         length      - 数据长度 (字节)
 Output: out_crc     - 中间态或未取反的 CRC32 计算结果
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了空指针与长度联动校验
*************************************************/
uint32_t Vss_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length, uint32_t *out_crc)
{
    // 检查参数有效性
    if ((context == NULL) || (out_crc == NULL) || (data == NULL && length > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 调用适配层计算CRC32值
    *out_crc = VssAdapter_Crc32(context, current_crc, data, length);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_Crc32FinalResult
 Description: 输出最终的 CRC32 结果 (按位取反)
 Input:  context       - CRC32 上下文指针
         final_crc     - 最终计算得出的原始 CRC 值
 Output: out_final_crc - 最终的 32 位 CRC 校验值
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了空指针校验
*************************************************/
uint32_t Vss_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc, uint32_t *out_final_crc)
{
    // 检查参数有效性
    if ((context == NULL) || (out_final_crc == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 调用适配层获取最终CRC32结果
    *out_final_crc = VssAdapter_Crc32FinalResult(context, final_crc);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_CRC16_CCITT_False
 Description: 计算 CRC16 (CCITT-False 规范) 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_crc 初始 CRC 值 (通常为 0xFFFF)
 Output: out_crc     计算得到的 CRC16 结果
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了空指针校验
*************************************************/
uint32_t Vss_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc, uint16_t *out_crc)
{
    // 检查参数有效性
    if ((out_crc == NULL) || (data == NULL && len > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 调用适配层计算CRC16 CCITT-False校验值
    *out_crc = VssAdapter_CRC16_CCITT_False(data, len, initial_crc);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_CRC32_CALC
 Description: 计算 CRC32 校验值 (一键式封装)
 Input:  data        待计算数据
         len         待计算数据长度
         polynomial  CRC32 生成多项式 (如 0x04C11DB7)
 Output: out_crc     计算得到的 CRC32 结果
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了空指针校验
*************************************************/
uint32_t Vss_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial, uint32_t *out_crc)
{
    // 检查参数有效性
    if ((out_crc == NULL) || (data == NULL && len > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 调用适配层计算CRC32校验值
    *out_crc = VssAdapter_CRC32_CALC(data, len, polynomial);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_CRC8
 Description: 计算 CRC8 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_val 初始 CRC 值 (通常为 0x00 或 0xFF)
         polynomial  CRC8 生成多项式
 Output: out_crc     计算得到的 CRC8 结果
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了空指针校验
*************************************************/
uint32_t Vss_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial, uint8_t *out_crc)
{
    // 检查参数有效性
    if ((out_crc == NULL) || (data == NULL && len > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 调用适配层计算CRC8校验值
    *out_crc = VssAdapter_CRC8(data, len, initial_val, polynomial);

    return VSS_RET_SUCCESS;
}
/*************************************************
 Function: VssGetKeyByKeyId
 Description: 获取密钥
 Input:  keyId   密钥索引
         vssitem 密钥类型
         pkey    密钥指针
         keyLen  密钥长度
 Output: pkey    密钥指针
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
static uint32_t VssGetKeyByKeyId(uint32_t keyId, VssItemType_e vssitem, uint8_t* pkey, uint32_t keyLen)
{
    uint32_t ret = VSS_RET_SUCCESS;
    uint32_t offset = keyId * keyLen;

    // 检查参数有效性
    if ((pkey == NULL) || (keyLen < 1))
    {
        return VSS_ERR_PARAM_CHECK_FAILED; // 参数检查失败
    }

    // 检查Flash回调函数是否已注册
    if (gVssCtx.flashCb == NULL)
    {
        return VSS_ERR_FLASH_RW_FAILED; // Flash读写失败
    }

    // 处理SM4密钥获取
    if (vssitem == VSS_ITEM_SM4_KEY)
    {
        // 从Flash读取SM4密钥
        ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.sm4Key[keyId][0], keyLen);
        if (ret != VSS_RET_SUCCESS)
        {
            return VSS_ERR_FLASH_RW_FAILED; // Flash读写失败
        }
        // 将读取的密钥复制到输出缓冲区
        memcpy(pkey, &gVssCtx.sm4Key[keyId][0], keyLen);
    }

    return ret;
}
