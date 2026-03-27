






 
 







 
 







 
 







 
 








 



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











 
int Crypto_SM4_Challenge_Response(const uint8_t *key, const uint8_t *challenge, uint8_t *response);










 
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









 
uint32_t VssAdapter_SM4_Challenge_Response(const uint8_t *key, const uint8_t *challenge, uint8_t *response);












 
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













 
uint32_t Vss_Challenge_Response(uint8_t *outChallenge, uint8_t *outResponse);








 
uint32_t Vss_SetSecOCKeyActive(void);











 
uint32_t VssGenerateKeyByCode(uint32_t len, uint8_t* vsn, uint8_t keyId, uint8_t AutoSetWroteFlag);









 
uint32_t VssGetAlgFlag(uint8_t* nAlgFlag);










 
uint32_t VssSetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t valid);









 
uint32_t VssGetKeyActive(VssItemType_e vssitem, uint8_t keyId, uint8_t* valid);









 
uint32_t VssSetVSN(uint8_t* vsn, uint32_t inLen);








 
uint32_t VssGetVSN(uint8_t* vsn, uint32_t inLen);










 
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










 
uint32_t Vss_CRC32_CALC(const uint8_t *data, uint32_t len, uint32_t polynomial, uint32_t *out_crc);










 
uint32_t Vss_CRC16_CCITT_False(const uint8_t *data, uint32_t len, uint16_t initial_crc, uint16_t *out_crc);










 
uint32_t Vss_CRC16_CCITT(const uint8_t *data, uint32_t len, uint16_t initial_crc, uint16_t *out_crc);











 
uint32_t Vss_CRC8(const uint8_t *data, uint32_t len, uint8_t initial_val, uint8_t polynomial, uint8_t *out_crc);



 

 
 








 
uint32_t Vss_InitConfig(void);










 
static uint32_t VssConfig_flashFunc(VssItemType_e itemType, VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);






 
static void VssConfig_WdtFeed(void);









 
static uint32_t VssConfig_VSNRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);









 
static uint32_t VssConfig_VSNActiveRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);









 
static uint32_t VssConfig_SM4CmacKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);









 
static uint32_t VssConfig_SM4CmacKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);









 
static uint32_t VssConfig_AESKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);









 
static uint32_t VssConfig_AESKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);









 
static uint32_t VssConfig_SM2KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);









 
static uint32_t VssConfig_Ecc256KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength);


 




















 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


void __LDSR(int regID, int selID, unsigned int val);

unsigned int __STSR(int regID, int selID);







 



 




 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 



 
 

 

 



 


 



 



 



 




 



 



 


 
typedef signed char         sint8;           
typedef unsigned char       uint8;           
typedef signed short        sint16;          
typedef unsigned short      uint16;          
typedef signed long         sint32;          
typedef unsigned long       uint32;          
typedef float               float32;
typedef double              float64;
typedef signed long long    sint64;         
 
typedef unsigned long long  uint64;           

typedef unsigned long       uint8_least;     
typedef unsigned long       uint16_least;    
typedef unsigned long       uint32_least;    
typedef signed long         sint8_least;     
typedef signed long         sint16_least;    
typedef signed long         sint32_least;    
typedef unsigned char       boolean;         





 




 




 


 



 


 



 



 

 
  typedef unsigned char StatusType;





 
typedef uint8 Std_ReturnType;


typedef struct
{
  uint16  vendorID;
  uint16  moduleID;
  uint8  instanceID;
  uint8  sw_major_version;
  uint8  sw_minor_version;
  uint8  sw_patch_version;
} Std_VersionInfoType;  







 




 



 


 

 




