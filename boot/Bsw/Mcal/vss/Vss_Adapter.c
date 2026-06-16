/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss_Adapter.c
 Author: CaoLiang
 Created Time: 2026-03-31
 Description: 车辆安全服务（VSS）模块适配层实现，包含密码算法适配函数
 Others: 实现了VSS模块与底层密码算法库的适配接口
*************************************************/
/****************************** include ***************************************/
#include "Vss_Adapter.h"
#include "loghal.h"
/****************************** Macro Definitions ******************************/
/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/

/****************************** Function Declarations *************************/
static int Calculate_SM2_ZA(const uint8_t *id, uint16_t id_len, const uint8_t *pub_key, uint8_t *za_out);
/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: VssAdapter_InitSoft
 Description: 软算法库适配层初始化
 Input:  void
 Output: void
 Return: 0-成功, 其他-失败
 Others: 
*************************************************/
uint32_t VssAdapter_InitSoft(void)
{
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssAdapter_Sm4Calc
 Description: SM4对称加解密
 Input:  p_key    密钥（16字节）
         inData   输入数据（必须是 16 字节的倍数）
         inLen    输入数据长度（必须是 16 字节的倍数）
         calcFlag 0-加密；1-解密
 Output: outData  输出数据
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_Sm4Calc(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData)
{
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssAdapter_Sm4CMac
 Description: SM4计算CMAC
 Input:  p_key   密钥（16字节）
         inData  输入数据
         inLen   输入数据长度
 Output: out16   MAC输出（16字节）
 Return: 0x00-成功
         0x18-算法不支持（默认占位）
 Others:
*************************************************/
uint32_t VssAdapter_Sm4CMac(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, uint8_t* out16)
{
    // 调用加密库计算SM4 CMAC
    int sm4_ret = Crypto_SM4_CMAC(p_key, inData, inLen, out16);
    if (sm4_ret != CRYPTO_E_OK)
    {
        return VSS_ERR_CRYPTO_FAILED; // 密码运算失败
    }
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssAdapter_Sm3Calc
 Description: SM3哈希计算
 Input:  indata  输入数据
         inLen   输入数据长度
 Output: hash    32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_Sm3Calc(const uint8_t *indata, uint32_t inLen, uint8_t* hash)
{
    // 调用加密库计算SM3哈希
    int sm3_ret = Crypto_SM3_CALC(indata, inLen, hash);
    if (sm3_ret != CRYPTO_E_OK)
    {
        return VSS_ERR_CRYPTO_FAILED; // 密码运算失败
    }
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssAdapter_Sm3Init
 Description: SM3哈希初始化
 Input:  ctx     SM3上下文指针
 Output: void
 Return: void
 Others:
*************************************************/
void VssAdapter_Sm3Init(SM3_CTX_USER* ctx)
{
    // 调用加密库初始化SM3上下文
    Crypto_SM3_Init(ctx);
}

/*************************************************
 Function: VssAdapter_Sm3Update
 Description: SM3哈希更新
 Input:  ctx     SM3上下文指针
         data    输入数据
         len     输入数据长度
 Output: void
 Return: void
 Others:
*************************************************/
void VssAdapter_Sm3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len)
{
    // 调用加密库更新SM3上下文
    Crypto_SM3_Update(ctx, data, len);
}

/*************************************************
 Function: VssAdapter_Sm3Final
 Description: SM3结束计算
 Input:  ctx     SM3上下文指针
 Output: hash    32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: void
 Others:
*************************************************/
void VssAdapter_Sm3Final(SM3_CTX_USER *ctx, uint8_t *hash)
{
    // 调用加密库完成SM3计算
    Crypto_SM3_Final(ctx, hash);
}

/*************************************************
 Function: VssAdapter_SHA256_CALC
 Description: SHA256哈希计算
 Input:  data    输入数据
         len     输入数据长度
 Output: hash    32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
int VssAdapter_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash)
{
    // 调用加密库计算SHA256哈希
    int sha256_ret = Crypto_SHA256_CALC(data, len, hash);
    if (sha256_ret != CRYPTO_E_OK)
    {
        return VSS_ERR_CRYPTO_FAILED; // 密码运算失败
    }
    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssAdapter_SHA256_Init
 Description: SHA256哈希初始化
 Input:  ctx     SHA256上下文指针
 Output: void
 Return: void
 Others:
*************************************************/
void VssAdapter_SHA256_Init(Crypto_SHA256_Context* ctx)
{
    // 调用加密库初始化SHA256上下文
    Crypto_SHA256_Init(ctx);
}

/*************************************************
 Function: VssAdapter_SHA256_Update
 Description: SHA256哈希更新
 Input:  ctx     SHA256上下文指针
         data    输入数据
         len     输入数据长度
 Output: void
 Return: void
 Others:
*************************************************/
void VssAdapter_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len)
{
    // 调用加密库更新SHA256上下文
    Crypto_SHA256_Update(ctx, data, len);
}

/*************************************************
 Function: VssAdapter_SHA256_Final
 Description: SHA256结束计算
 Input:  ctx     SHA256上下文指针
 Output: hash    32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: void
 Others:
*************************************************/
void VssAdapter_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash)
{
    // 调用加密库完成SHA256计算
    Crypto_SHA256_Final(ctx, hash);
}

/*************************************************
 Function: Calculate_SM2_ZA
 Description: 计算SM2算法的ZA值
 Input:  id          用户ID
         id_len      用户ID长度
         pub_key     公钥（64字节）
         za_out      输出的ZA值（32字节）
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
static int Calculate_SM2_ZA(const uint8_t *id, uint16_t id_len, const uint8_t *pub_key, uint8_t *za_out) 
{
    SM3_CTX_USER ctx;
    uint8_t entl[2];
    
    const uint8_t a[32] = {0xFF, 0xFF, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 
                           0xFF, 0xFF, 0xFF,0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
                          0xFF, 0xFF, 0xFF, 0xFF,0x00, 0x00, 0x00, 0x00, 
                          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFC };
    const uint8_t b[32] = {0x28,0xE9,0xFA,0x9E,0x9D,0x9F,0x5E,0x34,
                           0x4D,0x5A,0x9E,0x4B,0xCF,0x65,0x09,0xA7,
                          0xF3,0x97,0x89,0xF5,0x15,0xAB,0x8F,0x92,
                          0xDD,0xBC,0xBD,0x41,0x4D,0x94,0x0E,0x93};
    const uint8_t xG[32] = {0x32,0xC4,0xAE,0x2C,0x1F,0x19,0x81,0x19,
                            0x5F,0x99,0x04,0x46,0x6A,0x39,0xC9,0x94,
                           0x8F,0xE3,0x0B,0xBF,0xF2,0x66,0x0B,0xE1,
                           0x71,0x5A,0x45,0x89,0x33,0x4C,0x74,0xC7};
    const uint8_t yG[32] = {0xBC,0x37,0x36,0xA2,0xF4,0xF6,0x77,0x9C,
                            0x59,0xBD,0xCE,0xE3,0x6B,0x69,0x21,0x53,
                           0xD0,0xA9,0x87,0x7C,0xC6,0x2A,0x47,0x40,
                           0x02,0xDF,0x32,0xE5,0x21,0x39,0xF0,0xA0};

    uint16_t entl_bits = id_len * 8;
    entl[0] = (entl_bits >> 8) & 0xFF;
    entl[1] = entl_bits & 0xFF;

    memset(&ctx, 0, sizeof(ctx));
    Crypto_SM3_Init(&ctx);
    Crypto_SM3_Update(&ctx, entl, 2);
    Crypto_SM3_Update(&ctx, id, id_len);
    Crypto_SM3_Update(&ctx, a, 32);
    Crypto_SM3_Update(&ctx, b, 32);
    Crypto_SM3_Update(&ctx, xG, 32);
    Crypto_SM3_Update(&ctx, yG, 32);
    Crypto_SM3_Update(&ctx, &pub_key[1], 64);
    Crypto_SM3_Final(&ctx, za_out);

    return 0; // 成功
}

/*************************************************
 Function: VssAdapter_SM2_Verify
 Description: SM2验签
 Input:  data          待验签数据
         len           待验签数据长度
         signature     签名数据
         signature_len 签名数据长度
         pub_key       公钥数据
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    // 计算消息摘要
    SM3_CTX_USER ctx;
    uint8_t dgst[32] = {0};
    static uint8_t sm2_za_value[32] = {0};

    // 1. 设置默认的用户ID (国密标准默认ID)
    const uint8_t *user_id = (const uint8_t *)"1234567812345678";

    if (Calculate_SM2_ZA(user_id, 16, pub_key, sm2_za_value) != 0) 
    {
        return VSS_ERR_CRYPTO_FAILED; // ZA计算失败
    }

    // 初始化SM3上下文
    memset(&ctx, 0, sizeof(ctx));
    Crypto_SM3_Init(&ctx);
    // 添加ZA值
    Crypto_SM3_Update(&ctx, sm2_za_value, 32);
    // 添加待验签数据
    Crypto_SM3_Update(&ctx, data, len);
    // 完成SM3计算
    Crypto_SM3_Final(&ctx, dgst);

    // 调用加密库进行SM2验签
    int sm2_ret = Crypto_SM2_Verify(dgst, 32, signature, signature_len, pub_key);
    if (sm2_ret != CRYPTO_E_OK)
    {
        return VSS_ERR_CRYPTO_FAILED; // 密码运算失败
    }

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssAdapter_ECC_Verify
 Description: ECC256验签
 Input:  data          待验签数据
         len           待验签数据长度
         signature     签名数据
         signature_len 签名数据长度
         pub_key       公钥数据
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    SM2_KEY key;
    SM2_SIGNATURE sig;
    // 调用加密库进行ECC256验签
    int ecc_ret = Crypto_ECC_Verify(data, len, signature, signature_len, pub_key);
    if (ecc_ret != CRYPTO_E_OK)
    {
        return VSS_ERR_CRYPTO_FAILED; // 密码运算失败
    }

    return VSS_RET_SUCCESS;
}

/*************************************************
 Function: VssAdapter_CRC16_CCITT_False
 Description: 计算 CRC16 (CCITT-False 规范) 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_crc 初始 CRC 值 (通常为 0xFFFF)
 Output: None
 Return: 计算得到的 CRC16 结果
 Others: 
*************************************************/
uint32_t VssAdapter_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc)
{
    // 调用加密库计算CRC16 CCITT-False校验值
    return Crypto_CcittFalseCrc16(initial_crc, data, len);
}

