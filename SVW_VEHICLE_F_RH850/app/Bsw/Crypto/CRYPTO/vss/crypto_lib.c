/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: crypto_lib.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "crypto_lib.h"
#include "Wdg_59_DriverB_Irq.h"

/****************************** include ***************************************/
/* SM4 相关 */
#define SM4_BLOCK_SIZE 16
#define RB_128 0x87
#define ROTL(x, n) (((x) << (n)) | ((x) >> (32 - (n))))
#define GET_UINT32_BE(n, b, i) ((n) = ((uint32_t)(b)[(i)] << 24) | ((uint32_t)(b)[(i) + 1] << 16) | ((uint32_t)(b)[(i) + 2] << 8) | ((uint32_t)(b)[(i) + 3]))
#define PUT_UINT32_BE(n, b, i) { (b)[(i)] = (uint8_t)((n) >> 24); (b)[(i) + 1] = (uint8_t)((n) >> 16); (b)[(i) + 2] = (uint8_t)((n) >> 8); (b)[(i) + 3] = (uint8_t)(n); }

/* SM3 相关 */
#define ROL32(x, n) (((x) << (n)) | ((x) >> (32 - (n))))
#define P0(x) ((x) ^ ROL32((x), 9) ^ ROL32((x), 17))
#define P1(x) ((x) ^ ROL32((x), 15) ^ ROL32((x), 23))
#define FF00(x, y, z) ((x) ^ (y) ^ (z))
#define FF16(x, y, z) (((x) & (y)) | ((x) & (z)) | ((y) & (z)))
#define GG00(x, y, z) ((x) ^ (y) ^ (z))
#define GG16(x, y, z) ((((y) ^ (z)) & (x)) ^ (z))

#define SM3_ROUND_0(j, A, B, C, D, E, F, G, H)    \
  SS0 = ROL32(A, 12);                           \
  SS1 = ROL32(SS0 + E + K[j], 7);               \
  SS2 = SS1 ^ SS0;                              \
  D += FF00(A, B, C) + SS2 + (W[j] ^ W[j + 4]); \
  SS1 += GG00(E, F, G) + H + W[j];              \
  B = ROL32(B, 9);                              \
  H = P0(SS1);                                  \
  F = ROL32(F, 19);                             \
  W[j + 16] = P1(W[j] ^ W[j + 7] ^ ROL32(W[j + 13], 15)) ^ ROL32(W[j + 3], 7) ^ W[j + 10];

#define SM3_ROUND_1(j, A, B, C, D, E, F, G, H)    \
  SS0 = ROL32(A, 12);                           \
  SS1 = ROL32(SS0 + E + K[j], 7);               \
  SS2 = SS1 ^ SS0;                              \
  D += FF16(A, B, C) + SS2 + (W[j] ^ W[j + 4]); \
  SS1 += GG16(E, F, G) + H + W[j];              \
  B = ROL32(B, 9);                              \
  H = P0(SS1);                                  \
  F = ROL32(F, 19);                             \
  W[j + 16] = P1(W[j] ^ W[j + 7] ^ ROL32(W[j + 13], 15)) ^ ROL32(W[j + 3], 7) ^ W[j + 10];

#define SM3_ROUND_2(j, A, B, C, D, E, F, G, H)    \
  SS0 = ROL32(A, 12);                           \
  SS1 = ROL32(SS0 + E + K[j], 7);               \
  SS2 = SS1 ^ SS0;                              \
  D += FF16(A, B, C) + SS2 + (W[j] ^ W[j + 4]); \
  SS1 += GG16(E, F, G) + H + W[j];              \
  B = ROL32(B, 9);                              \
  H = P0(SS1);                                  \
  F = ROL32(F, 19);

#define GETU32(p) \
  ((uint32_t)(p)[0] << 24 | \
   (uint32_t)(p)[1] << 16 | \
   (uint32_t)(p)[2] <<  8 | \
   (uint32_t)(p)[3])

/* SHA256相关 */
#define ROTR32(x, n) (((x) >> (n)) | ((x) << (32 - (n))))
#define CH(x, y, z)  (((x) & (y)) ^ (~(x) & (z)))
#define MAJ(x, y, z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define EP0(x)       (ROTR32(x, 2) ^ ROTR32(x, 13) ^ ROTR32(x, 22))
#define EP1(x)       (ROTR32(x, 6) ^ ROTR32(x, 11) ^ ROTR32(x, 25))
#define SIG0(x)      (ROTR32(x, 7) ^ ROTR32(x, 18) ^ ((x) >> 3))
#define SIG1(x)      (ROTR32(x, 17) ^ ROTR32(x, 19) ^ ((x) >> 10))

/* SM2 相关 */
#define GETU64(p) \
    ((uint64_t)(p)[0] << 56 | \
     (uint64_t)(p)[1] << 48 | \
     (uint64_t)(p)[2] << 40 | \
     (uint64_t)(p)[3] << 32 | \
     (uint64_t)(p)[4] << 24 | \
     (uint64_t)(p)[5] << 16 | \
     (uint64_t)(p)[6] <<  8 | \
     (uint64_t)(p)[7])

#define PUTU64(p,V) \
    ((p)[0] = (uint8_t)((V) >> 56), \
     (p)[1] = (uint8_t)((V) >> 48), \
     (p)[2] = (uint8_t)((V) >> 40), \
     (p)[3] = (uint8_t)((V) >> 32), \
     (p)[4] = (uint8_t)((V) >> 24), \
     (p)[5] = (uint8_t)((V) >> 16), \
     (p)[6] = (uint8_t)((V) >>  8), \
     (p)[7] = (uint8_t)(V))

#define GETU32(p) \
    ((uint32_t)(p)[0] << 24 | \
     (uint32_t)(p)[1] << 16 | \
     (uint32_t)(p)[2] <<  8 | \
     (uint32_t)(p)[3])

#define PUTU32(p,V) \
    ((p)[0] = (uint8_t)((V) >> 24), \
     (p)[1] = (uint8_t)((V) >> 16), \
     (p)[2] = (uint8_t)((V) >>  8), \
     (p)[3] = (uint8_t)(V))

#define asn1_sequence_from_der(d,dlen,in,inlen) asn1_type_from_der(ASN1_TAG_SEQUENCE,d,dlen,in,inlen)
#define asn1_integer_from_der(d,dlen,in,inlen) asn1_integer_from_der_ex(ASN1_TAG_INTEGER,d,dlen,in,inlen)

/****************************** Type Definitions ******************************/

/****************************** Global Variables ******************************/
/* SM4 相关 */
static const uint8_t SM4_SBOX[256] = {
  0xd6, 0x90, 0xe9, 0xfe, 0xcc, 0xe1, 0x3d, 0xb7, 0x16, 0xb6, 0x14, 0xc2, 0x28, 0xfb, 0x2c, 0x05, 0x2b, 0x67, 0x9a, 0x76, 0x2a, 0xbe, 0x04, 0xc3, 0xaa, 0x44, 0x13, 0x26, 0x49, 0x86, 0x06, 0x99,
  0x9c, 0x42, 0x50, 0xf4, 0x91, 0xef, 0x98, 0x7a, 0x33, 0x54, 0x0b, 0x43, 0xed, 0xcf, 0xac, 0x62, 0xe4, 0xb3, 0x1c, 0xa9, 0xc9, 0x08, 0xe8, 0x95, 0x80, 0xdf, 0x94, 0xfa, 0x75, 0x8f, 0x3f, 0xa6,
  0x47, 0x07, 0xa7, 0xfc, 0xf3, 0x73, 0x17, 0xba, 0x83, 0x59, 0x3c, 0x19, 0xe6, 0x85, 0x4f, 0xa8, 0x68, 0x6b, 0x81, 0xb2, 0x71, 0x64, 0xda, 0x8b, 0xf8, 0xeb, 0x0f, 0x4b, 0x70, 0x56, 0x9d, 0x35,
  0x1e, 0x24, 0x0e, 0x5e, 0x63, 0x58, 0xd1, 0xa2, 0x25, 0x22, 0x7c, 0x3b, 0x01, 0x21, 0x78, 0x87, 0xd4, 0x00, 0x46, 0x57, 0x9f, 0xd3, 0x27, 0x52, 0x4c, 0x36, 0x02, 0xe7, 0xa0, 0xc4, 0xc8, 0x9e,
  0xea, 0xbf, 0x8a, 0xd2, 0x40, 0xc7, 0x38, 0xb5, 0xa3, 0xf7, 0xf2, 0xce, 0xf9, 0x61, 0x15, 0xa1, 0xe0, 0xae, 0x5d, 0xa4, 0x9b, 0x34, 0x1a, 0x55, 0xad, 0x93, 0x32, 0x30, 0xf5, 0x8c, 0xb1, 0xe3,
  0x1d, 0xf6, 0xe2, 0x2e, 0x82, 0x66, 0xca, 0x60, 0xc0, 0x29, 0x23, 0xab, 0x0d, 0x53, 0x4e, 0x6f, 0xd5, 0xdb, 0x37, 0x45, 0xde, 0xfd, 0x8e, 0x2f, 0x03, 0xff, 0x6a, 0x72, 0x6d, 0x6c, 0x5b, 0x51,
  0x8d, 0x1b, 0xaf, 0x92, 0xbb, 0xdd, 0xbc, 0x7f, 0x11, 0xd9, 0x5c, 0x41, 0x1f, 0x10, 0x5a, 0xd8, 0x0a, 0xc1, 0x31, 0x88, 0xa5, 0xcd, 0x7b, 0xbd, 0x2d, 0x74, 0xd0, 0x12, 0xb8, 0xe5, 0xb4, 0xb0,
  0x89, 0x69, 0x97, 0x4a, 0x0c, 0x96, 0x77, 0x7e, 0x65, 0xb9, 0xf1, 0x09, 0xc5, 0x6e, 0xc6, 0x84, 0x18, 0xf0, 0x7d, 0xec, 0x3a, 0xdc, 0x4d, 0x20, 0x79, 0xee, 0x5f, 0x3e, 0xd7, 0xcb, 0x39, 0x48
};

static const uint32_t SM4_FK[4] = {0xa3b1bac6, 0x56aa3350, 0x677d9197, 0xb27022dc};

static const uint32_t SM4_CK[32] = {
  0x00070e15, 0x1c232a31, 0x383f464d, 0x545b6269, 0x70777e85, 0x8c939aa1, 0xa8afb6bd, 0xc4cbd2d9,
  0xe0e7eef5, 0xfc030a11, 0x181f262d, 0x343b4249, 0x50575e65, 0x6c737a81, 0x888f969d, 0xa4abb2b9,
  0xc0c7ced5, 0xdce3eaf1, 0xf8ff060d, 0x141b2229, 0x30373e45, 0x4c535a61, 0x686f767d, 0x848b9299,
  0xa0a7aeb5, 0xbcc3cad1, 0xd8dfe6ed, 0xf4fb0209, 0x10171e25, 0x2c333a41, 0x484f565d, 0x646b7279
};

/* SM3 相关 */
static const uint32_t K[64] = {
    0x79cc4519U, 0xf3988a32U, 0xe7311465U, 0xce6228cbU, 0x9cc45197U, 0x3988a32fU, 0x7311465eU, 0xe6228cbcU,
    0xcc451979U, 0x988a32f3U, 0x311465e7U, 0x6228cbceU, 0xc451979cU, 0x88a32f39U, 0x11465e73U, 0x228cbce6U,
    0x9d8a7a87U, 0x3b14f50fU, 0x7629ea1eU, 0xec53d43cU, 0xd8a7a879U, 0xb14f50f3U, 0x629ea1e7U, 0xc53d43ceU,
    0x8a7a879dU, 0x14f50f3bU, 0x29ea1e76U, 0x53d43cecU, 0xa7a879d8U, 0x4f50f3b1U, 0x9ea1e762U, 0x3d43cec5U,
    0x7a879d8aU, 0xf50f3b14U, 0xea1e7629U, 0xd43cec53U, 0xa879d8a7U, 0x50f3b14fU, 0xa1e7629eU, 0x43cec53dU,
    0x879d8a7aU, 0x0f3b14f5U, 0x1e7629eaU, 0x3cec53d4U, 0x79d8a7a8U, 0xf3b14f50U, 0xe7629ea1U, 0xcec53d43U,
    0x9d8a7a87U, 0x3b14f50fU, 0x7629ea1eU, 0xec53d43cU, 0xd8a7a879U, 0xb14f50f3U, 0x629ea1e7U, 0xc53d43ceU,
    0x8a7a879dU, 0x14f50f3bU, 0x29ea1e76U, 0x53d43cecU, 0xa7a879d8U, 0x4f50f3b1U, 0x9ea1e762U, 0x3d43cec5U,
};

/* SHA256 相关 */
static const uint32_t SHA256_K[64] = {
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
};

/* SM2 相关 */
const sm2_z256_t SM2_Z256_P = {
    0xffffffffffffffff,  // 低64位
    0xffffffff00000000,  // 次低64位
    0xffffffffffffffff,  // 次高64位
    0xfffffffeffffffff}; // 高64位

const sm2_z256_t SM2_Z256_NEG_P = {
    1,                              // 低64位
    ((uint64_t)1 << 32) - 1,        // 次低64位：0xFFFFFFFF
    0,                              // 次高64位
    ((uint64_t)1 << 32)};           // 高64位：0x100000000

// 蒙哥马利域中的1（模p）
const uint64_t *SM2_Z256_MODP_MONT_ONE = SM2_Z256_NEG_P;

// 2^512 mod p，用于蒙哥马利域转换
const sm2_z256_t SM2_Z256_2e512modp = {
    0x0000000200000003,  // 低64位
    0x00000002ffffffff,  // 次低64位
    0x0000000100000001,  // 次高64位
    0x0000000400000002}; // 高64位

const sm2_z256_t SM2_Z256_P_PRIME = {
    0x0000000000000001,  // 低64位
    0xffffffff00000001,  // 次低64位
    0xfffffffe00000000,  // 次高64位
    0xfffffffc00000001}; // 高64位

const sm2_z256_t SM2_Z256_MODP_MONT_B = {
    0x90d230632bc0dd42,  // 低64位
    0x71cf379ae9b537ab,  // 次低64位
    0x527981505ea51c3c,  // 次高64位
    0x240fe188ba20e2c8}; // 高64位

const uint64_t SM2_Z256_N[4] = {
    0x53bbf40939d54123,  // 低64位
    0x7203df6b21c6052b,  // 次低64位
    0xffffffffffffffff,  // 次高64位
    0xfffffffeffffffff}; // 高64位

const uint64_t SM2_Z256_NEG_N[4] = {
    0xac440bf6c62abedd,  // 低64位
    0x8dfc2094de39fad4,  // 次低64位
    0x0000000000000000,  // 次高64位
    0x0000000100000000}; // 高64位


static SM2_Z256_AFFINE_POINT (*g_pre_comp)[64] = (SM2_Z256_AFFINE_POINT (*)[64])sm2_z256_pre_comp;
const sm2_z256_t SM2_Z256_ONE = {1, 0, 0, 0};

/*  secp256r1 相关 */
static const secp256r1_t g_secp256r1N = {0xfc632551, 0xf3b9cac2, 0xa7179e84, 0xbce6faad, 0xffffffff, 0xffffffff, 0x00000000, 0xffffffff};
static const uint32_t g_secp256r1UN[9] = {0xeedf9bfe, 0x012ffd85, 0xdf1a6c21, 0x43190552, 0xffffffff, 0xfffffffe, 0xffffffff, 0x00000000, 0x00000001};
static const secp256r1_t g_secp256r1P = {0xffffffff, 0xffffffff, 0xffffffff, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0xffffffff};
static const uint32_t g_secp256r1UP[9] = {0x00000003, 0x00000000, 0xffffffff, 0xfffffffe, 0xfffffffe, 0xfffffffe, 0xffffffff, 0x00000000, 0x00000001};
static const secp256r1_t g_secp256r1B = {0x27d2604b, 0x3bce3c3e, 0xcc53b0f6, 0x651d06b0, 0x769886bc, 0xb3ebbd55, 0xaa3a93e7, 0x5ac635d8};

static const SECP256R1_POINT g_secp256r1PointG = {
    {0xd898c296, 0xf4a13945, 0x2deb33a0, 0x77037d81, 0x63a440f2, 0xf8bce6e5, 0xe12c4247, 0x6b17d1f2},
    {0x37bf51f5, 0xcbb64068, 0x6b315ece, 0x2bce3357, 0x7c0f9e16, 0x8ee7eb4a, 0xfe1a7f9b, 0x4fe342e2},
    {1, 0, 0, 0, 0, 0, 0, 0}
};

static const uint32_t g_sha256K[64] = {
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
};

/* CRC 相关 */
/* CCITT-False (多项式 0x1021，非反转格式) 查询表格 */
static const uint16_t crc16_ccitt_false_table[256] = {
    0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7, 
    0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef, 
    0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6, 
    0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de, 
    0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485, 
    0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d, 
    0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4, 
    0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc, 
    0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823, 
    0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b, 
    0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12, 
    0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a, 
    0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41, 
    0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49, 
    0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70, 
    0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78, 
    0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f, 
    0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067, 
    0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e, 
    0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256, 
    0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d, 
    0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405, 
    0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c, 
    0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634, 
    0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab, 
    0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3, 
    0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a, 
    0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92, 
    0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9, 
    0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1, 
    0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8, 
    0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0
};