extern uint8 NvMBlockRamBuffer1[2];
extern uint8 NvMBlockRamBuffer2[5];
extern uint8 NvMBlockRamBuffer5[3];
extern uint8 NvMBlockRamBuffer6[16];
extern uint8 NvMBlockRamBuffer7[17];
extern uint8 NvMBlockRamBuffer8[11];
extern uint8 NvMBlockRamBuffer9[20];
extern uint8 NvMBlockRamBuffer10[32];
extern uint8 NvMBlockRamBuffer11[64];
extern uint8 NvMBlockRamBuffer12[32];
extern uint8 NvMBlockRamBuffer13[32];
extern uint8 NvMBlockRamBuffer14[64];
extern uint8 NvMBlockRamBuffer15[32];
extern uint8 NvMBlockRamBuffer16[32];
extern uint8 NvMBlockRamBuffer17[32];
extern uint8 NvMBlockRamBuffer18[32];
extern uint8 NvMBlockRamBuffer19[6];
extern uint8 NvMBlockRamBuffer20[32];
extern uint8 NvMBlockRamBuffer21[6];
extern uint8 NvMBlockRamBuffer22[4];
extern uint8 NvMBlockRamBuffer23[2];
extern uint8 NvMBlockRamBuffer24[64];
extern uint8 NvMBlockRamBuffer25[32];
extern uint8 NvMBlockRamBuffer26[32];
extern uint8 NvMBlockRamBuffer27[64];
extern uint8 NvMBlockRamBuffer28[32];
extern uint8 NvMBlockRamBuffer29[32];
extern uint8 NvMBlockRamBuffer30[2];
extern uint8 NvMBlockRamBuffer31[8];
extern uint8 NvMBlockRamBuffer32[14];
extern uint8 NvMBlockRamBuffer33[37];
extern uint8 NvMBlockRamBuffer34[1];
extern uint8 NvMBlockRamBuffer35[2];
extern uint8 NvMBlockRamBuffer36[1];
extern uint8 NvMBlockRamBuffer37[2];
extern uint8 NvMBlockRamBuffer38[8];
extern uint8 NvMBlockRamBuffer39[8];
extern uint8 NvMBlockRamBuffer40[2];
extern uint8 NvMBlockRamBuffer41[8];
extern uint8 NvMBlockRamBuffer42[2];
extern uint8 NvMBlockRamBuffer43[1];
extern uint8 NvMBlockRamBuffer44[1];
extern uint8 NvMBlockRamBuffer45[24];
extern uint8 NvMBlockRamBuffer46[2];
extern uint8 NvMBlockRamBuffer47[254];
extern uint8 NvMBlockRamBuffer48[254];
extern uint8 NvMBlockRamBuffer49[254];
extern uint8 NvMBlockRamBuffer50[1];
extern uint8 NvMBlockRamBuffer51[4];
extern uint8 NvMBlockRamBuffer52[16];
extern uint8 NvMBlockRamBuffer53[16];