/*************************************************
 Function: VssAdapter_CRC16_CCITT
 Description: 计算 CRC16 (标准 CCITT / X.25 规范) 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_crc 初始 CRC 值 (通常为 0x0000)
 Output: None
 Return: 计算得到的 CRC16 结果
 Others: 
*************************************************/
uint32_t VssAdapter_CRC16_CCITT(const uint8_t *data, uint32_t len, uint16_t initial_crc)
{
    // 调用加密库计算CRC16 CCITT校验值
    return Crypto_CcittCrc16(initial_crc, data, len);
}

/*************************************************
 Function: VssAdapter_CRC32_CALC
 Description: 计算 CRC32 校验值 (一键式封装)
 Input:  data        待计算数据
         len         待计算数据长度
         polynomial  CRC32 生成多项式 (如 0x04C11DB7)
 Output: None
 Return: 计算得到的 CRC32 结果
 Others: 内部已处理 Init -> Update -> Final 的完整流程
*************************************************/
uint32_t VssAdapter_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial)
{
    crc32_context_t ctx;
    uint32_t init_val;
    uint32_t crc_temp;

    // 初始化CRC32上下文
    init_val = Crypto_Crc32Init(&ctx, polynomial);
    // 计算CRC32值
    crc_temp = Crypto_Crc32(&ctx, init_val, data, len);
    // 获取最终CRC32结果
    return Crypto_Crc32FinalResult(&ctx, crc_temp);
}

