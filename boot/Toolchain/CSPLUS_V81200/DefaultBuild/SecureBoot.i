




 






 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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


















 

 
typedef enum {
    SECURE_BOOT_SUCCESS = 0,
    SECURE_BOOT_VSS_INIT_FAILURE = 0x18, 
    SECURE_BOOT_APP_MAC_VERIFY_FAILED = 0x20, 
    SECURE_BOOT_APP_MAC_KEY_EMPTY = 0x21, 
    SECURE_BOOT_APP_MAC_EMPTY = 0x22, 
    SECURE_BOOT_ERROR = 0x2F, 
} SecureBoot_StatusType;

 
extern SecureBoot_StatusType SecureBootCurrentStatus;

 
void SecureBoot_Init(void);
SecureBoot_StatusType SecureBoot_VerifyApp(void);








 
 







 
 







 
 








 


 










 


 


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


 



























 

 



























 


 



 
extern volatile uint16 Comm_MainTick;


 
extern void CommF_DataCopy(void * des, void * src,uint32 srcSize);
extern uint8 CommF_DataCompare(void * buf1, void * buf2,uint32 length);
extern void CommF_DataSet(void * des, uint8 src,uint32 desSize);
extern uint32 CommF_GetUint32DataValue(uint8 *databuf,uint8 length);
extern void CommF_GetElapsedValue(uint16 *Value, uint16 *ElapsedValue);
 



























 


 




























 


 




 



 
typedef struct
{
    uint8    memType;
    uint32   sBlockAddr;
    uint32   eBlockAddr;
    uint32   BlockSize;
}
MemM_LBInfo_t;

