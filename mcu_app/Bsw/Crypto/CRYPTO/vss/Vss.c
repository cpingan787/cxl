/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "Vss.h"
#include "loghal.h"
/****************************** Macro Definitions ******************************/
#define VSS_KEY_CTX_SIZE_MAX     256
#define VSS_VSN_SIZE             32

/****************************** Type Definitions ******************************/
typedef enum
{
    VSS_UNINIT = 0,
    VSS_INIT   = 1
} Vss_State_t;

static struct
{
    Vss_State_t state;
    uint8_t vsn[VSS_VSN_SIZE];
    uint8_t vsnActiveFlg;
    uint8_t algFlg;
    uint8_t sm4Key[VSS_SM4_KEY_MAX][VSS_NVM_BLOCK_SM4_KEY_LEN];
    uint8_t sm4KeyActiveFlg[VSS_SM4_KEY_MAX];
    uint8_t sm2Key[VSS_CONFIG_SM2_KEY_LEN];
    uint8_t ecc256Key[VSS_CONFIG_ECC256_KEY_LEN];
    VssflashFunc* flashCb;
    VssWdtFeedFunc* wdtCb;
} gVssCtx;

/****************************** Global Variables ******************************/

/****************************** Function Declarations *************************/
static uint32_t VssGetKeyByKeyId(uint32_t keyId, VssItemType_e vssitem, uint8_t* pkey, uint32_t keyLen);

/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: VssCryptoInit
 Description: 算法库初始化（MCU软算法版本）。注册回调并初始化底层软算法库适配层。
 Input:  flashCb FLASH密钥存储区域读写回调
         wdtCb   看门狗喂狗回调
         pData  - 数据缓冲区
         pLength  - 数据长度
 Output: None
 Return: 0x00-成功
         0x18-算法不支持（type非0）
         其他-由适配层返回
 Others:
*************************************************/
uint32_t VssCryptoInit(VssflashFunc* flashCb, VssWdtFeedFunc* wdtCb, uint8_t* pData, uint32_t pLength)
{
    uint32_t ret = VSS_RET_SUCCESS;

    ret = VssAdapter_InitSoft();
    if (ret != VSS_RET_SUCCESS)
    {
        return ret;
    }

    gVssCtx.state   = VSS_INIT;
    gVssCtx.flashCb = flashCb;
    gVssCtx.wdtCb   = wdtCb;

    VssGetCtxData(pData, pLength);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssGetCtxData
 Description: 获取上下文数据
 Input:  pData  - 数据缓冲区
         pLength  - 数据长度
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGetCtxData(uint8_t* pData, uint32_t pLength)
{
    if (pData == NULL || pLength == 0)
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    memcpy(gVssCtx.vsn, &pData[VSS_NVM_BLOCK_VSN_ADDR], VSS_NVM_BLOCK_VSN_LEN);
    memcpy(&gVssCtx.vsnActiveFlg, &pData[VSS_NVM_BLOCK_VSN_ACTIVE_ADDR], VSS_NVM_BLOCK_VSN_ACTIVE_LEN);
    memcpy(&gVssCtx.sm4Key[VSS_SECOC_KEY], &pData[VSS_NVM_BLOCK_SM4_KEY0_ADDR], VSS_NVM_BLOCK_SM4_KEY_LEN);
    memcpy(&gVssCtx.sm4Key[VSS_AUTH_KEY], &pData[VSS_NVM_BLOCK_SM4_KEY1_ADDR], VSS_NVM_BLOCK_SM4_KEY_LEN);
    memcpy(&gVssCtx.sm4KeyActiveFlg[VSS_SECOC_KEY], &pData[VSS_NVM_BLOCK_SM4_KEY0_ACTIVE_ADDR], VSS_NVM_BLOCK_SM4_KEY_ACTIVE_LEN);
    memcpy(&gVssCtx.sm4KeyActiveFlg[VSS_AUTH_KEY], &pData[VSS_NVM_BLOCK_SM4_KEY1_ACTIVE_ADDR], VSS_NVM_BLOCK_SM4_KEY_ACTIVE_LEN);

    VSS_LOG_SEND(LOG_LEVEL_DEBUG, LOG_EVT_INIT_START, &gVssCtx.vsnActiveFlg, 1);

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

    /* 获取VSN是否已写入 */
    if (gVssCtx.vsnActiveFlg == 0)
    {
        return VSS_ERR_KEY_INVALID;
    }

#ifdef TIME_TEST
    uint32_t current_time = OSTM_GetUs();
#endif
    if (gVssCtx.sm4KeyActiveFlg[VSS_SECOC_KEY] == 0)
    {
        const uint8_t defaultKey[VSS_NVM_BLOCK_SM4_KEY_LEN] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10}; // 使用默认密钥
        ret = VssAdapter_Sm4CMac(defaultKey, inData, inLen, out16);
        // TBOX_PRINT("inData: 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X,0x%02X, 0x%02X, 0x%02X, 0x%02X \r\n",
        //     inData[0], inData[1], inData[2], inData[9], inData[10],inData[11], inData[12], inData[13], inData[14], inData[15], inData[16], inData[17]);
    }
    else
    {
        ret = VssSM4CMacByKeyId(VSS_SECOC_KEY, inData, inLen, out16);
    }
#ifdef TIME_TEST
    uint32_t elapsed_time = OSTM_GetElapsedUs(current_time);
    TBOX_PRINT("SM4CMAC id %x etime: %d us\r\n", ((inData[0] << 8) | inData[1]), elapsed_time);
#endif
    return ret;
}