/*************************************************
 Function: VssAdapter_Crc32Init
 Description: 初始化 CRC32 动态查询表
 Input:  context    - CRC32 上下文指针
         polynomial - CRC32 生成多项式
 Return: 标准初始 CRC 建议值 (固定为 0xFFFFFFFF)
*************************************************/
uint32_t VssAdapter_Crc32Init(crc32_context_t *context, uint32_t polynomial)
{
    // 调用加密库初始化CRC32上下文
    return Crypto_Crc32Init(context, polynomial);
}

/*************************************************
 Function: VssAdapter_Crc32
 Description: 计算数据块的连续 CRC32 值 (支持分包累加)
 Input:  context     - CRC32 上下文指针
         current_crc - 当前的 CRC 累加值
         data        - 待验证的原始数据指针
         length      - 数据长度 (字节)
 Return: 中间态或未取反的 CRC32 计算结果
*************************************************/
uint32_t VssAdapter_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length)
{
    // 调用加密库计算CRC32值
    return Crypto_Crc32(context, current_crc, data, length);
}

/*************************************************
 Function: VssAdapter_Crc32FinalResult
 Description: 输出最终的 CRC32 结果 (按位取反)
 Input:  context   - CRC32 上下文指针
         final_crc - 最终计算得出的原始 CRC 值
 Return: 最终的 32 位 CRC 校验值
*************************************************/
uint32_t VssAdapter_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc)
{
    // 调用加密库获取最终CRC32结果
    return Crypto_Crc32FinalResult(context, final_crc);
}

/*************************************************
 Function: VssAdapter_CRC8
 Description: 计算 CRC8 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_val 初始 CRC 值 (通常为 0x00 或 0xFF)
         polynomial  CRC8 生成多项式
 Output: None
 Return: 计算得到的 CRC8 结果
 Others: 
*************************************************/
uint32_t VssAdapter_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial)
{
    // 调用加密库计算CRC8校验值
    return Crypto_Crc8(initial_val, polynomial, data, len);
}