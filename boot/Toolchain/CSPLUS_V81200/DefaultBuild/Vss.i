






 
 







 
 







 
 








 



typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;

typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef signed long int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef signed long int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef signed long long int_fast64_t;
typedef unsigned long long uint_fast64_t;

typedef int intptr_t;
typedef unsigned int uintptr_t;

typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;

























 


 










 


 


typedef	int	ptrdiff_t;
typedef	unsigned long	size_t;





extern	void *memcpy(void *, const void *, size_t);
extern	void *memmove(void *, const void *, size_t);
extern	char *strcpy(char *, const char *);
extern	char *strncpy(char *, const char *, size_t);

extern	char *strcat(char *, const char *);
extern	char *strncat(char *, const char *, size_t);

extern	int memcmp(const void *, const void *, size_t);
extern	int strcmp(const char *, const char *);
extern	int strncmp(const char *, const char *, size_t);

extern	void *memchr(const void *, int, size_t);
extern	char *strchr(const char *, int);
extern	size_t strcspn(const char *, const char *);
extern	char *strpbrk(const char *, const char *);
extern	char *strrchr(const char *, int);
extern	size_t strspn(const char *, const char *);
extern	char *strstr(const char *, const char *);
extern	char *strtok(char *, const char *);

extern	void *memset(void *, int, size_t);
extern	char *strerror(int);
extern	size_t strlen(const char *);



 
 

 

 

 


 


 
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








 
 







 

 








 


 










 


 


typedef	char	*va_list;



void __builtin_va_start(va_list);




typedef	struct {
	int		mode;	 
	unsigned	handle;
	int		unget_c;
	} FILE;
typedef int	fpos_t;








extern	FILE*	_REL_stdin();
extern	FILE*	_REL_stdout();
extern	FILE*	_REL_stderr();

extern	int fprintf(FILE *, const char *, ...);
extern	int fscanf(FILE *, const char *, ...);
extern	int printf(const char *, ...);
extern	int scanf(const char *, ...);
extern	int sprintf(char *, const char *, ...);
extern	int sscanf(const char *, const char *, ...);
extern	int vfprintf(FILE *, const char *, va_list);
extern	int vprintf(const char *, va_list);
extern	int vsprintf(char *, const char *, va_list);

extern	int fgetc(FILE *);
extern	char *fgets(char *, int, FILE *);
extern	int fputc(int, FILE *);
extern	int fputs(const char *, FILE *);
extern	int getc(FILE *);
extern	int getchar(void);
extern	char *gets(char *);
extern	int putc(int, FILE *);
extern	int putchar(int);
extern	int puts(const char *);
extern	int ungetc(int, FILE *);

extern	size_t fread(void *, size_t, size_t, FILE *);
extern	size_t fwrite(const void *, size_t, size_t,
		      FILE *);

extern	void rewind(FILE *);

