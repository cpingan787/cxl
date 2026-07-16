






 
 







 

 








 



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

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
































 
 



 




 

 
 
 
 
 
 
 
 
 
 

 


 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















 
 




 
 












 











 

 
 

 
 
 
 
 
typedef enum
{
     
    WDGIF_OFF_MODE = 0u,
     
    WDGIF_SLOW_MODE,
     
    WDGIF_FAST_MODE
} WdgIf_ModeType;

 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 

















 
 


 


 



 







 




 



 

 


 




 






 


 

 
 
 
 
 

 

 

 

 


 

 
 

 

 

 

 

 

 

 

 


 

 




 
 

 
 

 


 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




























 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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







 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






 
 



 


 


 







 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 





 


 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






 


 


 



 
 

 




 








 

 














 



 
 

 


 



 

typedef uint8 Dem_EventStatusType;
typedef uint16 Dem_EventIdType;





 


extern void Dem_ReportErrorStatus
                    (Dem_EventIdType EventId, Dem_EventStatusType EventStatus);




 
 



 

 

 




 



 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".WDG59_B_APPL_CODE_ROM"




 
 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 




 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 

 

 
 
 
 



















 
 


















 

 



















 


 
 
 



















 
 
 



















 
 

















 
 

















 
 



 




 




 
 
 

 



 
 
 
 
 

typedef struct STag_Wdg_59_DriverB_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
   
  uint16 usInitTimerCountValue;
   
  uint16 usSlowTimeValue;
   
  uint16 usFastTimeValue;
   
  uint8 ucWdtamdSlowValue;
   
  uint8 ucWdtamdFastValue;
   
  uint8 ucWdtamdDefaultValue;
   
  WdgIf_ModeType ddWdtamdDefaultMode;
}Wdg_59_DriverB_ConfigType;




 
typedef enum ETag_Wdg_59_DriverB_HWConsistencyModeType
{
  WDG_59_DRIVERB_STATIC = 0,
  WDG_59_DRIVERB_DYNAMIC
}Wdg_59_DriverB_HWConsistencyModeType;





 
 
 
 




 
 

 
 


 



 
 



 




 




 







 




 



 
 




 

 
 

 

 





 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".WDG59_B_PUBLIC_CODE_ROM"




 
 



 
 
 
 
extern  void Wdg_59_DriverB_Init
  (const Wdg_59_DriverB_ConfigType *
                                                                    ConfigPtr);
 
 
extern  Std_ReturnType Wdg_59_DriverB_SetMode
  (WdgIf_ModeType Mode);
 
 
 
extern  void
                          Wdg_59_DriverB_SetTriggerCondition(uint16 timeout);
 
 
extern  Std_ReturnType
Wdg_59_DriverB_CheckHWConsistency
          (Wdg_59_DriverB_HWConsistencyModeType HWConsistencyMode);


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".WDG59_B_CFG_DATA_UNSPECIFIED"




 
 



 
 
 
extern const Wdg_59_DriverB_ConfigType
                                               Wdg_59_DriverB_GstConfiguration;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








































 
 

 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 















 


 


 


 






 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


typedef struct Stag_PortRegisters
{
    uint16       usP;                        

    uint8        ucDummy1[254];              

    uint32       ulPSR;                      

    uint8        ucDummy2[252];              

    uint16       usPPR;                      

    uint8        ucDummy3[254];              

    uint16       usPM;                       

    uint8        ucDummy4[254];              

    uint16       usPMC;                      

    uint8        ucDummy5[254];              

    uint16       usPFC;                      

    uint8        ucDummy6[254];              

    uint16       usPFCE;                     

    uint8        ucDummy7[254];              

    uint16       usPNOT;                     

    uint8        ucDummy8[254];              

    uint32       ulPMSR;                     

    uint8        ucDummy9[252];              

    uint32       ulPMCSR;                    

    uint8        ucDummy10[252];             

    uint16       usPFCAE;                    

    uint8        ucDummy11[13822];           

    uint16       usPIBC;                     

    uint8        ucDummy12[254];             

    uint16       usPBDC;                     

    uint8        ucDummy13[254];             

    uint16       usPIPC;                     

    uint8        ucDummy14[254];             

    uint16       usPU;                       

    uint8        ucDummy15[254];             

    uint16       usPD;                       

    uint8        ucDummy16[254];             

    uint32       ulPODC;                     

    uint8        ucDummy17[252];             

    uint32       ulPDSC;                     

    uint8        ucDummy18[252];             

    uint16       usPIS;                      

    uint8        ucDummy19[1022];            

    uint32       ulPPROTS;                   

    uint8        ucDummy20[252];             

    uint32       ulPPCMD;                    
}PortReg;

typedef struct STag_IPortRegisters
{                                                      
    uint16       usIPPR;                     

    uint8        ucDummy21[15870];           

    uint16       usIPIBC;                    
}IPortReg;

typedef struct STag_JPortRegisters
{
    uint8        ucJP;                       

    uint8        ucDummy22[15];              

    uint32       ulJPSR;                     

    uint8        ucDummy23[12];              

    uint8        ucJPPR;                     

    uint8        ucDummy24[15];              

    uint8        ucJPM;                      

    uint8        ucDummy25[15];              

    uint8        ucJPMC;                     

    uint8        ucDummy26[15];              

    uint8        ucJPFC;                     

    uint8        ucDummy27[15];              

    uint8        ucJPFCE;                    

    uint8        ucDummy28[15];              

    uint8        ucJPNOT;                    

    uint8        ucDummy29[15];              

    uint32       ulJPMSR;                    

    uint8        ucDummy30[9];               

    uint32       ulJPMCSR;                   

    uint8        ucDummy31[876];             

    uint8        ucJPIBC;                    

    uint8        ucDummy32[15];              

    uint8        ucJPBDC;                    

    uint8        ucDummy33[31];              

    uint8        ucJPU;                      

    uint8        ucDummy34[15];              

    uint8        ucJPD;                      

    uint8        ucDummy35[15];              

    uint32       ulJPODC;                    

    uint8        ucDummy36[12];              

    uint32       ulJPDSC;                    

    uint8        ucDummy37[12];              

    uint8        ucJPIS;                     

    uint8        ucDummy38[47];              

    uint8        ucJPISA;                    

    uint8        ucDummy39[15];              

    uint32       ulJPPROTS;                  

    uint8        ucDummy40[12];              

    uint32       ulJPPCMD;                   
}JPortReg;

typedef struct Stag_AnalogPortReg
{
    uint16       usAP;                       

    uint8        ucDummy41[254];             

    uint32       ulAPSR;                     

    uint8        ucDummy42[252];             

    uint16       usAPPR;                     

    uint8        ucDummy43[254];             

    uint16       usAPM;                      

    uint8        ucDummy44[1022];            

    uint16       usAPNOT;                    

    uint8        ucDummy45[254];             

    uint32       ulAPMSR;                    

    uint8        ucDummy46[14332];           

    uint16       usAPIBC;                    

    uint8        ucDummy47[254];             

    uint16       usAPBDC;                    
}APortReg;

typedef struct Stag_FCLA0_Registers
{
    uint8         ucCTLn_SIG[137];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}FCLAReg;

typedef struct Stag_DNFA_Registers
{
    uint8        ucCTL;                      

    uint8        ucDummy70[3];               

    uint16       usEN;                       
}DNFAReg;

typedef struct Stag_RESF_Registers
{                                                      
    const uint32 ulRESF;                     

    uint8        ucDummy90[4];               

    uint32       ulRESFC;                    

    uint8        ucDummy91[244];             

    const uint32 ulRESFR;                    

    uint8        ucDummy92[4];               

    uint32       ulRESFCR;                   

    uint8        ucDummy93[408];             

    uint32       ulSWRESA;                   

    uint8        ucDummy94[11256];           

    uint32       ulCYCRBASE;                 
} RESFReg;

typedef struct Stag_LVI_Registers
{                                                      
    const uint32 ulVLVF;                     

    uint8        ucDummy95[4];               

    uint32       ulVLVFC;                    

    uint8        ucDummy96[116];             

    uint32       ulLVICNT;                   

    uint8        ucDummy97[9980];            

    uint32       ulCVMF;                     

    const uint32 ulCVMDE;                    

    uint8        ucDummy98[12];              

    uint32       ulCVMDIAG;                  

    uint8        ucDummy99[232];             

    uint32       ulPROTCMDCVM;               

    const uint32 ulPROTSCVM;                 
} LVIReg;
 
typedef struct Stag_ClkCntl_Registers
{                                                      

    uint32       ulROSCE;                    

    const uint32 ulROSCS;                    

    uint8        ucDummy100[16];             

    uint32       ulROSCSTPM;                 

    uint32       ulROSCUT;                   

    uint8        ucDummy101[224];            

    uint32       ulMOSCE;                    

    const uint32 ulMOSCS;                    

    uint32       ulMOSCC;                    

    uint32       ulMOSCST;                   

    uint8        ucDummy102[8];              

    uint32       ulMOSCSTPM;                 

    uint32       ulMOSCM;                    

    uint8        ucDummy103[224];            

    uint32       ulSOSCE;                    

    const uint32 ulSOSCS;                    

    uint8        ucDummy104[4];              

    uint32       ulSOSCST;                   

    uint8        ucDummy105[3568];           

    uint32       ulCKSC_AWDTAD_CTL;          

    uint8        ucDummy106[4];              

    const uint32 ulCKSC_AWDTAD_ACT;          

    uint8        ucDummy107[12];             

    uint32       ulCKSC_AWDTAD_STPM;         

    uint8        ucDummy108[228];            

    uint32       ulCKSC_ATAUJS_CTL;          

    uint8        ucDummy109[4];              

    const uint32 ulCKSC_ATAUJS_ACT;          

    uint8        ucDummy110[244];            

    uint32       ulCKSC_ATAUJD_CTL;          

    uint8        ucDummy111[4];              

    const uint32 ulCKSC_ATAUJD_ACT;          

    uint8        ucDummy112[12];             

    uint32       ulCKSC_ATAUJD_STPM;         

    uint8        ucDummy113[228];            

    uint32       ulCKSC_ARTCAS_CTL;          

    uint8        ucDummy114[4];              

    const uint32 ulCKSC_ARTCAS_ACT;          

    uint8        ucDummy115[244];            

    uint32       ulCKSC_ARTCAD_CTL;          

    uint8        ucDummy116[4];              

    const uint32 ulCKSC_ARTCAD_ACT;          

    uint8        ucDummy117[12];             

    uint32       ulCKSC_ARTCAD_STPM;         

    uint8        ucDummy118[228];            

    uint32       ulCKSC_AADCAS_CTL;          

    uint8        ucDummy119[4];              

    const uint32 ulCKSC_AADCAS_ACT;          

    uint8        ucDummy120[244];            

    uint32       ulCKSC_AADCAD_CTL;          

    uint8        ucDummy121[4];              

    const uint32 ulCKSC_AADCAD_ACT;          

    uint8        ucDummy122[12];             

    uint32       ulCKSC_AADCAD_STPM;         

    uint8        ucDummy123[228];            

    uint32       ulCKSC_AFOUTS_CTL;          

    uint8        ucDummy124[4];              

    const uint32 ulCKSC_AFOUTS_ACT;          

    uint8        ucDummy125[12];             

    uint32       ulCKSC_AFOUTS_STPM;         

    uint8        ucDummy126[228];            

    uint32       ulFOUTDIV;                  

    const uint32 ulFOUTSTAT;                 

    uint8        ucDummy127[26616];          

    uint32       ulPLLE;                     

    const uint32 ulPLLS;                     

    uint32       ulPLLC;                     

    uint8        ucDummy128[4084];           

    uint32       ulCKSC_CPUCLKS_CTL;         

    uint8        ucDummy129[4];              

    const uint32 ulCKSC_CPUCLKS_ACT;         

    uint8        ucDummy130[4];              

    uint32       ulCKSC_PPLLCLKS_CTL;        

    uint8        ucDummy131[4];              

    const uint32 ulCKSC_PPLLCLKS_ACT;        

    uint8        ucDummy132[228];            

    uint32       ulCKSC_CPUCLKD_CTL;         

    uint8        ucDummy133[4];              

    const uint32 ulCKSC_CPUCLKD_ACT;         

    uint8        ucDummy134[244];            

    uint32       ulCKSC_IPERI1S_CTL;         

    uint8        ucDummy135[4];              

    const uint32 ulCKSC_IPERI1S_ACT;         

    uint8        ucDummy136[244];            

    uint32       ulCKSC_IPERI2S_CTL;         

    uint8        ucDummy137[4];              

    const uint32 ulCKSC_IPERI2S_ACT;         

    uint8        ucDummy138[244];            

    uint32       ulCKSC_ILINS_CTL;           

    uint8        ucDummy139[4];              

    const uint32 ulCKSC_ILINS_ACT;           

    uint8        ucDummy140[244];            

    uint32       ulCKSC_IADCAS_CTL;          

    uint8        ucDummy141[4];              

    const uint32 ulCKSC_IADCAS_ACT;          

    uint8        ucDummy142[244];            

    uint32       ulCKSC_IADCAD_CTL;          

    uint8        ucDummy143[4];              

    const uint32 ulCKSC_IADCAD_ACT;          

    uint8        ucDummy144[244];            

    uint32       ulCKSC_PLLIS_CTL;           

    uint8        ucDummy145[4];              

    const uint32 ulCKSC_PLLIS_ACT;           

    uint8        ucDummy146[244];            

    uint32       ulCKSC_ILIND_CTL;           

    uint8        ucDummy147[4];              

    const uint32 ulCKSC_ILIND_ACT;           

    uint8        ucDummy148[12];             

    uint32       ulCKSC_ILIND_STPM;          

    uint8        ucDummy149[228];            

    uint32       ulCKSC_ICANS_CTL;           

    uint8        ucDummy150[4];              

    const uint32 ulCKSC_ICANS_ACT;           

    uint8        ucDummy151[12];             

    uint32       ulCKSC_ICANS_STPM;          

    uint8        ucDummy152[228];            

    uint32       ulCKSC_ICANOSCD_CTL;        

    uint8        ucDummy153[4];              

    const uint32 ulCKSC_ICANOSCD_ACT;        

    uint8        ucDummy154[12];             

    uint32       ulCKSC_ICANOSCD_STPM;       

    uint8        ucDummy155[228];            

    uint32       ulCKSC_ICSIS_CTL;           

    uint8        ucDummy156[4];              

    const uint32 ulCKSC_ICSIS_ACT;           

    uint8        ucDummy157[244];            

    uint32       ulCKSC_IIICS_CTL;           

    uint8        ucDummy158[4];              

    const uint32 ulCKSC_IIICS_ACT;           
} ClkCntlReg;
 
typedef struct Stag_ClkMntr_Register
{                                                      
    uint8        ucCTL0;                     

    uint8        ucDummy159[7];              

    uint16       usCMPL;                     

    uint8        ucDummy160[2];              

    uint16       usCMPH;                     

    uint8        ucDummy161[2];              

    uint8        ucPCMD;                     

    uint8        ucDummy162[3];              

    const uint8  ucPS;                       

    uint8        ucDummy163[3];              

    uint8        ucEMU0;                     
} ClkMntrReg;

typedef struct Stag_CmnClkMntr_Register
{                                                      
    uint32       ulTEST;                     

    const uint32 ulTESTS;                    

    uint8        ucDummy164[248];            

    uint32       ulPROTCMDCLMA;              

    const uint32 ulPROTSCLMA;                
} CmnClkMntrReg;

typedef struct Stag_STBC0_Registers
{                                                      
    uint32       ulPSC;                      

    uint8        ucDummy165[12];             

    uint32       ulSTPT;                     
} STBC0Reg;

typedef struct Stag_WUF_Registers
{                                                      
    const uint32 ulWUF0;                     

    uint32       ulWUFMSK0;                  

    uint32       ulWUFC0;                    
} WUFReg;

typedef struct Stag_LPS_Registers                      
{
    uint32       ulSCTLR;                    

    uint32       ulEVFR;                     

    uint32       ulDPSELR0;                  

    uint32       ulDPSELRM;                  

    uint32       ulDPSELRH;                  

    uint32       ulDPDSR0;                   

    uint32       ulDPDSRM;                   

    uint32       ulDPDSRH;                   

    const uint32 ulDPDIMR0;                  

    const uint8  ucDPDIMR1;                  

    uint8        ucDummy166[3];              

    const uint8  ucDPDIMR2;                  

    uint8        ucDummy167[3];              

    const uint8  ucDPDIMR3;                  

    uint8        ucDummy168[3];              

    const uint8  ucDPDIMR4;                  

    uint8        ucDummy169[3];              

    const uint8  ucDPDIMR5;                  

    uint8        ucDummy170[3];              

    const uint8  ucDPDIMR6;                  

    uint8        ucDummy171[3];              

    const uint8  ucDPDIMR7;                  

    uint8        ucDummy172[3];              

    uint16       usCNTVAL;                   

    uint8        ucDummy173[2];              

    const uint8  ucSOSTR;                    
} LPSReg;

typedef struct Stag_WriteProt_Registers
{                                                      
    uint32       ulPROTCMD0;                 

    const uint32 ulPROTS0;                   

    uint8        ucDummy174[32760];          

    uint32       ulPROTCMD1;                 

    const uint32 ulPROTS1;                   
} WPROTReg;

typedef struct Stag_CANController_Registers
{
    uint32       ulGCFG;                     

    uint32       ulGCTR;                     

    uint32       ulGSTS;                     

    uint32       ulGERFL;                    

    uint32       ulGTSC;                     

    uint32       ulGAFLECTR;                 

    uint32       ulGAFLCFG0;                 

    uint32       ulGAFLCFG1;                 

    uint32       ulRMNB;                     

    uint8        ucdummy175[952];            

    uint32       ulGTINTSTS0;                

    uint32       ulGTINTSTS1;                

    uint32       ulGTSTCFG;                  

    uint32       ulGTSTCTR;                  

    uint8        ucdummy289[4];              

    uint32       ulGFDCFG;                   

    uint8        ucdummy290[4];              

    uint32       ulGLOCKK;                   

    uint8        ucdummy291[124];            

    uint32       ulGRMCFG;                   

}CANGblReg;

typedef struct Stag_CANChannel_Registers
{
    uint32       ulCFG;                      

    uint32       ulCTR;                      

    uint32       ulSTS;                      

    uint32       ulERFL;                     
}CANChReg;

typedef struct Stag_CANTXQ_Registers
{
    uint32       ulTXQCC;                    

    uint8        ucdummy178[28];             

    uint32       ulTXQSTS;                   

    uint8        ucdummy179[28];             

    uint32       ulTXQPCTR;                  
}CANTxqReg;

