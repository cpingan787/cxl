/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: Vss_Adapter.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef VSS_ADAPTER_H
#define VSS_ADAPTER_H
/****************************** include ***************************************/
#include "Vss_Types.h"
#include "crypto_lib.h"

/****************************** Macro Definitions ******************************/
/****************************** Type Definitions ******************************/
/****************************** Function Declarations *************************/
/*************************************************
 Function: VssAdapter_InitSoft
 Description: 软算法库适配层初始化。用于完成软算法库初始化、回调注册等动作。
 Input:  void
 Output: void
 Return: 0x00-成功
         其他-由底层软算法库返回
 Others: 
*************************************************/
uint32_t VssAdapter_InitSoft(void);

/*************************************************
 Function: VssAdapter_Sm4Calc
 Description: SM4对称加解密
 Input:  p_key    密钥（16字节）
         inData   输入数据（必须是 16 字节的倍数）
         inLen    输入数据长度（必须是 16 字节的倍数）
         calcFlag 0-加密；1-解密
 Output: outData  输出数据
         pOutLen  输出长度
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_Sm4Calc(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData);

/*************************************************
 Function: VssAdapter_Sm4Mac
 Description: SM4计算MAC
 Input:  in     输入数据
         inLen  输入数据长度
         key    密钥（16字节）
         keyLen 密钥长度
 Output: out16  MAC输出（16字节）
 Return: 0x00-成功
         0x18-算法不支持（默认占位）
 Others:
*************************************************/
uint32_t VssAdapter_Sm4CMac(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, uint8_t* out16);

/*************************************************
 Function: VssAdapter_Sm3Calc
 Description: SM3哈希计算
 Input:  indata  输入数据
         inLen   输入数据长度
 Output: hash    32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_Sm3Calc(const uint8_t *indata, uint32_t inLen, uint8_t* hash);

/*************************************************
 Function: VssAdapter_Sm3Init
 Description: SM3哈希初始化
 Input:  ctx     SM3上下文指针
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
void VssAdapter_Sm3Init(SM3_CTX_USER* ctx);

/*************************************************
 Function: VssAdapter_Sm3Init
 Description: SM3哈希初始化
 Input:  ctx     SM3上下文指针
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
void VssAdapter_Sm3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len);

/*************************************************
 Function: VssAdapter_Sm3Final
 Description: SM3结束计算
 Input:  ctx     SM3上下文指针
 Output: hash    32字节的输出缓冲区，用于存放计算出的SM3摘要
 Return: void
 Others:
*************************************************/
void VssAdapter_Sm3Final(SM3_CTX_USER *ctx, uint8_t *hash);

/*************************************************
 Function: VssAdapter_SHA256_CALC
 Description: SHA256哈希计算
 Input:  indata  输入数据
         inLen   输入数据长度
 Output: hash    32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
int VssAdapter_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash);

/*************************************************
 Function: VssAdapter_SHA256_Init
 Description: SHA256哈希初始化
 Input:  ctx     SHA256上下文指针
 Output: void
 Return: void
 Others:
*************************************************/
void VssAdapter_SHA256_Init(Crypto_SHA256_Context* ctx);

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
void VssAdapter_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len);

/*************************************************
 Function: VssAdapter_SHA256_Final
 Description: SHA256结束计算
 Input:  ctx     SHA256上下文指针
 Output: hash    32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Return: void
 Others:
*************************************************/
void VssAdapter_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash);

/*************************************************
 Function: VssAdapter_SM2_Verify
 Description: SM2验签
 Input:  data        待验签数据
         len         待验签数据长度
         signature   签名数据
         signature_len 签名数据长度
         pub_key     公钥数据
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);

/*************************************************
 Function: VssAdapter_SM2_Verify
 Description: SM2验签
 Input:  data        待验签数据
         len         待验签数据长度
         signature   签名数据
         signature_len 签名数据长度
         pub_key     公钥数据
 Output: void
 Return: 0-成功, 其他-失败
 Others:
*************************************************/
uint32_t VssAdapter_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);

/*************************************************
 Function: VssAdapter_CRC16_CCITT_False
 Description: 计算 CRC16 (CCITT-False 规范) 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_crc 初始 CRC 值 (通常为 0xFFFF)
 Output: None
 Return: 0-成功, 其他-失败
 Others: 
*************************************************/
uint32_t VssAdapter_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc);

/*************************************************
 Function: VssAdapter_CRC16_CCITT
 Description: 计算 CRC16 (标准 CCITT / X.25 规范) 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_crc 初始 CRC 值 (通常为 0x0000)
 Output: None
 Return: 0-成功, 其他-失败
 Others: 
*************************************************/
uint32_t VssAdapter_CRC16_CCITT(const uint8_t *data, uint32_t len, uint16_t initial_crc);


/*************************************************
 Function: VssAdapter_Crc32Init
 Description: 初始化 CRC32 动态查询表
 Input:  context    - CRC32 上下文指针
         polynomial - CRC32 生成多项式
 Return: uint32_t   - 标准初始 CRC 建议值 (固定为 0xFFFFFFFF)
*************************************************/
uint32_t VssAdapter_Crc32Init(crc32_context_t *context, uint32_t polynomial);

/*************************************************
 Function: VssAdapter_Crc32
 Description: 计算数据块的连续 CRC32 值 (支持分包累加)
 Input:  context     - CRC32 上下文指针
         current_crc - 当前的 CRC 累加值
         data        - 待验证的原始数据指针
         length      - 数据长度 (字节)
 Return: uint32_t    - 中间态或未取反的 CRC32 计算结果
*************************************************/
uint32_t VssAdapter_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length);

/*************************************************
 Function: VssAdapter_Crc32FinalResult
 Description: 输出最终的 CRC32 结果 (按位取反)
 Input:  context   - CRC32 上下文指针
         final_crc - 最终计算得出的原始 CRC 值
 Return: uint32_t  - 最终的 32 位 CRC 校验值
*************************************************/
uint32_t VssAdapter_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc);

/*************************************************
 Function: VssAdapter_CRC32_CALC
 Description: 计算 CRC32 校验值 (一键式封装)
 Input:  data        待计算数据
         len         待计算数据长度
         polynomial  CRC32 生成多项式 (如 0x04C11DB7)
 Output: None
 Return: 0-成功, 其他-失败
 Others: 内部已处理 Init -> Update -> Final 的完整流程
*************************************************/
uint32_t VssAdapter_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial);

/*************************************************
 Function: VssAdapter_CRC8
 Description: 计算 CRC8 校验值
 Input:  data        待计算数据
         len         待计算数据长度
         initial_val 初始 CRC 值 (通常为 0x00 或 0xFF)
         polynomial  CRC8 生成多项式
 Output: None
 Return: 0-成功, 其他-失败
 Others: 
*************************************************/
uint32_t VssAdapter_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial);

#endif /* VSS_ADAPTER_H */