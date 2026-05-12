/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss.h
 Author: CaoLiang
 Created Time: 2026-03-31
 Description: 车辆安全服务（VSS）模块头文件，包含宏定义、类型定义和函数声明
 Others: 定义了VSS模块的公共接口和数据结构
*************************************************/
#ifndef VSS_H
#define VSS_H
/****************************** include ***************************************/
#include "Vss_Types.h"
#include "Vss_Adapter.h"

/****************************** Macro Definitions ******************************/
#define VSS_ALG_TYPE_INTERNATIONAL_CRYP      (1)    // 国际算法类型
#define VSS_ALG_TYPE_NATIONAL_CRYP           (2)    // 国密算法类型
#define VSS_CONFIG_KEY_NUM_MAX               (8)    // 最大密钥数量
#define VSS_CONFIG_KEY_VALID_LEN             (1)    // 密钥有效性标志长度
#define VSS_CONFIG_SM4CMAC_KEY_LEN           (16)   // SM4 CMAC密钥长度
#define VSS_CONFIG_AES_KEY_LEN               (16)   // AES密钥长度
#define VSS_CONFIG_SM2_KEY_LEN               (65)   // SM2密钥长度
#define VSS_CONFIG_ECC256_KEY_LEN            (65)   // ECC256密钥长度

/****************************** Type Definitions ******************************/
/**
 * @brief Flash读写回调函数类型
 * @param itemType 项类型
 * @param rwflag 读写标志
 * @param keyId 密钥ID
 * @param pData 数据指针
 * @param pLength 数据长度
 * @return 0-成功, 其他-失败
 */
typedef uint32_t VssflashFunc(VssItemType_e itemType, VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);

/**
 * @brief 看门狗喂狗回调函数类型
 */
typedef void     VssWdtFeedFunc(void);

/**
 * @brief VSN类型枚举
 */
typedef enum {
    VSS_VSN_0 = 0,    // VSN 0
    VSS_VSN_MAX       // VSN最大值
} VssVSNType_e;

/**
 * @brief SM4密钥类型枚举
 */
typedef enum {
    VSS_SECOC_KEY = 0,    // SECOC密钥
    VSS_AUTH_KEY,         // 认证密钥
    VSS_SM4_KEY_MAX       // SM4密钥最大值
} VssSM4KeyType_e;

/**
 * @brief SM2密钥类型枚举
 */
typedef enum {
    VSS_OTA_SM2_KEY = 0,    // OTA SM2密钥
    VSS_OTA_SM2_0X11_KEY = 1, // OTA 测试环境国密根公钥
    VSS_OTA_SM2_0X21_KEY = 2, // OTA 生产环境国密根公钥
    VSS_SM2_KEY_MAX         // SM2密钥最大值
} VssSM2KeyType_e;

/**
 * @brief ECC256密钥类型枚举
 */
typedef enum {
    VSS_OTA_ECC256_KEY = 0,    // OTA ECC256密钥
    VSS_ECC256_KEY_MAX         // ECC256密钥最大值
} VssECC256KeyType_e;

/****************************** Function Declarations *************************/
/*************************************************
 Function: VssCryptoInit
 Description: 算法库初始化（MCU软算法版本）。注册回调并初始化底层软算法库适配层。
 Input:  flashCb FLASH密钥存储区域读写回调
         wdtCb   看门狗复位回调
 Output: None
 Return: 0x00-成功
         0x18-算法不支持（type非0）
         其他-由适配层返回
 Others:
*************************************************/
uint32_t VssCryptoInit(VssflashFunc* flashCb, VssWdtFeedFunc* wdtCb);

