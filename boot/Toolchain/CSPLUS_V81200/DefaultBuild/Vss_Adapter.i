






 
 







 
 







 
 








 



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


 
 
 



 
const uint8_t sm2_za_value[32] = {
    0xA2, 0x2C, 0x59, 0x36, 0x10, 0x64, 0xB2, 0x1B,
    0xC9, 0x77, 0xA0, 0x03, 0x20, 0x92, 0xE7, 0x11,
    0x14, 0x72, 0x09, 0x3A, 0xD5, 0xA7, 0xF3, 0x9E,
    0x42, 0xB6, 0xED, 0x91, 0x47, 0x8B, 0x04, 0x73
};

 
 







 
uint32_t VssAdapter_InitSoft(void)
{
    return 0x00;
}











 
uint32_t VssAdapter_Sm4Calc(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, VssCryptType_e calcFlag, uint8_t* outData)
{
    return 0x00;
}











 
uint32_t VssAdapter_Sm4CMac(const uint8_t *p_key, uint8_t* inData, uint32_t inLen, uint8_t* out16)
{
    
    int sm4_ret = Crypto_SM4_CMAC(p_key, inData, inLen, out16);
    if (sm4_ret != 0)
    {
        return 0x08; 
    }
    return 0x00;
}









 
uint32_t VssAdapter_Sm3Calc(const uint8_t *indata, uint32_t inLen, uint8_t* hash)
{
    
    int sm3_ret = Crypto_SM3_CALC(indata, inLen, hash);
    if (sm3_ret != 0)
    {
        return 0x08; 
    }
    return 0x00;
}








 
void VssAdapter_Sm3Init(SM3_CTX_USER* ctx)
{
    
    Crypto_SM3_Init(ctx);
}










 
void VssAdapter_Sm3Update(SM3_CTX_USER *ctx, const uint8_t *data, uint32_t len)
{
    
    Crypto_SM3_Update(ctx, data, len);
}








 
void VssAdapter_Sm3Final(SM3_CTX_USER *ctx, uint8_t *hash)
{
    
    Crypto_SM3_Final(ctx, hash);
}









 
int VssAdapter_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash)
{
    
    int sha256_ret = Crypto_SHA256_CALC(data, len, hash);
    if (sha256_ret != 0)
    {
        return 0x08; 
    }
    return 0x00;
}








 
void VssAdapter_SHA256_Init(Crypto_SHA256_Context* ctx)
{
    
    Crypto_SHA256_Init(ctx);
}










 
void VssAdapter_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len)
{
    
    Crypto_SHA256_Update(ctx, data, len);
}








 
void VssAdapter_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash)
{
    
    Crypto_SHA256_Final(ctx, hash);
}












 
uint32_t VssAdapter_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    
    SM3_CTX_USER ctx;
    uint8_t dgst[32] = {0};

    
    memset(&ctx, 0, sizeof(ctx));
    Crypto_SM3_Init(&ctx);
    
    Crypto_SM3_Update(&ctx, sm2_za_value, 32);
    
    Crypto_SM3_Update(&ctx, data, len);
    
    Crypto_SM3_Final(&ctx, dgst);

    
    int sm2_ret = Crypto_SM2_Verify(dgst, 32, signature, signature_len, pub_key);
    if (sm2_ret != 0)
    {
        return 0x08; 
    }

    return 0x00;
}












 
uint32_t VssAdapter_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    SM2_KEY key;
    SM2_SIGNATURE sig;
    
    int ecc_ret = Crypto_ECC_Verify(data, len, signature, signature_len, pub_key);
    if (ecc_ret != 0)
    {
        return 0x08; 
    }

    return 0x00;
}










 
uint32_t VssAdapter_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc)
{
    
    return Crypto_CcittFalseCrc16(initial_crc, data, len);
}










 
uint32_t VssAdapter_CRC16_CCITT(const uint8_t *data, uint32_t len, uint16_t initial_crc)
{
    
    return Crypto_CcittCrc16(initial_crc, data, len);
}










 
uint32_t VssAdapter_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial)
{
    crc32_context_t ctx;
    uint32_t init_val;
    uint32_t crc_temp;

    
    init_val = Crypto_Crc32Init(&ctx, polynomial);
    
    crc_temp = Crypto_Crc32(&ctx, init_val, data, len);
    
    return Crypto_Crc32FinalResult(&ctx, crc_temp);
}







 
uint32_t VssAdapter_Crc32Init(crc32_context_t *context, uint32_t polynomial)
{
    
    return Crypto_Crc32Init(context, polynomial);
}









 
uint32_t VssAdapter_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length)
{
    
    return Crypto_Crc32(context, current_crc, data, length);
}







 
uint32_t VssAdapter_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc)
{
    
    return Crypto_Crc32FinalResult(context, final_crc);
}











 
uint32_t VssAdapter_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial)
{
    
    return Crypto_Crc8(initial_val, polynomial, data, len);
}