extern	void perror(const char *);



 

 

 
 






 
typedef struct {
    uint32_t state[8];
    uint32_t count[2];
    uint8_t buffer[64];
} SM3_CTX_USER;

 







 
typedef struct {
    uint32_t state[8];
    uint64_t count;
    uint8_t buffer[64];
    uint32_t buffer_len;
} Crypto_SHA256_Context;

 



 
typedef uint64_t sm2_z256_t[4];




 
typedef uint64_t sm2_z512_t[8];







 
typedef struct {
    sm2_z256_t X;
    sm2_z256_t Y;
    sm2_z256_t Z;
} SM2_Z256_POINT;






 
typedef struct {
    SM2_Z256_POINT public_key;
    sm2_z256_t private_key;
} SM2_KEY;






 
typedef struct {
    uint8_t r[32];
    uint8_t s[32];
} SM2_SIGNATURE;






 
typedef struct {
    sm2_z256_t x;
    sm2_z256_t y;
} SM2_Z256_AFFINE_POINT;




 
enum ASN1_TAG {
    ASN1_TAG_END_OF_CONTENTS    = 0,        
    ASN1_TAG_BOOLEAN        = 1,        
    ASN1_TAG_INTEGER        = 2,        
    ASN1_TAG_BIT_STRING        = 3,        
    ASN1_TAG_OCTET_STRING        = 4,        
    ASN1_TAG_NULL            = 5,        
    ASN1_TAG_OBJECT_IDENTIFIER    = 6,        
    ASN1_TAG_ObjectDescriptor    = 7,        
    ASN1_TAG_EXTERNAL        = 8,        
    ASN1_TAG_REAL            = 9,        
    ASN1_TAG_ENUMERATED        = 10,        
    ASN1_TAG_EMBEDDED        = 11,        
    ASN1_TAG_UTF8String        = 12,        
    ASN1_TAG_RELATIVE_OID        = 13,        
    ASN1_TAG_NumericString        = 18,        
    ASN1_TAG_PrintableString    = 19,        
    ASN1_TAG_TeletexString        = 20,        
    ASN1_TAG_VideotexString        = 21,        
    ASN1_TAG_IA5String        = 22,        
    ASN1_TAG_UTCTime        = 23,        
    ASN1_TAG_GeneralizedTime    = 24,        
    ASN1_TAG_GraphicString        = 25,        
    ASN1_TAG_VisibleString        = 26,        
    ASN1_TAG_GeneralString        = 27,        
    ASN1_TAG_UniversalString    = 28,        
    ASN1_TAG_CHARACTER_STRING    = 29,        
    ASN1_TAG_BMPString        = 30,        
    ASN1_TAG_SEQUENCE        = 0x30,        
    ASN1_TAG_SET            = 0x31,        
    ASN1_TAG_EXPLICIT        = 0xa0,        
};

 



 
typedef uint32_t secp256r1_t[8];







 
typedef struct {
    secp256r1_t X;
    secp256r1_t Y;
    secp256r1_t Z;
} SECP256R1_POINT;






 
typedef struct {
    SECP256R1_POINT public_key;
    secp256r1_t private_key;
} SECP256R1_KEY;






 
typedef struct {
    secp256r1_t r;
    secp256r1_t s;
} ECDSA_SIGNATURE;





 
typedef struct {
    uint32_t table[256];
} crc32_context_t;

