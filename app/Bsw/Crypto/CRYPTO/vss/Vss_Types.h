/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: vss_Types.h
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
#ifndef VSS_TYPES_H
#define VSS_TYPES_H
/****************************** include ***************************************/
#include <stdint.h>
#include <string.h>

/****************************** Macro Definitions ******************************/
/* 通用执行结果 */
#define VSS_RET_SUCCESS                   0x00    /* 交易成功 [cite: 828] */

/* 协议与参数校验错误 (0x01 - 0x13) */
#define VSS_ERR_MSG_LEN_INVALID           0x01    /* 消息长度不合法 [cite: 828] */
#define VSS_ERR_MSG_CHECK_FAILED          0x02    /* 消息校验失败 [cite: 828] */
#define VSS_ERR_NO_PERMISSION             0x03    /* 无执行权限 [cite: 828] */
#define VSS_ERR_PARAM_CHECK_FAILED        0x04    /* 消息参数检查失败 [cite: 828] */
#define VSS_ERR_KEY_NOT_EXIST             0x05    /* 密钥不存在 [cite: 828] */
#define VSS_ERR_KEY_INVALID               0x06    /* 密钥不合法 [cite: 828] */
#define VSS_ERR_UNKNOWN_COMMAND           0x07    /* 不可识别的命令码 [cite: 828] */
#define VSS_ERR_CRYPTO_FAILED             0x08    /* 密码运算失败 [cite: 828] */
#define VSS_ERR_FLASH_RW_FAILED           0x09    /* FLASH读写失败 [cite: 828] */
#define VSS_ERR_SIGN_INVALID              0x0A    /* 签名不合法 [cite: 828] */
#define VSS_ERR_DATA_INVALID              0x0B    /* 数据不合法 [cite: 828] */
#define VSS_ERR_EXT_AUTH_FAILED           0x0C    /* 外部认证失败 [cite: 828] */
#define VSS_ERR_ALG_INVALID               0x0D    /* 算法不合法 [cite: 828] */
#define VSS_ERR_CERT_NOT_EXIST            0x0E    /* 证书不存在 [cite: 828] */
#define VSS_ERR_INDEX_INVALID             0x0F    /* 索引不合法 [cite: 828] */
#define VSS_ERR_READ_OTP_FAILED           0x10    /* 读取OTP失败 [cite: 828] */
#define VSS_ERR_UPDATE_OTP_FAILED         0x11    /* 更新OTP失败 [cite: 828] */
#define VSS_ERR_INPUT_LEN_INVALID         0x12    /* 输入参数中的长度不合法 [cite: 828] */
#define VSS_ERR_TYPE_INVALID              0x13    /* 类型不合法 [cite: 828] */

/* 算法库内部状态与逻辑错误 (0x14 - 0x27) */
#define VSS_ERR_VERSION_CHECK_FAILED      0x14    /* 版本检查失败 [cite: 828] */
#define VSS_ERR_P1_PARAM_INVALID          0x15    /* P1参数不合法 [cite: 828] */
#define VSS_ERR_P2_PARAM_INVALID          0x16    /* P2参数不合法 [cite: 828] */
#define VSS_ERR_GEN_RANDOM_FAILED         0x17    /* 产生随机数失败 [cite: 828] */
#define VSS_ERR_ALG_NOT_SUPPORTED         0x18    /* 算法不支持 [cite: 828] */
#define VSS_ERR_KEY_LEN_INVALID           0x19    /* 密钥长度非法 [cite: 828] */
#define VSS_ERR_CERT_FORMAT_INVALID       0x1A    /* 证书数据不是指定的证书格式 [cite: 828] */
#define VSS_ERR_NOT_INITIALIZED           0x1B    /* 系统未初始化 [cite: 828] */
#define VSS_ERR_READ_CACHE_FAILED         0x1C    /* 读缓存失败 [cite: 828] */
#define VSS_ERR_WRITE_CACHE_FAILED        0x1D    /* 写缓存失败 [cite: 828] */
#define VSS_ERR_CERT_INDEX_ERROR          0x1E    /* 指定证书索引错误 [cite: 828] */
#define VSS_ERR_READ_CFG_FAILED           0x1F    /* 读取配置信息错误 [cite: 828] */
#define VSS_ERR_FTLS_VERIFY_FAILED        0x20    /* FTLS握手校验失败 [cite: 828] */
#define VSS_ERR_VSN_ALREADY_GEN           0x21    /* VSN已经被生成过 [cite: 828] */
#define VSS_ERR_FLASH_ANTI_TAMPER_FAIL    0x22    /* FLASH读取数据防篡改校验失败 [cite: 828] */
#define VSS_ERR_KEY_NOT_GENERATED         0x23    /* 尚未生成密钥 [cite: 828] */
#define VSS_ERR_CLOUD_COMM_ABNORMAL       0x24    /* 车云通信异常 [cite: 828] */
#define VSS_ERR_KEY_CERT_NOT_MATCH        0x25    /* 密钥和证书不匹配 [cite: 828] */
#define VSS_ERR_KEY_CERT_ALG_NOT_MATCH    0x26    /* 密钥和证书算法不匹配 [cite: 828] */
#define VSS_ERR_SET_USERID_ERROR          0x27    /* 设置userId错误 [cite: 828] */