/*************************************************
 Function: VssSecocCmacGen
 Description: 生成SECOC CMAC
 Input:  inData  输入数据
         inLen   输入数据长度
 Output: out16   输出的CMAC(16字节)
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSecocCmacGen(uint8_t* inData, uint32_t inLen, uint8_t* out16);

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
uint32_t VssGenerateKeyByCode(uint32_t len, uint8_t* vsn, uint8_t keyId, uint8_t AutoSetWroteFlag);

/*************************************************
 Function: VssGetAlgFlag
 Description: 根据输入的VSN的最后一位来判断国密/国际算法标识，本接口返回算法标识
              如果VSN未输入，则返回”2-国密算法”
 Input:   None
 Output:  nAlgFlag[out]    --算法标识: 1-国际算法；2-国密算法
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGetAlgFlag(uint8_t* nAlgFlag);

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
uint32_t VssSetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t valid);

/*************************************************
 Function: VssGetKeyActive
 Description: 查询密钥激活属性
 Input:  vssitem  VSS密钥类型
         keyId  密钥ID
 Output: valid  0-不可用；1-可用
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t* valid);

/*************************************************
 Function: VssSetVSN
 Description: 设置VSN
 Input:  vsn: vsn数据
         inLen: vsn输入的长度
 Output: None
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSetVSN(uint8_t* vsn, uint32_t inLen);

/*************************************************
 Function: VssGetVSN
 Description: 查询VSN
 Input:  inLen: vsn输入的长度
 Output: vsn: vsn数据
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssGetVSN(uint8_t* vsn, uint32_t inLen);

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
uint32_t VssSM4CalcByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData, uint32_t* pOutLen);

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
uint32_t VssSM4CMacByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, uint8_t* outData);

/*************************************************
 Function: VssSM3Init
 Description: SM3初始化
 Input:  ctx  SM3上下文指针
 Output: ctx  初始化后的SM3上下文
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM3Init(SM3_CTX_USER* ctx);

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
uint32_t VssSM3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len);

/*************************************************
 Function: VssSM3Final
 Description: SM3结束计算
 Input:  ctx  SM3上下文指针
 Output: hash 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM3Final(SM3_CTX_USER *ctx, uint8_t *hash);

/*************************************************
 Function: VssSM3Calc
 Description: SM3哈希计算
 Input:  data 输入数据
         len  输入数据长度
 Output: hash 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSM3Calc(const uint8_t* data, uint32_t len, uint8_t* hash);

/*************************************************
 Function: VssSHA256Calc
 Description: SHA256哈希计算
 Input:  p_in 输入数据
         inLen 输入数据长度
 Output: p_out 32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSHA256Calc(const uint8_t* p_in, uint32_t inLen, uint8_t* p_out);

/*************************************************
 Function: VssSHA256Init
 Description: SHA256初始化
 Input:  ctx  SHA256上下文指针
 Output: ctx  初始化后的SHA256上下文
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSHA256Init(Crypto_SHA256_Context* ctx);

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
uint32_t VssSHA256Update(Crypto_SHA256_Context* ctx, const uint8_t* p_in, uint32_t inLen);

/*************************************************
 Function: VssSHA256Final
 Description: SHA256结束计算
 Input:  ctx  SHA256上下文指针
 Output: p_out 32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssSHA256Final(Crypto_SHA256_Context* ctx, uint8_t* p_out);

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
uint32_t VssSM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, VssSM2KeyType_e keyId);

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
uint32_t VssEcc256_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len);

/*************************************************
 Function: Vss_Crc32Init
 Description: 初始化 CRC32 动态查询表
 Input:  context    - CRC32 上下文指针
         polynomial - CRC32 生成多项式
 Output: init_crc   - 标准初始 CRC 建议值 (固定为 0xFFFFFFFF)
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了对 context 和 init_crc 的空指针校验
*************************************************/
uint32_t Vss_Crc32Init(crc32_context_t *context, uint32_t polynomial, uint32_t *init_crc);

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
uint32_t Vss_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length, uint32_t *out_crc);

/*************************************************
 Function: Vss_Crc32FinalResult
 Description: 输出最终的 CRC32 结果 (按位取反)
 Input:  context       - CRC32 上下文指针
         final_crc     - 最终计算得出的原始 CRC 值
 Output: out_final_crc - 最终的 32 位 CRC 校验值
 Return: 0-成功, 其他-失败 (VSS_ERR_PARAM_CHECK_FAILED)
 Others: 增加了空指针校验
*************************************************/
uint32_t Vss_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc, uint32_t *out_final_crc);

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
uint32_t Vss_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc, uint16_t *out_crc);

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
uint32_t Vss_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial, uint32_t *out_crc);

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
uint32_t Vss_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial, uint8_t *out_crc);


#endif /* VSS_H */