/*************************************************
 Function: Vss_Challenge_Response
 Description: 完整的挑战-应答业务流程封装
 Input:  keyId          密钥索引/ID
 Output: outChallenge   生成的挑战值（8字节随机数）
         outResponse    计算得出的应答值（8字节）
 Return: 0x00-成功
         0x01-参数错误
         0x02-获取密钥失败
         0x03-生成随机数挑战值失败
         0x04-计算应答值失败
 Others: 内部包含获取密钥、生成随机挑战值、计算应答值的全流程。
*************************************************/
uint32_t Vss_Challenge_Response(uint8_t *outChallenge, uint8_t *outResponse)
{
    uint32_t ret = 0x00;
    uint8_t key[16] = {0};
    
    if (outChallenge == NULL || outResponse == NULL)
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    ret = VssGetKeyByKeyId(VSS_AUTH_KEY, VSS_ITEM_SM4_KEY, key, VSS_NVM_BLOCK_SM4_KEY_LEN);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_KEY_INVALID;
    }
#ifdef TIME_TEST
    uint32_t current_time = OSTM_GetUs();
#endif
    ret = VssAdapter_SM4_Challenge_Response(key, outChallenge, outResponse);
#ifdef TIME_TEST
    uint32_t elapsed_time = OSTM_GetElapsedUs(current_time);
    TBOX_PRINT("SM4 etime: %d us\r\n", elapsed_time);
#endif
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_CRYPTO_FAILED;
    }

    /* 敏感数据擦除 */
    memset(key, 0, sizeof(key));

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_SetVSNActive
 Description: 激活VSN
 Input:  None
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t Vss_SetVSNActive(void)
{
    uint32_t ret = VSS_RET_SUCCESS;
    
    /* 调用VssSetKeyActive设置VSN为激活状态 */
    ret = VssSetKeyActive(VSS_ITEM_VSN_ACTIVE, VSS_VSN_0, 1);
    
    return ret;
}