typedef struct Stag_CANTHL_Registers
{
    uint32       ulTHLCC;                    

    uint8        ucdummy181[28];             

    uint32       ulTHLSTS;                   

    uint8        ucdummy182[28];             

    uint32       ulTHLPCTR;                  

    uint8        ucdummy183[5052];           

    uint32       ulTHLACC;                   

    uint8        ucdummy184[18428];          

    uint32       ulFDTHLACC;                 
}CANThlReg;


typedef struct Stag_CAN_ReceiveRule
{
    uint32       ulGAFLID;                   

    uint32       ulGAFLM;                    

    uint32       ulGAFLP0;                   

    uint32       ulGAFLP1;                   
}CANRRuleReg;

typedef struct Stag_CAN_ComFIFO1
{
    uint32       ulCFCC;                     

    uint8        ucdummy184[92];             

    uint32       ulCFSTS;                    

    uint8        ucdummy185[92];             

    uint32       ulCFPCTR;                   
}CANCFIFOReg1;

typedef struct Stag_CAN_ComFIFO2
{
    uint32       ulCFID;                     

    uint32       ulCFPTR;                    

    uint32       ulCFDF0;                    

    uint32       ulCFDF1;                    
}CANCFIFOReg2;

 
typedef struct Stag_CAN_FIFOStatus
{
    uint32       ulFESTS;                    

    uint32       ulFFSTS;                    

    uint32       ulFMSTS;                    

    uint32       ulRFISTS;                   

    uint32       ulCFRISTS;                  

    uint32       ulCFTISTS;                  
}CANFIFOStatusReg;

typedef struct Stag_CAN_HrhFIFO
{
    uint32       ulRFCC;                     

    uint8        ucdummy287[28];             

    uint32       ulRFSTS;                    

    uint8        ucdummy288[28];             

    uint32       ulRFPCTR;                   


}CANHRTFIFOReg1;

typedef struct Stag_CAN_HrhFIFO2
{
    uint32       ulRFID;                     

    uint32       ulRFPTR;                    

    uint32       ulRFDF0;                    

    uint32       ulRFDF1;                    

}CANHRTFIFOReg2;


typedef struct Stag_CAN_FIFODMA
{
    uint32       ulCDTCT;                    
    uint32       ulCDTSTS;                   
}CANFIFIODMAReg;

typedef struct Stag_CAN_TransmitBuffControl
{
    uint32       TMTRSTS;                    

    uint32       TMTARSTS;                   

    uint32       TMTCSTS;                    

    uint32       TMTASTS;                    
}CANTransmitBuffControlReg;

typedef struct STag_CAN_Hrh
{
    uint32       ulRMID;                     

    uint32       ulRMPTR;                    

    uint32       ulRMDF0;                    

    uint32       ulRMDF1;                    
}CANHrhReg;

typedef struct STag_CAN_Hth1
{
    uint8        ucTMC;                      

    uint8        ucdummy190[127];            

    uint8        ucTMSTS;                    
}CANHthReg1;

typedef struct STag_CAN_Hth2
{
    uint32       ulTMID;                     

    uint32       ulTMPTR;                    

    uint32       ulTMDF0;                    
}CANHthReg2;

 

typedef struct STag_CAN_FDChannel
{
    uint32        ulDCFG;

    uint32        ulFDCFG;

    uint32        ulFDCTR;

    uint32        ulFDSTS;

    uint32        ulFDCRC;
}CANFDChReg;

typedef struct STag_CANRamTstReg
{
    uint32       ulRPGACC[64];               
}CANRamTstReg;

typedef struct Stag_CANFD_ReceiveRule
{
    uint32       ulFDGAFLID;                 

    uint32       ulFDGAFLM;                  

    uint32       ulFDGAFLP0;                 

    uint32       ulFDGAFLP1;                 
}CANFDRRuleReg;

typedef struct STag_CANFD_Hrh
{
    uint32       ulFDRMID;                   

    uint32       ulFDRMPTR;                  

    uint32       ulFDRMSTS;                  

    uint32       ulFDRMDF0;                  

    uint32       ulFDRMDF1;                  

    uint32       ulFDRMDF2;                  

    uint32       ulFDRMDF3;                  

    uint32       ulFDRMDF4;                  
}CANFDHrhReg;

typedef struct Stag_CANFD_HrhFIFO
{
    uint32       ulFDRFID;                   

    uint32       ulFDRFPTR;                  

    uint32       ulRFFDSTS;                  

    uint32       ulFDRFDF0;                  

    uint32       ulFDRFDF1;                  

    uint32       ulFDRFDF2;                  

    uint32       ulFDRFDF3;                  

    uint32       ulFDRFDF4;                  

    uint32       ulFDRFDF5;                  

    uint32       ulFDRFDF6;                  

    uint32       ulFDRFDF7;                  

    uint32       ulFDRFDF8;                  

    uint32       ulFDRFDF9;                  

    uint32       ulFDRFDF10;                 

    uint32       ulFDRFDF11;                 

    uint32       ulFDRFDF12;                 

    uint32       ulFDRFDF13;                 

    uint32       ulFDRFDF14;                 

    uint32       ulFDRFDF15;                 
}CANFDHRTFIFOReg;

typedef struct Stag_CANFD_ComFIFO
{
    uint32       ulFDCFID;                   

    uint32       ulFDCFPTR;                  

    uint32       ulFDCSTS;                   

    uint32       ulFDCFDF0;                  

    uint32       ulFDCFDF1;                  

    uint32       ulFDCFDF2;                  

    uint32       ulFDCFDF3;                  

    uint32       ulFDCFDF4;                  

    uint32       ulFDCFDF5;                  

    uint32       ulFDCFDF6;                  

    uint32       ulFDCFDF7;                  

    uint32       ulFDCFDF8;                  

    uint32       ulFDCFDF9;                  

    uint32       ulFDCFDF10;                 

    uint32       ulFDCFDF11;                 

    uint32       ulFDCFDF12;                 

    uint32       ulFDCFDF13;                 

    uint32       ulFDCFDF14;                 

    uint32       ulFDCFDF15;                 
}CANFDCFIFOReg;

typedef struct STag_CANFD_Hth
{
    uint32       ulFDTMID;                   

    uint32       ulFDTMPTR;                  

    uint32       ulTMFDCTR;                  

    uint32       ulFDTMDF0;                  

    uint32       ulFDTMDF1;                  

    uint32       ulFDTMDF2;                  

    uint32       ulFDTMDF3;                  

    uint32       ulFDTMDF4;                  
}CANFDHthReg;

typedef struct STag_TAUDBUnitUserReg
{
    uint16       usTOL;                      

    uint8        ucdummy192[2];              

    uint16       usRDT;                      

    uint8        ucdummy193[2];              

    uint16       usRSF;                      

    uint8        ucdummy272[2];              

    uint16       usTRO;                      

    uint8        ucdummy194[2];              

    uint16       usTME;                      

    uint8        ucdummy195[2];              

    uint16       usTDL;                      

    uint8        ucdummy196[2];              

    uint16       usTO;                       

    uint8        ucdummy197[2];              

    uint16       usTOE;                      

    uint8        ucdummy198[354];            

    uint16       usTE;                       

    uint8        ucdummy199[2];              

    uint16       usTS;                       

    uint8        ucdummy200[2];              

    uint16       usTT;                       

}TAUDBUserReg;

typedef struct STag_TAUDBUnitOsReg
{
    uint16       usTPS;                      

    uint8        ucdummy201[2];              

    uint8        ucBRS;                      

    uint8        ucdummy202[3];              

    uint16       usTOM;                      

    uint8        ucdummy203[2];              

    uint16       usTOC;                      

    uint8        ucdummy204[2];              

    uint16       usTDE;                      

    uint8        ucdummy205[2];              

    uint16       usTDM;                      

    uint8        ucdummy206[2];              

    uint16       usTRE;                      

    uint8        ucdummy207[2];              

    uint16       usTRC;                      

    uint8        ucdummy208[2];              

    uint16       usRDE;                      

    uint8        ucdummy209[2];              

    uint16       usRDM;                      

    uint8        ucdummy210[2];              

    uint16       usRDS;                      

    uint8        ucdummy211[2];              

    uint16       usRDC;                      
}TAUDBOsReg;

typedef struct STag_TAUJUnitUserReg
{
    uint8        ucTE;                       

    uint8        ucdummy212[3];              

    uint8        ucTS;                       

    uint8        ucdummy213[3];              

    uint8        ucTT;                       

    uint8        ucdummy214[3];              

    uint8        ucTO;                       

    uint8        ucdummy215[3];              

    uint8        ucTOE;                      

    uint8        ucdummy216[3];              

    uint8        ucTOL;                      

    uint8        ucdummy217[3];              

    uint8        ucRDT;                      

    uint8        ucdummy267[3];              

    uint8        ucRSF;                      

    uint8        ucdummy275[16];             

}TAUJUserReg;

typedef struct STag_TAUJUnitOsRegs
{
    uint16       usTPS;                      

    uint8        ucdummy218[2];              

    uint8        ucBRS;                      

    uint8        ucdummy219[3];              

    uint8        ucTOM;                      

    uint8        ucdummy220[3];              

    uint8        ucTOC;                      

    uint8        ucdummy221[3];              

    uint8        ucRDE;                      

    uint8        ucdummy222[3];              

    uint8        ucRDM;                      
}TAUJOsReg;

typedef struct STag_TAUDBUserReg
{
    uint16       usCDR;                      

    uint16       usDummy223[63];             

    uint16       usCNT;                      

    uint16       usDummy224[31];             

    uint8        ucCMUR;                     

    uint8        ucdummy225[127];            

    uint8        ucCSR;                      

    uint8        ucdummy270[63];             

    uint8        ucCSC;                      

    uint8        ucdummy268[127];            

    uint16       usCMOR;                     

}TAUDBChReg;

typedef struct STag_TAUJUserReg
{
    uint32       ulCDR;                      

    uint8        ucdummy226[12];             

    uint32       ulCNT;                      

    uint8        ucdummy227[12];             

    uint8        ucCMUR;                     

    uint8        ucdummy269[15];             

    uint8        ucCSR;                      

    uint8        ucdummy271[15];             

    uint8        ucCSC;                      

    uint8        ucdummy228[63];             

    uint16       usCMOR;                     
}TAUJChReg;

typedef struct STag_OSTMUnitUserRegs
{
    uint32       ulCMP;                      

    uint32       ulCNT;                      

    uint8        ucdummy229[8];              

    uint8        ucTE;                       

    uint8        ucdummy230[3];              

    uint8        ucTS;                       

    uint8        ucdummy231[3];              

    uint8        ucTT;                       

    uint8        ucdummy232[7];              

    uint8        ucCTL;                      

    uint8        ucdummy233[3];              

    uint8        ucEMU;                      
} OSTMReg;

typedef struct STag_Pwm_DiagClockDivRegs
{
    uint16       usBRS0;                     

    uint8        ucdummy232[2];              

    uint16       usBRS1;                     

    uint8        ucdummy233[2];              

    uint16       usBRS2;                     

    uint8        ucdummy234[2];              

    uint16       usBRS3;                     

    uint8        ucdummy235[2];              

    uint8        ucTE;                       

    uint8        ucdummy236[3];              

    uint8        ucTS;                       

    uint8        ucdummy237[3];              

    uint8        ucTT;                       
}PWBAReg;

typedef struct STag_Pwm_DiagGeneratorRegs
{
    uint16       usCSDR;                     

    uint8        ucdummy238[2];              

    uint16       usCRDR;                     

    uint8        ucdummy239[2];              

    uint16       usCTDR;                     

    uint8        ucdummy240[2];              

    uint8        ucRDT;                      

    uint8        ucdummy241[3];              

    uint8        ucRSF;                      

    uint8        ucdummy242[3];              

    uint16       usCNT;                      

    uint8        ucdummy243[10];             

    uint8        ucCTL;                      

    uint8        ucdummy244[3];              

    uint16       usCSBR;                     

    uint8        ucdummy245[2];              

    uint16       usCRBR;                     

    uint8        ucdummy246[2];              

    uint16       usCTBR;                     
}PWGAReg;

typedef struct STag_Pwm_PWSAReg
{
    uint8        ucCTL;                      

    uint8        ucdummy268[3];              

    uint8        ucSTR;                      

    uint8        ucdummy269[59];             

    uint32       ulPVCR[36];                 
}PWSAReg;

typedef struct STag_Pwm_SLPWGAReg
{
    uint32       ulSLPWGA0;                  

    uint32       ulSLPWGA1;                  

    uint32       ulSLPWGA2;                  
}SLPWGAReg;

typedef struct STag_RLin2_GblRegs
{
    uint8        ucGLWBR;                    

    uint8        ucGLBRP0;                   

    uint8        ucGLBRP1;                   

    uint8        ucGLSTC;                    
} Lin2GblReg;

typedef struct STag_RLin2_ChannelRegs
{
    uint8        ucLiMD;                     

    uint8        ucLiBFC;                    

    uint8        ucLiSC;                     

    uint8        ucLiWUP;                    

    uint8        ucLiIE;                     

    uint8        ucLiEDE;                    

    uint8        ucLiCUC;                    

    uint8        ucdummy247[1];              

    uint8        ucLiTRC;                    

    uint8        ucLiMST;                    

    uint8        ucLiST;                     

    uint8        ucLiEST;                    

    uint8        ucLiDFC;                    

    uint8        ucLiIDB;                    

    uint8        ucLiCBR;                    

    uint8        ucdummy248[1];              

    uint8        ucLiDBR[8];                 
} Lin2ChReg;

typedef struct STag_RLin3_UartRegs
{
    uint8        ucLWBR;                     

    uint8        ucLBRP0;                    

    uint8        ucLBRP1;                    

    uint8        ucLSTC;                     

    uint8        ucdummy249[3];              

    uint8        ucLMD;                      

    uint8        ucLBFC;                     

    uint8        ucLSC;                      

    uint8        ucLWUP;                     

    uint8        ucLIE;                      

    uint8        ucLEDE;                     

    uint8        ucLCUC;                     

    uint8        ucdummy250[1];              

    uint8        ucLTRC;                     

    uint8        ucLMST;                     

    uint8        ucLST;                      

    uint8        ucLEST;                     

    uint8        ucLDFC;                     

    uint8        ucLDB;                      

    uint8        ucLCBR;                     

    uint8        ucdummy251[1];              

    uint8        ucLDBR[8];                  
} Lin3UartReg;


typedef struct Stag_WDTA_Registers
{
    uint8        ucWDTE;                     

    uint8        ucdummy252[3];              

    uint8        ucEVAC;                     

    uint8        ucdummy253[3];              

    uint8        ucREF;                      

    uint8        ucdummy254[3];              

    uint8        ucMD;                       
}WDTAReg;

typedef struct STag_AdcConfigRegisters
{
    uint32       ulPWDVCR;                   

    uint8        ucdummy255[508];            

    uint32       ulPWDDIR;                   

    uint8        ucdummy256[8];              

    uint32       ulADHALTR;                  

    uint32       ulADCR;                     

    uint32       ulSGSTR;                    

    uint32       ulMPXCURR;                  

    uint8        ucdummy257[4];              

    uint32       ulTHSMPSTCR;                

    uint32       ulTHCR;                     

    uint32       ulTHAHLDSTCR;               

    uint32       ulTHBHLDSTCR;               

    uint32       ulTHACR;                    

    uint32       ulTHBCR;                    

    uint32       ulTHER;                     

    uint32       ulTHGSR;                    

    uint32       ulSFTCR;                    

    uint32       ulULLMTBR[3];               

    uint32       ulECR;                      

    uint32       ulULER;                     

    uint32       ulOWER;                     

    uint32       ulDGCTL0;                   

    uint32       ulDGCTL1;                   

    uint32       ulPDCTL1;                   

    uint32       ulPDCTL2;                   

    uint8        ucdummy258[32];             

    uint32       ulSMPCR;                    

    uint8        ucdummy259[388];            

    uint32       ulPWDSGCR;                  

    uint8        ucdummy260[12];             

    uint32       ulPWDSGSEFCR;               
}AdcConfReg;

typedef struct STag_DmaAddrRegs
{
    uint32       ulDSA;                      

    uint32       ulDDA;                      

    uint32       ulDTC;                      

    uint32       ulDTCT;                     

    uint32       ulDRSA;                     

    uint32       ulDRDA;                     

    uint32       ulDRTC;                     

    uint8        ucdummy261[4];              

    uint32       ulDCEN;                     

    uint32       ulDCST;                     

    uint32       ulDCSTS;                    

    uint32       ulDCSTC;                    

    uint32       ulDTFR;                     

    uint32       ulDTFRRQ;                   

    uint32       ulDTFRRQC;                  
}DmaReg;

typedef struct STag_DmaGlobalRegs
{

    uint32       ulDMACTL;                   

    uint8        ucdummy287[28];             

    uint32       ulDMACER;                   

    uint8        ucdummy288[12];             

    uint32       ulDM0CMV;                   
 
    uint32       ulDM1CMV;                   
 

    uint8        ucdummy289[4];              

    uint32       ulCMVC;                     
 

    uint8        ucdummy290[192];            

    uint32       ulDM00CM;                   

    uint32       ulDM01CM;                   

    uint32       ulDM02CM;                   

    uint32       ulDM03CM;                   

    uint32       ulDM04CM;                   

    uint32       ulDM05CM;                   

    uint32       ulDM06CM;                   

    uint32       ulDM07CM;                   

    uint32       ulDM10CM;                   

    uint32       ulDM11CM;                   

    uint32       ulDM12CM;                   

    uint32       ulDM13CM;                   

    uint32       ulDM14CM;                   

    uint32       ulDM15CM;                   

    uint32       ulDM16CM;                   

    uint32       ulDM17CM;                   

}DmaGlobalReg;
typedef struct STag_Adc_VirtualChReg
{
    uint32       ulVCR[50];                  

    uint8        ucdummy262[56];             

    uint16       usDR[50];                   

    uint8        ucdummy263[154];            

    uint32       ulDIR[50];                  
}AdcVirChReg;

typedef struct STag_Adc_ScanGroupReg
{
    uint32       ulSGSTCR;                   

    uint8        ucdummy264[4];              

    uint32       ulSGCR;                     

    uint32       ulSGVCSP;                   

    uint32       ulSGVCEP;                   

    uint32       ulSGMCYCR;                  

    uint32       ulSGSEFCR;                  

    uint32       ulSGTSEL;                   
}AdcSGReg;

typedef struct STag_Spi_MainReg
{
    uint8        ucCTL0;                     

    uint8        ucdummy280[3];              

    uint32       ulSTR0;                     

    uint16       usSTCR0;                    

    uint8        ucdummy265[6];              

    uint32       ulCTL1;                     

    uint16       usCTL2;                     
}SpiMainReg;

typedef struct STag_Spi_BRSReg
{
    uint16       usBRS;                      

    uint8        ucdummy[2];                 
}SpiBRSReg;