/* 芯片通信及硬件相关错误 (0xE0 - 0xED) */
#define VSS_ERR_CFG_INFO_ERROR            0xE0    /* 配置信息错误 [cite: 828] */
#define VSS_ERR_INPUT_PARAM_INVALID       0xE1    /* 输入参数不合法 [cite: 828] */
#define VSS_ERR_DATA_SEND_FAILED          0xE2    /* 数据发送失败 [cite: 828] */
#define VSS_ERR_COMM_TIMEOUT              0xE3    /* 通信超时 [cite: 828] */
#define VSS_ERR_DATA_RECV_FAILED          0xE4    /* 数据接收失败 [cite: 828] */
#define VSS_ERR_COMM_MSG_CHECK_FAIL       0xE5    /* 消息校验失败 (通信层) [cite: 828] */
#define VSS_ERR_MSG_BODY_LEN_INVALID      0xE6    /* 消息体长度不合法 [cite: 828] */
#define VSS_ERR_MSG_LEN_INVALID_EXT       0xEA    /* 消息长度不合法 [cite: 828] */
#define VSS_ERR_GPIO_FAILED               0xEC    /* GPIO失败 [cite: 828] */
#define VSS_ERR_INPUT_DATA_LEN_INVALID    0xED    /* 输入的数据长度不合法 [cite: 828] */

#define VSS_ERR_SYSTEM               0x80    /* (2000) 系统错误 [cite: 828] */
#define VSS_ERR_INDEX_NOT_EXIST      0x81    /* (2001) 索引数据不存在(vin,accountid) [cite: 828] */
#define VSS_ERR_APP_DATA_NOT_EXIST   0x82    /* (2002) app数据不存在 [cite: 828] */
#define VSS_ERR_REPORT_FORMAT_ERROR  0x83    /* (2003) 汇报报文格式解析错误 [cite: 828] */
#define VSS_ERR_VERIFY_FAILED        0x84    /* (2004) 校验失败(验签, hash) [cite: 828] */
#define VSS_ERR_CERT_SELF_SIGN_FAIL  0x85    /* (2005) 证书自签名校验失败 [cite: 828] */
#define VSS_ERR_ROOT_CERT_ABNORMAL   0x86    /* (2006) 根证书获取异常 [cite: 828] */
#define VSS_ERR_USAP_ACCESS_ABNORMAL 0x87    /* (2007) usap访问异常 [cite: 828] */
#define VSS_ERR_CLOUD_UNKNOWN        0x8F    /* 未记录的云端错误 [cite: 828] */

/****************************** Type Definitions ******************************/
typedef enum {
    VSS_ITEM_VSN = 0,
    VSS_ITEM_VSN_ACTIVE,
    VSS_ITEM_SM4_KEY,
    VSS_ITEM_SM4_KEY_ACTIVE,
    VSS_ITEM_AES_KEY,
    VSS_ITEM_AES_KEY_ACTIVE,
    VSS_ITEM_SM2_KEY,
    VSS_ITEM_ECC256_KEY,
    VSS_ITEM_MAX
} VssItemType_e;

typedef enum {
    VSS_FLASH_Write = 0,
    VSS_FLASH_Read,
    VSS_OPERA_TYPE_MAX
} VssFlashOperaType_e;

typedef enum {
    VSS_ENCRYPT = 0,
    VSS_DECRYPT,
    VSS_CRYPT_TYPE_MAX
} VssCryptType_e;

#endif /* VSS_TYPES_H */