typedef struct
{
    uint8          flagDrv;
    uint32         flagAddr;
    uint32         flagSize;
    uint32         flagData;
} MemM_FlagInfo_t;


 
extern uint8 MemM_LBIdGet(uint32 tagAddr,uint32 tagSize);

 


 
 
 












 
 
 
extern uint8  EEIf_Read(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_Write(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_DeInit(void);
extern void   EEIf_Init(void);
 



























 


 




 


 

typedef struct
{
    uint8              DrvType;          
    uint16             Did;
    uint16             Size;
    uint8              RW_Permission;    
    uint32             Addr;             
}DIDInfo_t;



 





 
extern uint8 WriteDataF198[((uint16)0x0BU)];
extern uint8 WriteDataF187[((uint16)0x05U)];
extern uint8 WriteDataF18A[((uint16)0x05U)];
extern const DIDInfo_t DID_Infos[0x2FU];



 
extern void DID_Init(void);
extern Std_ReturnType DID_Write(uint8 * buf, const DIDInfo_t * ProdInfo);
extern Std_ReturnType DID_Read(uint8 * buf, const DIDInfo_t *  ProdInfo);




 
 















 



 

 






 



 

enum USERDATA_BLOCK0
{
    BLOCK_ID_IDX = 0,
    REPROGRAM_ADDR_IDX = BLOCK_ID_IDX + 2,
    RESET_ADDR_IDX = REPROGRAM_ADDR_IDX + 0x04u,
    SECURITY_ADDR_IDX = RESET_ADDR_IDX + 0x04u,
    NEGATIVERES_ADDR_IDX = SECURITY_ADDR_IDX + 0x04u,
    ALLOW_F187_WRITE_IDX = NEGATIVERES_ADDR_IDX + 0x04u,
    ALLOW_F190_WRITE_IDX = ALLOW_F187_WRITE_IDX + 0x01u,
    PROGRAM_CNT_ADDR_IDX = ALLOW_F190_WRITE_IDX + 0x01u,
    DID_F100_ADDR_IDX = PROGRAM_CNT_ADDR_IDX + 0x02U,
    DID_F110_ADDR_IDX = DID_F100_ADDR_IDX + ((uint16)0x06U),
    DID_F111_ADDR_IDX = DID_F110_ADDR_IDX + ((uint16)0x10U),
    DID_F112_ADDR_IDX = DID_F111_ADDR_IDX + ((uint16)0x10U),
    DID_F113_ADDR_IDX = DID_F112_ADDR_IDX + ((uint16)0x10U),
    DID_F114_ADDR_IDX = DID_F113_ADDR_IDX + ((uint16)0x10U),   
    DID_F115_ADDR_IDX = DID_F114_ADDR_IDX + ((uint16)0x10U),
    DID_F116_ADDR_IDX = DID_F115_ADDR_IDX + ((uint16)0x10U),
    DID_F117_ADDR_IDX = DID_F116_ADDR_IDX + ((uint16)0x10U),
    DID_F118_ADDR_IDX = DID_F117_ADDR_IDX + ((uint16)0x10U),
    DID_F119_ADDR_IDX = DID_F118_ADDR_IDX + ((uint16)0x10U),
    DID_F11A_ADDR_IDX = DID_F119_ADDR_IDX + ((uint16)0x10U),
    DID_F11B_ADDR_IDX = DID_F11A_ADDR_IDX + ((uint16)0x10U),
    DID_F11C_ADDR_IDX = DID_F11B_ADDR_IDX + ((uint16)0x10U),
    DID_F11D_ADDR_IDX = DID_F11C_ADDR_IDX + ((uint16)0x10U),
    DID_F11E_ADDR_IDX = DID_F11D_ADDR_IDX + ((uint16)0x10U), 
    DID_F11F_ADDR_IDX = DID_F11E_ADDR_IDX + ((uint16)0x10U),
    DID_F120_ADDR_IDX = DID_F11F_ADDR_IDX + ((uint16)0x10U),
    DID_F121_ADDR_IDX = DID_F120_ADDR_IDX + ((uint16)0x10U),
    DID_F183_ADDR_IDX = DID_F121_ADDR_IDX + ((uint16)0x10U),
    DID_F187_ADDR_IDX = DID_F183_ADDR_IDX + ((uint16)0x0AU),
    DID_F18A_ADDR_IDX = DID_F187_ADDR_IDX + ((uint16)0x05U),
    DID_F18B_ADDR_IDX = DID_F18A_ADDR_IDX + ((uint16)0x05U),
    DID_F18C_ADDR_IDX = DID_F18B_ADDR_IDX + ((uint16)0x03U),
    DID_F190_ADDR_IDX = DID_F18C_ADDR_IDX + ((uint16)0x10U),
    DID_F191_ADDR_IDX = DID_F190_ADDR_IDX + ((uint16)0x11U),
    DID_F192_ADDR_IDX = DID_F191_ADDR_IDX + ((uint16)0x05U),
    DID_F194_ADDR_IDX = DID_F192_ADDR_IDX + ((uint16)0x0AU),
    DID_F198_ADDR_IDX = DID_F194_ADDR_IDX + ((uint16)0x0AU),
    DID_F1A0_ADDR_IDX = DID_F198_ADDR_IDX + ((uint16)0x0BU),
    DID_F1A1_ADDR_IDX = DID_F1A0_ADDR_IDX + ((uint16)0x05U),
    DID_F1A2_ADDR_IDX = DID_F1A1_ADDR_IDX + ((uint16)0x05U),
    DID_F1A5_ADDR_IDX = DID_F1A2_ADDR_IDX + ((uint16)0x08U),
    DID_F1A8_ADDR_IDX = DID_F1A5_ADDR_IDX + ((uint16)0x03U),
    DID_F1A9_ADDR_IDX = DID_F1A8_ADDR_IDX + ((uint16)0x14U),
    DID_F1AA_ADDR_IDX = DID_F1A9_ADDR_IDX + ((uint16)0x05U),
    DID_F130_ADDR_IDX = DID_F1AA_ADDR_IDX + ((uint16)0x05U),
    DID_F1B5_ADDR_IDX = DID_F130_ADDR_IDX + ((uint16)0x20U),
    DID_F1B6_ADDR_IDX = DID_F1B5_ADDR_IDX + ((uint16)0x05U),
    DID_AFF1_ADDR_IDX = DID_F1B6_ADDR_IDX + ((uint16)0x05U),
    DID_AFF2_ADDR_IDX = DID_AFF1_ADDR_IDX + ((uint16)0x1CAU),
    DID_AFF5_ADDR_IDX = DID_AFF2_ADDR_IDX + ((uint16)0x01U),
    DID_AFFC_ADDR_IDX = DID_AFF5_ADDR_IDX + ((uint16)0x01U),
    DID_AFFD_ADDR_IDX = DID_AFFC_ADDR_IDX + ((uint16)0x02U),
    DID_AFFE_ADDR_IDX = DID_AFFD_ADDR_IDX + ((uint16)0x01U),
    DID_AFFF_ADDR_IDX = DID_AFFE_ADDR_IDX + ((uint16)0x01U),
    VSN_ADDR_IDX = DID_AFFF_ADDR_IDX + ((uint16)0x01U),
    VSN_ACTIVE_FLAG_IDX = VSN_ADDR_IDX + 0x20U,
    ALG_FLAG_IDX = VSN_ACTIVE_FLAG_IDX + 0x01U,
    SM4_KEY_IDX = ALG_FLAG_IDX + 0x01U,
    SM4_KEY_ACTIVE_FLAG_IDX = SM4_KEY_IDX + 0x20U,
    SM2_KEY_IDX = SM4_KEY_ACTIVE_FLAG_IDX + 0x01U,
    ECC256_KEY_IDX = SM2_KEY_IDX + 0x41U,
};



 
extern MemM_LBInfo_t       g_logicalBlocks[0x02u];
extern MemM_FlagInfo_t     g_FlagsInfo[0x0AU];







 







 



 
typedef struct {
    uint8_t certificateFormat;     
    uint8_t productModuleNumber[8];   
    uint8_t customParameters[16];     
    uint8_t certificateExpiryDate[3];  
    uint32_t certificateSerialNumber;  
    uint8_t signatureAlgorithm;    
    uint8_t publicKeyCurveParameter;  
    uint8_t hashAlgorithm;         
    uint8_t rootKeyIndex;          
    uint8_t signatureCertificatePublicKey[64];  
    uint8_t certificateSignature[64];  
} SignerInfoType;








 

 
typedef struct {
     
    uint16_t ModuleID;       
    
     
    uint16_t NBID;

     
    uint16_t moduleCount;   
} SignatureHeaderPrefixType;

 
typedef struct {
    uint32_t startAddress;   
    uint32_t length;         
} ModuleAddressInfoType;

 
typedef struct {
     
    SignerInfoType SignerInfoNational;
    
     
    uint8_t MessageDigestNational[32];
    
     
    uint8_t SignatureNational[64];
    
     
    SignerInfoType SignerInfoInternational;
    
     
    uint8_t MessageDigestInternational[32];
    
     
    uint8_t SignatureInternational[64];
} SignatureHeaderSuffixType;




 
typedef struct {
     
    SignatureHeaderPrefixType *pPrefix;
    
     
    ModuleAddressInfoType *pModuleAddressInfo;
    
     
    SignatureHeaderSuffixType *pSuffix;
} SignatureHeaderType;

 

 

 

 

 

 

 

 

 

 

 
extern SignatureHeaderType g_pSignatureHeader;

 
extern uint32_t ModuleAddressInfoSize;






 
extern uint8_t g_cryptoTypeFlag;




 
uint8_t SignatureHeader_Init(void);








 
uint8_t SecureProgram_ValidateFileDigest(void);





 
uint8_t SecureProgram_CheckProgrammingIntegrity(void);


SecureBoot_StatusType SecureBootCurrentStatus = 0xFF;

 
void SecureBoot_Init(void)
{
    SecureBoot_StatusType bootStatus = 0xFF;
    SecureBoot_StatusType currentStatus = 0xFF;

     
    bootStatus = Vss_InitConfig();
    
     
    if(bootStatus == SECURE_BOOT_SUCCESS)
    {
        bootStatus = SecureBoot_VerifyApp();
    }
    
    
    if(EEIf_Read(DID_AFF5_ADDR_IDX, ((uint16)0x01U), (uint8_t *)&currentStatus) == 0U)
    {
        if(currentStatus != bootStatus)
        {
            EEIf_Write(DID_AFF5_ADDR_IDX, ((uint16)0x01U), (uint8_t *)&bootStatus);
        }
    }
    else
    {
        
        EEIf_Write(DID_AFF5_ADDR_IDX, ((uint16)0x01U), (uint8_t *)&bootStatus);
    }
    
    SecureBootCurrentStatus = bootStatus;
}










 
SecureBoot_StatusType SecureBoot_VerifyApp(void)
{
    SecureBoot_StatusType status = SECURE_BOOT_SUCCESS;
    uint32_t ret = 0x00;
    uint8_t signature[32];   
    uint8_t signature_len = 32;   
    
    ret = SignatureHeader_Init();
    if(ret != 0x00)
    {
        status = SECURE_BOOT_ERROR;
        return status;
    }

    ret = SecureProgram_ValidateFileDigest();
    
     
    if (ret != 0x00) {
        switch (ret) {
            case 0x01:
            case 0x02:
                status = SECURE_BOOT_APP_MAC_EMPTY;
                break;
            case 0x05:
            case 0x0A:
                status = SECURE_BOOT_APP_MAC_VERIFY_FAILED;
                break;
            default:
                status = SECURE_BOOT_ERROR;
                break;
        }
    }
    
    return status;
}