typedef struct STag_Spi_CSIHReg
{
    uint32       ulMCTL1;                    

    uint32       ulMCTL2;                    

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy281[2];              

    uint32       ulRX0W;                     

    uint16       usRX0H;                     

    uint8        ucdummy282[2];              

    uint32       ulMRWP0;                    

    uint8        ucdummy266[36];             

    uint16       usMCTL0;                    

    uint8        ucdummy283[2];              

    uint32       ulCFG[8];                   

    uint8        ucdummy267[4];              

    SpiBRSReg      stBRS[4];                 
}SpiCSIHReg;

typedef struct STag_Spi_ECCCSIHnTRC
{
    uint8         ucErdb;


    uint8         ucEcrd;

    uint8         ucHord;

    uint8         ucSynd;

}Spi_EccTrcReg;

typedef struct STag_Spi_CSIHECCReg
{
    uint16        usEccCTL;

    uint8         ucdummy[2];

    uint16        usEccTmc;

Spi_EccTrcReg stEccTrc;

    uint32        ulEccTed;

}SpiCSIHECCReg;

typedef struct STag_Spi_SELBREADTEST
{
    uint16        usSelfReadTest;

}SpiSelfReadTestReg;

typedef struct STag_Spi_CSIGReg
{
    uint8        ucBCTL0;                    

    uint8        ucdummy284[3];              

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy285[2];              

    uint16       usRX0;                      

    uint8        ucdummy286[2];              

    uint32       ulCFG0;                     
}SpiCSIGReg;

typedef struct STag_Fls_Reg
{
    uint32       DCNT;                       

    uint32       DPCMD;                      

    uint32       DPS;                        
}FlsReg;

typedef struct STag_FEINTReg
{                                                          
    const uint32 F;                          
    uint32       FMSK;                       
    uint32       FC;                         
} FEINTReg;

typedef uint16       CANnTMIECReg;
typedef uint32       CANnRMNDReg;

typedef struct STag_Fcu_Registers
{
    uint8         ucReserved1[16];

    uint8         ucFASTAT;

    uint8         ucReserved2[31];

    uint32        ulFSADDR;

    uint32        ulFEADDR;

    uint8         ucReserved3[28];

    uint16        usFCURAME;

    uint8         ucReserved4[42];

    uint32        ulFSTATR;

    uint16        usFENTRYR;

    uint8         ucReserved5[78];

    uint8         ucFBCSTAT;

    uint8         ucReserved6[3];

    uint32        ulFPSADDR;

    uint8         ucReserved7[8];

    uint16        usFPCKAR;

}FlsFACIReg;


typedef struct STag_Fcu_ECCReg
{
    uint16        usDFECCCTL;

    uint8         ucReserved8[2];

    uint8         ucDFERSTR;

    uint8         ucReserved9[3];

    uint8         ucDFERSTC;

    uint8         ucReserved10[11];

    uint8         ucDFERRINT;

    uint8         ucReserved11[7];

    uint16        usDFTSTCTL;
}FlsECCReg;


 



 

 

 




 






 






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".WDG59_B_CFG_DATA_UNSPECIFIED"




 
 



 

extern volatile WDTAReg* const WDG_59_DriverB_GpWDTAReg_BaseAddr;

extern  volatile unsigned long* const WDG_59_DriverB_GpICR_BaseAddr;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 




 


 
 
 
 
 
 
 

 
 

 



 

 

 
 
 
 
 
 
 
 
 

 



 
 

 

 




 

 
 

 

 

 

 



 



 

 
 

 





 

 





 

 
 
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

 
const sm2_z256_t SM2_Z256_P = {
    0xffffffffffffffff,  
    0xffffffff00000000,  
    0xffffffffffffffff,  
    0xfffffffeffffffff}; 

const sm2_z256_t SM2_Z256_NEG_P = {
    1,                              
    ((uint64_t)1 << 32) - 1,        
    0,                              
    ((uint64_t)1 << 32)};           


const uint64_t *SM2_Z256_MODP_MONT_ONE = SM2_Z256_NEG_P;


const sm2_z256_t SM2_Z256_2e512modp = {
    0x0000000200000003,  
    0x00000002ffffffff,  
    0x0000000100000001,  
    0x0000000400000002}; 

const sm2_z256_t SM2_Z256_P_PRIME = {
    0x0000000000000001,  
    0xffffffff00000001,  
    0xfffffffe00000000,  
    0xfffffffc00000001}; 

const sm2_z256_t SM2_Z256_MODP_MONT_B = {
    0x90d230632bc0dd42,  
    0x71cf379ae9b537ab,  
    0x527981505ea51c3c,  
    0x240fe188ba20e2c8}; 

const uint64_t SM2_Z256_N[4] = {
    0x53bbf40939d54123,  
    0x7203df6b21c6052b,  
    0xffffffffffffffff,  
    0xfffffffeffffffff}; 

const uint64_t SM2_Z256_NEG_N[4] = {
    0xac440bf6c62abedd,  
    0x8dfc2094de39fad4,  
    0x0000000000000000,  
    0x0000000100000000}; 


static SM2_Z256_AFFINE_POINT (*g_pre_comp)[64] = (SM2_Z256_AFFINE_POINT (*)[64])sm2_z256_pre_comp;
const sm2_z256_t SM2_Z256_ONE = {1, 0, 0, 0};

 
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

 
 
static uint32_t sm4_tau(uint32_t a);
static uint32_t sm4_l_cal(uint32_t b);
static uint32_t sm4_l_key(uint32_t b);
static void SM4_EncryptBlock(const uint8_t *key, const uint8_t *input, uint8_t *output);
static void LeftShiftOneBit(uint8_t *data);
static void Xor128(uint8_t *out, const uint8_t *in1, const uint8_t *in2);
 
static void sm3_compress_blocks(uint32_t digest[8], const uint8_t *data, size_t blocks);
 
static void sha256_transform(uint32_t *state, const uint8_t *data);
 
static int sm2_z256_point_from_octets(SM2_Z256_POINT *P, const uint8_t *in, size_t inlen);
static int sm2_signature_from_der(SM2_SIGNATURE *sig, const uint8_t **in, size_t *inlen);
static int sm2_do_verify(const SM2_KEY *key, const uint8_t dgst[32], const SM2_SIGNATURE *sig);
static int asn1_type_from_der(int tag, const uint8_t **d, size_t *dlen, const uint8_t **in, size_t *inlen);
int asn1_integer_from_der_ex(int tag, const uint8_t **d, size_t *dlen, const uint8_t **in, size_t *inlen);
 
static int secp256r1_public_key_from_bytes(SECP256R1_KEY *key, const uint8_t **in, size_t *inlen);
static void secp256r1_from_32bytes(secp256r1_t r, const uint8_t in[32]);
static int ecdsa_do_verify(const SECP256R1_KEY *key, const uint8_t dgst[32], const ECDSA_SIGNATURE *sig);
 