extern const uint64_t sm2_z256_pre_comp[37][64 * 4 * 2];

 









 
int Crypto_SM4_CMAC(const uint8_t* key, const uint8_t* data, uint32_t len, uint8_t* mac);










 
int Crypto_SM3_CALC(const uint8_t* data, uint32_t len, uint8_t* hash);








 
void Crypto_SM3_Init(SM3_CTX_USER *ctx);










 
void Crypto_SM3_Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len);









 
void Crypto_SM3_Final(SM3_CTX_USER *ctx, uint8_t *hash);










 
int Crypto_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash);








 
void Crypto_SHA256_Init(Crypto_SHA256_Context* ctx);










 
void Crypto_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len);









 
void Crypto_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash);












 
int Crypto_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);












 
int Crypto_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);










 
uint16_t Crypto_CcittFalseCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length);










 
uint16_t Crypto_CcittCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length);









 
uint32_t Crypto_Crc32Init(crc32_context_t *context, uint32_t polynomial);











 
uint32_t Crypto_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length);

 







 
uint32_t Crypto_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc);











 
uint8_t Crypto_Crc8(uint8_t initial_value, uint8_t polynomial, const uint8_t *data, uint32_t length);


 
 
 








 
uint32_t VssAdapter_InitSoft(void);











 
uint32_t VssAdapter_Sm4Calc(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData);











 
uint32_t VssAdapter_Sm4CMac(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, uint8_t* out16);









 
uint32_t VssAdapter_Sm3Calc(const uint8_t *indata, uint32_t inLen, uint8_t* hash);








 
void VssAdapter_Sm3Init(SM3_CTX_USER* ctx);










 
void VssAdapter_Sm3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len);








 
void VssAdapter_Sm3Final(SM3_CTX_USER *ctx, uint8_t *hash);









 
int VssAdapter_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash);








 
void VssAdapter_SHA256_Init(Crypto_SHA256_Context* ctx);










 
void VssAdapter_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len);








 
void VssAdapter_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash);












 
uint32_t VssAdapter_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);












 
uint32_t VssAdapter_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key);










 
uint32_t VssAdapter_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc);










 
uint32_t VssAdapter_CRC16_CCITT(const uint8_t *data, uint32_t len, uint16_t initial_crc);







 
uint32_t VssAdapter_Crc32Init(crc32_context_t *context, uint32_t polynomial);









 
uint32_t VssAdapter_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length);







 
uint32_t VssAdapter_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc);










 
uint32_t VssAdapter_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial);











 
uint32_t VssAdapter_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial);


 

 








 
typedef uint32_t VssflashFunc(VssItemType_e itemType, VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);



 
typedef void     VssWdtFeedFunc(void);



 
typedef enum {
    VSS_VSN_0 = 0,    
    VSS_VSN_MAX       
} VssVSNType_e;



 
typedef enum {
    VSS_SECOC_KEY = 0,    
    VSS_AUTH_KEY,         
    VSS_SM4_KEY_MAX       
} VssSM4KeyType_e;



 
typedef enum {
    VSS_OTA_SM2_KEY = 0,    
    VSS_SM2_KEY_MAX         
} VssSM2KeyType_e;



 
typedef enum {
    VSS_OTA_ECC256_KEY = 0,    
    VSS_ECC256_KEY_MAX         
} VssECC256KeyType_e;

 










 
uint32_t VssCryptoInit(VssflashFunc* flashCb, VssWdtFeedFunc* wdtCb);









 
uint32_t VssSecocCmacGen(uint8_t* inData, uint32_t inLen, uint8_t* out16);











 
uint32_t VssGenerateKeyByCode(uint32_t len, uint8_t* vsn, uint8_t keyId, uint8_t AutoSetWroteFlag);









 
uint32_t VssGetAlgFlag(uint8_t* nAlgFlag);










 
uint32_t VssSetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t valid);









 
uint32_t VssGetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t* valid);









 
uint32_t VssSetVSN(uint8_t* vsn, uint32_t inLen);








 
uint32_t VssGetVSN(uint8_t* vsn, uint32_t inLen);












 
uint32_t VssSM4CalcByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData, uint32_t* pOutLen);










 
uint32_t VssSM4CMacByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, uint8_t* outData);








 
uint32_t VssSM3Init(SM3_CTX_USER* ctx);










 
uint32_t VssSM3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len);








 
uint32_t VssSM3Final(SM3_CTX_USER *ctx, uint8_t *hash);









 
uint32_t VssSM3Calc(const uint8_t* data, uint32_t len, uint8_t* hash);









 
uint32_t VssSHA256Calc(const uint8_t* p_in, uint32_t inLen, uint8_t* p_out);








 
uint32_t VssSHA256Init(Crypto_SHA256_Context* ctx);










 
uint32_t VssSHA256Update(Crypto_SHA256_Context* ctx, const uint8_t* p_in, uint32_t inLen);








 
uint32_t VssSHA256Final(Crypto_SHA256_Context* ctx, uint8_t* p_out);











 
uint32_t VssSM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len);











 
uint32_t VssEcc256_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len);









 
uint32_t Vss_Crc32Init(crc32_context_t *context, uint32_t polynomial, uint32_t *init_crc);











 
uint32_t Vss_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length, uint32_t *out_crc);









 
uint32_t Vss_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc, uint32_t *out_final_crc);










 
uint32_t Vss_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc, uint16_t *out_crc);










 
uint32_t Vss_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial, uint32_t *out_crc);











 
uint32_t Vss_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial, uint8_t *out_crc);



 

 



 
typedef enum
{
    VSS_UNINIT = 0,    
    VSS_INIT   = 1     
} Vss_State_t;




 
static struct
{
    Vss_State_t state;                           
    uint8_t vsn[32];                  
    uint8_t vsnActiveFlg;                       
    uint8_t algFlg;                             
    uint8_t sm4Key[VSS_SM4_KEY_MAX][(16)];  
    uint8_t sm4KeyActiveFlg[VSS_SM4_KEY_MAX];   
    uint8_t sm2Key[(65)];     
    uint8_t ecc256Key[(65)]; 
    VssflashFunc* flashCb;                      
    VssWdtFeedFunc* wdtCb;                      
} gVssCtx;

 

 








 
static uint32_t VssGetKeyByKeyId(uint32_t keyId, VssItemType_e vssitem, uint8_t* pkey, uint32_t keyLen);

 










 
uint32_t VssCryptoInit(VssflashFunc* flashCb, VssWdtFeedFunc* wdtCb)
{
    uint32_t ret = 0x00;

    
    ret = VssAdapter_InitSoft();
    if (ret != 0x00)
    {
        return ret; 
    }

    
    gVssCtx.state   = VSS_INIT;
    
    gVssCtx.flashCb = flashCb;
    
    gVssCtx.wdtCb   = wdtCb;

    
    ret = gVssCtx.flashCb(VSS_ITEM_VSN_ACTIVE, VSS_FLASH_Write, VSS_VSN_0, &gVssCtx.vsnActiveFlg, (1));

    return 0x00;
}









 
uint32_t VssSecocCmacGen(uint8_t* inData, uint32_t inLen, uint8_t* out16)
{
    uint32_t ret = 0x00;
    uint8_t keyValid = 0;

    
    uint8_t defaultKey[(16)] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10};
    ret = VssAdapter_Sm4CMac(defaultKey, inData, inLen, out16);

    return ret;
}











 
uint32_t VssGenerateKeyByCode(uint32_t len, uint8_t* vsn, uint8_t keyId, uint8_t AutoSetWroteFlag)
{
    
    if (gVssCtx.state != VSS_INIT)
    {
        return 0x1B; 
    }
    
    
    if ((vsn == ((void *) 0)) || (len != 32) || (AutoSetWroteFlag > 1u))
    {
        return 0x04; 
    }

     
    

    return 0x00;
}









 
uint32_t VssGetAlgFlag(uint8_t* nAlgFlag)
{
    uint32_t ret = 0x00;
    uint8_t keyValid = 0;
    uint8_t vsnFlag = 0;
    uint8_t vsn[32];

    
    if (nAlgFlag == ((void *) 0))
    {
        return 0x04; 
    }

     
    ret = VssGetKeyActive(VSS_ITEM_VSN_ACTIVE, VSS_VSN_0, &keyValid);
    if (ret != 0x00)
    {
        return ret; 
    }

    
    if (keyValid == 0)
    {
        *nAlgFlag = (2); 
        return 0x00;
    }

    
    ret = VssGetVSN(vsn, 32);
    if (ret != 0x00)
    {
        return ret; 
    }

    
    vsnFlag = vsn[32 - 1] & 1;
    if (vsnFlag == 0)
    {
        *nAlgFlag = (2); 
    } 
    else if (vsnFlag == 1)
    {
        *nAlgFlag = (1); 
    } else {
        ret = 0x0B; 
    }

    return ret;
}










 
uint32_t VssSetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t valid)
{
    uint32_t ret = 0x00;

    
    if (gVssCtx.state != VSS_INIT)
    {
        return 0x1B; 
    }
    
    
    if ((gVssCtx.flashCb == ((void *) 0)) || (vssitem >= VSS_ITEM_MAX))
    {
        return 0x04; 
    }

    
    if (vssitem == VSS_ITEM_VSN_ACTIVE)
    {
        
        if (keyId >= VSS_VSN_MAX)
        {
            return 0x04; 
        }
        
        
        if (gVssCtx.vsnActiveFlg != valid)
        {
            gVssCtx.vsnActiveFlg = valid; 
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Write, keyId, &gVssCtx.vsnActiveFlg, (1)); 
        }
    }
    
    else if (vssitem == VSS_ITEM_SM4_KEY_ACTIVE)
    {
        
        if (keyId >= VSS_SM4_KEY_MAX)
        {
            return 0x04; 
        }
        
        
        if (gVssCtx.sm4KeyActiveFlg[keyId] != valid)
        {
            gVssCtx.sm4KeyActiveFlg[keyId] = valid; 
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Write, keyId, &gVssCtx.sm4KeyActiveFlg[keyId], (1)); 
        }
    } else;

    return ret;
}









 
uint32_t VssGetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t* valid)
{
    uint32_t ret = 0x00;

    
    if (gVssCtx.state != VSS_INIT)
    {
        return 0x1B; 
    }
    
    
    if ((gVssCtx.flashCb == ((void *) 0)) || (valid == ((void *) 0)) || (vssitem >= VSS_ITEM_MAX))
    {
        return 0x04; 
    }

    
    if (vssitem == VSS_ITEM_VSN_ACTIVE)
    {
        
        if (keyId >= VSS_VSN_MAX)
        {
            return 0x04; 
        }
        
        
        ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.vsnActiveFlg, (1));
        if (ret != 0x00)
        {
            return 0x09; 
        }
        *valid = gVssCtx.vsnActiveFlg; 
    }
    
    else if (vssitem == VSS_ITEM_SM4_KEY_ACTIVE)
    {
        
        if (keyId >= VSS_SM4_KEY_MAX)
        {
            return 0x04; 
        }
        
        
        if (gVssCtx.sm4KeyActiveFlg[keyId] != valid)
        {
            ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.sm4KeyActiveFlg[keyId], (1));
            if (ret != 0x00)
            {
                return 0x09; 
            }
            *valid = gVssCtx.sm4KeyActiveFlg[keyId]; 
        }
    } else;

    return 0x00;
}









 
uint32_t VssSetVSN(uint8_t* vsn, uint32_t inLen)
{
    uint32_t ret = 0x00;

    
    if (gVssCtx.state != VSS_INIT)
    {
        return 0x1B; 
    }
    
    
    if ((gVssCtx.flashCb == ((void *) 0)) || (vsn == ((void *) 0)) || (inLen != 32))
    {
        return 0x04; 
    }

     
    if (memcmp(gVssCtx.vsn, vsn, inLen) != 0)
    {
        memcpy(gVssCtx.vsn, vsn, inLen); 
        ret = gVssCtx.flashCb(VSS_ITEM_VSN, VSS_FLASH_Write, VSS_VSN_0, gVssCtx.vsn, 32); 
    }

    return ret;
}








 
uint32_t VssGetVSN(uint8_t* vsn, uint32_t inLen)
{
    uint32_t ret = 0x00;

    
    if (gVssCtx.state != VSS_INIT)
    {
        return 0x1B; 
    }
    
    
    if ((gVssCtx.flashCb == ((void *) 0)) || (vsn == ((void *) 0)) || (inLen != 32))
    {
        return 0x04; 
    }

    
    ret = gVssCtx.flashCb(VSS_ITEM_VSN, VSS_FLASH_Read, VSS_VSN_0, gVssCtx.vsn, 32);
    if (ret != 0x00)
    {
        return 0x09; 
    }
    
    
    memcpy(vsn, gVssCtx.vsn, 32);

    return ret;
}












 
uint32_t VssSM4CalcByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData, uint32_t* pOutLen)
{
    uint32_t ret = 0x00;
    uint8_t pkey[(16)] = {0};

    
    if (gVssCtx.state != VSS_INIT)
    {
        return 0x1B; 
    }

    
    if ((calcFlag >= VSS_CRYPT_TYPE_MAX) || (keyId > (8)) || (inData == ((void *) 0)) || (outData == ((void *) 0)) || (pOutLen == ((void *) 0)) || (inLen == 0))
    {
        return 0x04; 
    }

    
    VssGetKeyByKeyId(keyId, VSS_ITEM_SM4_KEY, pkey, (16));

    if (calcFlag == VSS_ENCRYPT) 
    {
         
        uint8_t pad_len = 16 - (inLen % 16); 
        uint32_t total_len = inLen + pad_len; 
        
        
        memcpy(outData, inData, inLen);
        
        
        for (uint32_t i = 0; i < pad_len; i++) {
            outData[inLen + i] = pad_len; 
        }
        
         
        ret = VssAdapter_Sm4Calc(pkey, outData, total_len, VSS_ENCRYPT, outData);
        if (ret != 0x00)
        {
            return ret; 
        }
        
        
        *pOutLen = total_len;
    } else { 
        
        if (inLen % 16 != 0) {
            return 0x04; 
        }
        
        
        ret = VssAdapter_Sm4Calc(pkey, inData, inLen, VSS_DECRYPT, outData);
        if (ret != 0x00)
        {
            return ret; 
        }
        
         
        uint8_t last_byte = outData[inLen - 1]; 
        
        
        if (last_byte >= 1 && last_byte <= 16) {
            
            uint8_t is_valid_padding = 1;
            for (uint8_t i = 0; i < last_byte; i++) {
                if (outData[inLen - 1 - i] != last_byte) {
                    is_valid_padding = 0;
                    break;
                }
            }

            if (is_valid_padding) {
                *pOutLen = inLen - last_byte; 
            } else {
                
                *pOutLen = inLen; 
            }
        } else {
            
            *pOutLen = inLen;
        }
    }

    return 0x00;
}










 
uint32_t VssSM4CMacByKeyId(uint32_t keyId, uint8_t* inData, uint32_t inLen, uint8_t* outData)
{
    uint32_t ret = 0x00;
    uint8_t pkey[(16)] = {0};

    
    if (gVssCtx.state != VSS_INIT)
    {
        return 0x1B; 
    }

    
    if ((keyId > (8)) || (inData == ((void *) 0)) || (outData == ((void *) 0)) || (inLen == 0))
    {
        return 0x04; 
    }

    
    VssGetKeyByKeyId(keyId, VSS_ITEM_SM4_KEY, pkey, (16));

    
    ret = VssAdapter_Sm4CMac(pkey, inData, inLen, outData);
    if (ret != 0x00)
    {
        return ret; 
    }
    return 0x00;
}








 
uint32_t VssSM3Init(SM3_CTX_USER* ctx)
{
    
    if (ctx == ((void *) 0))
    {
        return 0x04; 
    }
    
    
    VssAdapter_Sm3Init(ctx);
    return 0x00;
}










 
uint32_t VssSM3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len)
{
    
    if ((ctx == ((void *) 0)) || (data == ((void *) 0)) || (len == 0))
    {
        return 0x04; 
    }
    
    
    VssAdapter_Sm3Update(ctx, data, len);
    return 0x00;
}








 
uint32_t VssSM3Final(SM3_CTX_USER *ctx, uint8_t *hash)
{
    
    if ((ctx == ((void *) 0)) || (hash == ((void *) 0)))
    {
        return 0x04; 
    }
    
    
    Crypto_SM3_Final(ctx, hash);
    return 0x00;
}









 
uint32_t VssSM3Calc(const uint8_t* data, uint32_t len, uint8_t* hash)
{
    
    if ((hash == ((void *) 0)) || (len == 0))
    {
        return 0x04; 
    }
    
    
    return VssAdapter_Sm3Calc(data, len, hash);
}









 
uint32_t VssSHA256Calc(const uint8_t* p_in, uint32_t inLen, uint8_t* p_out)
{
    
    if ((p_in == ((void *) 0)) || (p_out == ((void *) 0)) || (inLen == 0))
    {
        return 0x04; 
    }
    
    
    Crypto_SHA256_Context ctx;
    
    
    VssSHA256Init(&ctx);
    
    
    VssSHA256Update(&ctx, p_in, inLen);
    
    
    VssSHA256Final(&ctx, p_out);
    
    return 0x00;
}








 
uint32_t VssSHA256Init(Crypto_SHA256_Context* ctx)
{
    
    if (ctx == ((void *) 0))
    {
        return 0x04; 
    }
    
    
    VssAdapter_SHA256_Init(ctx);

    return 0x00;
}










 
uint32_t VssSHA256Update(Crypto_SHA256_Context* ctx, const uint8_t* p_in, uint32_t inLen)
{
    
    if ((ctx == ((void *) 0)) || (p_in == ((void *) 0)) || (inLen == 0))
    {
        return 0x04; 
    }
    
    
    VssAdapter_SHA256_Update(ctx, p_in, inLen);
    return 0x00;
}








 
uint32_t VssSHA256Final(Crypto_SHA256_Context* ctx, uint8_t* p_out)
{
    
    if ((ctx == ((void *) 0)) || (p_out == ((void *) 0)))
    {
        return 0x04; 
    }
    
    
    VssAdapter_SHA256_Final(ctx, p_out);
    return 0x00;
}











 
uint32_t VssSM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len)
{
    uint32_t ret = 0x00;
    
    
    
    
    
    
    
    
    
    
    

    
    if ((data == ((void *) 0)) || (signature == ((void *) 0)))
    {
        return 0x04; 
    }
    
    
    ret = gVssCtx.flashCb(VSS_ITEM_SM2_KEY, VSS_FLASH_Read, VSS_OTA_SM2_KEY, gVssCtx.sm2Key, (65));
    if (ret != 0x00)
    {
        return 0x09; 
    }
    
    
    ret = VssAdapter_SM2_Verify(data, len, signature, signature_len, gVssCtx.sm2Key);
    if (ret != 0x00)
    {
        return 0x84; 
    }

    return 0x00;
}











 
uint32_t VssEcc256_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len)
{
    uint32_t ret = 0x00;

    
    if ((data == ((void *) 0)) || (signature == ((void *) 0)))
    {
        return 0x04; 
    }

    
    ret = gVssCtx.flashCb(VSS_ITEM_ECC256_KEY, VSS_FLASH_Read, VSS_OTA_ECC256_KEY, gVssCtx.ecc256Key, (65));
    if (ret != 0x00)
    {
        return 0x09; 
    }

    
    ret = VssAdapter_ECC_Verify(data, len, signature, signature_len, gVssCtx.ecc256Key);
    if (ret != 0x00)
    {
        return 0x84; 
    }

    return 0x00;
}









 
uint32_t Vss_Crc32Init(crc32_context_t *context, uint32_t polynomial, uint32_t *init_crc)
{
    
    if ((context == ((void *) 0)) || (init_crc == ((void *) 0)))
    {
        return 0x04; 
    }

    
    *init_crc = VssAdapter_Crc32Init(context, polynomial);

    return 0x00;
}











 
uint32_t Vss_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length, uint32_t *out_crc)
{
    
    if ((context == ((void *) 0)) || (out_crc == ((void *) 0)) || (data == ((void *) 0) && length > 0))
    {
        return 0x04; 
    }

    
    *out_crc = VssAdapter_Crc32(context, current_crc, data, length);

    return 0x00;
}









 
uint32_t Vss_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc, uint32_t *out_final_crc)
{
    
    if ((context == ((void *) 0)) || (out_final_crc == ((void *) 0)))
    {
        return 0x04; 
    }

    
    *out_final_crc = VssAdapter_Crc32FinalResult(context, final_crc);

    return 0x00;
}










 
uint32_t Vss_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc, uint16_t *out_crc)
{
    
    if ((out_crc == ((void *) 0)) || (data == ((void *) 0) && len > 0))
    {
        return 0x04; 
    }

    
    *out_crc = VssAdapter_CRC16_CCITT_False(data, len, initial_crc);

    return 0x00;
}










 
uint32_t Vss_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial, uint32_t *out_crc)
{
    
    if ((out_crc == ((void *) 0)) || (data == ((void *) 0) && len > 0))
    {
        return 0x04; 
    }

    
    *out_crc = VssAdapter_CRC32_CALC(data, len, polynomial);

    return 0x00;
}











 
uint32_t Vss_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial, uint8_t *out_crc)
{
    
    if ((out_crc == ((void *) 0)) || (data == ((void *) 0) && len > 0))
    {
        return 0x04; 
    }

    
    *out_crc = VssAdapter_CRC8(data, len, initial_val, polynomial);

    return 0x00;
}










 
static uint32_t VssGetKeyByKeyId(uint32_t keyId, VssItemType_e vssitem, uint8_t* pkey, uint32_t keyLen)
{
    uint32_t ret = 0x00;
    uint32_t offset = keyId * keyLen;

    
    if ((pkey == ((void *) 0)) || (keyLen < 1))
    {
        return 0x04; 
    }

    
    if (gVssCtx.flashCb == ((void *) 0))
    {
        return 0x09; 
    }

    
    if (vssitem == VSS_ITEM_SM4_KEY)
    {
        
        ret = gVssCtx.flashCb(vssitem, VSS_FLASH_Read, keyId, &gVssCtx.sm4Key[keyId][0], keyLen);
        if (ret != 0x00)
        {
            return 0x09; 
        }
        
        memcpy(pkey, &gVssCtx.sm4Key[keyId][0], keyLen);
    }

    return ret;
}