/* CCITT-16 (生成式 0x1021 反转成 0x8408) 查询表格 */
static const uint16_t crc16_ccitt_table[256] = {
    0x0000, 0x1189, 0x2312, 0x329b, 0x4624, 0x57ad, 0x6536, 0x74bf,
    0x8c48, 0x9dc1, 0xaf5a, 0xbed3, 0xca6c, 0xdbe5, 0xe97e, 0xf8f7,
    0x1081, 0x0108, 0x3393, 0x221a, 0x56a5, 0x472c, 0x75b7, 0x643e,
    0x9cc9, 0x8d40, 0xbfdb, 0xae52, 0xdaed, 0xcb64, 0xf9ff, 0xe876,
    0x2102, 0x308b, 0x0210, 0x1399, 0x6726, 0x76af, 0x4434, 0x55bd,
    0xad4a, 0xbcc3, 0x8e58, 0x9fd1, 0xeb6e, 0xfae7, 0xc87c, 0xd9f5,
    0x3183, 0x200a, 0x1291, 0x0318, 0x77a7, 0x662e, 0x54b5, 0x453c,
    0xbdcb, 0xac42, 0x9ed9, 0x8f50, 0xfbef, 0xea66, 0xd8fd, 0xc974,
    0x4204, 0x538d, 0x6116, 0x709f, 0x0420, 0x15a9, 0x2732, 0x36bb,
    0xce4c, 0xdfc5, 0xed5e, 0xfcd7, 0x8868, 0x99e1, 0xab7a, 0xbaf3,
    0x5285, 0x430c, 0x7197, 0x601e, 0x14a1, 0x0528, 0x37b3, 0x263a,
    0xdecd, 0xcf44, 0xfddf, 0xec56, 0x98e9, 0x8960, 0xbbfb, 0xaa72,
    0x6306, 0x728f, 0x4014, 0x519d, 0x2522, 0x34ab, 0x0630, 0x17b9,
    0xef4e, 0xfec7, 0xcc5c, 0xddd5, 0xa96a, 0xb8e3, 0x8a78, 0x9bf1,
    0x7387, 0x620e, 0x5095, 0x411c, 0x35a3, 0x242a, 0x16b1, 0x0738,
    0xffcf, 0xee46, 0xdcdd, 0xcd54, 0xb9eb, 0xa862, 0x9af9, 0x8b70,
    0x8408, 0x9581, 0xa71a, 0xb693, 0xc22c, 0xd3a5, 0xe13e, 0xf0b7,
    0x0840, 0x19c9, 0x2b52, 0x3adb, 0x4e64, 0x5fed, 0x6d76, 0x7cff,
    0x9489, 0x8500, 0xb79b, 0xa612, 0xd2ad, 0xc324, 0xf1bf, 0xe036,
    0x18c1, 0x0948, 0x3bd3, 0x2a5a, 0x5ee5, 0x4f6c, 0x7df7, 0x6c7e,
    0xa50a, 0xb483, 0x8618, 0x9791, 0xe32e, 0xf2a7, 0xc03c, 0xd1b5,
    0x2942, 0x38cb, 0x0a50, 0x1bd9, 0x6f66, 0x7eef, 0x4c74, 0x5dfd,
    0xb58b, 0xa402, 0x9699, 0x8710, 0xf3af, 0xe226, 0xd0bd, 0xc134,
    0x39c3, 0x284a, 0x1ad1, 0x0b58, 0x7fe7, 0x6e6e, 0x5cf5, 0x4d7c,
    0xc60c, 0xd785, 0xe51e, 0xf497, 0x8028, 0x91a1, 0xa33a, 0xb2b3,
    0x4a44, 0x5bcd, 0x6956, 0x78df, 0x0c60, 0x1de9, 0x2f72, 0x3efb,
    0xd68d, 0xc704, 0xf59f, 0xe416, 0x90a9, 0x8120, 0xb3bb, 0xa232,
    0x5ac5, 0x4b4c, 0x79d7, 0x685e, 0x1ce1, 0x0d68, 0x3ff3, 0x2e7a,
    0xe70e, 0xf687, 0xc41c, 0xd595, 0xa12a, 0xb0a3, 0x8238, 0x93b1,
    0x6b46, 0x7acf, 0x4854, 0x59dd, 0x2d62, 0x3ceb, 0x0e70, 0x1ff9,
    0xf78f, 0xe606, 0xd49d, 0xc514, 0xb1ab, 0xa022, 0x92b9, 0x8330,
    0x7bc7, 0x6a4e, 0x58d5, 0x495c, 0x3de3, 0x2c6a, 0x1ef1, 0x0f78
};

/****************************** Function Declarations *************************/
/* SM4 相关 */
static uint32_t sm4_tau(uint32_t a);
static uint32_t sm4_l_cal(uint32_t b);
static uint32_t sm4_l_key(uint32_t b);
static void SM4_EncryptBlock(const uint8_t *key, const uint8_t *input, uint8_t *output);
static void LeftShiftOneBit(uint8_t *data);
static void Xor128(uint8_t *out, const uint8_t *in1, const uint8_t *in2);
/* SM3 相关 */
static void sm3_compress_blocks(uint32_t digest[8], const uint8_t *data, size_t blocks);
/* SHA256 相关 */
static void sha256_transform(uint32_t *state, const uint8_t *data);
/* SM2 相关 */
static int sm2_z256_point_from_octets(SM2_Z256_POINT *P, const uint8_t *in, size_t inlen);
static int sm2_signature_from_der(SM2_SIGNATURE *sig, const uint8_t **in, size_t *inlen);
static int sm2_do_verify(const SM2_KEY *key, const uint8_t dgst[32], const SM2_SIGNATURE *sig);
static int asn1_type_from_der(int tag, const uint8_t **d, size_t *dlen, const uint8_t **in, size_t *inlen);
int asn1_integer_from_der_ex(int tag, const uint8_t **d, size_t *dlen, const uint8_t **in, size_t *inlen);
/* secp256r1相关 */
static int secp256r1_public_key_from_bytes(SECP256R1_KEY *key, const uint8_t **in, size_t *inlen);
static void secp256r1_from_32bytes(secp256r1_t r, const uint8_t in[32]);
static int ecdsa_do_verify(const SECP256R1_KEY *key, const uint8_t dgst[32], const ECDSA_SIGNATURE *sig);
/* CRC 相关 */
static uint32_t ReverseBits(uint32_t input, uint8_t bit_width);

/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: Crypto_SM4_CMAC
 Description: 标准 SM4-CMAC 算法实现
 Input: key - 16字节的 SM4 主密钥
        data - 待计算的完整数据指针 (对于 SecOC，需提前将 Payload 和 FV 拼好)
        len - 数据长度（字节）
 Output: None
 Return: CRYPTO_E_OK(0) 成功, CRYPTO_E_NOT_OK(-1) 失败
 Others:
*************************************************/
int Crypto_SM4_CMAC(const uint8_t *key, const uint8_t *data, uint32_t len, uint8_t *mac)
{
    if (key == NULL || mac == NULL)
    {
        return CRYPTO_E_NOT_OK;
    }
    
    if (len > 0 && data == NULL)
    {
        return CRYPTO_E_NOT_OK;
    }
    
    uint8_t K1[SM4_BLOCK_SIZE], K2[SM4_BLOCK_SIZE], L[SM4_BLOCK_SIZE];
    uint8_t X[SM4_BLOCK_SIZE] = {0}, Y[SM4_BLOCK_SIZE], M_last[SM4_BLOCK_SIZE];
    uint32_t n, i;

    memset(L, 0, SM4_BLOCK_SIZE);
    SM4_EncryptBlock(key, L, L);

    memcpy(K1, L, SM4_BLOCK_SIZE);
    uint8_t msb_L = K1[0] & 0x80;
    LeftShiftOneBit(K1);
    if (msb_L)
    K1[15] ^= RB_128;

    memcpy(K2, K1, SM4_BLOCK_SIZE);
    uint8_t msb_K1 = K2[0] & 0x80;
    LeftShiftOneBit(K2);
    if (msb_K1 != 0)
    {
        K2[15] ^= RB_128;
    }

    n = (len + 15) / SM4_BLOCK_SIZE;
    if (n == 0)
    {
        n = 1;
    }
    
    for (i = 0; i < n - 1; i++)
    {
        Xor128(Y, X, &data[i * SM4_BLOCK_SIZE]);
        SM4_EncryptBlock(key, Y, X);
    }
    memset(M_last, 0, SM4_BLOCK_SIZE);
    uint32_t last_block_len = len - (n - 1) * SM4_BLOCK_SIZE;

    if (len != 0 && last_block_len == SM4_BLOCK_SIZE)
    {
        Xor128(M_last, &data[(n - 1) * SM4_BLOCK_SIZE], K1);
    }
    else
    {
        if (len != 0)
        {
            memcpy(M_last, &data[(n - 1) * SM4_BLOCK_SIZE], last_block_len);
        }
        M_last[last_block_len] = 0x80;
        Xor128(M_last, M_last, K2);
    }
    Xor128(Y, X, M_last);
    SM4_EncryptBlock(key, Y, mac);

    return CRYPTO_E_OK;
}

/*************************************************
 Function: Crypto_SM4_Challenge_Response
 Description: SM4挑战-应答认证算法。将8字节随机数挑战值使用
              0x80 0x00...补齐至16字节后，调用SM4-ECB加密，
              截取密文前8字节作为应答值返回。
 Input: key       - 16字节的SM4密钥
        challenge - 8字节的随机数挑战值
 Output: response - 8字节的应答值（SM4加密结果的前8字节）
 Return: CRYPTO_E_OK(0) 成功, CRYPTO_E_NOT_OK(-1) 失败
 Others: 补齐方式: [8字节挑战值] [0x80] [0x00]*7 共16字节
*************************************************/
int Crypto_SM4_Challenge_Response(const uint8_t *key, const uint8_t *challenge, uint8_t *response)
{
    if (key == NULL || challenge == NULL || response == NULL)
    {
        return CRYPTO_E_NOT_OK;
    }

    uint8_t padded_block[SM4_BLOCK_SIZE] = {0}; 
    uint8_t encrypted_block[SM4_BLOCK_SIZE] = {0};

    memcpy(padded_block, challenge, 8);
    padded_block[8] = 0x80; 
    SM4_EncryptBlock(key, padded_block, encrypted_block);
    memcpy(response, encrypted_block, 8);

    return CRYPTO_E_OK;
}

/*************************************************
 Function: Crypto_SM3_CALC
 Description: 计算SM3哈希值
 Input: data - 待计算哈希的数据指针
    len - 数据长度（字节）
    hash - 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Output: 
 Return: 计算成功返回CRYPTO_E_OK(0)，失败返回CRYPTO_E_NOT_OK(-1)
 Others:
*************************************************/
int Crypto_SM3_CALC(const uint8_t *data, uint32_t len, uint8_t *hash)
{
    if (hash == NULL)
    {
        return CRYPTO_E_NOT_OK;
    }
        
    if (len > 0 && data == NULL)
    {
        return CRYPTO_E_NOT_OK;
    }

    SM3_CTX_USER ctx;
    Crypto_SM3_Init(&ctx);
    Crypto_SM3_Update(&ctx, data, len);
    Crypto_SM3_Final(&ctx, hash);
    return CRYPTO_E_OK;
}

/*************************************************
 Function: Crypto_SM3_Init
 Description: 初始化SM3上下文
 Input: ctx - SM3上下文指针
 Output: 
 Return: 无
 Others:
*************************************************/
void Crypto_SM3_Init(SM3_CTX_USER *ctx)
{
    ctx->state[0] = 0x7380166f;
    ctx->state[1] = 0x4914b2b9;
    ctx->state[2] = 0x172442d7;
    ctx->state[3] = 0xda8a0600;
    ctx->state[4] = 0xa96f30bc;
    ctx->state[5] = 0x163138aa;
    ctx->state[6] = 0xe38dee4d;
    ctx->state[7] = 0xb0fb0e4e;
    ctx->count[0] = 0;
    ctx->count[1] = 0;
}

/*************************************************
 Function: Crypto_SM3_Update
 Description: 更新SM3上下文
 Input: ctx - SM3上下文指针
        data - 待更新数据指针
        len - 数据长度（字节）
 Output: 
 Return: 无
 Others:
*************************************************/
void Crypto_SM3_Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len)
{
    uint32_t i, index, partlen;
    uint32_t block_count = 0;

    index = (ctx->count[0] >> 3) & 0x3F;
    ctx->count[0] += len << 3;
    if (ctx->count[0] < (len << 3))
    {
        ctx->count[1]++;
    }

    ctx->count[1] += len >> 29;
    partlen = 64 - index;

    if (len >= partlen)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        memcpy(&ctx->buffer[index], data, partlen);
        sm3_compress_blocks(ctx->state, ctx->buffer, 1);
        for (i = partlen; i + 63 < len; i += 64)
        {
            sm3_compress_blocks(ctx->state, &data[i], 1);
            block_count++;
            if (block_count >= 64)
            {
                Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
                block_count = 0;
            }
        }
        index = 0;
    }
    else
    {
        i = 0;
    }
    memcpy(&ctx->buffer[index], &data[i], len - i);
}

/*************************************************
 Function: Crypto_SM3_Final
 Description: 完成SM3哈希计算
 Input: ctx - SM3上下文指针
        hash - 32字节的输出缓冲区，用于存放计算出的SM3摘要
 Output: 
 Return: 无
 Others:
*************************************************/
void Crypto_SM3_Final(SM3_CTX_USER *ctx, uint8_t *hash)
{
    uint32_t i, index;
    uint8_t bits[8];

    bits[0] = (uint8_t)((ctx->count[1] >> 24) & 0xFF);
    bits[1] = (uint8_t)((ctx->count[1] >> 16) & 0xFF);
    bits[2] = (uint8_t)((ctx->count[1] >> 8) & 0xFF);
    bits[3] = (uint8_t)(ctx->count[1] & 0xFF);
    bits[4] = (uint8_t)((ctx->count[0] >> 24) & 0xFF);
    bits[5] = (uint8_t)((ctx->count[0] >> 16) & 0xFF);
    bits[6] = (uint8_t)((ctx->count[0] >> 8) & 0xFF);
    bits[7] = (uint8_t)(ctx->count[0] & 0xFF);

    index = (uint32_t)((ctx->count[0] >> 3) & 0x3F);
    ctx->buffer[index++] = 0x80;

    if (index > 56)
    {
        while (index < 64)
        {
            ctx->buffer[index++] = 0;
        }
        sm3_compress_blocks(ctx->state, ctx->buffer, 1);
        index = 0;
    }

    while (index < 56)
    {
        ctx->buffer[index++] = 0;
    }

    for (i = 0; i < 8; i++)
    {
        ctx->buffer[56 + i] = bits[i];
    }

    sm3_compress_blocks(ctx->state, ctx->buffer, 1);

    for (i = 0; i < 8; i++)
    {
        hash[i * 4] = (uint8_t)((ctx->state[i] >> 24) & 0xFF);
        hash[i * 4 + 1] = (uint8_t)((ctx->state[i] >> 16) & 0xFF);
        hash[i * 4 + 2] = (uint8_t)((ctx->state[i] >> 8) & 0xFF);
        hash[i * 4 + 3] = (uint8_t)(ctx->state[i] & 0xFF);
    }
}

/*************************************************
 Function: Crypto_SHA256_CALC
 Description: 计算SHA256哈希值
 Input: data - 待计算哈希的数据指针
        len - 数据长度（字节）
        hash - 32字节的输出缓冲区，用于存放计算出的SHA256摘要
 Output: 
 Return: 计算成功返回CRYPTO_E_OK(0)，失败返回CRYPTO_E_NOT_OK(-1)
 Others:
*************************************************/
int Crypto_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash)
{
    if (hash == NULL)
    {
        return CRYPTO_E_NOT_OK;
    }
        
    if (len > 0 && data == NULL)
    {
        return CRYPTO_E_NOT_OK;
    }

    Crypto_SHA256_Context ctx;
    Crypto_SHA256_Init(&ctx);
    Crypto_SHA256_Update(&ctx, data, len);
    Crypto_SHA256_Final(&ctx, hash);
    return CRYPTO_E_OK;
}

/*************************************************
 Function: Crypto_SHA256_Init
 Description: 初始化SHA256上下文
 Input: ctx - SHA256上下文指针
 Output: 
 Return: 无
 Others:
*************************************************/
void Crypto_SHA256_Init(Crypto_SHA256_Context* ctx)
{
    // 初始化哈希状态（标准初始值）
    ctx->state[0] = 0x6a09e667;
    ctx->state[1] = 0xbb67ae85;
    ctx->state[2] = 0x3c6ef372;
    ctx->state[3] = 0xa54ff53a;
    ctx->state[4] = 0x510e527f;
    ctx->state[5] = 0x9b05688c;
    ctx->state[6] = 0x1f83d9ab;
    ctx->state[7] = 0x5be0cd19;

    ctx->count = 0;
    ctx->buffer_len = 0;
}