extern uint32 NvMCrcBuf_NvMBlock_ConfigID[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF1A9[1];
extern uint32 NvMCrcBuf_NvMBlock_All_EventEntry[1];
extern uint32 NvMCrcBuf_NvMBlock_UDS_InternalData[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF18B[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF18C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF190[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF198[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF1A8[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDF130[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC001[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC002[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC003[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC004[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC005[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC006[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC007[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC008[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC009[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00A[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00B[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC00D[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC011[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC012[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC013[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC014[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC015[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC016[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC102[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC106[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC109[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCA02[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCA21[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC305[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC306[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC307[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC308[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC309[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30A[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30C[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE01[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE05[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCE06[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDCF00[1];
extern uint32 NvMCrcBuf_NvMBlock_DIDC30D[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block0[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block1[1];
extern uint32 NvMCrcBuf_NvMBlock_Reserved_block2[1];
extern uint32 NvMCrcBuf_NvMBlock_27Key_error_count[1];
extern uint32 NvMCrcBuf_NvMBlock_SecOc_count[1];
extern uint32 NvMCrcBuf_NvMBlock_SecOc_Key[1];
extern uint32 NvMCrcBuf_NvMBlock_DID0100[1];



 


 

 
typedef uint32_t (*VssflashFunc_t)(VssFlashOperaType_e rwflag, uint8_t keyId,uint8_t *pData, uint32_t pLength);

typedef struct {
    VssItemType_e type;
    VssflashFunc_t flashFunc;
} VssFlashTableEntry_t;

 
static const VssFlashTableEntry_t configTable[VSS_ITEM_MAX] = {
    [VSS_ITEM_VSN]                = {VSS_ITEM_VSN,                VssConfig_VSNRw},
    [VSS_ITEM_VSN_ACTIVE]         = {VSS_ITEM_VSN_ACTIVE,         VssConfig_VSNActiveRw},
    [VSS_ITEM_SM4_KEY]            = {VSS_ITEM_SM4_KEY,            VssConfig_SM4CmacKeyByindex},
    [VSS_ITEM_SM4_KEY_ACTIVE]     = {VSS_ITEM_SM4_KEY_ACTIVE,     VssConfig_SM4CmacKeyActiveByindex},
    [VSS_ITEM_AES_KEY]            = {VSS_ITEM_AES_KEY,            VssConfig_AESKeyByindex},
    [VSS_ITEM_AES_KEY_ACTIVE]     = {VSS_ITEM_AES_KEY_ACTIVE,     VssConfig_AESKeyActiveByindex},
    [VSS_ITEM_SM2_KEY]            = {VSS_ITEM_SM2_KEY,            VssConfig_SM2KeyByindex},
    [VSS_ITEM_ECC256_KEY]         = {VSS_ITEM_ECC256_KEY,         VssConfig_Ecc256KeyByindex},
};

 








 
uint32_t Vss_InitConfig(void)
{
    return VssCryptoInit(VssConfig_flashFunc, VssConfig_WdtFeed);
}










 
static uint32_t VssConfig_flashFunc(VssItemType_e itemType, VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;
    
    if ((pData == ((void *) 0)) || (itemType >= VSS_ITEM_MAX))
    {
        return 0x04;
    }
    
    VssflashFunc_t flashFunc = configTable[itemType].flashFunc;
    if (flashFunc != ((void *) 0))
    {
        ret = flashFunc(rwflag, keyId, pData, pLength);
    }
    
    return ret;
}






 
static void VssConfig_WdtFeed(void)
{
     
}









 
static uint32_t VssConfig_VSNRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    if ((pData == ((void *) 0)) || (keyId != 0))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = 0;
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        if (NvM_ReadBlock(10U, NvMBlockRamBuffer10) == 1U)
        {
            return 1U;
        }
    
        for (uint8 i = 0; i < 32; i++) 
        {
            *(pData+i) = NvMBlockRamBuffer10[i];
        }
    } else{
        ret = 0x04;
    }
    
    return ret;
}









 
static uint32_t VssConfig_VSNActiveRw(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    if ((pData == ((void *) 0)) || (keyId != 0))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = 0;
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = 0;
         
    } else{
        ret = 0x04;
    }
    
    return ret;
}









 
static uint32_t VssConfig_SM4CmacKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    if ((pData == ((void *) 0)) || (keyId >= VSS_SM4_KEY_MAX))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * (16);
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * (16);
         
        const uint8_t sm4_key_stub[32] = {
             
            0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 
            0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x00,
    
             
            0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 
            0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A, 0x5A
        };
        memcpy(pData, &sm4_key_stub[addrOffset], (16)); 
    } else{
        ret = 0x04;
    }
    
    return ret;
}









 
static uint32_t VssConfig_SM4CmacKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    if ((pData == ((void *) 0)) || (keyId >= (8)))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId;
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId;
         
    } else{
        ret = 0x04;
    }
    
    return ret;
}









 
static uint32_t VssConfig_AESKeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    if ((pData == ((void *) 0)) || (keyId >= (8)))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * (16);
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * (16);
         
    } else{
        ret = 0x04;
    }
    
    return ret;
}









 
static uint32_t VssConfig_AESKeyActiveByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    if ((pData == ((void *) 0)) || (keyId >= (8)))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId;
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId;
         
    } else{
        ret = 0x04;
    }
    
    return ret;
}









 
static uint32_t VssConfig_SM2KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    uint8_t sm2_public_key[65] = {
        0x04, 0xDA, 0x6B, 0x25, 0xB4, 0x0B, 0xC4, 0x5D,
        0xA8, 0x56, 0xD1, 0x6E, 0x8B, 0xA2, 0xB2, 0x42,
        0x54, 0xEE, 0x94, 0xC3, 0x18, 0xEA, 0x52, 0xE2,
        0xCD, 0x82, 0x0C, 0xE7, 0x61, 0x65, 0x45, 0x21,
        0x2B, 0xBB, 0xE5, 0x00, 0x58, 0x85, 0xCE, 0x15,
        0xD0, 0xFB, 0xBE, 0xCC, 0x0B, 0xEA, 0xD8, 0x33,
        0x85, 0xE3, 0x86, 0xF6, 0x63, 0x16, 0x35, 0x6D,
        0xBA, 0x15, 0x5C, 0xD8, 0xC7, 0x4B, 0xC3, 0x74,
        0x20,
    };

    if ((pData == ((void *) 0)) || (keyId >= (8)))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * (65);
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * (65);
         
        memcpy(pData, sm2_public_key, (65)); 
    } else{
        ret = 0x04;
    }
    
    return ret;
}









 
static uint32_t VssConfig_Ecc256KeyByindex(VssFlashOperaType_e rwflag, uint8_t keyId, uint8_t *pData, uint32_t pLength)
{
    uint32_t ret = 0x00;

    uint8_t ecc_public_key[65] = {
        0x04, 0x85, 0xD3, 0xF1, 0x86, 0x6E, 0x8D, 0x1F,
        0x2D, 0x9B, 0xE0, 0xA7, 0x62, 0x88, 0x49, 0x20,
        0xC4, 0xDE, 0xE0, 0x5A, 0xFB, 0xCE, 0x16, 0xEA,
        0x30, 0xCA, 0xCD, 0xFB, 0xE3, 0x0D, 0xBE, 0x77,
        0xA1, 0x9F, 0x3A, 0x0C, 0x10, 0xED, 0x44, 0xEC,
        0xAB, 0xEF, 0x86, 0x27, 0x3C, 0x0B, 0x1D, 0x21,
        0x8B, 0xEE, 0x22, 0x2D, 0x8C, 0x2A, 0x58, 0x01,
        0x8B, 0x72, 0x76, 0x0C, 0x8B, 0x55, 0xCC, 0x44,
        0x7F
    };

    if ((pData == ((void *) 0)) || (keyId >= (8)))
    {
        return 0x04;
    }

    if (rwflag == VSS_FLASH_Write)
    {
        uint32_t addrOffset = keyId * (65);
         
    }
    else if (rwflag == VSS_FLASH_Read)
    {
        uint32_t addrOffset = keyId * (65);
         
        memcpy(pData, ecc_public_key, (65)); 
    } else{
        ret = 0x04;
    }
    
    return ret;
}