/*************************************************
 Function: Vss_SetSecOCKeyActive
 Description: 激活SecOC密钥
 Input:  None
 Output: None
 Return: 0-成功, 其他-失败
 Others: 将SecOC密钥设置为激活状态（可用）
*************************************************/
uint32_t Vss_SetSecOCKeyActive(void)
{
    uint32_t ret = VSS_RET_SUCCESS;
    
    /* 调用VssSetKeyActive设置SecOC密钥为激活状态 */
    ret = VssSetKeyActive(VSS_ITEM_SM4_KEY_ACTIVE, VSS_SECOC_KEY, 1);
    
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
    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED;
    }
    if ((vsn == NULL) || (len != VSS_VSN_SIZE) || (AutoSetWroteFlag > 1u))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    /* 待大众提供派生算法，当前采用直接使用密钥方案 */

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

    if (nAlgFlag == NULL)
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    /* 获取VSN是否已写入 */
    ret = VssGetKeyActive(VSS_ITEM_VSN_ACTIVE, VSS_VSN_0, &keyValid);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret;
    }

    if (keyValid == 0)
    {
        *nAlgFlag = VSS_ALG_TYPE_NATIONAL_CRYP;
        return VSS_RET_SUCCESS;
    }

    ret = VssGetVSN(vsn, VSS_VSN_SIZE);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret;
    }

    vsnFlag = vsn[VSS_VSN_SIZE - 1] & 1;
    if (vsnFlag == 0)
    {
        *nAlgFlag = VSS_ALG_TYPE_NATIONAL_CRYP;
    } 
    else if (vsnFlag == 1)
    {
        *nAlgFlag = VSS_ALG_TYPE_INTERNATIONAL_CRYP;
    } else {
        ret = VSS_ERR_DATA_INVALID;
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

    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED;
    }
    
    if ((gVssCtx.flashCb == NULL) || (vssitem >= VSS_ITEM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (vssitem == VSS_ITEM_VSN_ACTIVE)
    {
        if (keyId >= VSS_VSN_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED;
        }
        if (gVssCtx.vsnActiveFlg != valid)
        {
            gVssCtx.vsnActiveFlg = valid;
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Write, keyId, &gVssCtx.vsnActiveFlg, VSS_NVM_BLOCK_VSN_ACTIVE_LEN);
        }
    }
    else if (vssitem == VSS_ITEM_SM4_KEY_ACTIVE)
    {
        if (keyId >= VSS_SM4_KEY_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED;
        }
        if (gVssCtx.sm4KeyActiveFlg[keyId] != valid)
        {
            gVssCtx.sm4KeyActiveFlg[keyId] = valid;
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Write, keyId, &gVssCtx.sm4KeyActiveFlg[keyId], VSS_NVM_BLOCK_SM4_KEY_ACTIVE_LEN);
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

    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED;
    }
    if ((gVssCtx.flashCb == NULL) || (valid == NULL) || (vssitem >= VSS_ITEM_MAX))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (vssitem == VSS_ITEM_VSN_ACTIVE)
    {
        if (keyId >= VSS_VSN_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED;
        }
        ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.vsnActiveFlg, VSS_NVM_BLOCK_VSN_ACTIVE_LEN);
        if (ret != VSS_RET_SUCCESS)
        {
            return VSS_ERR_FLASH_RW_FAILED;
        }
        *valid = gVssCtx.vsnActiveFlg;
    }
    else if (vssitem == VSS_ITEM_SM4_KEY_ACTIVE)
    {
        if (keyId >= VSS_SM4_KEY_MAX)
        {
            return VSS_ERR_PARAM_CHECK_FAILED;
        }
        if (gVssCtx.sm4KeyActiveFlg[keyId] != valid)
        {
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.sm4KeyActiveFlg[keyId], VSS_NVM_BLOCK_SM4_KEY_ACTIVE_LEN);
            if (ret != VSS_RET_SUCCESS)
            {
                return VSS_ERR_FLASH_RW_FAILED;
            }
            *valid = gVssCtx.sm4KeyActiveFlg[keyId];
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

    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED;
    }
    
    if ((gVssCtx.flashCb == NULL) || (vsn == NULL) || (inLen != VSS_VSN_SIZE))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    /* 若vsn与历史值一致，则不进行写入 */
    if (memcmp(gVssCtx.vsn, vsn, inLen) != 0)
    {
        memcpy(gVssCtx.vsn, vsn, inLen);
        gVssCtx.vsnActiveFlg = 1;
        TBOX_PRINT("set vsn active\n");
        ret = gVssCtx.flashCb(VSS_ITEM_VSN, VSS_FLASH_Write, VSS_VSN_0, gVssCtx.vsn, VSS_VSN_SIZE);
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

    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED;
    }
    if ((gVssCtx.flashCb == NULL) || (vsn == NULL) || (inLen != VSS_VSN_SIZE))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    ret = gVssCtx.flashCb(VSS_ITEM_VSN, VSS_FLASH_Read, VSS_VSN_0, gVssCtx.vsn, VSS_VSN_SIZE);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_FLASH_RW_FAILED;
    }
    memcpy(vsn, gVssCtx.vsn, VSS_VSN_SIZE);

    return ret;
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
    uint8_t pkey[VSS_NVM_BLOCK_SM4_KEY_LEN] = {0};

    if (gVssCtx.state != VSS_INIT)
    {
        return VSS_ERR_NOT_INITIALIZED;
    }

    if ((keyId >= VSS_SM4_KEY_MAX) || (inData == NULL) || (outData == NULL) || (inLen == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    VssGetKeyByKeyId(keyId, VSS_ITEM_SM4_KEY, pkey, VSS_NVM_BLOCK_SM4_KEY_LEN);

    ret = VssAdapter_Sm4CMac(pkey, inData, inLen, outData);
    if (ret != VSS_RET_SUCCESS)
    {
        return ret;
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
    if (ctx == NULL)
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
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
    if ((ctx == NULL) || (data == NULL) || (len == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
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
    if ((ctx == NULL) || (hash == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
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
    if ((data == NULL) || (hash == NULL) || (len == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
    
    return VssAdapter_Sm3Calc(data, len, hash);
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
    if ((p_in == NULL) || (p_out == NULL) || (inLen == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
    Crypto_SHA256_Context ctx;
    VssSHA256Init(&ctx);
    VssSHA256Update(&ctx, p_in, inLen);
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
    if (ctx == NULL)
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
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
    if ((ctx == NULL) || (p_in == NULL) || (inLen == 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
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
    if ((ctx == NULL) || (p_out == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
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
uint32_t VssSM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len)
{
    uint32_t ret = VSS_RET_SUCCESS;

    if ((data == NULL) || (signature == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }
    ret = gVssCtx.flashCb(VSS_ITEM_SM2_KEY, VSS_FLASH_Read, VSS_OTA_SM2_KEY, gVssCtx.sm2Key, VSS_CONFIG_SM2_KEY_LEN);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_FLASH_RW_FAILED;
    }
    ret = VssAdapter_SM2_Verify(data, len, signature, signature_len, gVssCtx.sm2Key);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_VERIFY_FAILED; // 验签失败
    }

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

    if ((data == NULL) || (signature == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    ret = gVssCtx.flashCb(VSS_ITEM_ECC256_KEY, VSS_FLASH_Read, VSS_OTA_ECC256_KEY, gVssCtx.ecc256Key, VSS_CONFIG_ECC256_KEY_LEN);
    if (ret != VSS_RET_SUCCESS)
    {
        return VSS_ERR_FLASH_RW_FAILED;
    }

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
    if ((context == NULL) || (init_crc == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

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
    if ((context == NULL) || (out_crc == NULL) || (data == NULL && length > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

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
    if ((context == NULL) || (out_final_crc == NULL))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    *out_final_crc = VssAdapter_Crc32FinalResult(context, final_crc);

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
    if ((out_crc == NULL) || (data == NULL && len > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    *out_crc = VssAdapter_CRC32_CALC(data, len, polynomial);

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
    if ((out_crc == NULL) || (data == NULL && len > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    *out_crc = VssAdapter_CRC16_CCITT_False(data, len, initial_crc);

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: Vss_CRC16_CCITT
 Description: 计算 CRC16 (标准 CCITT / X.25 规范) 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_crc 初始 CRC 值 (通常为 0x0000)
 Output: out_crc     计算得到的 CRC16 结果
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了空指针校验
*************************************************/
uint32_t Vss_CRC16_CCITT(const uint8_t *data, uint32_t len, uint16_t initial_crc, uint16_t *out_crc)
{
    if ((out_crc == NULL) || (data == NULL && len > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    *out_crc = VssAdapter_CRC16_CCITT(data, len, initial_crc);

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
    if ((out_crc == NULL) || (data == NULL && len > 0))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

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

    if ((pkey == NULL) || (keyLen < 1))
    {
        return VSS_ERR_PARAM_CHECK_FAILED;
    }

    if (gVssCtx.flashCb == NULL)
    {
        return VSS_ERR_FLASH_RW_FAILED;
    }

    if (vssitem == VSS_ITEM_SM4_KEY)
    {
        ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.sm4Key[keyId][0], keyLen);
        if (ret != VSS_RET_SUCCESS)
        {
            return VSS_ERR_FLASH_RW_FAILED;
        }
        memcpy(pkey, &gVssCtx.sm4Key[keyId][0], keyLen);
    }

    return ret;
}