/*************************************************
 Function: Crypto_SHA256_Update
 Description: 更新 SHA-256 计算（可多次调用）
 Input: ctx  - SHA-256 上下文指针
        data - 待计算的数据指针
        len  - 数据长度（字节）
 Output: None
 Return: CRYPTO_E_OK 成功, CRYPTO_E_PARAM 参数错误
 Others:
*************************************************/
void Crypto_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len)
{
    uint32_t i = 0;

    // 如果缓冲区有数据，先尝试填满缓冲区
    if (ctx->buffer_len > 0) {
        uint32_t space = 64 - ctx->buffer_len;
        uint32_t to_copy = (len < space) ? len : space;

        memcpy(ctx->buffer + ctx->buffer_len, data, to_copy);
        ctx->buffer_len += to_copy;
        i += to_copy;

        // 缓冲区满了，进行变换
        if (ctx->buffer_len == 64) {
            sha256_transform(ctx->state, ctx->buffer);
            ctx->count += 64;
            ctx->buffer_len = 0;
        }
    }

    // 处理剩余的数据块（64字节对齐）
    while (i + 63 < len) {
        sha256_transform(ctx->state, &data[i]);
        ctx->count += 64;
        i += 64;
    }

    // 将剩余数据存入缓冲区
    uint32_t remaining = len - i;
    if (remaining > 0) {
        memcpy(ctx->buffer, &data[i], remaining);
        ctx->buffer_len = remaining;
    }
}

/*************************************************
 Function: Crypto_SHA256_Final
 Description: 完成 SHA-256 计算，输出最终哈希值
 Input: ctx  - SHA-256 上下文指针
 Output: hash - 32字节的输出缓冲区
 Return: void
 Others:
*************************************************/
void Crypto_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash)
{
    uint64_t total_bits = (ctx->count + ctx->buffer_len) * 8;
    uint32_t pad_len;
    uint8_t padding[64];

    // 计算需要填充的长度
    // 需要填充：0x80 + 若干0 + 8字节的长度
    if (ctx->buffer_len < 56) {
        pad_len = 56 - ctx->buffer_len;
    } else {
        pad_len = 120 - ctx->buffer_len; // 64 + 56
    }

    // 填充 0x80
    padding[0] = 0x80;
    memset(&padding[1], 0, pad_len - 1);

    // 如果 pad_len > 56，需要两次变换
    if (ctx->buffer_len >= 56) {
        // 第一次：填满当前块
        memcpy(ctx->buffer + ctx->buffer_len, padding, 64 - ctx->buffer_len);
        sha256_transform(ctx->state, ctx->buffer);

        // 第二次：新块（前56字节为0）
        memset(ctx->buffer, 0, 56);
    } else {
        // 只需一次变换
        memcpy(ctx->buffer + ctx->buffer_len, padding, pad_len);
    }

    // 添加长度（大端格式）
    for (int j = 7; j >= 0; j--) {
        ctx->buffer[56 + j] = (uint8_t)(total_bits & 0xFF);
        total_bits >>= 8;
    }

    sha256_transform(ctx->state, ctx->buffer);

    // 输出哈希值（大端格式）
    for (int j = 0; j < 8; j++) {
        hash[j * 4]     = (uint8_t)((ctx->state[j] >> 24) & 0xFF);
        hash[j * 4 + 1] = (uint8_t)((ctx->state[j] >> 16) & 0xFF);
        hash[j * 4 + 2] = (uint8_t)((ctx->state[j] >> 8)  & 0xFF);
        hash[j * 4 + 3] = (uint8_t)( ctx->state[j]        & 0xFF);
    }
}

/*************************************************
 Function: Crypto_SM2_Verify
 Description: 验证SM2签名
 Input: data - 待验证数据指针
        len - 待验证数据长度（字节）
        signature - 签名指针
        signature_len - 签名长度（字节）
        pub_key - 公钥指针（65字节）
 Output: None
 Return: CRYPTO_E_OK 成功, CRYPTO_E_NOT_OK 失败, CRYPTO_E_PARAM 参数错误
 Others:
*************************************************/
int Crypto_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    SM2_KEY key;
    SM2_SIGNATURE sig;

    // 解析公钥
    if (sm2_z256_point_from_octets(&key.public_key, pub_key, 65) != 1)
    {
        return CRYPTO_E_NOT_OK;
    }

    // 解析DER签名
    // const uint8_t *sig_ptr = signature;
    // size_t sig_len = signature_len;
    // if (sm2_signature_from_der(&sig, &sig_ptr, &sig_len) != 1)
    // {
    //     return CRYPTO_E_NOT_OK;
    // }
    // 参数检查
    if (!data || !signature || !pub_key || len != 32)
    {
         
        return CRYPTO_E_NOT_OK;
    }

    memset(&sig, 0, sizeof(SM2_SIGNATURE));
    memcpy(sig.r, &signature[0], 32);
    memcpy(sig.s, &signature[32], 32);

    // 此处的data不是原始签名, 应该是和AZ得到的最终32字节哈希值
    int ret = sm2_do_verify(&key, data, &sig);
    if (ret != 1)
    {
        return CRYPTO_E_NOT_OK;
    }
    return CRYPTO_E_OK;
}

/*************************************************
 Function: Crypto_ECC_Verify
 Description: 外部调用的 ECDSA 验签总接口
 Input: data - 原文, len - 原文长度, signature - 64字节签名, 
        signature_len - 签名长度, pub_key - 65字节公钥
 Output: None
 Return: int CRYPTO_E_OK(0) 验证通过，CRYPTO_E_NOT_OK(-1) 失败
 Others: 
*************************************************/
int Crypto_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    SECP256R1_KEY key;
    ECDSA_SIGNATURE sig;

    if (!data || !signature || !pub_key || len == 0 || signature_len == 0) return CRYPTO_E_NOT_OK;

    const uint8_t *pub_ptr = pub_key;
    size_t pub_len = 65;

    if (secp256r1_public_key_from_bytes(&key, &pub_ptr, &pub_len) != CRYPTO_E_OK) {
        return CRYPTO_E_NOT_OK;
    }

    if (signature_len != 64) return CRYPTO_E_NOT_OK;

    secp256r1_from_32bytes(sig.r, signature);
    secp256r1_from_32bytes(sig.s, signature + 32);

    uint8_t dgst[32];
    Crypto_SHA256_CALC(data, len, dgst);

    if (ecdsa_do_verify(&key, dgst, &sig) != CRYPTO_E_OK) {
        return CRYPTO_E_NOT_OK;
    }
    return CRYPTO_E_OK;
}

/*************************************************
 Function: Crypto_CcittFalseCrc16
 Description: 计算CCITT False CRC16校验值
 Input: initial_crc - 初始CRC值, data - 数据指针, length - 数据长度
 Output: None
 Return: uint16_t 计算得到的CRC16值
 Others: 
*************************************************/
uint16_t Crypto_CcittFalseCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length)
{
    uint16_t crc = initial_crc;
    
    while (length-- > 0) {
        crc = (uint16_t)((crc << 8) ^ crc16_ccitt_false_table[((crc >> 8) ^ (*data++)) & 0xFF]);
    }
    return crc;
}

/*************************************************
 Function: Crypto_CcittCrc16
 Description: 计算CCITT CRC16校验值
 Input: initial_crc - 初始CRC值, data - 数据指针, length - 数据长度
 Output: None
 Return: uint16_t 计算得到的CRC16值
 Others: 
*************************************************/
uint16_t Crypto_CcittCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length)
{
    uint16_t crc = initial_crc;
    
    while (length-- > 0) {
        crc = (uint16_t)((crc >> 8) ^ crc16_ccitt_table[(crc ^ (*data++)) & 0xFF]);
    }
    return crc;
}

/*************************************************
 Function: Crypto_Crc32Init
 Description: 初始化CRC32上下文
 Input: context - CRC32上下文指针, polynomial - 多项式
 Output: None
 Return: uint32_t 初始CRC值
 Others: 
*************************************************/
uint32_t Crypto_Crc32Init(crc32_context_t *context, uint32_t polynomial)
{
    /* 预先反转多项式 */
    uint32_t reversed_poly = ReverseBits(polynomial, 32);
    
    for (uint32_t i = 0; i < 256; i++) {
        uint32_t current_value = i;
        for (uint8_t j = 0; j < 8; j++) {
            if (current_value & 1) {
                current_value = reversed_poly ^ (current_value >> 1);
            } else {
                current_value >>= 1;
            }
        }
        context->table[i] = current_value;
    }
    
    return 0xFFFFFFFF;
}

/*************************************************
 Function: Crypto_Crc32
 Description: 计算CRC32校验值
 Input: context - CRC32上下文指针, current_crc - 当前CRC值, data - 数据指针, length - 数据长度
 Output: None
 Return: uint32_t 计算得到的CRC32值
 Others: 
*************************************************/
uint32_t Crypto_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length)
{
    const uint8_t *data_ptr = (const uint8_t *)data;
    
    while (length-- > 0) {
        uint8_t index = (uint8_t)(current_crc ^ (*data_ptr++));
        current_crc = (current_crc >> 8) ^ context->table[index];
    }
    return current_crc;
}

/*************************************************
 Function: Crypto_Crc32FinalResult
 Description: 计算CRC32最终结果
 Input: context - CRC32上下文指针, final_crc - 最终CRC值
 Output: None
 Return: uint32_t 最终CRC32值
 Others: 
*************************************************/
uint32_t Crypto_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc)
{
    (void)context; /* 显式消除未使用参数的编译警告 */
    return final_crc ^ 0xFFFFFFFF;
}

/*************************************************
 Function: Crypto_Crc8
 Description: 计算CRC8校验值
 Input: initial_value - 初始CRC值, polynomial - 多项式, data - 数据指针, length - 数据长度
 Output: None
 Return: uint8_t 计算得到的CRC8值
 Others: 
*************************************************/
uint8_t Crypto_Crc8(uint8_t initial_value, uint8_t polynomial, const uint8_t *data, uint32_t length)
{ 
    uint8_t crc = initial_value;
    
    while (length-- > 0) {
        crc ^= *data++;
        
        for (uint8_t i = 0; i < 8; i++) {
            if (crc & 0x80) {
                crc = (uint8_t)((crc << 1) ^ polynomial);
            } else {
                crc = (uint8_t)(crc << 1);
            }
        }
    }
    
    return (uint8_t)(~crc);
}

/*************************************************
 Function: ReverseBits
 Description: 反转32位无符号整数的位序
 Input: input - 32位无符号整数, bit_width - 位宽
 Output: None
 Return: uint32_t 反转后的32位无符号整数
 Others: 
*************************************************/
static uint32_t ReverseBits(uint32_t input, uint8_t bit_width)
{
    uint32_t reversed_value = 0;
    
    for (uint8_t i = 0; i < bit_width; i++) {
        if (input & 0x01) {
            reversed_value |= (1U << (bit_width - 1 - i));
        }
        input >>= 1;
    }
    return reversed_value;
}

/*************************************************
 Function: sm4_tau
 Description: 对32位无符号整数a的每8位进行S盒替换
 Input: a - 32位无符号整数
 Output: None
 Return: 替换后的32位无符号整数
 Others:
*************************************************/
static uint32_t sm4_tau(uint32_t a)
{
    return ((uint32_t)SM4_SBOX[(a >> 24) & 0xFF] << 24) | ((uint32_t)SM4_SBOX[(a >> 16) & 0xFF] << 16) |
        ((uint32_t)SM4_SBOX[(a >> 8) & 0xFF] << 8) | ((uint32_t)SM4_SBOX[a & 0xFF]);
}

/*************************************************
 Function: sm4_l_cal
 Description: 对32位无符号整数b进行左循环移位和异或操作
 Input: b - 32位无符号整数
 Output: None
 Return: 处理后的32位无符号整数
 Others:
*************************************************/
static uint32_t sm4_l_cal(uint32_t b)
{ 
    return b ^ ROTL(b, 2) ^ ROTL(b, 10) ^ ROTL(b, 18) ^ ROTL(b, 24);
}

/*************************************************
 Function: sm4_l_key
 Description: 对32位无符号整数b进行左循环移位和异或操作
 Input: b - 32位无符号整数
 Output: None
 Return: 处理后的32位无符号整数
 Others:
*************************************************/
static uint32_t sm4_l_key(uint32_t b)
{
    return b ^ ROTL(b, 13) ^ ROTL(b, 23);
}

/*************************************************
 Function: SM4_EncryptBlock
 Description: 对16字节输入数据进行SM4加密
 Input:
    key - 16字节密钥
    input - 16字节输入数据
    output - 16字节输出数据
 Output: None
 Return:
 Others:
*************************************************/
static void SM4_EncryptBlock(const uint8_t *key, const uint8_t *input, uint8_t *output)
{
    uint32_t K[4], rk[32], X[4], i, temp;

    GET_UINT32_BE(K[0], key, 0);
    GET_UINT32_BE(K[1], key, 4);
    GET_UINT32_BE(K[2], key, 8);
    GET_UINT32_BE(K[3], key, 12);
    K[0] ^= SM4_FK[0];
    K[1] ^= SM4_FK[1];
    K[2] ^= SM4_FK[2];
    K[3] ^= SM4_FK[3];

    for (i = 0; i < 32; i++)
    {
        temp = sm4_tau(K[1] ^ K[2] ^ K[3] ^ SM4_CK[i]);
        K[0] ^= sm4_l_key(temp);
        rk[i] = K[0];
        temp = K[0];
        K[0] = K[1];
        K[1] = K[2];
        K[2] = K[3];
        K[3] = temp;
    }

    GET_UINT32_BE(X[0], input, 0);
    GET_UINT32_BE(X[1], input, 4);
    GET_UINT32_BE(X[2], input, 8);
    GET_UINT32_BE(X[3], input, 12);

    for (i = 0; i < 32; i++)
    {
        temp = sm4_tau(X[1] ^ X[2] ^ X[3] ^ rk[i]);
        X[0] ^= sm4_l_cal(temp);
        temp = X[0];
        X[0] = X[1];
        X[1] = X[2];
        X[2] = X[3];
        X[3] = temp;
    }

    PUT_UINT32_BE(X[3], output, 0);
    PUT_UINT32_BE(X[2], output, 4);
    PUT_UINT32_BE(X[1], output, 8);
    PUT_UINT32_BE(X[0], output, 12);
}

/*************************************************
 Function: LeftShiftOneBit
 Description: 对16字节数据进行左移1位操作
 Input: data - 16字节数据
 Output: None
 Return: None
 Others:
*************************************************/
static void LeftShiftOneBit(uint8_t *data)
{
    uint8_t carry = 0;
    for (int8_t i = 15; i >= 0; i--)
    {
    uint8_t next_carry = (data[i] & 0x80) ? 1 : 0;
    data[i] = (data[i] << 1) | carry;
    carry = next_carry;
    }
}

/*************************************************
 Function: Xor128
 Description: 对16字节数据进行异或操作
 Input:
    out - 16字节输出数据
    in1 - 16字节输入数据1
    in2 - 16字节输入数据2
 Output: None
 Return: None
 Others:
*************************************************/
static void Xor128(uint8_t *out, const uint8_t *in1, const uint8_t *in2)
{
    for (uint8_t i = 0; i < 16; i++)
    {
        out[i] = in1[i] ^ in2[i];
    }
}