static uint32_t ReverseBits(uint32_t input, uint8_t bit_width);

 









 
int Crypto_SM4_CMAC(const uint8_t *key, const uint8_t *data, uint32_t len, uint8_t *mac)
{
    if (key == ((void *) 0) || mac == ((void *) 0))
    {
        return -1;
    }
    
    if (len > 0 && data == ((void *) 0))
    {
        return -1;
    }
    
    uint8_t K1[16], K2[16], L[16];
    uint8_t X[16] = {0}, Y[16], M_last[16];
    uint32_t n, i;

    memset(L, 0, 16);
    SM4_EncryptBlock(key, L, L);

    memcpy(K1, L, 16);
    uint8_t msb_L = K1[0] & 0x80;
    LeftShiftOneBit(K1);
    if (msb_L)
    K1[15] ^= 0x87;

    memcpy(K2, K1, 16);
    uint8_t msb_K1 = K2[0] & 0x80;
    LeftShiftOneBit(K2);
    if (msb_K1 != 0)
    {
        K2[15] ^= 0x87;
    }

    n = (len + 15) / 16;
    if (n == 0)
    {
        n = 1;
    }
    
    for (i = 0; i < n - 1; i++)
    {
        Xor128(Y, X, &data[i * 16]);
        SM4_EncryptBlock(key, Y, X);
    }
    memset(M_last, 0, 16);
    uint32_t last_block_len = len - (n - 1) * 16;

    if (len != 0 && last_block_len == 16)
    {
        Xor128(M_last, &data[(n - 1) * 16], K1);
    }
    else
    {
        if (len != 0)
        {
            memcpy(M_last, &data[(n - 1) * 16], last_block_len);
        }
        M_last[last_block_len] = 0x80;
        Xor128(M_last, M_last, K2);
    }
    Xor128(Y, X, M_last);
    SM4_EncryptBlock(key, Y, mac);

    return 0;
}










 
int Crypto_SM3_CALC(const uint8_t *data, uint32_t len, uint8_t *hash)
{
    SM3_CTX_USER ctx;
    Crypto_SM3_Init(&ctx);
    Crypto_SM3_Update(&ctx, data, len);
    Crypto_SM3_Final(&ctx, hash);
    return 0;
}








 
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
        Wdg_59_DriverB_TriggerFunc((boolean)0x01);
        memcpy(&ctx->buffer[index], data, partlen);
        sm3_compress_blocks(ctx->state, ctx->buffer, 1);
        for (i = partlen; i + 63 < len; i += 64)
        {
            sm3_compress_blocks(ctx->state, &data[i], 1);
            block_count++;
            if (block_count >= 64)
            {
                Wdg_59_DriverB_TriggerFunc((boolean)0x01);
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










 
int Crypto_SHA256_CALC(const uint8_t* data, uint32_t len, uint8_t* hash)
{
    if (hash == ((void *) 0))
    {
        return -1;
    }
        
    if (len > 0 && data == ((void *) 0))
    {
        return -1;
    }

    Crypto_SHA256_Context ctx;
    Crypto_SHA256_Init(&ctx);
    Crypto_SHA256_Update(&ctx, data, len);
    Crypto_SHA256_Final(&ctx, hash);
    return 0;
}








 
void Crypto_SHA256_Init(Crypto_SHA256_Context* ctx)
{
    
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










 
void Crypto_SHA256_Update(Crypto_SHA256_Context* ctx, const uint8_t* data, uint32_t len)
{
    uint32_t i = 0;

    
    if (ctx->buffer_len > 0) {
        uint32_t space = 64 - ctx->buffer_len;
        uint32_t to_copy = (len < space) ? len : space;

        memcpy(ctx->buffer + ctx->buffer_len, data, to_copy);
        ctx->buffer_len += to_copy;
        i += to_copy;

        
        if (ctx->buffer_len == 64) {
            sha256_transform(ctx->state, ctx->buffer);
            ctx->count += 64;
            ctx->buffer_len = 0;
        }
    }

    
    while (i + 63 < len) {
        sha256_transform(ctx->state, &data[i]);
        ctx->count += 64;
        i += 64;
    }

    
    uint32_t remaining = len - i;
    if (remaining > 0) {
        memcpy(ctx->buffer, &data[i], remaining);
        ctx->buffer_len = remaining;
    }
}








 
void Crypto_SHA256_Final(Crypto_SHA256_Context* ctx, uint8_t* hash)
{
    uint64_t total_bits = (ctx->count + ctx->buffer_len) * 8;
    uint32_t pad_len;
    uint8_t padding[64];

    
    
    if (ctx->buffer_len < 56) {
        pad_len = 56 - ctx->buffer_len;
    } else {
        pad_len = 120 - ctx->buffer_len; 
    }

    
    padding[0] = 0x80;
    memset(&padding[1], 0, pad_len - 1);

    
    if (ctx->buffer_len >= 56) {
        
        memcpy(ctx->buffer + ctx->buffer_len, padding, 64 - ctx->buffer_len);
        sha256_transform(ctx->state, ctx->buffer);

        
        memset(ctx->buffer, 0, 56);
    } else {
        
        memcpy(ctx->buffer + ctx->buffer_len, padding, pad_len);
    }

    
    for (int j = 7; j >= 0; j--) {
        ctx->buffer[56 + j] = (uint8_t)(total_bits & 0xFF);
        total_bits >>= 8;
    }

    sha256_transform(ctx->state, ctx->buffer);

    
    for (int j = 0; j < 8; j++) {
        hash[j * 4]     = (uint8_t)((ctx->state[j] >> 24) & 0xFF);
        hash[j * 4 + 1] = (uint8_t)((ctx->state[j] >> 16) & 0xFF);
        hash[j * 4 + 2] = (uint8_t)((ctx->state[j] >> 8)  & 0xFF);
        hash[j * 4 + 3] = (uint8_t)( ctx->state[j]        & 0xFF);
    }
}












 
int Crypto_SM2_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    SM2_KEY key;
    SM2_SIGNATURE sig;

    
    if (sm2_z256_point_from_octets(&key.public_key, pub_key, 65) != 1)
    {
        return -1;
    }

    
    
    
    
    
    
    
    
    if (!data || !signature || !pub_key || len != 32)
    {
         
        return -1;
    }

    memset(&sig, 0, sizeof(SM2_SIGNATURE));
    memcpy(sig.r, &signature[0], 32);
    memcpy(sig.s, &signature[32], 32);

    
    int ret = sm2_do_verify(&key, data, &sig);
    if (ret != 1)
    {
        return -1;
    }
    return 0;
}









 
int Crypto_ECC_Verify(const uint8_t *data, uint32_t len, const uint8_t *signature, uint8_t signature_len, const uint8_t *pub_key)
{
    SECP256R1_KEY key;
    ECDSA_SIGNATURE sig;

    if (!data || !signature || !pub_key || len == 0 || signature_len == 0) return -1;

    const uint8_t *pub_ptr = pub_key;
    size_t pub_len = 65;

    if (secp256r1_public_key_from_bytes(&key, &pub_ptr, &pub_len) != 0) {
        return -1;
    }

    if (signature_len != 64) return -1;

    secp256r1_from_32bytes(sig.r, signature);
    secp256r1_from_32bytes(sig.s, signature + 32);

    uint8_t dgst[32];
    Crypto_SHA256_CALC(data, len, dgst);

    if (ecdsa_do_verify(&key, dgst, &sig) != 0) {
        return -1;
    }
    return 0;
}








 
uint16_t Crypto_CcittFalseCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length)
{
    uint16_t crc = initial_crc;
    
    while (length-- > 0) {
        crc = (uint16_t)((crc << 8) ^ crc16_ccitt_false_table[((crc >> 8) ^ (*data++)) & 0xFF]);
    }
    return crc;
}








 
uint16_t Crypto_CcittCrc16(uint16_t initial_crc, const uint8_t *data, uint32_t length)
{
    uint16_t crc = initial_crc;
    
    while (length-- > 0) {
        crc = (uint16_t)((crc >> 8) ^ crc16_ccitt_table[(crc ^ (*data++)) & 0xFF]);
    }
    return crc;
}








 
uint32_t Crypto_Crc32Init(crc32_context_t *context, uint32_t polynomial)
{
     
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








 
uint32_t Crypto_Crc32(const crc32_context_t *context, uint32_t current_crc, const void *data, uint32_t length)
{
    const uint8_t *data_ptr = (const uint8_t *)data;
    
    while (length-- > 0) {
        uint8_t index = (uint8_t)(current_crc ^ (*data_ptr++));
        current_crc = (current_crc >> 8) ^ context->table[index];
    }
    return current_crc;
}








 
uint32_t Crypto_Crc32FinalResult(const crc32_context_t *context, uint32_t final_crc)
{
    (void)context;  
    return final_crc ^ 0xFFFFFFFF;
}








 
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








 
static uint32_t sm4_tau(uint32_t a)
{
    return ((uint32_t)SM4_SBOX[(a >> 24) & 0xFF] << 24) | ((uint32_t)SM4_SBOX[(a >> 16) & 0xFF] << 16) |
        ((uint32_t)SM4_SBOX[(a >> 8) & 0xFF] << 8) | ((uint32_t)SM4_SBOX[a & 0xFF]);
}








 
static uint32_t sm4_l_cal(uint32_t b)
{ 
    return b ^ (((b) << (2)) | ((b) >> (32 - (2)))) ^ (((b) << (10)) | ((b) >> (32 - (10)))) ^ (((b) << (18)) | ((b) >> (32 - (18)))) ^ (((b) << (24)) | ((b) >> (32 - (24))));
}








 
static uint32_t sm4_l_key(uint32_t b)
{
    return b ^ (((b) << (13)) | ((b) >> (32 - (13)))) ^ (((b) << (23)) | ((b) >> (32 - (23))));
}











 
static void SM4_EncryptBlock(const uint8_t *key, const uint8_t *input, uint8_t *output)
{
    uint32_t K[4], rk[32], X[4], i, temp;

    ((K[0]) = ((uint32_t)(key)[(0)] << 24) | ((uint32_t)(key)[(0) + 1] << 16) | ((uint32_t)(key)[(0) + 2] << 8) | ((uint32_t)(key)[(0) + 3]));
    ((K[1]) = ((uint32_t)(key)[(4)] << 24) | ((uint32_t)(key)[(4) + 1] << 16) | ((uint32_t)(key)[(4) + 2] << 8) | ((uint32_t)(key)[(4) + 3]));
    ((K[2]) = ((uint32_t)(key)[(8)] << 24) | ((uint32_t)(key)[(8) + 1] << 16) | ((uint32_t)(key)[(8) + 2] << 8) | ((uint32_t)(key)[(8) + 3]));
    ((K[3]) = ((uint32_t)(key)[(12)] << 24) | ((uint32_t)(key)[(12) + 1] << 16) | ((uint32_t)(key)[(12) + 2] << 8) | ((uint32_t)(key)[(12) + 3]));
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

    ((X[0]) = ((uint32_t)(input)[(0)] << 24) | ((uint32_t)(input)[(0) + 1] << 16) | ((uint32_t)(input)[(0) + 2] << 8) | ((uint32_t)(input)[(0) + 3]));
    ((X[1]) = ((uint32_t)(input)[(4)] << 24) | ((uint32_t)(input)[(4) + 1] << 16) | ((uint32_t)(input)[(4) + 2] << 8) | ((uint32_t)(input)[(4) + 3]));
    ((X[2]) = ((uint32_t)(input)[(8)] << 24) | ((uint32_t)(input)[(8) + 1] << 16) | ((uint32_t)(input)[(8) + 2] << 8) | ((uint32_t)(input)[(8) + 3]));
    ((X[3]) = ((uint32_t)(input)[(12)] << 24) | ((uint32_t)(input)[(12) + 1] << 16) | ((uint32_t)(input)[(12) + 2] << 8) | ((uint32_t)(input)[(12) + 3]));

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

    { (output)[(0)] = (uint8_t)((X[3]) >> 24); (output)[(0) + 1] = (uint8_t)((X[3]) >> 16); (output)[(0) + 2] = (uint8_t)((X[3]) >> 8); (output)[(0) + 3] = (uint8_t)(X[3]); };
    { (output)[(4)] = (uint8_t)((X[2]) >> 24); (output)[(4) + 1] = (uint8_t)((X[2]) >> 16); (output)[(4) + 2] = (uint8_t)((X[2]) >> 8); (output)[(4) + 3] = (uint8_t)(X[2]); };
    { (output)[(8)] = (uint8_t)((X[1]) >> 24); (output)[(8) + 1] = (uint8_t)((X[1]) >> 16); (output)[(8) + 2] = (uint8_t)((X[1]) >> 8); (output)[(8) + 3] = (uint8_t)(X[1]); };
    { (output)[(12)] = (uint8_t)((X[0]) >> 24); (output)[(12) + 1] = (uint8_t)((X[0]) >> 16); (output)[(12) + 2] = (uint8_t)((X[0]) >> 8); (output)[(12) + 3] = (uint8_t)(X[0]); };
}








 
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











 
static void Xor128(uint8_t *out, const uint8_t *in1, const uint8_t *in2)
{
    for (uint8_t i = 0; i < 16; i++)
    {
        out[i] = in1[i] ^ in2[i];
    }
}










 
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
            W[j] = ((uint32_t)(data + j * 4)[0] << 24 | (uint32_t)(data + j * 4)[1] << 16 | (uint32_t)(data + j * 4)[2] << 8 | (uint32_t)(data + j * 4)[3]);
        }

        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[0]) << (7)) | ((SS0 + E + K[0]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += ((A) ^ (B) ^ (C)) + SS2 + (W[0] ^ W[0 + 4]); SS1 += ((E) ^ (F) ^ (G)) + H + W[0]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[0 + 16] = ((W[0] ^ W[0 + 7] ^ (((W[0 + 13]) << (15)) | ((W[0 + 13]) >> (32 - (15))))) ^ ((((W[0] ^ W[0 + 7] ^ (((W[0 + 13]) << (15)) | ((W[0 + 13]) >> (32 - (15)))))) << (15)) | (((W[0] ^ W[0 + 7] ^ (((W[0 + 13]) << (15)) | ((W[0 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[0] ^ W[0 + 7] ^ (((W[0 + 13]) << (15)) | ((W[0 + 13]) >> (32 - (15)))))) << (23)) | (((W[0] ^ W[0 + 7] ^ (((W[0 + 13]) << (15)) | ((W[0 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[0 + 3]) << (7)) | ((W[0 + 3]) >> (32 - (7)))) ^ W[0 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[1]) << (7)) | ((SS0 + H + K[1]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += ((D) ^ (A) ^ (B)) + SS2 + (W[1] ^ W[1 + 4]); SS1 += ((H) ^ (E) ^ (F)) + G + W[1]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[1 + 16] = ((W[1] ^ W[1 + 7] ^ (((W[1 + 13]) << (15)) | ((W[1 + 13]) >> (32 - (15))))) ^ ((((W[1] ^ W[1 + 7] ^ (((W[1 + 13]) << (15)) | ((W[1 + 13]) >> (32 - (15)))))) << (15)) | (((W[1] ^ W[1 + 7] ^ (((W[1 + 13]) << (15)) | ((W[1 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[1] ^ W[1 + 7] ^ (((W[1 + 13]) << (15)) | ((W[1 + 13]) >> (32 - (15)))))) << (23)) | (((W[1] ^ W[1 + 7] ^ (((W[1 + 13]) << (15)) | ((W[1 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[1 + 3]) << (7)) | ((W[1 + 3]) >> (32 - (7)))) ^ W[1 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[2]) << (7)) | ((SS0 + G + K[2]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += ((C) ^ (D) ^ (A)) + SS2 + (W[2] ^ W[2 + 4]); SS1 += ((G) ^ (H) ^ (E)) + F + W[2]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[2 + 16] = ((W[2] ^ W[2 + 7] ^ (((W[2 + 13]) << (15)) | ((W[2 + 13]) >> (32 - (15))))) ^ ((((W[2] ^ W[2 + 7] ^ (((W[2 + 13]) << (15)) | ((W[2 + 13]) >> (32 - (15)))))) << (15)) | (((W[2] ^ W[2 + 7] ^ (((W[2 + 13]) << (15)) | ((W[2 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[2] ^ W[2 + 7] ^ (((W[2 + 13]) << (15)) | ((W[2 + 13]) >> (32 - (15)))))) << (23)) | (((W[2] ^ W[2 + 7] ^ (((W[2 + 13]) << (15)) | ((W[2 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[2 + 3]) << (7)) | ((W[2 + 3]) >> (32 - (7)))) ^ W[2 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[3]) << (7)) | ((SS0 + F + K[3]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += ((B) ^ (C) ^ (D)) + SS2 + (W[3] ^ W[3 + 4]); SS1 += ((F) ^ (G) ^ (H)) + E + W[3]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[3 + 16] = ((W[3] ^ W[3 + 7] ^ (((W[3 + 13]) << (15)) | ((W[3 + 13]) >> (32 - (15))))) ^ ((((W[3] ^ W[3 + 7] ^ (((W[3 + 13]) << (15)) | ((W[3 + 13]) >> (32 - (15)))))) << (15)) | (((W[3] ^ W[3 + 7] ^ (((W[3 + 13]) << (15)) | ((W[3 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[3] ^ W[3 + 7] ^ (((W[3 + 13]) << (15)) | ((W[3 + 13]) >> (32 - (15)))))) << (23)) | (((W[3] ^ W[3 + 7] ^ (((W[3 + 13]) << (15)) | ((W[3 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[3 + 3]) << (7)) | ((W[3 + 3]) >> (32 - (7)))) ^ W[3 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[4]) << (7)) | ((SS0 + E + K[4]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += ((A) ^ (B) ^ (C)) + SS2 + (W[4] ^ W[4 + 4]); SS1 += ((E) ^ (F) ^ (G)) + H + W[4]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[4 + 16] = ((W[4] ^ W[4 + 7] ^ (((W[4 + 13]) << (15)) | ((W[4 + 13]) >> (32 - (15))))) ^ ((((W[4] ^ W[4 + 7] ^ (((W[4 + 13]) << (15)) | ((W[4 + 13]) >> (32 - (15)))))) << (15)) | (((W[4] ^ W[4 + 7] ^ (((W[4 + 13]) << (15)) | ((W[4 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[4] ^ W[4 + 7] ^ (((W[4 + 13]) << (15)) | ((W[4 + 13]) >> (32 - (15)))))) << (23)) | (((W[4] ^ W[4 + 7] ^ (((W[4 + 13]) << (15)) | ((W[4 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[4 + 3]) << (7)) | ((W[4 + 3]) >> (32 - (7)))) ^ W[4 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[5]) << (7)) | ((SS0 + H + K[5]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += ((D) ^ (A) ^ (B)) + SS2 + (W[5] ^ W[5 + 4]); SS1 += ((H) ^ (E) ^ (F)) + G + W[5]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[5 + 16] = ((W[5] ^ W[5 + 7] ^ (((W[5 + 13]) << (15)) | ((W[5 + 13]) >> (32 - (15))))) ^ ((((W[5] ^ W[5 + 7] ^ (((W[5 + 13]) << (15)) | ((W[5 + 13]) >> (32 - (15)))))) << (15)) | (((W[5] ^ W[5 + 7] ^ (((W[5 + 13]) << (15)) | ((W[5 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[5] ^ W[5 + 7] ^ (((W[5 + 13]) << (15)) | ((W[5 + 13]) >> (32 - (15)))))) << (23)) | (((W[5] ^ W[5 + 7] ^ (((W[5 + 13]) << (15)) | ((W[5 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[5 + 3]) << (7)) | ((W[5 + 3]) >> (32 - (7)))) ^ W[5 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[6]) << (7)) | ((SS0 + G + K[6]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += ((C) ^ (D) ^ (A)) + SS2 + (W[6] ^ W[6 + 4]); SS1 += ((G) ^ (H) ^ (E)) + F + W[6]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[6 + 16] = ((W[6] ^ W[6 + 7] ^ (((W[6 + 13]) << (15)) | ((W[6 + 13]) >> (32 - (15))))) ^ ((((W[6] ^ W[6 + 7] ^ (((W[6 + 13]) << (15)) | ((W[6 + 13]) >> (32 - (15)))))) << (15)) | (((W[6] ^ W[6 + 7] ^ (((W[6 + 13]) << (15)) | ((W[6 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[6] ^ W[6 + 7] ^ (((W[6 + 13]) << (15)) | ((W[6 + 13]) >> (32 - (15)))))) << (23)) | (((W[6] ^ W[6 + 7] ^ (((W[6 + 13]) << (15)) | ((W[6 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[6 + 3]) << (7)) | ((W[6 + 3]) >> (32 - (7)))) ^ W[6 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[7]) << (7)) | ((SS0 + F + K[7]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += ((B) ^ (C) ^ (D)) + SS2 + (W[7] ^ W[7 + 4]); SS1 += ((F) ^ (G) ^ (H)) + E + W[7]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[7 + 16] = ((W[7] ^ W[7 + 7] ^ (((W[7 + 13]) << (15)) | ((W[7 + 13]) >> (32 - (15))))) ^ ((((W[7] ^ W[7 + 7] ^ (((W[7 + 13]) << (15)) | ((W[7 + 13]) >> (32 - (15)))))) << (15)) | (((W[7] ^ W[7 + 7] ^ (((W[7 + 13]) << (15)) | ((W[7 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[7] ^ W[7 + 7] ^ (((W[7 + 13]) << (15)) | ((W[7 + 13]) >> (32 - (15)))))) << (23)) | (((W[7] ^ W[7 + 7] ^ (((W[7 + 13]) << (15)) | ((W[7 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[7 + 3]) << (7)) | ((W[7 + 3]) >> (32 - (7)))) ^ W[7 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[8]) << (7)) | ((SS0 + E + K[8]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += ((A) ^ (B) ^ (C)) + SS2 + (W[8] ^ W[8 + 4]); SS1 += ((E) ^ (F) ^ (G)) + H + W[8]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[8 + 16] = ((W[8] ^ W[8 + 7] ^ (((W[8 + 13]) << (15)) | ((W[8 + 13]) >> (32 - (15))))) ^ ((((W[8] ^ W[8 + 7] ^ (((W[8 + 13]) << (15)) | ((W[8 + 13]) >> (32 - (15)))))) << (15)) | (((W[8] ^ W[8 + 7] ^ (((W[8 + 13]) << (15)) | ((W[8 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[8] ^ W[8 + 7] ^ (((W[8 + 13]) << (15)) | ((W[8 + 13]) >> (32 - (15)))))) << (23)) | (((W[8] ^ W[8 + 7] ^ (((W[8 + 13]) << (15)) | ((W[8 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[8 + 3]) << (7)) | ((W[8 + 3]) >> (32 - (7)))) ^ W[8 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[9]) << (7)) | ((SS0 + H + K[9]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += ((D) ^ (A) ^ (B)) + SS2 + (W[9] ^ W[9 + 4]); SS1 += ((H) ^ (E) ^ (F)) + G + W[9]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[9 + 16] = ((W[9] ^ W[9 + 7] ^ (((W[9 + 13]) << (15)) | ((W[9 + 13]) >> (32 - (15))))) ^ ((((W[9] ^ W[9 + 7] ^ (((W[9 + 13]) << (15)) | ((W[9 + 13]) >> (32 - (15)))))) << (15)) | (((W[9] ^ W[9 + 7] ^ (((W[9 + 13]) << (15)) | ((W[9 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[9] ^ W[9 + 7] ^ (((W[9 + 13]) << (15)) | ((W[9 + 13]) >> (32 - (15)))))) << (23)) | (((W[9] ^ W[9 + 7] ^ (((W[9 + 13]) << (15)) | ((W[9 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[9 + 3]) << (7)) | ((W[9 + 3]) >> (32 - (7)))) ^ W[9 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[10]) << (7)) | ((SS0 + G + K[10]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += ((C) ^ (D) ^ (A)) + SS2 + (W[10] ^ W[10 + 4]); SS1 += ((G) ^ (H) ^ (E)) + F + W[10]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[10 + 16] = ((W[10] ^ W[10 + 7] ^ (((W[10 + 13]) << (15)) | ((W[10 + 13]) >> (32 - (15))))) ^ ((((W[10] ^ W[10 + 7] ^ (((W[10 + 13]) << (15)) | ((W[10 + 13]) >> (32 - (15)))))) << (15)) | (((W[10] ^ W[10 + 7] ^ (((W[10 + 13]) << (15)) | ((W[10 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[10] ^ W[10 + 7] ^ (((W[10 + 13]) << (15)) | ((W[10 + 13]) >> (32 - (15)))))) << (23)) | (((W[10] ^ W[10 + 7] ^ (((W[10 + 13]) << (15)) | ((W[10 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[10 + 3]) << (7)) | ((W[10 + 3]) >> (32 - (7)))) ^ W[10 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[11]) << (7)) | ((SS0 + F + K[11]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += ((B) ^ (C) ^ (D)) + SS2 + (W[11] ^ W[11 + 4]); SS1 += ((F) ^ (G) ^ (H)) + E + W[11]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[11 + 16] = ((W[11] ^ W[11 + 7] ^ (((W[11 + 13]) << (15)) | ((W[11 + 13]) >> (32 - (15))))) ^ ((((W[11] ^ W[11 + 7] ^ (((W[11 + 13]) << (15)) | ((W[11 + 13]) >> (32 - (15)))))) << (15)) | (((W[11] ^ W[11 + 7] ^ (((W[11 + 13]) << (15)) | ((W[11 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[11] ^ W[11 + 7] ^ (((W[11 + 13]) << (15)) | ((W[11 + 13]) >> (32 - (15)))))) << (23)) | (((W[11] ^ W[11 + 7] ^ (((W[11 + 13]) << (15)) | ((W[11 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[11 + 3]) << (7)) | ((W[11 + 3]) >> (32 - (7)))) ^ W[11 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[12]) << (7)) | ((SS0 + E + K[12]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += ((A) ^ (B) ^ (C)) + SS2 + (W[12] ^ W[12 + 4]); SS1 += ((E) ^ (F) ^ (G)) + H + W[12]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[12 + 16] = ((W[12] ^ W[12 + 7] ^ (((W[12 + 13]) << (15)) | ((W[12 + 13]) >> (32 - (15))))) ^ ((((W[12] ^ W[12 + 7] ^ (((W[12 + 13]) << (15)) | ((W[12 + 13]) >> (32 - (15)))))) << (15)) | (((W[12] ^ W[12 + 7] ^ (((W[12 + 13]) << (15)) | ((W[12 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[12] ^ W[12 + 7] ^ (((W[12 + 13]) << (15)) | ((W[12 + 13]) >> (32 - (15)))))) << (23)) | (((W[12] ^ W[12 + 7] ^ (((W[12 + 13]) << (15)) | ((W[12 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[12 + 3]) << (7)) | ((W[12 + 3]) >> (32 - (7)))) ^ W[12 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[13]) << (7)) | ((SS0 + H + K[13]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += ((D) ^ (A) ^ (B)) + SS2 + (W[13] ^ W[13 + 4]); SS1 += ((H) ^ (E) ^ (F)) + G + W[13]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[13 + 16] = ((W[13] ^ W[13 + 7] ^ (((W[13 + 13]) << (15)) | ((W[13 + 13]) >> (32 - (15))))) ^ ((((W[13] ^ W[13 + 7] ^ (((W[13 + 13]) << (15)) | ((W[13 + 13]) >> (32 - (15)))))) << (15)) | (((W[13] ^ W[13 + 7] ^ (((W[13 + 13]) << (15)) | ((W[13 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[13] ^ W[13 + 7] ^ (((W[13 + 13]) << (15)) | ((W[13 + 13]) >> (32 - (15)))))) << (23)) | (((W[13] ^ W[13 + 7] ^ (((W[13 + 13]) << (15)) | ((W[13 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[13 + 3]) << (7)) | ((W[13 + 3]) >> (32 - (7)))) ^ W[13 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[14]) << (7)) | ((SS0 + G + K[14]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += ((C) ^ (D) ^ (A)) + SS2 + (W[14] ^ W[14 + 4]); SS1 += ((G) ^ (H) ^ (E)) + F + W[14]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[14 + 16] = ((W[14] ^ W[14 + 7] ^ (((W[14 + 13]) << (15)) | ((W[14 + 13]) >> (32 - (15))))) ^ ((((W[14] ^ W[14 + 7] ^ (((W[14 + 13]) << (15)) | ((W[14 + 13]) >> (32 - (15)))))) << (15)) | (((W[14] ^ W[14 + 7] ^ (((W[14 + 13]) << (15)) | ((W[14 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[14] ^ W[14 + 7] ^ (((W[14 + 13]) << (15)) | ((W[14 + 13]) >> (32 - (15)))))) << (23)) | (((W[14] ^ W[14 + 7] ^ (((W[14 + 13]) << (15)) | ((W[14 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[14 + 3]) << (7)) | ((W[14 + 3]) >> (32 - (7)))) ^ W[14 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[15]) << (7)) | ((SS0 + F + K[15]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += ((B) ^ (C) ^ (D)) + SS2 + (W[15] ^ W[15 + 4]); SS1 += ((F) ^ (G) ^ (H)) + E + W[15]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[15 + 16] = ((W[15] ^ W[15 + 7] ^ (((W[15 + 13]) << (15)) | ((W[15 + 13]) >> (32 - (15))))) ^ ((((W[15] ^ W[15 + 7] ^ (((W[15 + 13]) << (15)) | ((W[15 + 13]) >> (32 - (15)))))) << (15)) | (((W[15] ^ W[15 + 7] ^ (((W[15 + 13]) << (15)) | ((W[15 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[15] ^ W[15 + 7] ^ (((W[15 + 13]) << (15)) | ((W[15 + 13]) >> (32 - (15)))))) << (23)) | (((W[15] ^ W[15 + 7] ^ (((W[15 + 13]) << (15)) | ((W[15 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[15 + 3]) << (7)) | ((W[15 + 3]) >> (32 - (7)))) ^ W[15 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[16]) << (7)) | ((SS0 + E + K[16]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[16] ^ W[16 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[16]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[16 + 16] = ((W[16] ^ W[16 + 7] ^ (((W[16 + 13]) << (15)) | ((W[16 + 13]) >> (32 - (15))))) ^ ((((W[16] ^ W[16 + 7] ^ (((W[16 + 13]) << (15)) | ((W[16 + 13]) >> (32 - (15)))))) << (15)) | (((W[16] ^ W[16 + 7] ^ (((W[16 + 13]) << (15)) | ((W[16 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[16] ^ W[16 + 7] ^ (((W[16 + 13]) << (15)) | ((W[16 + 13]) >> (32 - (15)))))) << (23)) | (((W[16] ^ W[16 + 7] ^ (((W[16 + 13]) << (15)) | ((W[16 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[16 + 3]) << (7)) | ((W[16 + 3]) >> (32 - (7)))) ^ W[16 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[17]) << (7)) | ((SS0 + H + K[17]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[17] ^ W[17 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[17]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[17 + 16] = ((W[17] ^ W[17 + 7] ^ (((W[17 + 13]) << (15)) | ((W[17 + 13]) >> (32 - (15))))) ^ ((((W[17] ^ W[17 + 7] ^ (((W[17 + 13]) << (15)) | ((W[17 + 13]) >> (32 - (15)))))) << (15)) | (((W[17] ^ W[17 + 7] ^ (((W[17 + 13]) << (15)) | ((W[17 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[17] ^ W[17 + 7] ^ (((W[17 + 13]) << (15)) | ((W[17 + 13]) >> (32 - (15)))))) << (23)) | (((W[17] ^ W[17 + 7] ^ (((W[17 + 13]) << (15)) | ((W[17 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[17 + 3]) << (7)) | ((W[17 + 3]) >> (32 - (7)))) ^ W[17 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[18]) << (7)) | ((SS0 + G + K[18]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[18] ^ W[18 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[18]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[18 + 16] = ((W[18] ^ W[18 + 7] ^ (((W[18 + 13]) << (15)) | ((W[18 + 13]) >> (32 - (15))))) ^ ((((W[18] ^ W[18 + 7] ^ (((W[18 + 13]) << (15)) | ((W[18 + 13]) >> (32 - (15)))))) << (15)) | (((W[18] ^ W[18 + 7] ^ (((W[18 + 13]) << (15)) | ((W[18 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[18] ^ W[18 + 7] ^ (((W[18 + 13]) << (15)) | ((W[18 + 13]) >> (32 - (15)))))) << (23)) | (((W[18] ^ W[18 + 7] ^ (((W[18 + 13]) << (15)) | ((W[18 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[18 + 3]) << (7)) | ((W[18 + 3]) >> (32 - (7)))) ^ W[18 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[19]) << (7)) | ((SS0 + F + K[19]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[19] ^ W[19 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[19]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[19 + 16] = ((W[19] ^ W[19 + 7] ^ (((W[19 + 13]) << (15)) | ((W[19 + 13]) >> (32 - (15))))) ^ ((((W[19] ^ W[19 + 7] ^ (((W[19 + 13]) << (15)) | ((W[19 + 13]) >> (32 - (15)))))) << (15)) | (((W[19] ^ W[19 + 7] ^ (((W[19 + 13]) << (15)) | ((W[19 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[19] ^ W[19 + 7] ^ (((W[19 + 13]) << (15)) | ((W[19 + 13]) >> (32 - (15)))))) << (23)) | (((W[19] ^ W[19 + 7] ^ (((W[19 + 13]) << (15)) | ((W[19 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[19 + 3]) << (7)) | ((W[19 + 3]) >> (32 - (7)))) ^ W[19 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[20]) << (7)) | ((SS0 + E + K[20]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[20] ^ W[20 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[20]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[20 + 16] = ((W[20] ^ W[20 + 7] ^ (((W[20 + 13]) << (15)) | ((W[20 + 13]) >> (32 - (15))))) ^ ((((W[20] ^ W[20 + 7] ^ (((W[20 + 13]) << (15)) | ((W[20 + 13]) >> (32 - (15)))))) << (15)) | (((W[20] ^ W[20 + 7] ^ (((W[20 + 13]) << (15)) | ((W[20 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[20] ^ W[20 + 7] ^ (((W[20 + 13]) << (15)) | ((W[20 + 13]) >> (32 - (15)))))) << (23)) | (((W[20] ^ W[20 + 7] ^ (((W[20 + 13]) << (15)) | ((W[20 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[20 + 3]) << (7)) | ((W[20 + 3]) >> (32 - (7)))) ^ W[20 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[21]) << (7)) | ((SS0 + H + K[21]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[21] ^ W[21 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[21]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[21 + 16] = ((W[21] ^ W[21 + 7] ^ (((W[21 + 13]) << (15)) | ((W[21 + 13]) >> (32 - (15))))) ^ ((((W[21] ^ W[21 + 7] ^ (((W[21 + 13]) << (15)) | ((W[21 + 13]) >> (32 - (15)))))) << (15)) | (((W[21] ^ W[21 + 7] ^ (((W[21 + 13]) << (15)) | ((W[21 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[21] ^ W[21 + 7] ^ (((W[21 + 13]) << (15)) | ((W[21 + 13]) >> (32 - (15)))))) << (23)) | (((W[21] ^ W[21 + 7] ^ (((W[21 + 13]) << (15)) | ((W[21 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[21 + 3]) << (7)) | ((W[21 + 3]) >> (32 - (7)))) ^ W[21 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[22]) << (7)) | ((SS0 + G + K[22]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[22] ^ W[22 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[22]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[22 + 16] = ((W[22] ^ W[22 + 7] ^ (((W[22 + 13]) << (15)) | ((W[22 + 13]) >> (32 - (15))))) ^ ((((W[22] ^ W[22 + 7] ^ (((W[22 + 13]) << (15)) | ((W[22 + 13]) >> (32 - (15)))))) << (15)) | (((W[22] ^ W[22 + 7] ^ (((W[22 + 13]) << (15)) | ((W[22 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[22] ^ W[22 + 7] ^ (((W[22 + 13]) << (15)) | ((W[22 + 13]) >> (32 - (15)))))) << (23)) | (((W[22] ^ W[22 + 7] ^ (((W[22 + 13]) << (15)) | ((W[22 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[22 + 3]) << (7)) | ((W[22 + 3]) >> (32 - (7)))) ^ W[22 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[23]) << (7)) | ((SS0 + F + K[23]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[23] ^ W[23 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[23]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[23 + 16] = ((W[23] ^ W[23 + 7] ^ (((W[23 + 13]) << (15)) | ((W[23 + 13]) >> (32 - (15))))) ^ ((((W[23] ^ W[23 + 7] ^ (((W[23 + 13]) << (15)) | ((W[23 + 13]) >> (32 - (15)))))) << (15)) | (((W[23] ^ W[23 + 7] ^ (((W[23 + 13]) << (15)) | ((W[23 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[23] ^ W[23 + 7] ^ (((W[23 + 13]) << (15)) | ((W[23 + 13]) >> (32 - (15)))))) << (23)) | (((W[23] ^ W[23 + 7] ^ (((W[23 + 13]) << (15)) | ((W[23 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[23 + 3]) << (7)) | ((W[23 + 3]) >> (32 - (7)))) ^ W[23 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[24]) << (7)) | ((SS0 + E + K[24]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[24] ^ W[24 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[24]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[24 + 16] = ((W[24] ^ W[24 + 7] ^ (((W[24 + 13]) << (15)) | ((W[24 + 13]) >> (32 - (15))))) ^ ((((W[24] ^ W[24 + 7] ^ (((W[24 + 13]) << (15)) | ((W[24 + 13]) >> (32 - (15)))))) << (15)) | (((W[24] ^ W[24 + 7] ^ (((W[24 + 13]) << (15)) | ((W[24 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[24] ^ W[24 + 7] ^ (((W[24 + 13]) << (15)) | ((W[24 + 13]) >> (32 - (15)))))) << (23)) | (((W[24] ^ W[24 + 7] ^ (((W[24 + 13]) << (15)) | ((W[24 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[24 + 3]) << (7)) | ((W[24 + 3]) >> (32 - (7)))) ^ W[24 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[25]) << (7)) | ((SS0 + H + K[25]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[25] ^ W[25 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[25]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[25 + 16] = ((W[25] ^ W[25 + 7] ^ (((W[25 + 13]) << (15)) | ((W[25 + 13]) >> (32 - (15))))) ^ ((((W[25] ^ W[25 + 7] ^ (((W[25 + 13]) << (15)) | ((W[25 + 13]) >> (32 - (15)))))) << (15)) | (((W[25] ^ W[25 + 7] ^ (((W[25 + 13]) << (15)) | ((W[25 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[25] ^ W[25 + 7] ^ (((W[25 + 13]) << (15)) | ((W[25 + 13]) >> (32 - (15)))))) << (23)) | (((W[25] ^ W[25 + 7] ^ (((W[25 + 13]) << (15)) | ((W[25 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[25 + 3]) << (7)) | ((W[25 + 3]) >> (32 - (7)))) ^ W[25 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[26]) << (7)) | ((SS0 + G + K[26]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[26] ^ W[26 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[26]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[26 + 16] = ((W[26] ^ W[26 + 7] ^ (((W[26 + 13]) << (15)) | ((W[26 + 13]) >> (32 - (15))))) ^ ((((W[26] ^ W[26 + 7] ^ (((W[26 + 13]) << (15)) | ((W[26 + 13]) >> (32 - (15)))))) << (15)) | (((W[26] ^ W[26 + 7] ^ (((W[26 + 13]) << (15)) | ((W[26 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[26] ^ W[26 + 7] ^ (((W[26 + 13]) << (15)) | ((W[26 + 13]) >> (32 - (15)))))) << (23)) | (((W[26] ^ W[26 + 7] ^ (((W[26 + 13]) << (15)) | ((W[26 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[26 + 3]) << (7)) | ((W[26 + 3]) >> (32 - (7)))) ^ W[26 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[27]) << (7)) | ((SS0 + F + K[27]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[27] ^ W[27 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[27]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[27 + 16] = ((W[27] ^ W[27 + 7] ^ (((W[27 + 13]) << (15)) | ((W[27 + 13]) >> (32 - (15))))) ^ ((((W[27] ^ W[27 + 7] ^ (((W[27 + 13]) << (15)) | ((W[27 + 13]) >> (32 - (15)))))) << (15)) | (((W[27] ^ W[27 + 7] ^ (((W[27 + 13]) << (15)) | ((W[27 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[27] ^ W[27 + 7] ^ (((W[27 + 13]) << (15)) | ((W[27 + 13]) >> (32 - (15)))))) << (23)) | (((W[27] ^ W[27 + 7] ^ (((W[27 + 13]) << (15)) | ((W[27 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[27 + 3]) << (7)) | ((W[27 + 3]) >> (32 - (7)))) ^ W[27 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[28]) << (7)) | ((SS0 + E + K[28]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[28] ^ W[28 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[28]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[28 + 16] = ((W[28] ^ W[28 + 7] ^ (((W[28 + 13]) << (15)) | ((W[28 + 13]) >> (32 - (15))))) ^ ((((W[28] ^ W[28 + 7] ^ (((W[28 + 13]) << (15)) | ((W[28 + 13]) >> (32 - (15)))))) << (15)) | (((W[28] ^ W[28 + 7] ^ (((W[28 + 13]) << (15)) | ((W[28 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[28] ^ W[28 + 7] ^ (((W[28 + 13]) << (15)) | ((W[28 + 13]) >> (32 - (15)))))) << (23)) | (((W[28] ^ W[28 + 7] ^ (((W[28 + 13]) << (15)) | ((W[28 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[28 + 3]) << (7)) | ((W[28 + 3]) >> (32 - (7)))) ^ W[28 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[29]) << (7)) | ((SS0 + H + K[29]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[29] ^ W[29 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[29]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[29 + 16] = ((W[29] ^ W[29 + 7] ^ (((W[29 + 13]) << (15)) | ((W[29 + 13]) >> (32 - (15))))) ^ ((((W[29] ^ W[29 + 7] ^ (((W[29 + 13]) << (15)) | ((W[29 + 13]) >> (32 - (15)))))) << (15)) | (((W[29] ^ W[29 + 7] ^ (((W[29 + 13]) << (15)) | ((W[29 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[29] ^ W[29 + 7] ^ (((W[29 + 13]) << (15)) | ((W[29 + 13]) >> (32 - (15)))))) << (23)) | (((W[29] ^ W[29 + 7] ^ (((W[29 + 13]) << (15)) | ((W[29 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[29 + 3]) << (7)) | ((W[29 + 3]) >> (32 - (7)))) ^ W[29 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[30]) << (7)) | ((SS0 + G + K[30]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[30] ^ W[30 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[30]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[30 + 16] = ((W[30] ^ W[30 + 7] ^ (((W[30 + 13]) << (15)) | ((W[30 + 13]) >> (32 - (15))))) ^ ((((W[30] ^ W[30 + 7] ^ (((W[30 + 13]) << (15)) | ((W[30 + 13]) >> (32 - (15)))))) << (15)) | (((W[30] ^ W[30 + 7] ^ (((W[30 + 13]) << (15)) | ((W[30 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[30] ^ W[30 + 7] ^ (((W[30 + 13]) << (15)) | ((W[30 + 13]) >> (32 - (15)))))) << (23)) | (((W[30] ^ W[30 + 7] ^ (((W[30 + 13]) << (15)) | ((W[30 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[30 + 3]) << (7)) | ((W[30 + 3]) >> (32 - (7)))) ^ W[30 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[31]) << (7)) | ((SS0 + F + K[31]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[31] ^ W[31 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[31]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[31 + 16] = ((W[31] ^ W[31 + 7] ^ (((W[31 + 13]) << (15)) | ((W[31 + 13]) >> (32 - (15))))) ^ ((((W[31] ^ W[31 + 7] ^ (((W[31 + 13]) << (15)) | ((W[31 + 13]) >> (32 - (15)))))) << (15)) | (((W[31] ^ W[31 + 7] ^ (((W[31 + 13]) << (15)) | ((W[31 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[31] ^ W[31 + 7] ^ (((W[31 + 13]) << (15)) | ((W[31 + 13]) >> (32 - (15)))))) << (23)) | (((W[31] ^ W[31 + 7] ^ (((W[31 + 13]) << (15)) | ((W[31 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[31 + 3]) << (7)) | ((W[31 + 3]) >> (32 - (7)))) ^ W[31 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[32]) << (7)) | ((SS0 + E + K[32]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[32] ^ W[32 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[32]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[32 + 16] = ((W[32] ^ W[32 + 7] ^ (((W[32 + 13]) << (15)) | ((W[32 + 13]) >> (32 - (15))))) ^ ((((W[32] ^ W[32 + 7] ^ (((W[32 + 13]) << (15)) | ((W[32 + 13]) >> (32 - (15)))))) << (15)) | (((W[32] ^ W[32 + 7] ^ (((W[32 + 13]) << (15)) | ((W[32 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[32] ^ W[32 + 7] ^ (((W[32 + 13]) << (15)) | ((W[32 + 13]) >> (32 - (15)))))) << (23)) | (((W[32] ^ W[32 + 7] ^ (((W[32 + 13]) << (15)) | ((W[32 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[32 + 3]) << (7)) | ((W[32 + 3]) >> (32 - (7)))) ^ W[32 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[33]) << (7)) | ((SS0 + H + K[33]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[33] ^ W[33 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[33]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[33 + 16] = ((W[33] ^ W[33 + 7] ^ (((W[33 + 13]) << (15)) | ((W[33 + 13]) >> (32 - (15))))) ^ ((((W[33] ^ W[33 + 7] ^ (((W[33 + 13]) << (15)) | ((W[33 + 13]) >> (32 - (15)))))) << (15)) | (((W[33] ^ W[33 + 7] ^ (((W[33 + 13]) << (15)) | ((W[33 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[33] ^ W[33 + 7] ^ (((W[33 + 13]) << (15)) | ((W[33 + 13]) >> (32 - (15)))))) << (23)) | (((W[33] ^ W[33 + 7] ^ (((W[33 + 13]) << (15)) | ((W[33 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[33 + 3]) << (7)) | ((W[33 + 3]) >> (32 - (7)))) ^ W[33 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[34]) << (7)) | ((SS0 + G + K[34]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[34] ^ W[34 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[34]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[34 + 16] = ((W[34] ^ W[34 + 7] ^ (((W[34 + 13]) << (15)) | ((W[34 + 13]) >> (32 - (15))))) ^ ((((W[34] ^ W[34 + 7] ^ (((W[34 + 13]) << (15)) | ((W[34 + 13]) >> (32 - (15)))))) << (15)) | (((W[34] ^ W[34 + 7] ^ (((W[34 + 13]) << (15)) | ((W[34 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[34] ^ W[34 + 7] ^ (((W[34 + 13]) << (15)) | ((W[34 + 13]) >> (32 - (15)))))) << (23)) | (((W[34] ^ W[34 + 7] ^ (((W[34 + 13]) << (15)) | ((W[34 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[34 + 3]) << (7)) | ((W[34 + 3]) >> (32 - (7)))) ^ W[34 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[35]) << (7)) | ((SS0 + F + K[35]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[35] ^ W[35 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[35]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[35 + 16] = ((W[35] ^ W[35 + 7] ^ (((W[35 + 13]) << (15)) | ((W[35 + 13]) >> (32 - (15))))) ^ ((((W[35] ^ W[35 + 7] ^ (((W[35 + 13]) << (15)) | ((W[35 + 13]) >> (32 - (15)))))) << (15)) | (((W[35] ^ W[35 + 7] ^ (((W[35 + 13]) << (15)) | ((W[35 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[35] ^ W[35 + 7] ^ (((W[35 + 13]) << (15)) | ((W[35 + 13]) >> (32 - (15)))))) << (23)) | (((W[35] ^ W[35 + 7] ^ (((W[35 + 13]) << (15)) | ((W[35 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[35 + 3]) << (7)) | ((W[35 + 3]) >> (32 - (7)))) ^ W[35 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[36]) << (7)) | ((SS0 + E + K[36]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[36] ^ W[36 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[36]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[36 + 16] = ((W[36] ^ W[36 + 7] ^ (((W[36 + 13]) << (15)) | ((W[36 + 13]) >> (32 - (15))))) ^ ((((W[36] ^ W[36 + 7] ^ (((W[36 + 13]) << (15)) | ((W[36 + 13]) >> (32 - (15)))))) << (15)) | (((W[36] ^ W[36 + 7] ^ (((W[36 + 13]) << (15)) | ((W[36 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[36] ^ W[36 + 7] ^ (((W[36 + 13]) << (15)) | ((W[36 + 13]) >> (32 - (15)))))) << (23)) | (((W[36] ^ W[36 + 7] ^ (((W[36 + 13]) << (15)) | ((W[36 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[36 + 3]) << (7)) | ((W[36 + 3]) >> (32 - (7)))) ^ W[36 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[37]) << (7)) | ((SS0 + H + K[37]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[37] ^ W[37 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[37]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[37 + 16] = ((W[37] ^ W[37 + 7] ^ (((W[37 + 13]) << (15)) | ((W[37 + 13]) >> (32 - (15))))) ^ ((((W[37] ^ W[37 + 7] ^ (((W[37 + 13]) << (15)) | ((W[37 + 13]) >> (32 - (15)))))) << (15)) | (((W[37] ^ W[37 + 7] ^ (((W[37 + 13]) << (15)) | ((W[37 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[37] ^ W[37 + 7] ^ (((W[37 + 13]) << (15)) | ((W[37 + 13]) >> (32 - (15)))))) << (23)) | (((W[37] ^ W[37 + 7] ^ (((W[37 + 13]) << (15)) | ((W[37 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[37 + 3]) << (7)) | ((W[37 + 3]) >> (32 - (7)))) ^ W[37 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[38]) << (7)) | ((SS0 + G + K[38]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[38] ^ W[38 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[38]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[38 + 16] = ((W[38] ^ W[38 + 7] ^ (((W[38 + 13]) << (15)) | ((W[38 + 13]) >> (32 - (15))))) ^ ((((W[38] ^ W[38 + 7] ^ (((W[38 + 13]) << (15)) | ((W[38 + 13]) >> (32 - (15)))))) << (15)) | (((W[38] ^ W[38 + 7] ^ (((W[38 + 13]) << (15)) | ((W[38 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[38] ^ W[38 + 7] ^ (((W[38 + 13]) << (15)) | ((W[38 + 13]) >> (32 - (15)))))) << (23)) | (((W[38] ^ W[38 + 7] ^ (((W[38 + 13]) << (15)) | ((W[38 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[38 + 3]) << (7)) | ((W[38 + 3]) >> (32 - (7)))) ^ W[38 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[39]) << (7)) | ((SS0 + F + K[39]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[39] ^ W[39 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[39]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[39 + 16] = ((W[39] ^ W[39 + 7] ^ (((W[39 + 13]) << (15)) | ((W[39 + 13]) >> (32 - (15))))) ^ ((((W[39] ^ W[39 + 7] ^ (((W[39 + 13]) << (15)) | ((W[39 + 13]) >> (32 - (15)))))) << (15)) | (((W[39] ^ W[39 + 7] ^ (((W[39 + 13]) << (15)) | ((W[39 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[39] ^ W[39 + 7] ^ (((W[39 + 13]) << (15)) | ((W[39 + 13]) >> (32 - (15)))))) << (23)) | (((W[39] ^ W[39 + 7] ^ (((W[39 + 13]) << (15)) | ((W[39 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[39 + 3]) << (7)) | ((W[39 + 3]) >> (32 - (7)))) ^ W[39 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[40]) << (7)) | ((SS0 + E + K[40]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[40] ^ W[40 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[40]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[40 + 16] = ((W[40] ^ W[40 + 7] ^ (((W[40 + 13]) << (15)) | ((W[40 + 13]) >> (32 - (15))))) ^ ((((W[40] ^ W[40 + 7] ^ (((W[40 + 13]) << (15)) | ((W[40 + 13]) >> (32 - (15)))))) << (15)) | (((W[40] ^ W[40 + 7] ^ (((W[40 + 13]) << (15)) | ((W[40 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[40] ^ W[40 + 7] ^ (((W[40 + 13]) << (15)) | ((W[40 + 13]) >> (32 - (15)))))) << (23)) | (((W[40] ^ W[40 + 7] ^ (((W[40 + 13]) << (15)) | ((W[40 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[40 + 3]) << (7)) | ((W[40 + 3]) >> (32 - (7)))) ^ W[40 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[41]) << (7)) | ((SS0 + H + K[41]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[41] ^ W[41 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[41]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[41 + 16] = ((W[41] ^ W[41 + 7] ^ (((W[41 + 13]) << (15)) | ((W[41 + 13]) >> (32 - (15))))) ^ ((((W[41] ^ W[41 + 7] ^ (((W[41 + 13]) << (15)) | ((W[41 + 13]) >> (32 - (15)))))) << (15)) | (((W[41] ^ W[41 + 7] ^ (((W[41 + 13]) << (15)) | ((W[41 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[41] ^ W[41 + 7] ^ (((W[41 + 13]) << (15)) | ((W[41 + 13]) >> (32 - (15)))))) << (23)) | (((W[41] ^ W[41 + 7] ^ (((W[41 + 13]) << (15)) | ((W[41 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[41 + 3]) << (7)) | ((W[41 + 3]) >> (32 - (7)))) ^ W[41 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[42]) << (7)) | ((SS0 + G + K[42]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[42] ^ W[42 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[42]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[42 + 16] = ((W[42] ^ W[42 + 7] ^ (((W[42 + 13]) << (15)) | ((W[42 + 13]) >> (32 - (15))))) ^ ((((W[42] ^ W[42 + 7] ^ (((W[42 + 13]) << (15)) | ((W[42 + 13]) >> (32 - (15)))))) << (15)) | (((W[42] ^ W[42 + 7] ^ (((W[42 + 13]) << (15)) | ((W[42 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[42] ^ W[42 + 7] ^ (((W[42 + 13]) << (15)) | ((W[42 + 13]) >> (32 - (15)))))) << (23)) | (((W[42] ^ W[42 + 7] ^ (((W[42 + 13]) << (15)) | ((W[42 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[42 + 3]) << (7)) | ((W[42 + 3]) >> (32 - (7)))) ^ W[42 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[43]) << (7)) | ((SS0 + F + K[43]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[43] ^ W[43 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[43]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[43 + 16] = ((W[43] ^ W[43 + 7] ^ (((W[43 + 13]) << (15)) | ((W[43 + 13]) >> (32 - (15))))) ^ ((((W[43] ^ W[43 + 7] ^ (((W[43 + 13]) << (15)) | ((W[43 + 13]) >> (32 - (15)))))) << (15)) | (((W[43] ^ W[43 + 7] ^ (((W[43 + 13]) << (15)) | ((W[43 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[43] ^ W[43 + 7] ^ (((W[43 + 13]) << (15)) | ((W[43 + 13]) >> (32 - (15)))))) << (23)) | (((W[43] ^ W[43 + 7] ^ (((W[43 + 13]) << (15)) | ((W[43 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[43 + 3]) << (7)) | ((W[43 + 3]) >> (32 - (7)))) ^ W[43 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[44]) << (7)) | ((SS0 + E + K[44]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[44] ^ W[44 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[44]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[44 + 16] = ((W[44] ^ W[44 + 7] ^ (((W[44 + 13]) << (15)) | ((W[44 + 13]) >> (32 - (15))))) ^ ((((W[44] ^ W[44 + 7] ^ (((W[44 + 13]) << (15)) | ((W[44 + 13]) >> (32 - (15)))))) << (15)) | (((W[44] ^ W[44 + 7] ^ (((W[44 + 13]) << (15)) | ((W[44 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[44] ^ W[44 + 7] ^ (((W[44 + 13]) << (15)) | ((W[44 + 13]) >> (32 - (15)))))) << (23)) | (((W[44] ^ W[44 + 7] ^ (((W[44 + 13]) << (15)) | ((W[44 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[44 + 3]) << (7)) | ((W[44 + 3]) >> (32 - (7)))) ^ W[44 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[45]) << (7)) | ((SS0 + H + K[45]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[45] ^ W[45 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[45]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[45 + 16] = ((W[45] ^ W[45 + 7] ^ (((W[45 + 13]) << (15)) | ((W[45 + 13]) >> (32 - (15))))) ^ ((((W[45] ^ W[45 + 7] ^ (((W[45 + 13]) << (15)) | ((W[45 + 13]) >> (32 - (15)))))) << (15)) | (((W[45] ^ W[45 + 7] ^ (((W[45 + 13]) << (15)) | ((W[45 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[45] ^ W[45 + 7] ^ (((W[45 + 13]) << (15)) | ((W[45 + 13]) >> (32 - (15)))))) << (23)) | (((W[45] ^ W[45 + 7] ^ (((W[45 + 13]) << (15)) | ((W[45 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[45 + 3]) << (7)) | ((W[45 + 3]) >> (32 - (7)))) ^ W[45 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[46]) << (7)) | ((SS0 + G + K[46]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[46] ^ W[46 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[46]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[46 + 16] = ((W[46] ^ W[46 + 7] ^ (((W[46 + 13]) << (15)) | ((W[46 + 13]) >> (32 - (15))))) ^ ((((W[46] ^ W[46 + 7] ^ (((W[46 + 13]) << (15)) | ((W[46 + 13]) >> (32 - (15)))))) << (15)) | (((W[46] ^ W[46 + 7] ^ (((W[46 + 13]) << (15)) | ((W[46 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[46] ^ W[46 + 7] ^ (((W[46 + 13]) << (15)) | ((W[46 + 13]) >> (32 - (15)))))) << (23)) | (((W[46] ^ W[46 + 7] ^ (((W[46 + 13]) << (15)) | ((W[46 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[46 + 3]) << (7)) | ((W[46 + 3]) >> (32 - (7)))) ^ W[46 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[47]) << (7)) | ((SS0 + F + K[47]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[47] ^ W[47 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[47]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[47 + 16] = ((W[47] ^ W[47 + 7] ^ (((W[47 + 13]) << (15)) | ((W[47 + 13]) >> (32 - (15))))) ^ ((((W[47] ^ W[47 + 7] ^ (((W[47 + 13]) << (15)) | ((W[47 + 13]) >> (32 - (15)))))) << (15)) | (((W[47] ^ W[47 + 7] ^ (((W[47 + 13]) << (15)) | ((W[47 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[47] ^ W[47 + 7] ^ (((W[47 + 13]) << (15)) | ((W[47 + 13]) >> (32 - (15)))))) << (23)) | (((W[47] ^ W[47 + 7] ^ (((W[47 + 13]) << (15)) | ((W[47 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[47 + 3]) << (7)) | ((W[47 + 3]) >> (32 - (7)))) ^ W[47 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[48]) << (7)) | ((SS0 + E + K[48]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[48] ^ W[48 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[48]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19)))); W[48 + 16] = ((W[48] ^ W[48 + 7] ^ (((W[48 + 13]) << (15)) | ((W[48 + 13]) >> (32 - (15))))) ^ ((((W[48] ^ W[48 + 7] ^ (((W[48 + 13]) << (15)) | ((W[48 + 13]) >> (32 - (15)))))) << (15)) | (((W[48] ^ W[48 + 7] ^ (((W[48 + 13]) << (15)) | ((W[48 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[48] ^ W[48 + 7] ^ (((W[48 + 13]) << (15)) | ((W[48 + 13]) >> (32 - (15)))))) << (23)) | (((W[48] ^ W[48 + 7] ^ (((W[48 + 13]) << (15)) | ((W[48 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[48 + 3]) << (7)) | ((W[48 + 3]) >> (32 - (7)))) ^ W[48 + 10];;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[49]) << (7)) | ((SS0 + H + K[49]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[49] ^ W[49 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[49]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19)))); W[49 + 16] = ((W[49] ^ W[49 + 7] ^ (((W[49 + 13]) << (15)) | ((W[49 + 13]) >> (32 - (15))))) ^ ((((W[49] ^ W[49 + 7] ^ (((W[49 + 13]) << (15)) | ((W[49 + 13]) >> (32 - (15)))))) << (15)) | (((W[49] ^ W[49 + 7] ^ (((W[49 + 13]) << (15)) | ((W[49 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[49] ^ W[49 + 7] ^ (((W[49 + 13]) << (15)) | ((W[49 + 13]) >> (32 - (15)))))) << (23)) | (((W[49] ^ W[49 + 7] ^ (((W[49 + 13]) << (15)) | ((W[49 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[49 + 3]) << (7)) | ((W[49 + 3]) >> (32 - (7)))) ^ W[49 + 10];;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[50]) << (7)) | ((SS0 + G + K[50]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[50] ^ W[50 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[50]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19)))); W[50 + 16] = ((W[50] ^ W[50 + 7] ^ (((W[50 + 13]) << (15)) | ((W[50 + 13]) >> (32 - (15))))) ^ ((((W[50] ^ W[50 + 7] ^ (((W[50 + 13]) << (15)) | ((W[50 + 13]) >> (32 - (15)))))) << (15)) | (((W[50] ^ W[50 + 7] ^ (((W[50 + 13]) << (15)) | ((W[50 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[50] ^ W[50 + 7] ^ (((W[50 + 13]) << (15)) | ((W[50 + 13]) >> (32 - (15)))))) << (23)) | (((W[50] ^ W[50 + 7] ^ (((W[50 + 13]) << (15)) | ((W[50 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[50 + 3]) << (7)) | ((W[50 + 3]) >> (32 - (7)))) ^ W[50 + 10];;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[51]) << (7)) | ((SS0 + F + K[51]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[51] ^ W[51 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[51]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19)))); W[51 + 16] = ((W[51] ^ W[51 + 7] ^ (((W[51 + 13]) << (15)) | ((W[51 + 13]) >> (32 - (15))))) ^ ((((W[51] ^ W[51 + 7] ^ (((W[51 + 13]) << (15)) | ((W[51 + 13]) >> (32 - (15)))))) << (15)) | (((W[51] ^ W[51 + 7] ^ (((W[51 + 13]) << (15)) | ((W[51 + 13]) >> (32 - (15)))))) >> (32 - (15)))) ^ ((((W[51] ^ W[51 + 7] ^ (((W[51 + 13]) << (15)) | ((W[51 + 13]) >> (32 - (15)))))) << (23)) | (((W[51] ^ W[51 + 7] ^ (((W[51 + 13]) << (15)) | ((W[51 + 13]) >> (32 - (15)))))) >> (32 - (23))))) ^ (((W[51 + 3]) << (7)) | ((W[51 + 3]) >> (32 - (7)))) ^ W[51 + 10];;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[52]) << (7)) | ((SS0 + E + K[52]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[52] ^ W[52 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[52]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19))));;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[53]) << (7)) | ((SS0 + H + K[53]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[53] ^ W[53 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[53]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19))));;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[54]) << (7)) | ((SS0 + G + K[54]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[54] ^ W[54 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[54]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19))));;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[55]) << (7)) | ((SS0 + F + K[55]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[55] ^ W[55 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[55]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19))));;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[56]) << (7)) | ((SS0 + E + K[56]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[56] ^ W[56 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[56]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19))));;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[57]) << (7)) | ((SS0 + H + K[57]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[57] ^ W[57 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[57]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19))));;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[58]) << (7)) | ((SS0 + G + K[58]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[58] ^ W[58 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[58]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19))));;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[59]) << (7)) | ((SS0 + F + K[59]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[59] ^ W[59 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[59]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19))));;
        SS0 = (((A) << (12)) | ((A) >> (32 - (12)))); SS1 = (((SS0 + E + K[60]) << (7)) | ((SS0 + E + K[60]) >> (32 - (7)))); SS2 = SS1 ^ SS0; D += (((A) & (B)) | ((A) & (C)) | ((B) & (C))) + SS2 + (W[60] ^ W[60 + 4]); SS1 += ((((F) ^ (G)) & (E)) ^ (G)) + H + W[60]; B = (((B) << (9)) | ((B) >> (32 - (9)))); H = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); F = (((F) << (19)) | ((F) >> (32 - (19))));;
        SS0 = (((D) << (12)) | ((D) >> (32 - (12)))); SS1 = (((SS0 + H + K[61]) << (7)) | ((SS0 + H + K[61]) >> (32 - (7)))); SS2 = SS1 ^ SS0; C += (((D) & (A)) | ((D) & (B)) | ((A) & (B))) + SS2 + (W[61] ^ W[61 + 4]); SS1 += ((((E) ^ (F)) & (H)) ^ (F)) + G + W[61]; A = (((A) << (9)) | ((A) >> (32 - (9)))); G = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); E = (((E) << (19)) | ((E) >> (32 - (19))));;
        SS0 = (((C) << (12)) | ((C) >> (32 - (12)))); SS1 = (((SS0 + G + K[62]) << (7)) | ((SS0 + G + K[62]) >> (32 - (7)))); SS2 = SS1 ^ SS0; B += (((C) & (D)) | ((C) & (A)) | ((D) & (A))) + SS2 + (W[62] ^ W[62 + 4]); SS1 += ((((H) ^ (E)) & (G)) ^ (E)) + F + W[62]; D = (((D) << (9)) | ((D) >> (32 - (9)))); F = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); H = (((H) << (19)) | ((H) >> (32 - (19))));;
        SS0 = (((B) << (12)) | ((B) >> (32 - (12)))); SS1 = (((SS0 + F + K[63]) << (7)) | ((SS0 + F + K[63]) >> (32 - (7)))); SS2 = SS1 ^ SS0; A += (((B) & (C)) | ((B) & (D)) | ((C) & (D))) + SS2 + (W[63] ^ W[63 + 4]); SS1 += ((((G) ^ (H)) & (F)) ^ (H)) + E + W[63]; C = (((C) << (9)) | ((C) >> (32 - (9)))); E = ((SS1) ^ ((((SS1)) << (9)) | (((SS1)) >> (32 - (9)))) ^ ((((SS1)) << (17)) | (((SS1)) >> (32 - (17))))); G = (((G) << (19)) | ((G) >> (32 - (19))));;

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









 
static void sha256_transform(uint32_t *state, const uint8_t *data)
{
    uint32_t a, b, c, d, e, f, g, h, i, j, t1, t2, m[64];

    for (i = 0, j = 0; i < 16; ++i, j += 4)
    {
        m[i] = (data[j] << 24) | (data[j + 1] << 16) | (data[j + 2] << 8) | (data[j + 3]);
    }
    for (; i < 64; ++i)
    {
        m[i] = ((((m[i - 2]) >> (17)) | ((m[i - 2]) << (32 - (17)))) ^ (((m[i - 2]) >> (19)) | ((m[i - 2]) << (32 - (19)))) ^ ((m[i - 2]) >> 10)) + m[i - 7] + ((((m[i - 15]) >> (7)) | ((m[i - 15]) << (32 - (7)))) ^ (((m[i - 15]) >> (18)) | ((m[i - 15]) << (32 - (18)))) ^ ((m[i - 15]) >> 3)) + m[i - 16];
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
        t1 = h + ((((e) >> (6)) | ((e) << (32 - (6)))) ^ (((e) >> (11)) | ((e) << (32 - (11)))) ^ (((e) >> (25)) | ((e) << (32 - (25))))) + (((e) & (f)) ^ (~(e) & (g))) + SHA256_K[i] + m[i];
        t2 = ((((a) >> (2)) | ((a) << (32 - (2)))) ^ (((a) >> (13)) | ((a) << (32 - (13)))) ^ (((a) >> (22)) | ((a) << (32 - (22))))) + (((a) & (b)) ^ ((a) & (c)) ^ ((b) & (c)));
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








 
const uint64_t *sm2_z256_prime(void)
{
    return &SM2_Z256_P[0];  
}









 
static int sm2_z256_cmp(const sm2_z256_t a, const sm2_z256_t b)
{
    
    if (a[3] > b[3])
        return 1;
    else if (a[3] < b[3])
        return -1;
    
    if (a[2] > b[2])
        return 1;
    else if (a[2] < b[2])
        return -1;
    
    if (a[1] > b[1])
        return 1;
    else if (a[1] < b[1])
        return -1;
    
    if (a[0] > b[0])
        return 1;
    else if (a[0] < b[0])
        return -1;
    return 0;  
}









 
static void sm2_z256_from_bytes(sm2_z256_t r, const uint8_t in[32])
{
    r[3] = ((uint64_t)(in)[0] << 56 | (uint64_t)(in)[1] << 48 | (uint64_t)(in)[2] << 40 | (uint64_t)(in)[3] << 32 | (uint64_t)(in)[4] << 24 | (uint64_t)(in)[5] << 16 | (uint64_t)(in)[6] << 8 | (uint64_t)(in)[7]);       
    r[2] = ((uint64_t)(in + 8)[0] << 56 | (uint64_t)(in + 8)[1] << 48 | (uint64_t)(in + 8)[2] << 40 | (uint64_t)(in + 8)[3] << 32 | (uint64_t)(in + 8)[4] << 24 | (uint64_t)(in + 8)[5] << 16 | (uint64_t)(in + 8)[6] << 8 | (uint64_t)(in + 8)[7]);   
    r[1] = ((uint64_t)(in + 16)[0] << 56 | (uint64_t)(in + 16)[1] << 48 | (uint64_t)(in + 16)[2] << 40 | (uint64_t)(in + 16)[3] << 32 | (uint64_t)(in + 16)[4] << 24 | (uint64_t)(in + 16)[5] << 16 | (uint64_t)(in + 16)[6] << 8 | (uint64_t)(in + 16)[7]);  
    r[0] = ((uint64_t)(in + 24)[0] << 56 | (uint64_t)(in + 24)[1] << 48 | (uint64_t)(in + 24)[2] << 40 | (uint64_t)(in + 24)[3] << 32 | (uint64_t)(in + 24)[4] << 24 | (uint64_t)(in + 24)[5] << 16 | (uint64_t)(in + 24)[6] << 8 | (uint64_t)(in + 24)[7]);  
}








 
static inline uint64_t is_zero(uint64_t in)
{
    in |= (0 - in);      
    in = ~in;            
    in >>= 63;           
    return in;           
}








 
static uint64_t sm2_z256_is_zero(const sm2_z256_t a)
{
    
    return is_zero(a[0]) &
           is_zero(a[1]) &
           is_zero(a[2]) &
           is_zero(a[3]);
}









 
static void sm2_z256_copy(sm2_z256_t r, const sm2_z256_t a)
{
    r[3] = a[3];  
    r[2] = a[2];
    r[1] = a[1];
    r[0] = a[0];
}








 
static void sm2_z256_set_zero(sm2_z256_t r)
{
    r[0] = 0;  
    r[1] = 0;
    r[2] = 0;
    r[3] = 0;
}








 
static void sm2_z256_point_set_infinity(SM2_Z256_POINT *P)
{
    sm2_z256_copy(P->X, SM2_Z256_MODP_MONT_ONE);
    sm2_z256_copy(P->Y, SM2_Z256_MODP_MONT_ONE);
    sm2_z256_set_zero(P->Z);
}










 
static void sm2_z256_mul(sm2_z512_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t a_[8];    
    uint64_t b_[8];    
    uint64_t s[16] = {0};  
    uint64_t u;        
    int i, j;

    
    for (i = 0; i < 4; i++)
    {
        a_[2 * i] = a[i] & 0xffffffff;       
        b_[2 * i] = b[i] & 0xffffffff;       
        a_[2 * i + 1] = a[i] >> 32;          
        b_[2 * i + 1] = b[i] >> 32;          
    }

    
    for (i = 0; i < 8; i++)
    {
        u = 0;  
        for (j = 0; j < 8; j++)
        {
            
            u = s[i + j] + a_[i] * b_[j] + u;
            s[i + j] = u & 0xffffffff;       
            u >>= 32;                        
        }
        s[i + 8] = u;  
    }

    
    for (i = 0; i < 8; i++)
    {
        r[i] = (s[2 * i + 1] << 32) | s[2 * i];
    }
}










 
static uint64_t sm2_z512_add(sm2_z512_t r, const sm2_z512_t a, const sm2_z512_t b)
{
    uint64_t t, c = 0;  

    
    t = a[0] + b[0]; c = t < a[0]; r[0] = t;
    t = a[1] + c; c = t < a[1]; r[1] = t + b[1]; c += r[1] < t;
    t = a[2] + c; c = t < a[2]; r[2] = t + b[2]; c += r[2] < t;
    t = a[3] + c; c = t < a[3]; r[3] = t + b[3]; c += r[3] < t;
    t = a[4] + c; c = t < a[4]; r[4] = t + b[4]; c += r[4] < t;
    t = a[5] + c; c = t < a[5]; r[5] = t + b[5]; c += r[5] < t;
    t = a[6] + c; c = t < a[6]; r[6] = t + b[6]; c += r[6] < t;
    t = a[7] + c; c = t < a[7]; r[7] = t + b[7]; c += r[7] < t;

    return c;  
}










 
static uint64_t sm2_z256_add(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t t, c = 0;  

    
    t = a[0] + b[0];
    c = t < a[0];      
    r[0] = t;

    
    t = a[1] + c;
    c = t < a[1];      
    r[1] = t + b[1];   
    c += r[1] < t;     

    
    t = a[2] + c;
    c = t < a[2];      
    r[2] = t + b[2];   
    c += r[2] < t;     

    
    t = a[3] + c;
    c = t < a[3];      
    r[3] = t + b[3];   
    c += r[3] < t;     

    return c;  
}










 
static uint64_t sm2_z256_sub(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t t, c = 0;  

    
    t = a[0] - b[0];
    c = t > a[0];      
    r[0] = t;

    
    t = a[1] - c;
    c = t > a[1];      
    r[1] = t - b[1];   
    c += r[1] > t;     

    
    t = a[2] - c;
    c = t > a[2];      
    r[2] = t - b[2];   
    c += r[2] > t;     

    
    t = a[3] - c;
    c = t > a[3];      
    r[3] = t - b[3];   
    c += r[3] > t;     

    return c;  
}










 
static void sm2_z256_modp_mont_mul(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    sm2_z512_t z;  
    sm2_z512_t t;  
    uint64_t c;    

    
    sm2_z256_mul(z, a, b);

    
    sm2_z256_mul(t, z, SM2_Z256_P_PRIME);

    
    sm2_z256_mul(t, t, SM2_Z256_P);

    
    c = sm2_z512_add(z, z, t);

    
    sm2_z256_copy(r, z + 4);

    
    if (c)
    {
        sm2_z256_add(r, r, SM2_Z256_MODP_MONT_ONE);
    }
    else if (sm2_z256_cmp(r, SM2_Z256_P) >= 0)
    {
        (void)sm2_z256_sub(r, r, SM2_Z256_P);
    }
}









 
static void sm2_z256_modp_to_mont(const sm2_z256_t a, uint64_t r[4])
{
    sm2_z256_modp_mont_mul(r, a, SM2_Z256_2e512modp);
}









 
static void sm2_z256_modp_mont_sqr(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_modp_mont_mul(r, a, a);
}










 
static void sm2_z256_modp_add(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t c;  

    c = sm2_z256_add(r, a, b);  

    
    if (c)
    {
        
        
        (void)sm2_z256_add(r, r, SM2_Z256_NEG_P);
        return;
    }

    
    if (sm2_z256_cmp(r, SM2_Z256_P) >= 0)
    {
        (void)sm2_z256_sub(r, r, SM2_Z256_P);
    }
}








 
static int sm2_z256_point_is_on_curve(const SM2_Z256_POINT *P)
{
    sm2_z256_t t0;
    sm2_z256_t t1;
    sm2_z256_t t2;

    
    if (sm2_z256_cmp(P->Z, SM2_Z256_MODP_MONT_ONE) == 0)
    {
        
        sm2_z256_modp_mont_sqr(t0, P->Y);   
        sm2_z256_modp_add(t0, t0, P->X);    
        sm2_z256_modp_add(t0, t0, P->X);    
        sm2_z256_modp_add(t0, t0, P->X);    
        sm2_z256_modp_mont_sqr(t1, P->X);   
        sm2_z256_modp_mont_mul(t1, t1, P->X); 
        sm2_z256_modp_add(t1, t1, SM2_Z256_MODP_MONT_B); 
    }
    else
    {
        
        sm2_z256_modp_mont_sqr(t0, P->Y);    
        sm2_z256_modp_mont_sqr(t1, P->Z);    
        sm2_z256_modp_mont_sqr(t2, t1);      
        sm2_z256_modp_mont_mul(t1, t1, t2);  
        sm2_z256_modp_mont_mul(t1, t1, SM2_Z256_MODP_MONT_B); 
        sm2_z256_modp_mont_mul(t2, t2, P->X); 
        sm2_z256_modp_add(t0, t0, t2);       
        sm2_z256_modp_add(t0, t0, t2);       
        sm2_z256_modp_add(t0, t0, t2);       
        sm2_z256_modp_mont_sqr(t2, P->X);    
        sm2_z256_modp_mont_mul(t2, t2, P->X); 
        sm2_z256_modp_add(t1, t1, t2);       
    }

    if (sm2_z256_cmp(t0, t1) != 0)
    {
        return 0;
    }
    return 1;
}









 
static int sm2_z256_point_from_bytes(SM2_Z256_POINT *P, const uint8_t in[64])
{
    sm2_z256_from_bytes(P->X, in);  
    
    if (sm2_z256_cmp(P->X, sm2_z256_prime()) >= 0)
    {
         
        return -1;
    }
    sm2_z256_from_bytes(P->Y, in + 32);  
    
    if (sm2_z256_cmp(P->Y, sm2_z256_prime()) >= 0)
    {
         
        return -1;
    }

    
    if (sm2_z256_is_zero(P->X) == 1 && sm2_z256_is_zero(P->Y) == 1)
    {
        sm2_z256_point_set_infinity(P);
        return 0;
    }

    
    sm2_z256_modp_to_mont(P->X, P->X);
    sm2_z256_modp_to_mont(P->Y, P->Y);
    sm2_z256_copy(P->Z, SM2_Z256_MODP_MONT_ONE);  

    
    if (sm2_z256_point_is_on_curve(P) != 1)
    {
         
        return -1;
    }
    return 1;
}










 
static int sm2_z256_point_from_octets(SM2_Z256_POINT *P, const uint8_t *in, size_t inlen)
{
    switch (*in)
    {
        case 0x04:  
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

    
    if (**in < 128)
    {
        *len = *(*in)++;
        (*inlen)--;
    }
    else
    {
        
        uint8_t buf[4] = {0};
        size_t nbytes = *(*in)++ & 0x7f;  
        (*inlen)--;

        if (nbytes < 1 || nbytes > 4)
        {
             
            return -1;
        }
        if (*inlen < nbytes)
        {
             
            return -1;
        }
        
        if (nbytes == 1 && **in < 0x80)
        {
             
            return -1;
        }
        if (nbytes > 1 && **in == 0)
        {
             
            return -1;
        }

        memcpy(buf + 4 - nbytes, *in, nbytes);
        *len = (size_t)((uint32_t)(buf)[0] << 24 | (uint32_t)(buf)[1] << 16 | (uint32_t)(buf)[2] << 8 | (uint32_t)(buf)[3]);
        *in += nbytes;
        *inlen -= nbytes;
    }

    
    if (*inlen < *len)
    {
         
        return -2;
    }
    return 1;
}












 
static int asn1_integer_from_der_ex(int tag, const uint8_t **a, size_t *alen, 
                             const uint8_t **in, size_t *inlen)
{
    size_t len;

    if (!a || !alen || !in || !(*in) || !inlen)
    {
         
        return -1;
    }

    
    if (*inlen == 0 || **in != tag)
    {
        *a = ((void *) 0);
        *alen = 0;
        return 0;
    }
    (*in)++;
    (*inlen)--;

    
    if (asn1_length_from_der(&len, in, inlen) != 1)
    {
         
        return -1;
    }
    if (len == 0)
    {
         
        return -1;
    }

    
    if (**in & 0x80)
    {
         
        return -1;
    }

    
    if (**in == 0 && len > 1)
    {
        (*in)++;
        (*inlen)--;
        len--;

        
        if (((**in) & 0x80) == 0)
        {
             
            return -1;
        }
    }

    
    if (**in == 0 && len > 1)
    {
         
        return -1;
    }

    
    *a = *in;
    *alen = len;
    *in += len;
    *inlen -= len;

    return 1;
}












 
static int asn1_type_from_der(int tag, const uint8_t **d, size_t *dlen, 
                       const uint8_t **in, size_t *inlen)
{
    if (!d || !dlen || !in || !(*in) || !inlen)
    {
         
        return -1;
    }

    
    if (*inlen == 0 || **in != tag)
    {
        *d = ((void *) 0);
        *dlen = 0;
        return 0;
    }
    (*in)++;
    (*inlen)--;

    
    if (asn1_length_from_der(dlen, in, inlen) != 1)
    {
         
        return -1;
    }

    
    *d = *in;
    *in += *dlen;
    *inlen -= *dlen;
    return 1;
}









 
static int asn1_length_le(size_t len1, size_t len2)
{
    if (len1 > len2)
    {
        return -1;
    }
    return 1;
}








 
static int asn1_length_is_zero(size_t len)
{
    if (len)
    {
        return -1;
    }
    return 1;
}










 
static int sm2_signature_from_der(SM2_SIGNATURE *sig, const uint8_t **in, size_t *inlen)
{
    int ret;
    const uint8_t *d;
    size_t dlen;
    const uint8_t *r;
    size_t rlen;
    const uint8_t *s;
    size_t slen;

    if ((ret = asn1_type_from_der(ASN1_TAG_SEQUENCE,&d,&dlen,in,inlen)) != 1)
    {
        if (ret < 0)
             
        return ret;
    }
    
    if (asn1_integer_from_der_ex(ASN1_TAG_INTEGER,&r,&rlen,&d,&dlen) != 1 || 
        asn1_integer_from_der_ex(ASN1_TAG_INTEGER,&s,&slen,&d,&dlen) != 1 || 
        asn1_length_le(rlen, 32) != 1 || 
        asn1_length_le(slen, 32) != 1 || 
        asn1_length_is_zero(dlen) != 1)
    {
         
        return -1;
    }
    
    memset(sig, 0, sizeof(*sig));
    memcpy(sig->r + 32 - rlen, r, rlen);
    memcpy(sig->s + 32 - slen, s, slen);
    return 1;
}








 
static inline const uint64_t *sm2_z256_order(void)
{
    return &SM2_Z256_N[0];
}










 
static void sm2_z256_modn_add(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t c;

    c = sm2_z256_add(r, a, b);

    if (c)
    {
        
        (void)sm2_z256_add(r, r, SM2_Z256_NEG_N);
        return;
    }

    if (sm2_z256_cmp(r, SM2_Z256_N) >= 0)
    {
        (void)sm2_z256_sub(r, r, SM2_Z256_N);
    }
}










 
static inline int sm2_z256_get_booth(const sm2_z256_t a, unsigned int window_size, int i)
{
    uint64_t mask = (1 << window_size) - 1;  
    uint64_t wbits;
    int n, j;

    
    if (i == 0)
    {
        
        return (int)((a[0] << 1) & mask) - (int)(a[0] & mask);
    }

    
    j = i * window_size - 1;  
    n = j / 64;               
    j = j % 64;               

    
    wbits = a[n] >> j;
    
    if ((64 - j) < (int)(window_size + 1) && n < 3)
    {
        wbits |= a[n + 1] << (64 - j);
    }
    
    return (int)(wbits & mask) - (int)((wbits >> 1) & mask);
}









 
static void sm2_z256_point_copy_affine(SM2_Z256_POINT *R, const SM2_Z256_AFFINE_POINT *P)
{
    memcpy(R, P, sizeof(SM2_Z256_AFFINE_POINT));  
    sm2_z256_copy(R->Z, SM2_Z256_MODP_MONT_ONE);  
}

static void sm2_z256_modp_sub(sm2_z256_t r, const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t c;  

    c = sm2_z256_sub(r, a, b);  

    
    if (c)
    {
        
        
        (void)sm2_z256_sub(r, r, SM2_Z256_NEG_P);
    }
}


static void sm2_z256_modp_dbl(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_modp_add(r, a, a);
}










 
static void sm2_z256_copy_conditional(sm2_z256_t dst, const sm2_z256_t src, uint64_t move)
{
    
    uint64_t mask1 = 0 - move;
    
    uint64_t mask2 = ~mask1;

    
    dst[0] = (src[0] & mask1) ^ (dst[0] & mask2);
    dst[1] = (src[1] & mask1) ^ (dst[1] & mask2);
    dst[2] = (src[2] & mask1) ^ (dst[2] & mask2);
    dst[3] = (src[3] & mask1) ^ (dst[3] & mask2);
}










 
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

    
    in1infty = (in1_z[0] | in1_z[1] | in1_z[2] | in1_z[3]);
    in2infty = (in2_x[0] | in2_x[1] | in2_x[2] | in2_x[3] | 
                in2_y[0] | in2_y[1] | in2_y[2] | in2_y[3]);

    in1infty = is_zero(in1infty);
    in2infty = is_zero(in2infty);

    
    sm2_z256_modp_mont_sqr(Z1sqr, in1_z);       
    sm2_z256_modp_mont_mul(U2, in2_x, Z1sqr);   
    sm2_z256_modp_sub(H, U2, in1_x);            
    sm2_z256_modp_mont_mul(S2, Z1sqr, in1_z);   
    sm2_z256_modp_mont_mul(res_z, H, in1_z);    
    sm2_z256_modp_mont_mul(S2, S2, in2_y);      
    sm2_z256_modp_sub(R, S2, in1_y);            
    sm2_z256_modp_mont_sqr(Hsqr, H);            
    sm2_z256_modp_mont_sqr(Rsqr, R);            
    sm2_z256_modp_mont_mul(Hcub, Hsqr, H);      
    sm2_z256_modp_mont_mul(U2, in1_x, Hsqr);    
    sm2_z256_modp_dbl(Hsqr, U2);                
    sm2_z256_modp_sub(res_x, Rsqr, Hsqr);       
    sm2_z256_modp_sub(res_x, res_x, Hcub);      
    sm2_z256_modp_sub(H, U2, res_x);            
    sm2_z256_modp_mont_mul(S2, in1_y, Hcub);    
    sm2_z256_modp_mont_mul(H, H, R);            
    sm2_z256_modp_sub(res_y, H, S2);            

    
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









 
static void sm2_z256_modp_neg(sm2_z256_t r, const sm2_z256_t a)
{
    (void)sm2_z256_sub(r, SM2_Z256_P, a);
}










 
static void sm2_z256_point_sub_affine(SM2_Z256_POINT *R,
                               const SM2_Z256_POINT *A, const SM2_Z256_AFFINE_POINT *B)
{
    SM2_Z256_AFFINE_POINT neg_B;

    sm2_z256_copy(neg_B.x, B->x);
    sm2_z256_modp_neg(neg_B.y, B->y);  

    sm2_z256_point_add_affine(R, A, &neg_B);
}









 
static void sm2_z256_point_mul_generator(SM2_Z256_POINT *R, const sm2_z256_t k)
{
    size_t window_size = 7;  
    int R_infinity = 1;      
    int n = (256 + window_size - 1) / window_size;  
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









 
static inline uint64_t sm2_z256_equ(const sm2_z256_t a, const sm2_z256_t b)
{
    uint64_t res;
    
    res = a[0] ^ b[0];
    res |= a[1] ^ b[1];
    res |= a[2] ^ b[2];
    res |= a[3] ^ b[3];
    return is_zero(res);  
}









 
void sm2_z256_modp_haf(sm2_z256_t r, const sm2_z256_t a)
{
    uint64_t c = 0;

    
    if (a[0] & 1)
    {
        c = sm2_z256_add(r, a, SM2_Z256_P);
    }
    else
    {
        
        r[0] = a[0];
        r[1] = a[1];
        r[2] = a[2];
        r[3] = a[3];
    }

    
    r[0] = (r[0] >> 1) | ((r[1] & 1) << 63);  
    r[1] = (r[1] >> 1) | ((r[2] & 1) << 63);  
    r[2] = (r[2] >> 1) | ((r[3] & 1) << 63);  
    r[3] = (r[3] >> 1) | ((c & 1) << 63);     
}









 
void sm2_z256_modp_tri(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_t t;
    sm2_z256_modp_add(t, a, a);  
    sm2_z256_modp_add(r, t, a);  
}









 
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

    
    sm2_z256_modp_dbl(S, Y1);
    
    sm2_z256_modp_mont_sqr(Zsqr, Z1);
    
    sm2_z256_modp_mont_sqr(S, S);
    
    sm2_z256_modp_mont_mul(Z3, Z1, Y1);
    
    sm2_z256_modp_dbl(Z3, Z3);
    
    sm2_z256_modp_add(M, X1, Zsqr);
    
    sm2_z256_modp_sub(Zsqr, X1, Zsqr);
    
    sm2_z256_modp_mont_sqr(Y3, S);
    
    sm2_z256_modp_haf(Y3, Y3);
    
    sm2_z256_modp_mont_mul(M, M, Zsqr);
    
    sm2_z256_modp_tri(M, M);
    
    sm2_z256_modp_mont_mul(S, S, X1);
    
    sm2_z256_modp_dbl(tmp0, S);
    
    sm2_z256_modp_mont_sqr(X3, M);
    
    sm2_z256_modp_sub(X3, X3, tmp0);
    
    sm2_z256_modp_sub(S, S, X3);
    
    sm2_z256_modp_mont_mul(S, S, M);
    
    sm2_z256_modp_sub(Y3, S, Y3);
}










 
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

    
    in1infty = (in1_z[0] | in1_z[1] | in1_z[2] | in1_z[3]);
    in2infty = (in2_z[0] | in2_z[1] | in2_z[2] | in2_z[3]);

    in1infty = is_zero(in1infty);
    in2infty = is_zero(in2infty);

    
    sm2_z256_modp_mont_sqr(Z2sqr, in2_z);  
    sm2_z256_modp_mont_sqr(Z1sqr, in1_z);  

    
    sm2_z256_modp_mont_mul(S1, Z2sqr, in2_z);  
    sm2_z256_modp_mont_mul(S2, Z1sqr, in1_z);  
    sm2_z256_modp_mont_mul(S1, S1, in1_y);     
    sm2_z256_modp_mont_mul(S2, S2, in2_y);     
    sm2_z256_modp_sub(R, S2, S1);              

    
    sm2_z256_modp_mont_mul(U1, in1_x, Z2sqr);  
    sm2_z256_modp_mont_mul(U2, in2_x, Z1sqr);  
    sm2_z256_modp_sub(H, U2, U1);              

    
    if (sm2_z256_equ(U1, U2) && !in1infty && !in2infty)
    {
        if (sm2_z256_equ(S1, S2))
        {
            
            sm2_z256_point_dbl(r, a);
            return;
        }
        else
        {
            
            memset(r, 0, sizeof(*r));
            return;
        }
    }

    
    sm2_z256_modp_mont_sqr(Rsqr, R);         
    sm2_z256_modp_mont_mul(res_z, H, in1_z); 
    sm2_z256_modp_mont_sqr(Hsqr, H);         
    sm2_z256_modp_mont_mul(res_z, res_z, in2_z); 
    sm2_z256_modp_mont_mul(Hcub, Hsqr, H);   
    sm2_z256_modp_mont_mul(U2, U1, Hsqr);    
    sm2_z256_modp_dbl(Hsqr, U2);             
    sm2_z256_modp_sub(res_x, Rsqr, Hsqr);    
    sm2_z256_modp_sub(res_x, res_x, Hcub);   
    sm2_z256_modp_sub(res_y, U2, res_x);     
    sm2_z256_modp_mont_mul(S2, S1, Hcub);    
    sm2_z256_modp_mont_mul(res_y, R, res_y); 
    sm2_z256_modp_sub(res_y, res_y, S2);     

    
    sm2_z256_copy_conditional(res_x, in2_x, in1infty);
    sm2_z256_copy_conditional(res_y, in2_y, in1infty);
    sm2_z256_copy_conditional(res_z, in2_z, in1infty);

    sm2_z256_copy_conditional(res_x, in1_x, in2infty);
    sm2_z256_copy_conditional(res_y, in1_y, in2infty);
    sm2_z256_copy_conditional(res_z, in1_z, in2infty);

    
    memcpy(r->X, res_x, sizeof(res_x));
    memcpy(r->Y, res_y, sizeof(res_y));
    memcpy(r->Z, res_z, sizeof(res_z));
}









 
static void sm2_z256_point_mul_pre_compute(const SM2_Z256_POINT *P, SM2_Z256_POINT T[16])
{
    memcpy(&T[0], P, sizeof(SM2_Z256_POINT));

    
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









 
static void sm2_z256_point_neg(SM2_Z256_POINT *R, const SM2_Z256_POINT *P)
{
    sm2_z256_copy(R->X, P->X);
    sm2_z256_modp_neg(R->Y, P->Y);  
    sm2_z256_copy(R->Z, P->Z);
}










 
static void sm2_z256_point_sub(SM2_Z256_POINT *R, const SM2_Z256_POINT *A, const SM2_Z256_POINT *B)
{
    SM2_Z256_POINT neg_B;
    sm2_z256_point_neg(&neg_B, B);  
    sm2_z256_point_add(R, A, &neg_B);
}

static void sm2_z256_point_mul(SM2_Z256_POINT *R, const sm2_z256_t k, const SM2_Z256_POINT *P)
{
    int window_size = 5;  
    SM2_Z256_POINT T[16]; 
    int R_infinity = 1;   
    int n = (256 + window_size - 1) / window_size;  
    int i;

    
    sm2_z256_point_mul_pre_compute(P, T);

    
    for (i = n - 1; i >= 0; i--)
    {
        int booth = sm2_z256_get_booth(k, window_size, i);

        if (R_infinity)
        {
            
            if (booth != 0)
            {
                *R = T[booth - 1];
                R_infinity = 0;
            }
        }
        else
        {
            
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);
            sm2_z256_point_dbl(R, R);

            
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
            Wdg_59_DriverB_TriggerFunc((boolean)0x01);
        }
    }

    
    if (R_infinity)
    {
        memset(R, 0, sizeof(*R));
    }
}








 
static int sm2_z256_point_is_at_infinity(const SM2_Z256_POINT *P)
{
    if (sm2_z256_is_zero(P->Z))
    {
        
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









 
static void sm2_z256_modp_from_mont(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_modp_mont_mul(r, a, SM2_Z256_ONE);
}









 
static void sm2_z256_modp_mont_inv(sm2_z256_t r, const sm2_z256_t a)
{
    sm2_z256_t a1, a2, a3, a4, a5;
    int i;

    
    sm2_z256_modp_mont_sqr(a1, a);      
    sm2_z256_modp_mont_mul(a2, a1, a);  
    sm2_z256_modp_mont_sqr(a3, a2);     
    sm2_z256_modp_mont_sqr(a3, a3);     
    sm2_z256_modp_mont_mul(a3, a3, a2); 
    sm2_z256_modp_mont_sqr(a4, a3);     
    sm2_z256_modp_mont_sqr(a4, a4);     
    sm2_z256_modp_mont_sqr(a4, a4);     
    sm2_z256_modp_mont_sqr(a4, a4);     
    sm2_z256_modp_mont_mul(a4, a4, a3); 
    sm2_z256_modp_mont_sqr(a5, a4);     
    
    
    for (i = 1; i < 8; i++)
    {
        sm2_z256_modp_mont_sqr(a5, a5);
    }
    sm2_z256_modp_mont_mul(a5, a5, a4);  
    
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
    sm2_z256_modp_mont_mul(r, a4, a5);  
}











 
static int sm2_z256_point_get_xy(const SM2_Z256_POINT *P, sm2_z256_t x, sm2_z256_t y)
{
    
    if (sm2_z256_point_is_at_infinity(P) == 1)
    {
        sm2_z256_set_zero(x);  
        if (y)
        {
            sm2_z256_set_zero(y);  
        }
        return 0;  
    }

    
    if (sm2_z256_cmp(P->Z, SM2_Z256_MODP_MONT_ONE) == 0)
    {
        
        sm2_z256_modp_from_mont(x, P->X);
        if (y)
        {
            sm2_z256_modp_from_mont(y, P->Y);
        }
    }
    else
    {
        
        sm2_z256_t z_inv;  

        
        sm2_z256_modp_mont_inv(z_inv, P->Z);
        if (y)
        {
            
            sm2_z256_modp_mont_mul(y, P->Y, z_inv);
        }
        
        sm2_z256_modp_mont_sqr(z_inv, z_inv);
        
        sm2_z256_modp_mont_mul(x, P->X, z_inv);
        sm2_z256_modp_from_mont(x, x);  
        if (y)
        {
            
            sm2_z256_modp_mont_mul(y, y, z_inv);
            sm2_z256_modp_from_mont(y, y);  
        }
    }

    return 1;  
}










 
static int sm2_do_verify(const SM2_KEY *key, const uint8_t dgst[32], const SM2_SIGNATURE *sig)
{
    SM2_Z256_POINT R;
    SM2_Z256_POINT T;
    sm2_z256_t r;
    sm2_z256_t s;
    sm2_z256_t e;
    sm2_z256_t x;
    sm2_z256_t t;

    
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

    
    sm2_z256_modn_add(t, r, s);
    if (sm2_z256_is_zero(t))
    {
         
        return -1;
    }

    
    Wdg_59_DriverB_TriggerFunc((boolean)0x01);
    sm2_z256_point_mul_generator(&R, s);
    sm2_z256_point_mul(&T, t, &key->public_key);
    sm2_z256_point_add(&R, &R, &T);
    sm2_z256_point_get_xy(&R, x, ((void *) 0));

    
    sm2_z256_from_bytes(e, dgst);
    if (sm2_z256_cmp(e, sm2_z256_order()) >= 0)
    {
        sm2_z256_sub(e, e, sm2_z256_order());
    }

    
    if (sm2_z256_cmp(x, sm2_z256_order()) >= 0)
    {
        sm2_z256_sub(x, x, sm2_z256_order());
    }
    sm2_z256_modn_add(e, e, x);

    
    if (sm2_z256_cmp(e, r) != 0)
    {
         
        return -1;
    }
    return 1;
}









 
static int bn_is_zero(const uint32_t *a, size_t k)
{
    while (k-- > 0) { if (a[k]) return 0; }
    return 1;
}








 
static int bn_is_one(const uint32_t *a, size_t k)
{
    if (a[0] != 1) return 0;
    while (k-- > 1) { if (a[k]) return 0; }
    return 1;
}








 
static void bn_from_bytes(uint32_t *a, size_t k, const uint8_t *in)
{
    while (k-- > 0) {
        a[k] = ((uint32_t)(in)[0] << 24 | (uint32_t)(in)[1] << 16 | (uint32_t)(in)[2] << 8 | (uint32_t)(in)[3]);
        in += 4;
    }
}








 
static int bn_cmp(const uint32_t *a, const uint32_t *b, size_t k)
{
    while (k-- > 0) {
        if (a[k] > b[k]) return 1;
        else if (a[k] < b[k]) return -1;
    }
    return 0;
}








 
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

static int secp256r1_is_zero(const secp256r1_t a) { return bn_is_zero(a, 8); }
static int secp256r1_is_one(const secp256r1_t a) { return bn_is_one(a, 8); }
static int secp256r1_cmp(const secp256r1_t a, const secp256r1_t b) { return bn_cmp(a, b, 8); }








 
static void secp256r1_from_32bytes(secp256r1_t r, const uint8_t in[32])
{ 
    bn_from_bytes(r, 8, in);
}
static void secp256r1_copy(secp256r1_t r, const secp256r1_t a) { bn_copy(r, a, 8); }
static void secp256r1_set_one(secp256r1_t r) { bn_set_word(r, 1, 8); }
static void secp256r1_set_zero(secp256r1_t r) { bn_set_word(r, 0, 8); }

static void secp256r1_modn(secp256r1_t r, const secp256r1_t a)
{
    if (bn_cmp(a, g_secp256r1N, 8) >= 0) bn_sub(r, a, g_secp256r1N, 8);
    else bn_copy(r, a, 8);
}

static void secp256r1_modn_inv(secp256r1_t r, const secp256r1_t a)
{
    uint32_t tmp[8 * 8 + 4];
    bn_barrett_mod_inv(r, a, g_secp256r1N, g_secp256r1UN, tmp, 8);
}

static void secp256r1_modn_mul(secp256r1_t r, const secp256r1_t a, const secp256r1_t b)
{
    uint32_t tmp[6 * 8 + 4];
    bn_barrett_mod_mul(r, a, b, g_secp256r1N, g_secp256r1UN, tmp, 8);
}

static void secp256r1_modp_add(secp256r1_t r, const secp256r1_t a, const secp256r1_t b) { bn_mod_add(r, a, b, g_secp256r1P, 8); }
static void secp256r1_modp_sub(secp256r1_t r, const secp256r1_t a, const secp256r1_t b) { bn_mod_sub(r, a, b, g_secp256r1P, 8); }
static void secp256r1_modp_dbl(secp256r1_t r, const secp256r1_t a) { bn_mod_add(r, a, a, g_secp256r1P, 8); }
static void secp256r1_modp_sqr(secp256r1_t r, const secp256r1_t a)
{
    uint32_t tmp[6 * 8 + 4];
    bn_barrett_mod_mul(r, a, a, g_secp256r1P, g_secp256r1UP, tmp, 8);
}
static void secp256r1_modp_mul(secp256r1_t r, const secp256r1_t a, const secp256r1_t b)
{
    uint32_t tmp[6 * 8 + 4];
    bn_barrett_mod_mul(r, a, b, g_secp256r1P, g_secp256r1UP, tmp, 8);
}
static void secp256r1_modp_tri(secp256r1_t r, const secp256r1_t a)
{
    secp256r1_t tmp;
    bn_mod_add(tmp, a, a, g_secp256r1P, 8);
    bn_mod_add(r, tmp, a, g_secp256r1P, 8);
}
static void secp256r1_modp_haf(secp256r1_t r, const secp256r1_t a)
{
    int c = 0;
    if (a[0] & 1) c = bn_add(r, a, g_secp256r1P, 8);
    else bn_copy(r, a, 8);

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
    bn_barrett_mod_inv(r, a, g_secp256r1P, g_secp256r1UP, tmp, 8);
}









 
static void secp256r1_point_copy(SECP256R1_POINT *R, const SECP256R1_POINT *P)
{
    secp256r1_copy(R->X, P->X);
    secp256r1_copy(R->Y, P->Y);
    secp256r1_copy(R->Z, P->Z);
}








 
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








 
static int secp256r1_point_set_xy(SECP256R1_POINT *R, const secp256r1_t x, const secp256r1_t y)
{
    if (secp256r1_cmp(x, g_secp256r1P) >= 0 || secp256r1_cmp(y, g_secp256r1P) >= 0) return -1;
    secp256r1_copy(R->X, x);
    secp256r1_copy(R->Y, y);
    secp256r1_set_one(R->Z);
    if (!secp256r1_point_is_on_curve(R)) return -1;
    return 0;
}

static int secp256r1_point_from_uncompressed_octets(SECP256R1_POINT *P, const uint8_t octets[65])
{
    secp256r1_t x, y;
    if (octets[0] != 0x04) return -1;
    secp256r1_from_32bytes(x, octets + 1);
    secp256r1_from_32bytes(y, octets + 33);
    return secp256r1_point_set_xy(P, x, y);
}








 
static int secp256r1_public_key_from_bytes(SECP256R1_KEY *key, const uint8_t **in, size_t *inlen)
{
    if (!key || !in || !(*in) || !inlen || *inlen < 65) return -1;
    memset(key, 0, sizeof(SECP256R1_KEY));
    if (secp256r1_point_from_uncompressed_octets(&key->public_key, *in) != 0) return -1;
    *in += 65;
    *inlen -= 65;
    return 0;
}








 
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









 
static int ecdsa_do_verify(const SECP256R1_KEY *key, const uint8_t dgst[32], const ECDSA_SIGNATURE *sig)
{
    secp256r1_t e, w, u1, u2, x1, y1;
    SECP256R1_POINT P, Q, R;

    if (secp256r1_is_zero(sig->r) || secp256r1_cmp(sig->r, g_secp256r1N) >= 0 || 
        secp256r1_is_zero(sig->s) || secp256r1_cmp(sig->s, g_secp256r1N) >= 0) {
        return -1;
    }

    secp256r1_from_32bytes(e, dgst);
    secp256r1_modn(e, e);

    secp256r1_modn_inv(w, sig->s);
    secp256r1_modn_mul(u1, e, w);
    secp256r1_modn_mul(u2, sig->r, w);

    secp256r1_point_mul_generator(&P, u1);
    secp256r1_point_mul(&Q, u2, &key->public_key);
    secp256r1_point_add(&R, &P, &Q);
    
    if (secp256r1_point_is_at_infinity(&R)) return -1;
    
    secp256r1_point_get_xy(&R, x1, y1);
    secp256r1_modn(x1, x1);

    if (secp256r1_cmp(x1, sig->r) != 0) {
        return -1;
    }
    return 0;
}