/*************************************************
 Function: sm3_compress_blocks
 Description: 压缩SM3数据块
 Input: digest - 8个32位无符号整数数组，用于存放SM3状态
        data - 64字节的输入数据块指针
        blocks - 数据块数量
 Output: 
 Return: 无
 Others:
*************************************************/
static void sm3_compress_blocks(uint32_t digest[8], const uint8_t *data, size_t blocks)
{
    uint32_t A, B, C, D, E, F, G, H;
    uint32_t W[68];
    uint32_t SS0, SS1, SS2;
    int j;

    while (blocks--)
    {
        A = digest[0];
        B = digest[1];
        C = digest[2];
        D = digest[3];
        E = digest[4];
        F = digest[5];
        G = digest[6];
        H = digest[7];

        for (j = 0; j < 16; j++)
        {
            W[j] = GETU32(data + j * 4);
        }

        SM3_ROUND_0(0, A, B, C, D, E, F, G, H);
        SM3_ROUND_0(1, D, A, B, C, H, E, F, G);
        SM3_ROUND_0(2, C, D, A, B, G, H, E, F);
        SM3_ROUND_0(3, B, C, D, A, F, G, H, E);
        SM3_ROUND_0(4, A, B, C, D, E, F, G, H);
        SM3_ROUND_0(5, D, A, B, C, H, E, F, G);
        SM3_ROUND_0(6, C, D, A, B, G, H, E, F);
        SM3_ROUND_0(7, B, C, D, A, F, G, H, E);
        SM3_ROUND_0(8, A, B, C, D, E, F, G, H);
        SM3_ROUND_0(9, D, A, B, C, H, E, F, G);
        SM3_ROUND_0(10, C, D, A, B, G, H, E, F);
        SM3_ROUND_0(11, B, C, D, A, F, G, H, E);
        SM3_ROUND_0(12, A, B, C, D, E, F, G, H);
        SM3_ROUND_0(13, D, A, B, C, H, E, F, G);
        SM3_ROUND_0(14, C, D, A, B, G, H, E, F);
        SM3_ROUND_0(15, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(16, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(17, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(18, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(19, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(20, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(21, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(22, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(23, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(24, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(25, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(26, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(27, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(28, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(29, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(30, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(31, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(32, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(33, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(34, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(35, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(36, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(37, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(38, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(39, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(40, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(41, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(42, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(43, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(44, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(45, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(46, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(47, B, C, D, A, F, G, H, E);
        SM3_ROUND_1(48, A, B, C, D, E, F, G, H);
        SM3_ROUND_1(49, D, A, B, C, H, E, F, G);
        SM3_ROUND_1(50, C, D, A, B, G, H, E, F);
        SM3_ROUND_1(51, B, C, D, A, F, G, H, E);
        SM3_ROUND_2(52, A, B, C, D, E, F, G, H);
        SM3_ROUND_2(53, D, A, B, C, H, E, F, G);
        SM3_ROUND_2(54, C, D, A, B, G, H, E, F);
        SM3_ROUND_2(55, B, C, D, A, F, G, H, E);
        SM3_ROUND_2(56, A, B, C, D, E, F, G, H);
        SM3_ROUND_2(57, D, A, B, C, H, E, F, G);
        SM3_ROUND_2(58, C, D, A, B, G, H, E, F);
        SM3_ROUND_2(59, B, C, D, A, F, G, H, E);
        SM3_ROUND_2(60, A, B, C, D, E, F, G, H);
        SM3_ROUND_2(61, D, A, B, C, H, E, F, G);
        SM3_ROUND_2(62, C, D, A, B, G, H, E, F);
        SM3_ROUND_2(63, B, C, D, A, F, G, H, E);

        digest[0] ^= A;
        digest[1] ^= B;
        digest[2] ^= C;
        digest[3] ^= D;
        digest[4] ^= E;
        digest[5] ^= F;
        digest[6] ^= G;
        digest[7] ^= H;

        data += 64;
    }
}

/*************************************************
 Function: sha256_transform
 Description: 对SHA256进行一次变换
 Input: state - 8个32位无符号整数数组，用于存放当前状态
        data - 64字节的输入数据块
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sha256_transform(uint32_t *state, const uint8_t *data)
{
    uint32_t a, b, c, d, e, f, g, h, i, j, t1, t2, m[64];

    for (i = 0, j = 0; i < 16; ++i, j += 4)
    {
        m[i] = (data[j] << 24) | (data[j + 1] << 16) | (data[j + 2] << 8) | (data[j + 3]);
    }
    for (; i < 64; ++i)
    {
        m[i] = SIG1(m[i - 2]) + m[i - 7] + SIG0(m[i - 15]) + m[i - 16];
    }

    a = state[0];
    b = state[1];
    c = state[2];
    d = state[3];
    e = state[4];
    f = state[5];
    g = state[6];
    h = state[7];

    for (i = 0; i < 64; ++i)
    {
        t1 = h + EP1(e) + CH(e, f, g) + SHA256_K[i] + m[i];
        t2 = EP0(a) + MAJ(a, b, c);
        h = g;
        g = f;
        f = e;
        e = d + t1;
        d = c;
        c = b;
        b = a;
        a = t1 + t2;
    }

    state[0] += a;
    state[1] += b;
    state[2] += c;
    state[3] += d;
    state[4] += e;
    state[5] += f;
    state[6] += g;
    state[7] += h;
}

/*************************************************
 Function: sm2_z256_prime
 Description: 返回SM2曲线的素数p
 Input: 无
 Output: 无
 Return: 素数p的地址（const uint64_t *类型）
 Others: 
*************************************************/
const uint64_t *sm2_z256_prime(void)
{
    return &SM2_Z256_P[0];  // 返回素数p数组的首地址
}

/*************************************************
 Function: sm2_z256_cmp
 Description: 比较两个SM2 Z256 数的大小
 Input: a - 第一个SM2 Z256 数
        b - 第二个SM2 Z256 数
 Output: 无
 Return: 如果a大于b，返回1；如果a小于b，返回-1；如果相等，返回0
 Others: 
*************************************************/
static int sm2_z256_cmp(const sm2_z256_t a, const sm2_z256_t b)
{
    // 比较最高64位
    if (a[3] > b[3])
        return 1;
    else if (a[3] < b[3])
        return -1;
    // 比较次高64位
    if (a[2] > b[2])
        return 1;
    else if (a[2] < b[2])
        return -1;
    // 比较次低64位
    if (a[1] > b[1])
        return 1;
    else if (a[1] < b[1])
        return -1;
    // 比较最低64位
    if (a[0] > b[0])
        return 1;
    else if (a[0] < b[0])
        return -1;
    return 0;  // 相等
}

/*************************************************
 Function: sm2_z256_from_bytes
 Description: 从32字节数组解析SM2 Z256 数
 Input: r - 输出的SM2 Z256 数指针
        in - 输入的32字节数组指针
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_from_bytes(sm2_z256_t r, const uint8_t in[32])
{
    r[3] = GETU64(in);       // 最高8字节（字节0-7）
    r[2] = GETU64(in + 8);   // 次高8字节（字节8-15）
    r[1] = GETU64(in + 16);  // 次低8字节（字节16-23）
    r[0] = GETU64(in + 24);  // 最低8字节（字节24-31）
}

/*************************************************
 Function: is_zero
 Description: 判断64位无符号整数是否为0
 Input: in - 64位无符号整数
 Output: 无
 Return: 如果in为0，返回1；否则返回0
 Others: 
*************************************************/
static inline uint64_t is_zero(uint64_t in)
{
    in |= (0 - in);      // 传播符号位
    in = ~in;            // 取反
    in >>= 63;           // 右移63位，提取最高位
    return in;           // 返回1表示原数为0
}

/*************************************************
 Function: sm2_z256_is_zero
 Description: 判断SM2 Z256 数是否为0
 Input: a - 输入的SM2 Z256 数
 Output: 无
 Return: 如果a为0，返回1；否则返回0
 Others: 
*************************************************/
static uint64_t sm2_z256_is_zero(const sm2_z256_t a)
{
    // 所有字都为0时返回1
    return is_zero(a[0]) &
           is_zero(a[1]) &
           is_zero(a[2]) &
           is_zero(a[3]);
}

/*************************************************
 Function: sm2_z256_copy
 Description: 复制SM2 Z256 数
 Input: r - 输出的SM2 Z256 数指针
        a - 输入的SM2 Z256 数指针
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_copy(sm2_z256_t r, const sm2_z256_t a)
{
    r[3] = a[3];  // 从高到低复制
    r[2] = a[2];
    r[1] = a[1];
    r[0] = a[0];
}

/*************************************************
 Function: sm2_z256_set_zero
 Description: 将SM2 Z256 数设为0
 Input: r - 输出的SM2 Z256 数指针
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_set_zero(sm2_z256_t r)
{
    r[0] = 0;  // 所有位设为0
    r[1] = 0;
    r[2] = 0;
    r[3] = 0;
}

/*************************************************
 Function: sm2_z256_point_set_infinity
 Description: 将SM2 Z256 点设置为无穷远点
 Input: P - 输出的SM2点结构体指针
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_set_infinity(SM2_Z256_POINT *P)
{
    sm2_z256_copy(P->X, SM2_Z256_MODP_MONT_ONE);
    sm2_z256_copy(P->Y, SM2_Z256_MODP_MONT_ONE);
    sm2_z256_set_zero(P->Z);
}

/*************************************************
 Function: sm2_z256_mul
 Description: 将SM2 Z256 数相乘（512位）
 Input: r - 输出的512位乘积指针
        a - 输入的SM2 Z256 数
        b - 输入的SM2 Z256 数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_mul(sm2_z512_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t a_[8];    // a分解为8个32位块
    uint64_t b_[8];    // b分解为8个32位块
    uint64_t s[16] = {0};  // 部分积累加器（16个32位块）
    uint64_t u;        // 进位累加器
    int i, j;

    // 将64位字分解为32位块（小端序）
    for (i = 0; i < 4; i++)
    {
        a_[2 * i] = a[i] & 0xffffffff;       // 低32位
        b_[2 * i] = b[i] & 0xffffffff;       // 低32位
        a_[2 * i + 1] = a[i] >> 32;          // 高32位
        b_[2 * i + 1] = b[i] >> 32;          // 高32位
    }

    // 8x8乘法累加
    for (i = 0; i < 8; i++)
    {
        u = 0;  // 进位初始化
        for (j = 0; j < 8; j++)
        {
            // 累加部分积和之前的值
            u = s[i + j] + a_[i] * b_[j] + u;
            s[i + j] = u & 0xffffffff;       // 保留低32位
            u >>= 32;                        // 高32位作为进位
        }
        s[i + 8] = u;  // 存储最终进位
    }

    // 将32位块重新组合为64位字
    for (i = 0; i < 8; i++)
    {
        r[i] = (s[2 * i + 1] << 32) | s[2 * i];
    }
}

/*************************************************
 Function: sm2_z512_add
 Description: 将SM2 Z512 数相加（512位）
 Input: r - 输出的512位和指针
        a - 输入的SM2 Z512 数
        b - 输入的SM2 Z512 数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static uint64_t sm2_z512_add(sm2_z512_t r, const sm2_z512_t a, const sm2_z512_t b)
{
    uint64_t t, c = 0;  // t存储临时和，c存储进位

    // 8个字逐字相加
    t = a[0] + b[0]; c = t < a[0]; r[0] = t;
    t = a[1] + c; c = t < a[1]; r[1] = t + b[1]; c += r[1] < t;
    t = a[2] + c; c = t < a[2]; r[2] = t + b[2]; c += r[2] < t;
    t = a[3] + c; c = t < a[3]; r[3] = t + b[3]; c += r[3] < t;
    t = a[4] + c; c = t < a[4]; r[4] = t + b[4]; c += r[4] < t;
    t = a[5] + c; c = t < a[5]; r[5] = t + b[5]; c += r[5] < t;
    t = a[6] + c; c = t < a[6]; r[6] = t + b[6]; c += r[6] < t;
    t = a[7] + c; c = t < a[7]; r[7] = t + b[7]; c += r[7] < t;

    return c;  // 返回最终进位
}

/*************************************************
 Function: sm2_z256_add
 Description: 将SM2 Z256 数相加（256位）
 Input: r - 输出的256位和指针
        a - 输入的SM2 Z256 数
        b - 输入的SM2 Z256 数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static uint64_t sm2_z256_add(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t t, c = 0;  // t存储临时和，c存储进位

    // 最低64位相加
    t = a[0] + b[0];
    c = t < a[0];      // 检查是否有进位（无符号溢出）
    r[0] = t;

    // 次低64位相加（带进位）
    t = a[1] + c;
    c = t < a[1];      // 检查进位
    r[1] = t + b[1];   // 加上b[1]
    c += r[1] < t;     // 检查新的进位

    // 次高64位相加（带进位）
    t = a[2] + c;
    c = t < a[2];      // 检查进位
    r[2] = t + b[2];   // 加上b[2]
    c += r[2] < t;     // 检查新的进位

    // 最高64位相加（带进位）
    t = a[3] + c;
    c = t < a[3];      // 检查进位
    r[3] = t + b[3];   // 加上b[3]
    c += r[3] < t;     // 检查新的进位

    return c;  // 返回最终进位
}

/*************************************************
 Function: sm2_z256_sub
 Description: 将SM2 Z256 数相减（256位）
 Input: r - 输出的256位差指针
        a - 输入的SM2 Z256 数
        b - 输入的SM2 Z256 数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static uint64_t sm2_z256_sub(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t t, c = 0;  // t存储临时差，c存储借位

    // 最低64位相减
    t = a[0] - b[0];
    c = t > a[0];      // 检查是否有借位（无符号下溢）
    r[0] = t;

    // 次低64位相减（带借位）
    t = a[1] - c;
    c = t > a[1];      // 检查借位
    r[1] = t - b[1];   // 减去b[1]
    c += r[1] > t;     // 检查新的借位

    // 次高64位相减（带借位）
    t = a[2] - c;
    c = t > a[2];      // 检查借位
    r[2] = t - b[2];   // 减去b[2]
    c += r[2] > t;     // 检查新的借位

    // 最高64位相减（带借位）
    t = a[3] - c;
    c = t > a[3];      // 检查借位
    r[3] = t - b[3];   // 减去b[3]
    c += r[3] > t;     // 检查新的借位

    return c;  // 返回最终借位
}

/*************************************************
 Function: sm2_z256_modp_mont_mul
 Description: 将SM2 Z256 数在蒙哥马利域中相乘
 Input: r - 输出的蒙哥马利域数指针
        a - 输入的蒙哥马利域数
        b - 输入的蒙哥马利域数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modp_mont_mul(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    sm2_z512_t z;  // 乘积（512位）
    sm2_z512_t t;  // 临时值
    uint64_t c;    // 进位

    // z = a * b（完整512位乘积）
    sm2_z256_mul(z, a, b);

    // t = low(z) * p' mod 2^256
    sm2_z256_mul(t, z, SM2_Z256_P_PRIME);

    // t = low(t) * p
    sm2_z256_mul(t, t, SM2_Z256_P);

    // z = z + t
    c = sm2_z512_add(z, z, t);

    // r = high(z)（取高256位）
    sm2_z256_copy(r, z + 4);

    // 如果溢出或结果 >= p，需要减去p
    if (c)
    {
        sm2_z256_add(r, r, SM2_Z256_MODP_MONT_ONE);
    }
    else if (sm2_z256_cmp(r, SM2_Z256_P) >= 0)
    {
        (void)sm2_z256_sub(r, r, SM2_Z256_P);
    }
}

/*************************************************
 Function: sm2_z256_modp_to_mont
 Description: 将SM2 Z256 数从模p转换到蒙哥马利域
 Input: a - 输入的SM2 Z256 数
        r - 输出的蒙哥马利域数指针
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modp_to_mont(const sm2_z256_t a, uint64_t r[4])
{
    sm2_z256_modp_mont_mul(r, a, SM2_Z256_2e512modp);
}

/*************************************************
 Function: sm2_z256_modp_mont_sqr
 Description: 将SM2 Z256 数在蒙哥马利域中平方
 Input: r - 输出的蒙哥马利域数指针
        a - 输入的蒙哥马利域数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modp_mont_sqr(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_modp_mont_mul(r, a, a);
}

/*************************************************
 Function: sm2_z256_modp_add
 Description: 将SM2 Z256 数在蒙哥马利域中相加
 Input: r - 输出的蒙哥马利域数指针
        a - 输入的蒙哥马利域数
        b - 输入的蒙哥马利域数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modp_add(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t c;  // 进位

    c = sm2_z256_add(r, a, b);  // 先计算a + b

    // 如果有进位，需要减去p
    if (c)
    {
        // a + b - p = (a + b - 2^256) + (2^256 - p)
        // 2^256 - p = -p mod 2^256 = SM2_Z256_NEG_P
        (void)sm2_z256_add(r, r, SM2_Z256_NEG_P);
        return;
    }

    // 如果没有进位但结果 >= p，也需要减去p
    if (sm2_z256_cmp(r, SM2_Z256_P) >= 0)
    {
        (void)sm2_z256_sub(r, r, SM2_Z256_P);
    }
}

/*************************************************
 Function: sm2_z256_point_is_on_curve
 Description: 检查SM2 Z256 点是否在椭圆曲线上
 Input: P - 输入的SM2点结构体指针
 Output: 无
 Return: 点在曲线上返回1，否则返回0
 Others: 
*************************************************/
static int sm2_z256_point_is_on_curve(const SM2_Z256_POINT *P)
{
    sm2_z256_t t0;
    sm2_z256_t t1;
    sm2_z256_t t2;

    // 如果Z == 1，点在仿射坐标中
    if (sm2_z256_cmp(P->Z, SM2_Z256_MODP_MONT_ONE) == 0)
    {
        // 检查 y^2 + 3*x == x^3 + b（因为a = -3）
        sm2_z256_modp_mont_sqr(t0, P->Y);   // t0 = y^2
        sm2_z256_modp_add(t0, t0, P->X);    // t0 = y^2 + x
        sm2_z256_modp_add(t0, t0, P->X);    // t0 = y^2 + 2x
        sm2_z256_modp_add(t0, t0, P->X);    // t0 = y^2 + 3x
        sm2_z256_modp_mont_sqr(t1, P->X);   // t1 = x^2
        sm2_z256_modp_mont_mul(t1, t1, P->X); // t1 = x^3
        sm2_z256_modp_add(t1, t1, SM2_Z256_MODP_MONT_B); // t1 = x^3 + b
    }
    else
    {
        // 一般Jacobian坐标：Y^2 + 3*X*Z^4 == X^3 + b*Z^6
        sm2_z256_modp_mont_sqr(t0, P->Y);    // t0 = Y^2
        sm2_z256_modp_mont_sqr(t1, P->Z);    // t1 = Z^2
        sm2_z256_modp_mont_sqr(t2, t1);      // t2 = Z^4
        sm2_z256_modp_mont_mul(t1, t1, t2);  // t1 = Z^6
        sm2_z256_modp_mont_mul(t1, t1, SM2_Z256_MODP_MONT_B); // t1 = b*Z^6
        sm2_z256_modp_mont_mul(t2, t2, P->X); // t2 = X*Z^4
        sm2_z256_modp_add(t0, t0, t2);       // t0 = Y^2 + X*Z^4
        sm2_z256_modp_add(t0, t0, t2);       // t0 = Y^2 + 2*X*Z^4
        sm2_z256_modp_add(t0, t0, t2);       // t0 = Y^2 + 3*X*Z^4
        sm2_z256_modp_mont_sqr(t2, P->X);    // t2 = X^2
        sm2_z256_modp_mont_mul(t2, t2, P->X); // t2 = X^3
        sm2_z256_modp_add(t1, t1, t2);       // t1 = b*Z^6 + X^3
    }

    if (sm2_z256_cmp(t0, t1) != 0)
    {
        return 0;
    }
    return 1;
}

/*************************************************
 Function: sm2_z256_point_from_bytes
 Description: 从64字节数组解析SM2 Z256 点
 Input: P - 输出的SM2点结构体指针
        in - 输入的64字节数组指针
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int sm2_z256_point_from_bytes(SM2_Z256_POINT *P, const uint8_t in[64])
{
    sm2_z256_from_bytes(P->X, in);  // 解析X坐标
    // 检查X坐标是否小于p
    if (sm2_z256_cmp(P->X, sm2_z256_prime()) >= 0)
    {
         
        return -1;
    }
    sm2_z256_from_bytes(P->Y, in + 32);  // 解析Y坐标
    // 检查Y坐标是否小于p
    if (sm2_z256_cmp(P->Y, sm2_z256_prime()) >= 0)
    {
         
        return -1;
    }

    // 检查是否为无穷远点（X=0且Y=0）
    if (sm2_z256_is_zero(P->X) == 1 && sm2_z256_is_zero(P->Y) == 1)
    {
        sm2_z256_point_set_infinity(P);
        return 0;
    }

    // 转换到蒙哥马利域
    sm2_z256_modp_to_mont(P->X, P->X);
    sm2_z256_modp_to_mont(P->Y, P->Y);
    sm2_z256_copy(P->Z, SM2_Z256_MODP_MONT_ONE);  // Z = 1

    // 验证点在曲线上
    if (sm2_z256_point_is_on_curve(P) != 1)
    {
         
        return -1;
    }
    return 1;
}

/*************************************************
 Function: sm2_z256_point_from_octets
 Description: 从字节数组中解析SM2点
 Input: P - 输出的SM2点结构体指针
        in - 输入的字节数组指针
        inlen - 输入的字节数组长度
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int sm2_z256_point_from_octets(SM2_Z256_POINT *P, const uint8_t *in, size_t inlen)
{
    switch (*in)
    {
        case 0x04:  // 未压缩格式
            if (inlen != 65)
            {
                return -1;
            }
            sm2_z256_point_from_bytes(P, in + 1);
            if (sm2_z256_point_is_on_curve(P) != 1)
            {
                return -1;
            }
            break;
        default:
            return -1;
    }

    return 1;
}

/*************************************************
 Function: asn1_length_from_der
 Description: 从DER编码中解析ASN.1长度
 Input: len - 输出的ASN.1长度指针
        in - 输入的DER编码字节数组指针
        inlen - 输入的DER编码字节数组长度
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int asn1_length_from_der(size_t *len, const uint8_t **in, size_t *inlen)
{
    if (!len || !in || !(*in) || !inlen)
    {
         
        return -1;
    }

    if (*inlen == 0)
    {
         
        return -1;
    }

    // 短形式：最高位为0，直接表示长度
    if (**in < 128)
    {
        *len = *(*in)++;
        (*inlen)--;
    }
    else
    {
        // 长形式：最高位为1，后续字节表示长度
        uint8_t buf[4] = {0};
        size_t nbytes = *(*in)++ & 0x7f;  // 长度字节数
        (*inlen)--;

        if (nbytes < 1 || nbytes > 4)
        {
             
            return -1;
        }
        if (*inlen < nbytes)
        {
             
            return -1;
        }
        // 确保不是超长形式的冗余编码
        if (nbytes == 1 && **in < 0x80)
        {
             
            return -1;
        }
        if (nbytes > 1 && **in == 0)
        {
             
            return -1;
        }

        memcpy(buf + 4 - nbytes, *in, nbytes);
        *len = (size_t)GETU32(buf);
        *in += nbytes;
        *inlen -= nbytes;
    }

    // 检查剩余数据是否足够
    if (*inlen < *len)
    {
         
        return -2;
    }
    return 1;
}

/*************************************************
 Function: asn1_integer_from_der_ex
 Description: 从DER编码中解析ASN.1整数
 Input: tag - 期望的ASN.1标签
        a - 输出的整数数据指针
        alen - 输出的整数数据长度
        in - 输入的DER编码字节数组指针
        inlen - 输入的DER编码字节数组长度
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int asn1_integer_from_der_ex(int tag, const uint8_t **a, size_t *alen, 
                             const uint8_t **in, size_t *inlen)
{
    size_t len;

    if (!a || !alen || !in || !(*in) || !inlen)
    {
         
        return -1;
    }

    // 检查标签
    if (*inlen == 0 || **in != tag)
    {
        *a = NULL;
        *alen = 0;
        return 0;
    }
    (*in)++;
    (*inlen)--;

    // 解析长度
    if (asn1_length_from_der(&len, in, inlen) != 1)
    {
         
        return -1;
    }
    if (len == 0)
    {
         
        return -1;
    }

    // 检查是否为负数
    if (**in & 0x80)
    {
         
        return -1;
    }

    // 去除前导零
    if (**in == 0 && len > 1)
    {
        (*in)++;
        (*inlen)--;
        len--;

        // 确保下一个字节的最高位为1（否则是冗余编码）
        if (((**in) & 0x80) == 0)
        {
             
            return -1;
        }
    }

    // 检查是否仍有前导零
    if (**in == 0 && len > 1)
    {
         
        return -1;
    }

    // 返回整数数据
    *a = *in;
    *alen = len;
    *in += len;
    *inlen -= len;

    return 1;
}

/*************************************************
 Function: asn1_type_from_der
 Description: 从DER编码中解析ASN.1类型
 Input: tag - 期望的ASN.1标签
        d - 输出的DER编码数据指针
        dlen - 输出的DER编码数据长度
        in - 输入的DER编码字节数组指针
        inlen - 输入的DER编码字节数组长度
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int asn1_type_from_der(int tag, const uint8_t **d, size_t *dlen, 
                       const uint8_t **in, size_t *inlen)
{
    if (!d || !dlen || !in || !(*in) || !inlen)
    {
         
        return -1;
    }

    // 检查标签
    if (*inlen == 0 || **in != tag)
    {
        *d = NULL;
        *dlen = 0;
        return 0;
    }
    (*in)++;
    (*inlen)--;

    // 解析长度
    if (asn1_length_from_der(dlen, in, inlen) != 1)
    {
         
        return -1;
    }

    // 返回数据指针
    *d = *in;
    *in += *dlen;
    *inlen -= *dlen;
    return 1;
}

/*************************************************
 Function: asn1_length_le
 Description: 检查ASN.1长度是否小于等于另一个长度
 Input: len1 - 第一个长度
        len2 - 第二个长度
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int asn1_length_le(size_t len1, size_t len2)
{
    if (len1 > len2)
    {
        return -1;
    }
    return 1;
}

/*************************************************
 Function: asn1_length_is_zero
 Description: 检查ASN.1长度是否为0
 Input: len - ASN.1长度
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int asn1_length_is_zero(size_t len)
{
    if (len)
    {
        return -1;
    }
    return 1;
}

/*************************************************
 Function: sm2_signature_from_der
 Description: 从DER编码的SM2签名中解析R和S值
 Input: sig - 输出的SM2签名结构体指针
        in - 输入的DER编码字节数组指针
        inlen - 输入的DER编码字节数组长度
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int sm2_signature_from_der(SM2_SIGNATURE *sig, const uint8_t **in, size_t *inlen)
{
    int ret;
    const uint8_t *d;
    size_t dlen;
    const uint8_t *r;
    size_t rlen;
    const uint8_t *s;
    size_t slen;

    if ((ret = asn1_sequence_from_der(&d, &dlen, in, inlen)) != 1)
    {
        if (ret < 0)
             
        return ret;
    }
    // 解析两个INTEGER
    if (asn1_integer_from_der(&r, &rlen, &d, &dlen) != 1 || 
        asn1_integer_from_der(&s, &slen, &d, &dlen) != 1 || 
        asn1_length_le(rlen, 32) != 1 || 
        asn1_length_le(slen, 32) != 1 || 
        asn1_length_is_zero(dlen) != 1)
    {
         
        return -1;
    }
    // 复制到签名结构体（右对齐）
    memset(sig, 0, sizeof(*sig));
    memcpy(sig->r + 32 - rlen, r, rlen);
    memcpy(sig->s + 32 - slen, s, slen);
    return 1;
}

/*************************************************
 Function: sm2_z256_order
 Description: 获取SM2曲线的阶数
 Input: 无
 Output: 无
 Return: 指向SM2曲线阶数的指针
 Others: 
*************************************************/
static inline const uint64_t *sm2_z256_order(void)
{
    return &SM2_Z256_N[0];
}

/*************************************************
 Function: sm2_z256_modn_add
 Description: 计算(a + b) mod n
 Input: r - 输出的结果
        a - 第一个操作数
        b - 第二个操作数
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modn_add(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t c;

    c = sm2_z256_add(r, a, b);

    if (c)
    {
        // 有进位，需要减去n
        (void)sm2_z256_add(r, r, SM2_Z256_NEG_N);
        return;
    }

    if (sm2_z256_cmp(r, SM2_Z256_N) >= 0)
    {
        (void)sm2_z256_sub(r, r, SM2_Z256_N);
    }
}

/*************************************************
 Function: sm2_z256_get_booth
 Description: 获取SM2曲线标量的Booth编码
 Input: a - 标量
        window_size - 窗口大小
        i - 窗口索引
 Output: 无
 Return: Booth编码值
 Others: 
*************************************************/
static inline int sm2_z256_get_booth(const sm2_z256_t a, unsigned int window_size, int i)
{
    uint64_t mask = (1 << window_size) - 1;  // 窗口掩码
    uint64_t wbits;
    int n, j;

    // 第一个窗口特殊处理
    if (i == 0)
    {
        // 返回(a[0] << 1 & mask) - (a[0] & mask)
        return (int)((a[0] << 1) & mask) - (int)(a[0] & mask);
    }

    // 计算位位置
    j = i * window_size - 1;  // 起始位
    n = j / 64;               // 所在的64位字
    j = j % 64;               // 在字内的位偏移

    // 提取窗口位
    wbits = a[n] >> j;
    // 如果跨越两个字，从下一个字获取剩余位
    if ((64 - j) < (int)(window_size + 1) && n < 3)
    {
        wbits |= a[n + 1] << (64 - j);
    }
    // 返回Booth编码值：(wbits & mask) - ((wbits >> 1) & mask)
    return (int)(wbits & mask) - (int)((wbits >> 1) & mask);
}

/*************************************************
 Function: sm2_z256_point_copy_affine
 Description: 复制SM2曲线点的仿射坐标到射影坐标
 Input: R - 输出的结果点
        P - 输入的仿射坐标点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_copy_affine(SM2_Z256_POINT *R, const SM2_Z256_AFFINE_POINT *P)
{
    memcpy(R, P, sizeof(SM2_Z256_AFFINE_POINT));  // 复制X和Y
    sm2_z256_copy(R->Z, SM2_Z256_MODP_MONT_ONE);  // Z = 1
}

static void sm2_z256_modp_sub(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t c;  // 借位

    c = sm2_z256_sub(r, a, b);  // 先计算a - b

    // 如果有借位（结果为负），需要加上p
    if (c)
    {
        // a - b + p = (a - b + 2^256) - (2^256 - p)
        // 相当于加上SM2_Z256_NEG_P
        (void)sm2_z256_sub(r, r, SM2_Z256_NEG_P);
    }
}


static void sm2_z256_modp_dbl(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_modp_add(r, a, a);
}

/*************************************************
 Function: sm2_z256_copy_conditional
 Description: 有条件地复制SM2曲线点的仿射坐标到射影坐标
 Input: dst - 输出的结果点
        src - 输入的仿射坐标点
        move - 条件标志，1表示复制，0表示保持不变
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_copy_conditional(sm2_z256_t dst, const sm2_z256_t src, uint64_t move)
{
    // 创建掩码：如果move=1，则mask1=0xFFFFFFFFFFFFFFFF，mask2=0
    uint64_t mask1 = 0 - move;
    // mask2是mask1的反码
    uint64_t mask2 = ~mask1;

    // 条件复制：如果move=1，dst = src；否则dst保持不变
    dst[0] = (src[0] & mask1) ^ (dst[0] & mask2);
    dst[1] = (src[1] & mask1) ^ (dst[1] & mask2);
    dst[2] = (src[2] & mask1) ^ (dst[2] & mask2);
    dst[3] = (src[3] & mask1) ^ (dst[3] & mask2);
}

/*************************************************
 Function: sm2_z256_point_add_affine
 Description: 计算SM2曲线点的仿射坐标加法
 Input: r - 输出的结果点
        a - 第一个操作数点
        b - 第二个操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_add_affine(SM2_Z256_POINT *r, const SM2_Z256_POINT *a, const SM2_Z256_AFFINE_POINT *b)
{
    sm2_z256_t U2, S2;
    sm2_z256_t Z1sqr;
    sm2_z256_t H, R;
    sm2_z256_t Hsqr;
    sm2_z256_t Rsqr;
    sm2_z256_t Hcub;

    sm2_z256_t res_x;
    sm2_z256_t res_y;
    sm2_z256_t res_z;

    uint64_t in1infty, in2infty;

    const uint64_t *in1_x = a->X;
    const uint64_t *in1_y = a->Y;
    const uint64_t *in1_z = a->Z;

    const uint64_t *in2_x = b->x;
    const uint64_t *in2_y = b->y;

    // 检查无穷远点
    in1infty = (in1_z[0] | in1_z[1] | in1_z[2] | in1_z[3]);
    in2infty = (in2_x[0] | in2_x[1] | in2_x[2] | in2_x[3] | 
                in2_y[0] | in2_y[1] | in2_y[2] | in2_y[3]);

    in1infty = is_zero(in1infty);
    in2infty = is_zero(in2infty);

    // 混合坐标加法公式
    sm2_z256_modp_mont_sqr(Z1sqr, in1_z);       // Z1^2
    sm2_z256_modp_mont_mul(U2, in2_x, Z1sqr);   // U2 = X2*Z1^2
    sm2_z256_modp_sub(H, U2, in1_x);            // H = U2 - U1
    sm2_z256_modp_mont_mul(S2, Z1sqr, in1_z);   // S2 = Z1^3
    sm2_z256_modp_mont_mul(res_z, H, in1_z);    // Z3 = H*Z1
    sm2_z256_modp_mont_mul(S2, S2, in2_y);      // S2 = Y2*Z1^3
    sm2_z256_modp_sub(R, S2, in1_y);            // R = S2 - S1
    sm2_z256_modp_mont_sqr(Hsqr, H);            // H^2
    sm2_z256_modp_mont_sqr(Rsqr, R);            // R^2
    sm2_z256_modp_mont_mul(Hcub, Hsqr, H);      // H^3
    sm2_z256_modp_mont_mul(U2, in1_x, Hsqr);    // U1*H^2
    sm2_z256_modp_dbl(Hsqr, U2);                // 2*U1*H^2
    sm2_z256_modp_sub(res_x, Rsqr, Hsqr);       // X3 = R^2 - 2*U1*H^2
    sm2_z256_modp_sub(res_x, res_x, Hcub);      // X3 = R^2 - 2*U1*H^2 - H^3
    sm2_z256_modp_sub(H, U2, res_x);            // U1*H^2 - X3
    sm2_z256_modp_mont_mul(S2, in1_y, Hcub);    // S1*H^3
    sm2_z256_modp_mont_mul(H, H, R);            // R*(U1*H^2 - X3)
    sm2_z256_modp_sub(res_y, H, S2);            // Y3 = R*(U1*H^2 - X3) - S1*H^3

    // 处理无穷远点情况
    sm2_z256_copy_conditional(res_x, in2_x, in1infty);
    sm2_z256_copy_conditional(res_x, in1_x, in2infty);
    sm2_z256_copy_conditional(res_y, in2_y, in1infty);
    sm2_z256_copy_conditional(res_y, in1_y, in2infty);
    sm2_z256_copy_conditional(res_z, SM2_Z256_MODP_MONT_ONE, in1infty);
    sm2_z256_copy_conditional(res_z, in1_z, in2infty);

    memcpy(r->X, res_x, sizeof(res_x));
    memcpy(r->Y, res_y, sizeof(res_y));
    memcpy(r->Z, res_z, sizeof(res_z));
}

/*************************************************
 Function: sm2_z256_modp_neg
 Description: 计算SM2曲线点的仿射坐标减法
 Input: r - 输出的结果点
        a - 输入的操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modp_neg(sm2_z256_t r, const sm2_z256_t a)
{
    (void)sm2_z256_sub(r, SM2_Z256_P, a);
}

/*************************************************
 Function: sm2_z256_point_sub_affine
 Description: 计算SM2曲线点的仿射坐标减法
 Input: R - 输出的结果点
        A - 第一个操作数点
        B - 第二个操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_sub_affine(SM2_Z256_POINT *R,
                               const SM2_Z256_POINT *A, const SM2_Z256_AFFINE_POINT *B)
{
    SM2_Z256_AFFINE_POINT neg_B;

    sm2_z256_copy(neg_B.x, B->x);
    sm2_z256_modp_neg(neg_B.y, B->y);  // 取B的负点

    sm2_z256_point_add_affine(R, A, &neg_B);
}

/*************************************************
 Function: sm2_z256_point_mul_generator
 Description: 计算P = kG，其中G为SM2曲线的生成点
 Input: R - 输出的结果点
        k - 标量
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_mul_generator(SM2_Z256_POINT *R, const sm2_z256_t k)
{
    size_t window_size = 7;  // 窗口大小
    int R_infinity = 1;      // R是否为无穷远点
    int n = (256 + window_size - 1) / window_size;  // 窗口数
    int i;

    for (i = n - 1; i >= 0; i--)
    {
        int booth = sm2_z256_get_booth(k, window_size, i);

        if (R_infinity)
        {
            if (booth != 0)
            {
                sm2_z256_point_copy_affine(R, &g_pre_comp[i][booth - 1]);
                R_infinity = 0;
            }
        }
        else
        {
            if (booth > 0)
            {
                sm2_z256_point_add_affine(R, R, &g_pre_comp[i][booth - 1]);
            }
            else if (booth < 0)
            {
                sm2_z256_point_sub_affine(R, R, &g_pre_comp[i][-booth - 1]);
            }
        }
    }

    if (R_infinity)
    {
        sm2_z256_point_set_infinity(R);
    }
}

/*************************************************
 Function: sm2_z256_equ
 Description: 检查SM2曲线点的仿射坐标是否相等
 Input: a - 第一个操作数点
        b - 第二个操作数点
 Output: 无
 Return: 1 - 相等, 0 - 不相等
 Others: 
*************************************************/
static inline uint64_t sm2_z256_equ(const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t res;
    // 逐字异或，如果相等则所有位都为0
    res = a[0] ^ b[0];
    res |= a[1] ^ b[1];
    res |= a[2] ^ b[2];
    res |= a[3] ^ b[3];
    return is_zero(res);  // 检查是否为0
}

/*************************************************
 Function: sm2_z256_modp_haf
 Description: 计算SM2曲线点的仿射坐标减半
 Input: r - 输出的结果点
        a - 输入的操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
void sm2_z256_modp_haf(sm2_z256_t r, const sm2_z256_t a)
{
    uint64_t c = 0;

    // 如果a是奇数，先加上p使其变为偶数
    if (a[0] & 1)
    {
        c = sm2_z256_add(r, a, SM2_Z256_P);
    }
    else
    {
        // 直接复制
        r[0] = a[0];
        r[1] = a[1];
        r[2] = a[2];
        r[3] = a[3];
    }

    // 右移1位（除以2）
    r[0] = (r[0] >> 1) | ((r[1] & 1) << 63);  // 低64位
    r[1] = (r[1] >> 1) | ((r[2] & 1) << 63);  // 次低64位
    r[2] = (r[2] >> 1) | ((r[3] & 1) << 63);  // 次高64位
    r[3] = (r[3] >> 1) | ((c & 1) << 63);     // 最高64位（包含进位）
}

/*************************************************
 Function: sm2_z256_modp_tri
 Description: 计算SM2曲线点的仿射坐标三倍
 Input: r - 输出的结果点
        a - 输入的操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
void sm2_z256_modp_tri(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_t t;
    sm2_z256_modp_add(t, a, a);  // t = 2a
    sm2_z256_modp_add(r, t, a);  // r = t + a = 3a
}

/*************************************************
 Function: sm2_z256_point_dbl
 Description: 计算SM2曲线点的仿射坐标翻倍
 Input: R - 输出的结果点
        A - 输入的操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
void sm2_z256_point_dbl(SM2_Z256_POINT *R, const SM2_Z256_POINT *A)
{
    const uint64_t *X1 = A->X;
    const uint64_t *Y1 = A->Y;
    const uint64_t *Z1 = A->Z;
    uint64_t *X3 = R->X;
    uint64_t *Y3 = R->Y;
    uint64_t *Z3 = R->Z;
    sm2_z256_t S;
    sm2_z256_t M;
    sm2_z256_t Zsqr;
    sm2_z256_t tmp0;

    // 1. S = 2Y
    sm2_z256_modp_dbl(S, Y1);
    // 2. Zsqr = Z^2
    sm2_z256_modp_mont_sqr(Zsqr, Z1);
    // 3. S = S^2 = 4Y^2
    sm2_z256_modp_mont_sqr(S, S);
    // 4. Z = Z*Y
    sm2_z256_modp_mont_mul(Z3, Z1, Y1);
    // 5. Z = 2*Z = 2*Y*Z
    sm2_z256_modp_dbl(Z3, Z3);
    // 6. M = X + Zsqr = X + Z^2
    sm2_z256_modp_add(M, X1, Zsqr);
    // 7. Zsqr = X - Zsqr = X - Z^2
    sm2_z256_modp_sub(Zsqr, X1, Zsqr);
    // 8. Y = S^2 = 16Y^4
    sm2_z256_modp_mont_sqr(Y3, S);
    // 9. Y = Y/2 = 8Y^4
    sm2_z256_modp_haf(Y3, Y3);
    // 10. M = M * Zsqr = (X + Z^2)*(X - Z^2) = X^2 - Z^4
    sm2_z256_modp_mont_mul(M, M, Zsqr);
    // 11. M = 3M = 3X^2 - 3Z^4
    sm2_z256_modp_tri(M, M);
    // 12. S = S * X = 4X*Y^2
    sm2_z256_modp_mont_mul(S, S, X1);
    // 13. tmp0 = 2 * S = 8X*Y^2
    sm2_z256_modp_dbl(tmp0, S);
    // 14. X = M^2 = (3X^2 - 3Z^4)^2
    sm2_z256_modp_mont_sqr(X3, M);
    // 15. X = X - tmp0 = (3X^2 - 3Z^4)^2 - 8X*Y^2
    sm2_z256_modp_sub(X3, X3, tmp0);
    // 16. S = S - X3 = 4X*Y^2 - X3
    sm2_z256_modp_sub(S, S, X3);
    // 17. S = S * M = (3X^2 - 3Z^4)*(4X*Y^2 - X3)
    sm2_z256_modp_mont_mul(S, S, M);
    // 18. Y = S - Y = (3X^2 - 3Z^4)*(4X*Y^2 - X3) - 8Y^4
    sm2_z256_modp_sub(Y3, S, Y3);
}

/*************************************************
 Function: sm2_z256_point_add
 Description: 计算SM2曲线点的仿射坐标加法
 Input: r - 输出的结果点
        a - 第一个操作数点
        b - 第二个操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_add(SM2_Z256_POINT *r, const SM2_Z256_POINT *a, const SM2_Z256_POINT *b)
{
    sm2_z256_t U2, S2;
    sm2_z256_t U1, S1;
    sm2_z256_t Z1sqr;
    sm2_z256_t Z2sqr;
    sm2_z256_t H, R;
    sm2_z256_t Hsqr;
    sm2_z256_t Rsqr;
    sm2_z256_t Hcub;

    sm2_z256_t res_x;
    sm2_z256_t res_y;
    sm2_z256_t res_z;

    uint64_t in1infty, in2infty;

    const uint64_t *in1_x = a->X;
    const uint64_t *in1_y = a->Y;
    const uint64_t *in1_z = a->Z;

    const uint64_t *in2_x = b->X;
    const uint64_t *in2_y = b->Y;
    const uint64_t *in2_z = b->Z;

    // 检查是否为无穷远点（Z坐标是否为0）
    in1infty = (in1_z[0] | in1_z[1] | in1_z[2] | in1_z[3]);
    in2infty = (in2_z[0] | in2_z[1] | in2_z[2] | in2_z[3]);

    in1infty = is_zero(in1infty);
    in2infty = is_zero(in2infty);

    // 计算Z2^2和Z1^2
    sm2_z256_modp_mont_sqr(Z2sqr, in2_z);  // Z2^2
    sm2_z256_modp_mont_sqr(Z1sqr, in1_z);  // Z1^2

    // 计算S1和S2
    sm2_z256_modp_mont_mul(S1, Z2sqr, in2_z);  // S1 = Z2^3
    sm2_z256_modp_mont_mul(S2, Z1sqr, in1_z);  // S2 = Z1^3
    sm2_z256_modp_mont_mul(S1, S1, in1_y);     // S1 = Y1*Z2^3
    sm2_z256_modp_mont_mul(S2, S2, in2_y);     // S2 = Y2*Z1^3
    sm2_z256_modp_sub(R, S2, S1);              // R = S2 - S1

    // 计算U1和U2
    sm2_z256_modp_mont_mul(U1, in1_x, Z2sqr);  // U1 = X1*Z2^2
    sm2_z256_modp_mont_mul(U2, in2_x, Z1sqr);  // U2 = X2*Z1^2
    sm2_z256_modp_sub(H, U2, U1);              // H = U2 - U1

    // 检查特殊情况（这不是恒定时间实现）
    if (sm2_z256_equ(U1, U2) && !in1infty && !in2infty)
    {
        if (sm2_z256_equ(S1, S2))
        {
            // P = Q，执行倍点
            sm2_z256_point_dbl(r, a);
            return;
        }
        else
        {
            // P = -Q，结果为无穷远点
            memset(r, 0, sizeof(*r));
            return;
        }
    }

    // 计算结果坐标
    sm2_z256_modp_mont_sqr(Rsqr, R);         // R^2
    sm2_z256_modp_mont_mul(res_z, H, in1_z); // Z3 = H*Z1
    sm2_z256_modp_mont_sqr(Hsqr, H);         // H^2
    sm2_z256_modp_mont_mul(res_z, res_z, in2_z); // Z3 = H*Z1*Z2
    sm2_z256_modp_mont_mul(Hcub, Hsqr, H);   // H^3
    sm2_z256_modp_mont_mul(U2, U1, Hsqr);    // U1*H^2
    sm2_z256_modp_dbl(Hsqr, U2);             // 2*U1*H^2
    sm2_z256_modp_sub(res_x, Rsqr, Hsqr);    // X3 = R^2 - 2*U1*H^2
    sm2_z256_modp_sub(res_x, res_x, Hcub);   // X3 = R^2 - 2*U1*H^2 - H^3
    sm2_z256_modp_sub(res_y, U2, res_x);     // U1*H^2 - X3
    sm2_z256_modp_mont_mul(S2, S1, Hcub);    // S1*H^3
    sm2_z256_modp_mont_mul(res_y, R, res_y); // R*(U1*H^2 - X3)
    sm2_z256_modp_sub(res_y, res_y, S2);     // Y3 = R*(U1*H^2 - X3) - S1*H^3

    // 处理无穷远点情况（恒定时间选择）
    sm2_z256_copy_conditional(res_x, in2_x, in1infty);
    sm2_z256_copy_conditional(res_y, in2_y, in1infty);
    sm2_z256_copy_conditional(res_z, in2_z, in1infty);

    sm2_z256_copy_conditional(res_x, in1_x, in2infty);
    sm2_z256_copy_conditional(res_y, in1_y, in2infty);
    sm2_z256_copy_conditional(res_z, in1_z, in2infty);

    // 复制结果
    memcpy(r->X, res_x, sizeof(res_x));
    memcpy(r->Y, res_y, sizeof(res_y));
    memcpy(r->Z, res_z, sizeof(res_z));
}

/*************************************************
 Function: sm2_z256_point_mul_pre_compute
 Description: 预计算SM2曲线点的乘法表
 Input: P - 输入的点
        T - 输出的乘法表，16个点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_mul_pre_compute(const SM2_Z256_POINT *P, SM2_Z256_POINT T[16])
{
    memcpy(&T[0], P, sizeof(SM2_Z256_POINT));

    // 如果P在仿射坐标中（Z=1），使用优化算法
    if (sm2_z256_equ(P->Z, SM2_Z256_MODP_MONT_ONE) == 1)
    {
        const SM2_Z256_AFFINE_POINT *P_ = (const SM2_Z256_AFFINE_POINT *)P;
        sm2_z256_point_dbl(&T[1], &T[0]);
        sm2_z256_point_add_affine(&T[2], &T[1], P_);
        sm2_z256_point_dbl(&T[3], &T[1]);
        sm2_z256_point_add_affine(&T[4], &T[3], P_);
        sm2_z256_point_dbl(&T[5], &T[2]);
        sm2_z256_point_add_affine(&T[6], &T[5], P_);
        sm2_z256_point_dbl(&T[7], &T[3]);
        sm2_z256_point_add_affine(&T[8], &T[7], P_);
        sm2_z256_point_dbl(&T[9], &T[4]);
        sm2_z256_point_add_affine(&T[10], &T[9], P_);
        sm2_z256_point_dbl(&T[11], &T[5]);
        sm2_z256_point_add_affine(&T[12], &T[11], P_);
        sm2_z256_point_dbl(&T[13], &T[6]);
        sm2_z256_point_add_affine(&T[14], &T[13], P_);
        sm2_z256_point_dbl(&T[15], &T[7]);
    }
    else
    {
        // 一般情况
        sm2_z256_point_dbl(&T[2 - 1], &T[1 - 1]);
        sm2_z256_point_dbl(&T[4 - 1], &T[2 - 1]);
        sm2_z256_point_dbl(&T[8 - 1], &T[4 - 1]);
        sm2_z256_point_dbl(&T[16 - 1], &T[8 - 1]);
        sm2_z256_point_add(&T[3 - 1], &T[2 - 1], P);
        sm2_z256_point_dbl(&T[6 - 1], &T[3 - 1]);
        sm2_z256_point_dbl(&T[12 - 1], &T[6 - 1]);
        sm2_z256_point_add(&T[5 - 1], &T[3 - 1], &T[2 - 1]);
        sm2_z256_point_dbl(&T[10 - 1], &T[5 - 1]);
        sm2_z256_point_add(&T[7 - 1], &T[4 - 1], &T[3 - 1]);
        sm2_z256_point_dbl(&T[14 - 1], &T[7 - 1]);
        sm2_z256_point_add(&T[9 - 1], &T[4 - 1], &T[5 - 1]);
        sm2_z256_point_add(&T[11 - 1], &T[6 - 1], &T[5 - 1]);
        sm2_z256_point_add(&T[13 - 1], &T[7 - 1], &T[6 - 1]);
        sm2_z256_point_add(&T[15 - 1], &T[8 - 1], &T[7 - 1]);
    }
}

/*************************************************
 Function: sm2_z256_point_neg
 Description: 计算SM2曲线点的仿射坐标取负
 Input: R - 输出的结果点
        P - 输入的操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_neg(SM2_Z256_POINT *R, const SM2_Z256_POINT *P)
{
    sm2_z256_copy(R->X, P->X);
    sm2_z256_modp_neg(R->Y, P->Y);  // Y取负
    sm2_z256_copy(R->Z, P->Z);
}

/*************************************************
 Function: sm2_z256_point_sub
 Description: 计算SM2曲线点的仿射坐标减法
 Input: R - 输出的结果点
        A - 输入的操作数点
        B - 输入的操作数点
 Output: 无
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_point_sub(SM2_Z256_POINT *R, const SM2_Z256_POINT *A, const SM2_Z256_POINT *B)
{
    SM2_Z256_POINT neg_B;
    sm2_z256_point_neg(&neg_B, B);  // 取B的负点
    sm2_z256_point_add(R, A, &neg_B);
}

static void sm2_z256_point_mul(SM2_Z256_POINT *R, const sm2_z256_t k, const SM2_Z256_POINT *P)
{
    int window_size = 5;  // 窗口大小
    SM2_Z256_POINT T[16]; // 预计算表（存储P, 2P, 3P, ..., 16P）
    int R_infinity = 1;   // R是否为无穷远点
    int n = (256 + window_size - 1) / window_size;  // 窗口数
    int i;

    // 预计算窗口点
    sm2_z256_point_mul_pre_compute(P, T);

    // 从高位到低位扫描标量
    for (i = n - 1; i >= 0; i--)
    {
        int booth = sm2_z256_get_booth(k, window_size, i);

        if (R_infinity)
        {
            // 如果R是无穷远点，直接设置为当前点
            if (booth != 0)
            {
                *R = T[booth - 1];
                R_infinity = 0;
            }
        }
        else
        {
            // 执行5次倍点（窗口大小）
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);

            // 根据Booth编码值进行加点或减点
            if (booth > 0)
            {
                sm2_z256_point_add(R, R, &T[booth - 1]);
            }
            else if (booth < 0)
            {
                sm2_z256_point_sub(R, R, &T[-booth - 1]);
            }
        }
        if ((i & 0x07) == 0) 
        {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        }
    }

    // 如果k=0，R为无穷远点
    if (R_infinity)
    {
        memset(R, 0, sizeof(*R));
    }
}

/*************************************************
 Function: sm2_z256_point_is_at_infinity
 Description: 检查SM2曲线点是否为无穷远点
 Input: P - 输入的操作数点
 Output: 无
 Return: 1 - 是无穷远点，0 - 不是无穷远点
 Others: 
*************************************************/
static int sm2_z256_point_is_at_infinity(const SM2_Z256_POINT *P)
{
    if (sm2_z256_is_zero(P->Z))
    {
        // 验证无穷远点的一致性
        sm2_z256_t X_cub;
        sm2_z256_t Y_sqr;

        sm2_z256_modp_mont_sqr(X_cub, P->X);
        sm2_z256_modp_mont_mul(X_cub, X_cub, P->X);
        sm2_z256_modp_mont_sqr(Y_sqr, P->Y);

        if (sm2_z256_cmp(X_cub, Y_sqr) != 0)
        {
             
            return 0;
        }

        return 1;
    }
    else
    {
        return 0;
    }
}

/*************************************************
 Function: sm2_z256_modp_from_mont
 Description: 将SM2曲线点的蒙哥马利域坐标转换为普通域坐标
 Input: r - 输出的结果坐标
        a - 输入的操作数坐标（蒙哥马利域）
 Output: r - 输出的结果坐标（普通域）
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modp_from_mont(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_modp_mont_mul(r, a, SM2_Z256_ONE);
}

/*************************************************
 Function: sm2_z256_modp_mont_inv
 Description: 计算SM2曲线点的蒙哥马利域坐标的逆元
 Input: r - 输出的结果坐标
        a - 输入的操作数坐标（蒙哥马利域）
 Output: r - 输出的结果坐标（普通域）
 Return: 无
 Others: 
*************************************************/
static void sm2_z256_modp_mont_inv(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_t a1, a2, a3, a4, a5;
    int i;

    // 优化的求逆元加法链（基于p-2的二进制表示）
    sm2_z256_modp_mont_sqr(a1, a);      // a1 = a^2
    sm2_z256_modp_mont_mul(a2, a1, a);  // a2 = a^3
    sm2_z256_modp_mont_sqr(a3, a2);     // a3 = a^6
    sm2_z256_modp_mont_sqr(a3, a3);     // a3 = a^12
    sm2_z256_modp_mont_mul(a3, a3, a2); // a3 = a^15
    sm2_z256_modp_mont_sqr(a4, a3);     // a4 = a^30
    sm2_z256_modp_mont_sqr(a4, a4);     // a4 = a^60
    sm2_z256_modp_mont_sqr(a4, a4);     // a4 = a^120
    sm2_z256_modp_mont_sqr(a4, a4);     // a4 = a^240
    sm2_z256_modp_mont_mul(a4, a4, a3); // a4 = a^255
    sm2_z256_modp_mont_sqr(a5, a4);     // a5 = a^510
    
    // 继续求幂...
    for (i = 1; i < 8; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a5, a5, a4);  // a5 = a^(510*256+255) = a^130815
    
    for (i = 0; i < 8; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a5, a5, a4);
    
    for (i = 0; i < 4; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a5, a5, a3);
    sm2_z256_modp_mont_sqr(a5, a5);
    sm2_z256_modp_mont_sqr(a5, a5);
    sm2_z256_modp_mont_mul(a5, a5, a2);
    sm2_z256_modp_mont_sqr(a5, a5);
    sm2_z256_modp_mont_mul(a5, a5, a);
    sm2_z256_modp_mont_sqr(a4, a5);
    sm2_z256_modp_mont_mul(a3, a4, a1);
    sm2_z256_modp_mont_sqr(a5, a4);
    
    for (i = 1; i < 31; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a4, a5, a4);
    sm2_z256_modp_mont_sqr(a4, a4);
    sm2_z256_modp_mont_mul(a4, a4, a);
    sm2_z256_modp_mont_mul(a3, a4, a2);
    
    for (i = 0; i < 33; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a2, a5, a3);
    sm2_z256_modp_mont_mul(a3, a2, a3);
    
    for (i = 0; i < 32; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a2, a5, a3);
    sm2_z256_modp_mont_mul(a3, a2, a3);
    sm2_z256_modp_mont_mul(a4, a2, a4);
    
    for (i = 0; i < 32; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a2, a5, a3);
    sm2_z256_modp_mont_mul(a3, a2, a3);
    sm2_z256_modp_mont_mul(a4, a2, a4);
    
    for (i = 0; i < 32; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a2, a5, a3);
    sm2_z256_modp_mont_mul(a3, a2, a3);
    sm2_z256_modp_mont_mul(a4, a2, a4);
    
    for (i = 0; i < 32; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a2, a5, a3);
    sm2_z256_modp_mont_mul(a3, a2, a3);
    sm2_z256_modp_mont_mul(a4, a2, a4);
    
    for (i = 0; i < 32; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(r, a4, a5);  // 最终结果
}

/*************************************************
 Function: sm2_z256_point_get_xy
 Description: 计算SM2曲线点的仿射坐标
 Input: P - 输入的操作数点
        x - 输出的X坐标
        y - 输出的Y坐标（可以为NULL）
 Output: x - 输出的X坐标
         y - 输出的Y坐标（如果非NULL）
 Return: 成功返回1，失败返回0
 Others: 
*************************************************/
static int sm2_z256_point_get_xy(const SM2_Z256_POINT *P, sm2_z256_t x, sm2_z256_t y)
{
    // 检查是否为无穷远点（Z == 0）
    if (sm2_z256_point_is_at_infinity(P) == 1)
    {
        sm2_z256_set_zero(x);  // X设为0
        if (y)
        {
            sm2_z256_set_zero(y);  // Y设为0（如果非NULL）
        }
        return 0;  // 返回0表示无穷远点
    }

    // 如果Z == 1，点已经在仿射坐标中
    if (sm2_z256_cmp(P->Z, SM2_Z256_MODP_MONT_ONE) == 0)
    {
        // 从蒙哥马利域转换回普通域
        sm2_z256_modp_from_mont(x, P->X);
        if (y)
        {
            sm2_z256_modp_from_mont(y, P->Y);
        }
    }
    else
    {
        // 需要计算Z的逆元进行坐标转换
        sm2_z256_t z_inv;  // Z的逆元

        // 计算Z^(-1) mod p
        sm2_z256_modp_mont_inv(z_inv, P->Z);
        if (y)
        {
            // y = Y * Z^(-1)
            sm2_z256_modp_mont_mul(y, P->Y, z_inv);
        }
        // 计算Z^(-2) = (Z^(-1))^2
        sm2_z256_modp_mont_sqr(z_inv, z_inv);
        // x = X * Z^(-2)
        sm2_z256_modp_mont_mul(x, P->X, z_inv);
        sm2_z256_modp_from_mont(x, x);  // 从蒙哥马利域转换
        if (y)
        {
            // y = Y * Z^(-1) * Z^(-2) = Y * Z^(-3)
            sm2_z256_modp_mont_mul(y, y, z_inv);
            sm2_z256_modp_from_mont(y, y);  // 从蒙哥马利域转换
        }
    }

    return 1;  // 返回1表示成功
}

/*************************************************
 Function: sm2_do_verify
 Description: 验证SM2签名
 Input: key - SM2密钥结构体指针
        dgst - 32字节的消息摘要
        sig - SM2签名结构体指针
 Output: 无
 Return: 成功返回1，失败返回-1
 Others: 
*************************************************/
static int sm2_do_verify(const SM2_KEY *key, const uint8_t dgst[32], const SM2_SIGNATURE *sig)
{
    SM2_Z256_POINT R;
    SM2_Z256_POINT T;
    sm2_z256_t r;
    sm2_z256_t s;
    sm2_z256_t e;
    sm2_z256_t x;
    sm2_z256_t t;

    // check r, s in [1, n-1]
    sm2_z256_from_bytes(r, sig->r);
    if (sm2_z256_is_zero(r) == 1)
    {
         
        return -1;
    }
    if (sm2_z256_cmp(r, sm2_z256_order()) >= 0)
    {
         
        return -1;
    }
    sm2_z256_from_bytes(s, sig->s);
    if (sm2_z256_is_zero(s) == 1)
    {
         
        return -1;
    }
    if (sm2_z256_cmp(s, sm2_z256_order()) >= 0)
    {
         
        return -1;
    }

    // t = r + s (mod n), check t != 0
    sm2_z256_modn_add(t, r, s);
    if (sm2_z256_is_zero(t))
    {
         
        return -1;
    }

    // Q(x,y) = s * G + t * P
    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    sm2_z256_point_mul_generator(&R, s);
    sm2_z256_point_mul(&T, t, &key->public_key);
    sm2_z256_point_add(&R, &R, &T);
    sm2_z256_point_get_xy(&R, x, NULL);

    // e = H(M)
    sm2_z256_from_bytes(e, dgst);
    if (sm2_z256_cmp(e, sm2_z256_order()) >= 0)
    {
        sm2_z256_sub(e, e, sm2_z256_order());
    }

    // r' = e + x (mod n)
    if (sm2_z256_cmp(x, sm2_z256_order()) >= 0)
    {
        sm2_z256_sub(x, x, sm2_z256_order());
    }
    sm2_z256_modn_add(e, e, x);

    // check if r == r'
    if (sm2_z256_cmp(e, r) != 0)
    {
         
        return -1;
    }
    return 1;
}


/*************************************************
 Function: bn_is_zero
 Description: 判断大数是否为0
 Input: a - 大数指针, k - 大数长度
 Output: None
 Return: int 1为0, 0不为0
 Others: 
*************************************************/
static int bn_is_zero(const uint32_t *a, size_t k)
{
    while (k-- > 0) { if (a[k]) return 0; }
    return 1;
}

/*************************************************
 Function: bn_is_one
 Description: 判断大数是否为1
 Input: a - 大数指针, k - 大数长度
 Output: None
 Return: int 1为1, 0不为1
 Others: 
*************************************************/
static int bn_is_one(const uint32_t *a, size_t k)
{
    if (a[0] != 1) return 0;
    while (k-- > 1) { if (a[k]) return 0; }
    return 1;
}

/*************************************************
 Function: bn_from_bytes
 Description: 字节流转大数
 Input: in - 字节流指针, k - 数组长度
 Output: a - 目标大数
 Return: void
 Others: 
*************************************************/
static void bn_from_bytes(uint32_t *a, size_t k, const uint8_t *in)
{
    while (k-- > 0) {
        a[k] = GETU32(in);
        in += 4;
    }
}

/*************************************************
 Function: bn_cmp
 Description: 大数比较
 Input: a, b - 待比较大数指针, k - 长度
 Output: None
 Return: int 1为大于, -1为小于, 0为等于
 Others: 
*************************************************/
static int bn_cmp(const uint32_t *a, const uint32_t *b, size_t k)
{
    while (k-- > 0) {
        if (a[k] > b[k]) return 1;
        else if (a[k] < b[k]) return -1;
    }
    return 0;
}

/*************************************************
 Function: bn_sub
 Description: 大数减法 (r = a - b)
 Input: a, b - 待计算大数指针, k - 长度
 Output: r - 计算结果
 Return: int 最终借位标志
 Others: 
*************************************************/
static int bn_sub(uint32_t *r, const uint32_t *a, const uint32_t *b, size_t k)
{
    int64_t w = 0;
    for (size_t i = 0; i < k; i++) {
        w += (int64_t)a[i] - (int64_t)b[i];
        r[i] = w & 0xffffffff;
        w >>= 32;
    }
    return (int)w;
}

/*************************************************
 Function: bn_add
 Description: 大数加法 (r = a + b)
 Input: a, b - 待计算大数指针, k - 长度
 Output: r - 计算结果
 Return: int 最终进位标志
 Others: 
*************************************************/
static int bn_add(uint32_t *r, const uint32_t *a, const uint32_t *b, size_t k)
{
    uint64_t w = 0;
    for (size_t i = 0; i < k; i++) {
        w += (uint64_t)a[i] + (uint64_t)b[i];
        r[i] = w & 0xffffffff;
        w >>= 32;
    }
    return (int)w;
}

/*************************************************
 Function: bn_mul
 Description: 大数乘法
 Input: a, b - 待计算大数指针, k - 长度
 Output: r - 计算结果
 Return: void
 Others: 
*************************************************/
static void bn_mul(uint32_t *r, const uint32_t *a, const uint32_t *b, size_t k)
{
    uint64_t w;
    for (size_t i = 0; i < k; i++) r[i] = 0;
    for (size_t i = 0; i < k; i++) {
        w = 0;
        for (size_t j = 0; j < k; j++) {
            w += (uint64_t)r[i + j] + (uint64_t)a[i] * (uint64_t)b[j];
            r[i + j] = w & 0xffffffff;
            w >>= 32;
        }
        r[i + k] = w;
    }
}

/*************************************************
 Function: bn_mul_lo
 Description: 大数乘法(取低位)
 Input: a, b - 待计算大数指针, k - 长度
 Output: r - 计算结果
 Return: void
 Others: 
*************************************************/
static void bn_mul_lo(uint32_t *r, const uint32_t *a, const uint32_t *b, size_t k)
{
    uint64_t w;
    for (size_t i = 0; i < k; i++) r[i] = 0;
    for (size_t i = 0; i < k; i++) {
        w = 0;
        for (size_t j = 0; j < k - i; j++) {
            w += (uint64_t)r[i + j] + (uint64_t)a[i] * (uint64_t)b[j];
            r[i + j] = w & 0xffffffff;
            w >>= 32;
        }
    }
}

static void bn_copy(uint32_t *r, const uint32_t *a, size_t k)
{
    while (k-- > 0) r[k] = a[k];
}

static void bn_set_word(uint32_t *r, uint32_t a, size_t k)
{
    r[0] = a;
    while (k-- > 1) r[k] = 0;
}

static void bn_mod_sub(uint32_t *r, const uint32_t *a, const uint32_t *b, const uint32_t *p, size_t k)
{
    if (bn_cmp(a, b, k) >= 0) bn_sub(r, a, b, k);
    else {
        bn_sub(r, b, a, k);
        bn_sub(r, p, r, k);
    }
}

static void bn_mod_add(uint32_t *r, const uint32_t *a, const uint32_t *b, const uint32_t *p, size_t k)
{
    int carry = bn_add(r, a, b, k);
    if (carry) bn_sub(r, r, p, k);
    else if (bn_cmp(r, p, k) >= 0) bn_sub(r, r, p, k);
}

/*************************************************
 Function: bn_barrett_mod_mul
 Description: 基于 Barrett 约减的模乘
 Input: a, b - 乘数, p - 模数, u - 预计算常数, tmp - 临时缓存, k - 长度
 Output: r - 计算结果
 Return: void
 Others: 
*************************************************/
static void bn_barrett_mod_mul(uint32_t *r, const uint32_t *a, const uint32_t *b, const uint32_t *p, const uint32_t *u, uint32_t *tmp, size_t k)
{
    uint32_t *p_ = tmp; tmp += k + 1;
    uint32_t *z = tmp; tmp += 2 * k;
    uint32_t *q = tmp; tmp += 2 * (k + 1);
    uint32_t *t_ = tmp;
    for (size_t i = 0; i < k; i++) p_[i] = p[i];
    p_[k] = 0;
    bn_mul(z, a, b, k);
    bn_mul(q, z + k - 1, u, k + 1);
    bn_mul_lo(t_, q + k + 1, p_, k + 1);
    bn_sub(t_, z, t_, k + 1);
    if (bn_cmp(t_, p_, k + 1) >= 0) bn_sub(t_, t_, p_, k + 1);
    if (bn_cmp(t_, p_, k) >= 0) bn_sub(t_, t_, p_, k);
    bn_copy(r, t_, k);
}

static void bn_barrett_mod_sqr(uint32_t *r, const uint32_t *a, const uint32_t *p, const uint32_t *u, uint32_t *tmp, size_t k)
{
    bn_barrett_mod_mul(r, a, a, p, u, tmp, k);
}

static void bn_barrett_mod_exp(uint32_t *r, const uint32_t *a, const uint32_t *e, const uint32_t *p, const uint32_t *u, uint32_t *tmp, size_t k)
{
    uint32_t *t = tmp; tmp += k;
    bn_set_word(t, 1, k);
    for (int i = (int)k - 1; i >= 0; i--) {
        uint32_t w = e[i];
        for (int j = 0; j < 32; j++) {
            bn_barrett_mod_sqr(t, t, p, u, tmp, k);
            if (w & 0x80000000) bn_barrett_mod_mul(t, t, a, p, u, tmp, k);
            w <<= 1;
        }
    }
    bn_copy(r, t, k);
}

static void bn_barrett_mod_inv(uint32_t *r, const uint32_t *a, const uint32_t *p, const uint32_t *u, uint32_t *tmp, size_t k)
{
    uint32_t *e = tmp; tmp += k;
    bn_set_word(e, 2, k);
    bn_sub(e, p, e, k);
    bn_barrett_mod_exp(r, a, e, p, u, tmp, k);
}

static int secp256r1_is_zero(const secp256r1_t a) { return bn_is_zero(a, SECP256R1_K); }
static int secp256r1_is_one(const secp256r1_t a) { return bn_is_one(a, SECP256R1_K); }
static int secp256r1_cmp(const secp256r1_t a, const secp256r1_t b) { return bn_cmp(a, b, SECP256R1_K); }

/*************************************************
 Function: secp256r1_from_32bytes
 Description: 从32字节数组转换为secp256r1_t类型
 Input: r - 目标secp256r1_t类型变量, in - 32字节数组指针
 Output: None
 Return: void
 Others: 
*************************************************/
static void secp256r1_from_32bytes(secp256r1_t r, const uint8_t in[32])
{ 
    bn_from_bytes(r, SECP256R1_K, in);
}
static void secp256r1_copy(secp256r1_t r, const secp256r1_t a) { bn_copy(r, a, SECP256R1_K); }
static void secp256r1_set_one(secp256r1_t r) { bn_set_word(r, 1, SECP256R1_K); }
static void secp256r1_set_zero(secp256r1_t r) { bn_set_word(r, 0, SECP256R1_K); }

static void secp256r1_modn(secp256r1_t r, const secp256r1_t a)
{
    if (bn_cmp(a, g_secp256r1N, SECP256R1_K) >= 0) bn_sub(r, a, g_secp256r1N, SECP256R1_K);
    else bn_copy(r, a, SECP256R1_K);
}

static void secp256r1_modn_inv(secp256r1_t r, const secp256r1_t a)
{
    uint32_t tmp[8 * 8 + 4];
    bn_barrett_mod_inv(r, a, g_secp256r1N, g_secp256r1UN, tmp, SECP256R1_K);
}

static void secp256r1_modn_mul(secp256r1_t r, const secp256r1_t a, const secp256r1_t b)
{
    uint32_t tmp[6 * 8 + 4];
    bn_barrett_mod_mul(r, a, b, g_secp256r1N, g_secp256r1UN, tmp, SECP256R1_K);
}

static void secp256r1_modp_add(secp256r1_t r, const secp256r1_t a, const secp256r1_t b) { bn_mod_add(r, a, b, g_secp256r1P, SECP256R1_K); }
static void secp256r1_modp_sub(secp256r1_t r, const secp256r1_t a, const secp256r1_t b) { bn_mod_sub(r, a, b, g_secp256r1P, SECP256R1_K); }
static void secp256r1_modp_dbl(secp256r1_t r, const secp256r1_t a) { bn_mod_add(r, a, a, g_secp256r1P, SECP256R1_K); }
static void secp256r1_modp_sqr(secp256r1_t r, const secp256r1_t a)
{
    uint32_t tmp[6 * 8 + 4];
    bn_barrett_mod_mul(r, a, a, g_secp256r1P, g_secp256r1UP, tmp, SECP256R1_K);
}
static void secp256r1_modp_mul(secp256r1_t r, const secp256r1_t a, const secp256r1_t b)
{
    uint32_t tmp[6 * 8 + 4];
    bn_barrett_mod_mul(r, a, b, g_secp256r1P, g_secp256r1UP, tmp, SECP256R1_K);
}
static void secp256r1_modp_tri(secp256r1_t r, const secp256r1_t a)
{
    secp256r1_t tmp;
    bn_mod_add(tmp, a, a, g_secp256r1P, SECP256R1_K);
    bn_mod_add(r, tmp, a, g_secp256r1P, SECP256R1_K);
}
static void secp256r1_modp_haf(secp256r1_t r, const secp256r1_t a)
{
    int c = 0;
    if (a[0] & 1) c = bn_add(r, a, g_secp256r1P, SECP256R1_K);
    else bn_copy(r, a, SECP256R1_K);

    r[0] = (r[0] >> 1) | ((r[1] & 1) << 31);
    r[1] = (r[1] >> 1) | ((r[2] & 1) << 31);
    r[2] = (r[2] >> 1) | ((r[3] & 1) << 31);
    r[3] = (r[3] >> 1) | ((r[4] & 1) << 31);
    r[4] = (r[4] >> 1) | ((r[5] & 1) << 31);
    r[5] = (r[5] >> 1) | ((r[6] & 1) << 31);
    r[6] = (r[6] >> 1) | ((r[7] & 1) << 31);
    r[7] = (r[7] >> 1) | ((c & 1) << 31);
}
static void secp256r1_modp_inv(secp256r1_t r, const secp256r1_t a)
{
    uint32_t tmp[8 * 8 + 4];
    bn_barrett_mod_inv(r, a, g_secp256r1P, g_secp256r1UP, tmp, SECP256R1_K);
}


/*************************************************
 Function: secp256r1_point_copy
 Description: 椭圆曲线点复制
 Input: P - 源点
 Output: R - 目标点
 Return: void
 Others: 
*************************************************/
static void secp256r1_point_copy(SECP256R1_POINT *R, const SECP256R1_POINT *P)
{
    secp256r1_copy(R->X, P->X);
    secp256r1_copy(R->Y, P->Y);
    secp256r1_copy(R->Z, P->Z);
}

/*************************************************
 Function: secp256r1_point_set_infinity
 Description: 设置点为无穷远点
 Input: void
 Output: R - 目标点
 Return: void
 Others: 
*************************************************/
static void secp256r1_point_set_infinity(SECP256R1_POINT *R)
{
    secp256r1_set_one(R->X);
    secp256r1_set_one(R->Y);
    secp256r1_set_zero(R->Z);
}

static int secp256r1_point_is_at_infinity(const SECP256R1_POINT *P)
{
    return secp256r1_is_zero(P->Z);
}

static int secp256r1_point_get_xy(const SECP256R1_POINT *P, secp256r1_t x, secp256r1_t y)
{
    secp256r1_t Z_inv;
    if (secp256r1_point_is_at_infinity(P)) return 0;
    secp256r1_modp_inv(Z_inv, P->Z);
    secp256r1_modp_mul(y, P->Y, Z_inv);
    secp256r1_modp_sqr(Z_inv, Z_inv);
    secp256r1_modp_mul(x, P->X, Z_inv);
    secp256r1_modp_mul(y, y, Z_inv);
    return 1;
}

/*************************************************
 Function: secp256r1_point_is_on_curve
 Description: 检查点是否在曲线上
 Input: P - 待检查的椭圆曲线点
 Output: None
 Return: int 1表示在曲线上, 0表示不在
 Others: 
*************************************************/
static int secp256r1_point_is_on_curve(const SECP256R1_POINT *P)
{
    secp256r1_t t0, t1, t2;
    if (secp256r1_point_is_at_infinity(P)) return 1;

    secp256r1_modp_sqr(t0, P->Y);
    secp256r1_modp_sqr(t1, P->Z);
    secp256r1_modp_sqr(t2, t1);
    secp256r1_modp_mul(t1, t1, t2);
    secp256r1_modp_mul(t1, t1, g_secp256r1B);
    secp256r1_modp_mul(t2, t2, P->X);
    secp256r1_modp_add(t0, t0, t2);
    secp256r1_modp_add(t0, t0, t2);
    secp256r1_modp_add(t0, t0, t2);
    secp256r1_modp_sqr(t2, P->X);
    secp256r1_modp_mul(t2, t2, P->X);
    secp256r1_modp_add(t1, t1, t2);

    return secp256r1_cmp(t0, t1) == 0;
}

/*************************************************
 Function: secp256r1_point_set_xy
 Description: 设置椭圆曲线点的坐标
 Input: R - 目标点, x - X坐标, y - Y坐标
 Output: None
 Return: int CRYPTO_E_OK(0) 成功, CRYPTO_E_NOT_OK(-1) 失败
 Others: 
*************************************************/
static int secp256r1_point_set_xy(SECP256R1_POINT *R, const secp256r1_t x, const secp256r1_t y)
{
    if (secp256r1_cmp(x, g_secp256r1P) >= 0 || secp256r1_cmp(y, g_secp256r1P) >= 0) return CRYPTO_E_NOT_OK;
    secp256r1_copy(R->X, x);
    secp256r1_copy(R->Y, y);
    secp256r1_set_one(R->Z);
    if (!secp256r1_point_is_on_curve(R)) return CRYPTO_E_NOT_OK;
    return CRYPTO_E_OK;
}

static int secp256r1_point_from_uncompressed_octets(SECP256R1_POINT *P, const uint8_t octets[65])
{
    secp256r1_t x, y;
    if (octets[0] != 0x04) return CRYPTO_E_NOT_OK;
    secp256r1_from_32bytes(x, octets + 1);
    secp256r1_from_32bytes(y, octets + 33);
    return secp256r1_point_set_xy(P, x, y);
}

/*************************************************
 Function: secp256r1_public_key_from_bytes
 Description: 解析字节流生成公钥点
 Input: in - 字节流双指针, inlen - 长度
 Output: key - 生成的公钥结构体
 Return: int CRYPTO_E_OK(0) 成功
 Others: 
*************************************************/
static int secp256r1_public_key_from_bytes(SECP256R1_KEY *key, const uint8_t **in, size_t *inlen)
{
    if (!key || !in || !(*in) || !inlen || *inlen < 65) return CRYPTO_E_NOT_OK;
    memset(key, 0, sizeof(SECP256R1_KEY));
    if (secp256r1_point_from_uncompressed_octets(&key->public_key, *in) != CRYPTO_E_OK) return CRYPTO_E_NOT_OK;
    *in += 65;
    *inlen -= 65;
    return CRYPTO_E_OK;
}

/*************************************************
 Function: secp256r1_point_dbl
 Description: 椭圆曲线点倍加 (R = 2 * P)
 Input: P - 源点
 Output: R - 结果点
 Return: void
 Others: 
*************************************************/
static void secp256r1_point_dbl(SECP256R1_POINT *R, const SECP256R1_POINT *P)
{
    const uint32_t *X1 = P->X, *Y1 = P->Y, *Z1 = P->Z;
    uint32_t *X3 = R->X, *Y3 = R->Y, *Z3 = R->Z;
    secp256r1_t S, M, Zsqr, tmp0;

    secp256r1_modp_dbl(S, Y1);
    secp256r1_modp_sqr(Zsqr, Z1);
    secp256r1_modp_sqr(S, S);
    secp256r1_modp_mul(Z3, Z1, Y1);
    secp256r1_modp_dbl(Z3, Z3);
    secp256r1_modp_add(M, X1, Zsqr);
    secp256r1_modp_sub(Zsqr, X1, Zsqr);
    secp256r1_modp_sqr(Y3, S);
    secp256r1_modp_haf(Y3, Y3);
    secp256r1_modp_mul(M, M, Zsqr);
    secp256r1_modp_tri(M, M);
    secp256r1_modp_mul(S, S, X1);
    secp256r1_modp_dbl(tmp0, S);
    secp256r1_modp_sqr(X3, M);
    secp256r1_modp_sub(X3, X3, tmp0);
    secp256r1_modp_sub(S, S, X3);
    secp256r1_modp_mul(S, S, M);
    secp256r1_modp_sub(Y3, S, Y3);
}

/*************************************************
 Function: secp256r1_point_add
 Description: 椭圆曲线点加法 (R = P + Q)
 Input: P, Q - 源点
 Output: R - 结果点
 Return: void
 Others: 
*************************************************/
static void secp256r1_point_add(SECP256R1_POINT *R, const SECP256R1_POINT *P, const SECP256R1_POINT *Q)
{
    secp256r1_t T_1, T_2, T_3, T_4, T_5, T_6, T_7, T_8;

    if (secp256r1_point_is_at_infinity(P)) { *R = *Q; return; }
    if (secp256r1_point_is_at_infinity(Q)) { *R = *P; return; }

    secp256r1_modp_sqr(T_1, P->Z);
    secp256r1_modp_sqr(T_2, Q->Z);
    secp256r1_modp_mul(T_3, Q->X, T_1);
    secp256r1_modp_mul(T_4, P->X, T_2);
    secp256r1_modp_add(T_5, T_3, T_4);
    secp256r1_modp_sub(T_3, T_3, T_4);
    secp256r1_modp_mul(T_1, T_1, P->Z);
    secp256r1_modp_mul(T_1, T_1, Q->Y);
    secp256r1_modp_mul(T_2, T_2, Q->Z);
    secp256r1_modp_mul(T_2, T_2, P->Y);
    secp256r1_modp_add(T_6, T_1, T_2);
    secp256r1_modp_sub(T_1, T_1, T_2);

    if (secp256r1_is_zero(T_1) && secp256r1_is_zero(T_3)) {
        secp256r1_point_dbl(R, P);
        return;
    }
    if (secp256r1_is_one(T_1) && secp256r1_is_zero(T_6)) {
        secp256r1_point_set_infinity(R);
        return;
    }

    secp256r1_modp_sqr(T_6, T_1);
    secp256r1_modp_mul(T_7, T_3, P->Z);
    secp256r1_modp_mul(T_7, T_7, Q->Z);
    secp256r1_modp_sqr(T_8, T_3);
    secp256r1_modp_mul(T_5, T_5, T_8);
    secp256r1_modp_mul(T_3, T_3, T_8);
    secp256r1_modp_mul(T_4, T_4, T_8);
    secp256r1_modp_sub(T_6, T_6, T_5);
    secp256r1_modp_sub(T_4, T_4, T_6);
    secp256r1_modp_mul(T_1, T_1, T_4);
    secp256r1_modp_mul(T_2, T_2, T_3);
    secp256r1_modp_sub(T_1, T_1, T_2);

    secp256r1_copy(R->X, T_6);
    secp256r1_copy(R->Y, T_1);
    secp256r1_copy(R->Z, T_7);
}

/*************************************************
 Function: secp256r1_point_mul
 Description: 椭圆曲线点乘法 (R = k * P)
 Input: k - 大数乘子, P - 基点
 Output: R - 结果点
 Return: void
 Others: 
*************************************************/
static void secp256r1_point_mul(SECP256R1_POINT *R, const secp256r1_t k, const SECP256R1_POINT *P)
{
    SECP256R1_POINT T;
    uint32_t bits;
    int nbits;
    secp256r1_point_set_infinity(&T);

    for (int i = 7; i >= 0; i--) {
        bits = k[i];
        nbits = 32;
        while (nbits-- > 0) {
            secp256r1_point_dbl(&T, &T);
            if (bits & 0x80000000) {
                secp256r1_point_add(&T, &T, P);
            }
            bits <<= 1;
        }
    }
    secp256r1_point_copy(R, &T);
}

static void secp256r1_point_mul_generator(SECP256R1_POINT *R, const secp256r1_t k)
{
    secp256r1_point_mul(R, k, &g_secp256r1PointG);
}


/*************************************************
 Function: ecdsa_do_verify
 Description: ECDSA 核心数学验证逻辑
 Input: key - 解析后的公钥结构体, dgst - 明文哈希, sig - 签名结构体
 Output: None
 Return: int CRYPTO_E_OK(0) 验证成功，CRYPTO_E_NOT_OK(-1) 验证失败
 Others: 
*************************************************/
static int ecdsa_do_verify(const SECP256R1_KEY *key, const uint8_t dgst[32], const ECDSA_SIGNATURE *sig)
{
    secp256r1_t e, w, u1, u2, x1, y1;
    SECP256R1_POINT P, Q, R;

    if (secp256r1_is_zero(sig->r) || secp256r1_cmp(sig->r, g_secp256r1N) >= 0 || 
        secp256r1_is_zero(sig->s) || secp256r1_cmp(sig->s, g_secp256r1N) >= 0) {
        return CRYPTO_E_NOT_OK;
    }

    secp256r1_from_32bytes(e, dgst);
    secp256r1_modn(e, e);

    secp256r1_modn_inv(w, sig->s);
    secp256r1_modn_mul(u1, e, w);
    secp256r1_modn_mul(u2, sig->r, w);

    secp256r1_point_mul_generator(&P, u1);
    secp256r1_point_mul(&Q, u2, &key->public_key);
    secp256r1_point_add(&R, &P, &Q);
    
    if (secp256r1_point_is_at_infinity(&R)) return CRYPTO_E_NOT_OK;
    
    secp256r1_point_get_xy(&R, x1, y1);
    secp256r1_modn(x1, x1);

    if (secp256r1_cmp(x1, sig->r) != 0) {
        return CRYPTO_E_NOT_OK;
    }
    return CRYPTO_E_OK;
}


