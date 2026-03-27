











 












 
                      
                      
                 
                      
                 
                      
                      
                      
   
                      
                      
                 
                      
                 












 












 












 












 

   




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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







 




 













 












 


 




 



 
 




















 
 




 

























 
   
   
   
   


 

























 
 

































































































































































































































 


 




 












 














 


 

 




















 
 



 


 



 
typedef uint16       PduIdType;

typedef uint16       PduLengthType;




 
typedef struct
{
    uint8 * SduDataPtr;
    uint8 * MetaDataPtr;
    PduLengthType SduLength;
} PduInfoType;

 
typedef uint8 PNCHandleType;

 
typedef enum
{
    TP_STMIN = 0x00,  
    TP_BS = 0x01,     
    TP_BC = 0x02     
 
} TPParameterType;

 
typedef enum
{
    BUFREQ_OK = 0x00,        
    BUFREQ_E_NOT_OK = 0x01,  
    BUFREQ_E_BUSY = 0x02,   
 
    BUFREQ_E_OVFL = 0x03     
} BufReq_ReturnType;

 
typedef enum
{
    TP_DATACONF = 0x00,   
 
    TP_DATARETRY = 0x01,  
 
    TP_CONFPENDING = 0x02 
 
} TpDataStateType;


 
typedef struct
{
    TpDataStateType TpDataState; 
 
    PduLengthType TxTpDataCnt;   
 
} RetryInfoType;


 
typedef uint8 NetworkHandleType;



 
typedef uint8 IcomConfigIdType;

typedef enum
{
    ICOM_SWITCH_E_OK = 0x00,
    ICOM_SWITCH_E_FAILED = 0x01
} IcomSwitch_ErrorType;













 











 


 


 


 













































 




 














 
void* ILib_memcpy(void*  dstptr, const void*  srcptr, uint32 length);








 
void* ILib_memset(void*  dstptr, uint8 val, uint32 n);








 
uint8 ILib_memcmp(const void*  str1ptr, const void*  str2ptr, uint32 n);




 









 
uint8 ILib_MemHeapInit(void* ram, uint32 size);







 
void* ILib_MemHeapMalloc(void* ram, uint32 size);








 
void* ILib_MemHeapCalloc(void* ram, uint32 count, uint32 size);







 
uint8 ILib_MemHeapFree(void* ram, void* ptr);







 
uint8 ILib_MemHeapGetManageSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetRealMaxSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetUsedSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetCurFreeMaxBlockSize(const void* ram, uint32* size);







 
uint8 ILib_MemHeapGetMaxMallocSize(const void* ram, uint32* size);





























 
 

















































































































































 


 



 
 
 


typedef struct
{
    uint8 reserved;
} SchM_ConfigType;




 
 
void SchM_Init (const SchM_ConfigType * ConfigPtr);
void SchM_Start (void);
void SchM_StartTiming (void);
void SchM_Deinit (void);



 



 

 

 

 


























 
   


 



 



 
typedef enum
{
    RTE_STATE_RTE_UNINIT,
    RTE_STATE_SCHM_START,
    RTE_STATE_SCHM_INIT, 
    RTE_STATE_RTE_INIT   
} Rte_StateType;

typedef struct crossCoreBufferType
{
    void (*servicePtr)(struct crossCoreBufferType *);
    uint32 serviceParameter[16U];
    uint32 index;
} SchM_CrossCore_BufferType;
typedef struct AsyncrossCoreBufferType
{
    void (*servicePtr)(struct AsyncrossCoreBufferType *);
    uint32 serviceParameter[16U];
} SchM_AsynCrossCore_BufferType;


 
typedef enum
{
  SHCM_TP_DATACONF = 0x00U,
  SHCM_TP_DATARETRY = 0x01U,
  SHCM_TP_CONFPENDING = 0x02U,
  SHCM_TP_NULLPTR = 0xFFU
} SchM_TpDataStateType;  
                    

typedef struct
{
    SchM_TpDataStateType TpDataState; 
 
    PduLengthType TxTpDataCnt;   
 
} SchM_RetryInfoType;




 



 
typedef uint8 Rte_MetaData_IOCData_Type_1byte[1];
typedef uint8 Rte_MetaData_IOCData_Type_2byte[2];
typedef uint8 Rte_MetaData_IOCData_Type_4byte[4];
typedef uint8 Rte_MetaData_IOCData_Type_8byte[8];
typedef struct
{
    uint16 clientId;
    uint16 sequenceCounter;
} Rte_Cs_TransactionHandleType;
typedef uint8 * uint8_ptr;
typedef uint8 uint8_Cs;
typedef uint16 uint16_Cs;

typedef uint16 uint16_Mode;


 





















 



 




 



 


 
typedef enum
{

    CRYPTO_OPERATIONMODE_START           = 0x01u,  
    CRYPTO_OPERATIONMODE_UPDATE          = 0x02u,  
    CRYPTO_OPERATIONMODE_STREAMSTART     = 0x03u,  
    CRYPTO_OPERATIONMODE_FINISH          = 0x04u,  
    CRYPTO_OPERATIONMODE_SINGLECALL      = 0x07u,  
    CRYPTO_OPERATIONMODE_SAVE_CONTEXT    = 0x08u,  
    CRYPTO_OPERATIONMODE_RESTORE_CONTEXT = 0x10u   
} Crypto_OperationModeType;

 
typedef enum
{
    CRYPTO_KEYSTATUS_INVALID                = 0x00u,   
    CRYPTO_KEYSTATUS_VALID                  = 0x01u,   
    CRYPTO_KEYSTATUS_UPDATE_IN_PROGRESS     = 0x02u    
} Crypto_KeyStatusType;

 
typedef uint8 Crypto_VerifyResultType;

 
 

typedef uint32* Csm_LengthPtr;
typedef Crypto_VerifyResultType* Csm_VerifyResultPtr;

 
typedef uint8 Crypto_ResultType;

 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 


 



 




 


 
typedef enum
{
    CRYPTO_ALGOFAM_3DES = 0x01u,
    CRYPTO_ALGOFAM_AES,
    CRYPTO_ALGOFAM_BLAKE_1_256,
    CRYPTO_ALGOFAM_BLAKE_1_512,
    CRYPTO_ALGOFAM_BLAKE_2s_256,
    CRYPTO_ALGOFAM_BLAKE_2s_512,
    CRYPTO_ALGOFAM_BRAINPOOL,
    CRYPTO_ALGOFAM_CHACHA,
    CRYPTO_ALGOFAM_CUSTOM,
    CRYPTO_ALGOFAM_DH,
    CRYPTO_ALGOFAM_DRBG,
    CRYPTO_ALGOFAM_ECCANSI,
    CRYPTO_ALGOFAM_ECCNIST,
    CRYPTO_ALGOFAM_ECCSEC,
    CRYPTO_ALGOFAM_ECDH,
    CRYPTO_ALGOFAM_ECDSA,
    CRYPTO_ALGOFAM_ED25519,
    CRYPTO_ALGOFAM_EEA3,
    CRYPTO_ALGOFAM_EIA3,
    CRYPTO_ALGOFAM_FIPS186,
    CRYPTO_ALGOFAM_HKDF,
    CRYPTO_ALGOFAM_KDFX963,
    CRYPTO_ALGOFAM_NOT_SET,
    CRYPTO_ALGOFAM_PADDING_ONEWITHZEROS,
    CRYPTO_ALGOFAM_PADDING_PKCS7,
    CRYPTO_ALGOFAM_PBKDF2,
    CRYPTO_ALGOFAM_POLY1305,
    CRYPTO_ALGOFAM_RIPEMD160,
    CRYPTO_ALGOFAM_RNG,
    CRYPTO_ALGOFAM_RSA,
    CRYPTO_ALGOFAM_SHA1,
    CRYPTO_ALGOFAM_SHA2_224,
    CRYPTO_ALGOFAM_SHA2_256,
    CRYPTO_ALGOFAM_SHA2_384,
    CRYPTO_ALGOFAM_SHA2_512,
    CRYPTO_ALGOFAM_SHA2_512_224,
    CRYPTO_ALGOFAM_SHA2_512_256,
    CRYPTO_ALGOFAM_SHA3_224,
    CRYPTO_ALGOFAM_SHA3_256,
    CRYPTO_ALGOFAM_SHA3_384,
    CRYPTO_ALGOFAM_SHA3_512,
    CRYPTO_ALGOFAM_SHAKE128,
    CRYPTO_ALGOFAM_SHAKE256,
    CRYPTO_ALGOFAM_SIPHASH,
    CRYPTO_ALGOFAM_SM1,
    CRYPTO_ALGOFAM_SM2,
    CRYPTO_ALGOFAM_SM3,
    CRYPTO_ALGOFAM_SM4,
    CRYPTO_ALGOFAM_X25519
} Crypto_AlgorithmFamilyType;



 
typedef enum
{
    CRYPTO_ALGOMODE_12ROUNDS = 0x01u,
    CRYPTO_ALGOMODE_20ROUNDS,
    CRYPTO_ALGOMODE_8ROUNDS,
    CRYPTO_ALGOMODE_CBC,
    CRYPTO_ALGOMODE_CFB,
    CRYPTO_ALGOMODE_CMAC,
    CRYPTO_ALGOMODE_CTR,
    CRYPTO_ALGOMODE_CTRDRBG,
    CRYPTO_ALGOMODE_CUSTOM,
    CRYPTO_ALGOMODE_ECB,
    CRYPTO_ALGOMODE_GCM,
    CRYPTO_ALGOMODE_GMAC,
    CRYPTO_ALGOMODE_HMAC,
    CRYPTO_ALGOMODE_NOT_SET,
    CRYPTO_ALGOMODE_OFB,
    CRYPTO_ALGOMODE_PXXXR,
    CRYPTO_ALGOMODE_RSAES_OAEP,
    CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5,
    CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5,
    CRYPTO_ALGOMODE_RSASSA_PSS,
    CRYPTO_ALGOMODE_SIPHASH_2_4,
    CRYPTO_ALGOMODE_SIPHASH_4_8,
    CRYPTO_ALGOMODE_XTS
} Crypto_AlgorithmModeType;



 



 
   
typedef enum
{
    CRYPTO_REDIRECT_CONFIG_PRIMARY_INPUT = 0x01u,
    CRYPTO_REDIRECT_CONFIG_SECONDARY_INPUT = 0x02u,
    CRYPTO_REDIRECT_CONFIG_TERTIARY_INPUT = 0x04u,
    CRYPTO_REDIRECT_CONFIG_PRIMARY_OUTPUT = 0x10u,
    CRYPTO_REDIRECT_CONFIG_SECONDARY_OUTPUT = 0x20u
} Crypto_InputOutputRedirectionConfigType;
   
 
typedef enum
{

    CRYPTO_JOBSTATE_IDLE = 0x00u,   
    CRYPTO_JOBSTATE_ACTIVE = 0x01u  
} Crypto_JobStateType;


 
typedef struct
{
    const uint8 * inputPtr;
    uint32 inputLength;
    const uint8 * secondaryInputPtr;
    uint32 secondaryInputLength;
    const uint8 * tertiaryInputPtr;
    uint32 tertiaryInputLength;
    uint8 * outputPtr;
    uint32 * outputLengthPtr;
    uint8 * secondaryOutputPtr;
    uint32 * secondaryOutputLengthPtr;
    uint64 input64;
    Crypto_VerifyResultType * verifyPtr;
    uint64 * output64Ptr;
    Crypto_OperationModeType mode;
    uint32 cryIfKeyId;
    uint32 targetCryIfKeyId;
} Crypto_JobPrimitiveInputOutputType;

 
typedef enum
{
    CRYPTO_HASH = 0x00u,                   
    CRYPTO_MACGENERATE = 0x01u,            
    CRYPTO_MACVERIFY = 0x02u,              
    CRYPTO_ENCRYPT = 0x03u,                
    CRYPTO_DECRYPT = 0x04u,                
    CRYPTO_AEADENCRYPT = 0x05u,            
    CRYPTO_AEADDECRYPT = 0x06u,            
    CRYPTO_SIGNATUREGENERATE = 0x07u,      
    CRYPTO_SIGNATUREVERIFY = 0x08u,        
    CRYPTO_SECCOUNTERINCREMENT = 0x09u,    
    CRYPTO_SECCOUNTERREAD = 0x0Au,         
    CRYPTO_RANDOMGENERATE = 0x0Bu,         
    CRYPTO_RANDOMSEED = 0x0Cu,             
    CRYPTO_KEYGENERATE = 0x0Du,            
    CRYPTO_KEYDERIVE = 0x0Eu,              
    CRYPTO_KEYEXCHANGECALCPUBVAL = 0x0Fu,  
    CRYPTO_KEYEXCHANGECALCSECRET = 0x10u,  
    CRYPTO_KEYSETVALID = 0x13u,            
    CUSTOM_SERVICE = 0x15u,                
} Crypto_ServiceInfoType;

 
typedef struct
{
    Crypto_AlgorithmFamilyType family;
    Crypto_AlgorithmFamilyType secondaryFamily;
    uint32 keyLength;
    Crypto_AlgorithmModeType mode;
} Crypto_AlgorithmInfoType;

 
typedef struct
{
    const uint32 resultLength;
    const Crypto_ServiceInfoType service;
    const Crypto_AlgorithmInfoType algorithm;
} Crypto_PrimitiveInfoType;

 
typedef enum
{
    CRYPTO_PROCESSING_ASYNC = 0x00u,  
    CRYPTO_PROCESSING_SYNC = 0x01u    
} Crypto_ProcessingType;


 
typedef struct
{
    uint32 callbackId;
    const Crypto_PrimitiveInfoType * primitiveInfo;
    uint32 cryIfKeyId;
    Crypto_ProcessingType processingType;
    boolean callbackUpdateNotification;
} Crypto_JobPrimitiveInfoType;

 
typedef struct
{
    const uint32 jobId;
    const uint32 jobPriority;
} Crypto_JobInfoType;



 
typedef struct
{
    uint8 redirectionConfig;
    uint32 inputKeyId;
    uint32 inputKeyElementId;
    uint32 secondaryInputKeyId;
    uint32 secondaryInputKeyElementId;
    uint32 tertiaryInputKeyId;
    uint32 tertiaryInputKeyElementId;
    uint32 outputKeyId;
    uint32 outputKeyElementId;
    uint32 secondaryOutputKeyId;
    uint32 secondaryOutputKeyElementId;
} Crypto_JobRedirectionInfoType;


 
typedef struct
{
    uint32 jobId;
    Crypto_JobStateType jobState;
    Crypto_JobPrimitiveInputOutputType jobPrimitiveInputOutput;
    const Crypto_JobPrimitiveInfoType * jobPrimitiveInfo;
    const Crypto_JobInfoType * jobInfo;
    uint32 cryptoKeyId;
    Crypto_JobRedirectionInfoType * jobRedirectionInfoRef;
    uint32 targetCryptoKeyId;
} Crypto_JobType;



 



 

 




















 
 

 


 

 

 

 

 

 

 

 

 

 

 

 

 

 


 



 

typedef enum
{
     
    CRYPTO_DRIVER_UNINIT = 0x00,
     
    CRYPTO_DRIVER_IDLE = 0x01,
     
    CRYPTO_DRIVER_BUSY = 0x02,
} Crypto_DriverStatusType;


typedef enum
{
    CRYPTO_KE_FORMAT_BIN_OCTET = 0x01,
    CRYPTO_KE_FORMAT_BIN_SHEKEYS = 0x02,
    CRYPTO_KE_FORMAT_BIN_IDENT_PRIVATEKEY_PKCS8 = 0x03,
    CRYPTO_KE_FORMAT_BIN_IDENT_PUBLICKEY = 0x04,
    CRYPTO_KE_FORMAT_BIN_RSA_PRIVATEKEY = 0x05,
    CRYPTO_KE_FORMAT_BIN_RSA_PUBLICKEY = 0x06,
    CRYPTO_KE_FORMAT_BIN_CERT_X509_V3 = 0x07,
    CRYPTO_KE_FORMAT_BIN_CERT_CVC = 0x08,
} CryptoKeyElementFormat;



 
typedef enum
{

     
    CRYPTO_RA_ALLOWED = 0x00u,
     
    CRYPTO_RA_ENCRYPTED = 0x01u,
     
    CRYPTO_RA_DENIED = 0x02,
     
    CRYPTO_RA_INTERNAL_COPY = 0x03
} Crypto_KeyElemReadAccessType;



 
typedef enum
{

     
    CRYPTO_WA_ALLOWED = 0x00,
     
    CRYPTO_WA_ENCRYPTED = 0x01,
     
    CRYPTO_WA_INTERNAL_COPY = 0x02,
     
    CRYPTO_WA_DENIED = 0x03
} Crypto_KeyElemWriteAccessType;



 

typedef struct
{
     
    boolean CryptoKeyElementAllowPartialAccess;
     
    CryptoKeyElementFormat CryptoKeyElementFormat;
     
    uint32 CryptoKeyElementId;
     
    uint8 * CryptoKeyElementInitValue;
     
    boolean CryptoKeyElementPersist;
     
    Crypto_KeyElemReadAccessType CryptoKeyElementReadAccess;
     
    uint32 CryptoKeyElementSize;
     
    Crypto_KeyElemWriteAccessType CryptoKeyElementWriteAccess;
     
    uint32 * CryptoKeyElementLength;
} Crypto_KeyElementCfgType;



 
typedef struct
{
     
    uint8 KeyElementNum;
     
    const Crypto_KeyElementCfgType * CryptoKeyElementRef;
} Crypto_KeyTypeCfgType;

typedef struct
{
     
    uint32 CryptoKeyId;
     
    const Crypto_KeyTypeCfgType * CryptoKeyTypeRef;
} Crypto_KeyCfgType;



 
typedef struct
{
    
 
    uint32 CryptoDriverObjectId;
    

 
    uint32 CryptoQueueSize;
    



 
    uint8 CryptoDefaultRandomKeyRef;
    







 
    uint8 CryptoDefaultRandomPrimitiveRef;
    



 
    uint8 CryptoDriverObjectEcucPartitionRef;
    

 
    uint8 CryptoPrimitiveRef;
} Crypto_DriverObjectCfgType;



 



 


typedef struct
{
    int nr;          
    uint32* rk;      
    uint32 buf[68]; 






 
} Crypto_AESData;


 Std_ReturnType
Crypto_aes_setkey_enc(Crypto_AESData* ctx, uint8 * key, uint16 keybits);
 Std_ReturnType
Crypto_aes_setkey_dec(Crypto_AESData* ctx, uint8 * key, uint16 keybits);
 Std_ReturnType
Crypto_aes_crypt_ecb(Crypto_AESData* ctx, uint8 mode, const uint8 input[16], uint8 output[16]);
 Std_ReturnType
Crypto_aes_crypt_cbc(
    Crypto_AESData* ctx,
    uint8 mode,
    uint8 length,
    uint8 iv[16],
    uint8 * input,
    uint8 * output);
 Std_ReturnType Crypto_AESEncryptECB(uint8 * key, uint8 buf[64]);
 Std_ReturnType Crypto_AESDecryptECB(uint8 * key, uint8 buf[64]);
 Std_ReturnType
Crypto_AESEncryptCBC(uint8 * key, uint8 buf[64], uint8 iv[16], uint8 inputlength);
 Std_ReturnType
Crypto_AESDecryptCBC(uint8 * key, uint8 buf[16], uint8 iv[16], uint8 inputlength);
 Std_ReturnType
Crypto_AESEncryptCTR(uint8 * key, uint8 buf[64], uint8 iv[16]);
 Std_ReturnType
Crypto_AESDecryptCTR(uint8 * key, uint8 buf[64], uint8 iv[16]);
 Std_ReturnType
Crypto_aes_crypt_cbc_CMAC(
    Crypto_AESData* ctx,
    uint8 mode,
    uint8 length,
    uint8 iv[16],
    uint8 * input,
    uint8 * output);












 












 


 


 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
typedef struct STag_tDet_Error
{  
  uint16 ModuleId;

   
  uint8 InstanceId;

   
  uint8 ApiId;

   
  uint8 ErrorId;

}tDet_Error;




 
extern Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);

extern Std_ReturnType Det_ReportRuntimeError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);


 












 












 


























 




 












 












 



 



 



 


 



 

 
typedef struct
{
    const Crypto_JobPrimitiveInfoType * jobPrimitiveInfo;
    const Crypto_JobInfoType * jobInfo;
    Crypto_JobRedirectionInfoType * inOutRedirtRef;
    uint32 queRef;
    boolean usePort;
} Csm_JobsCfgType;

 
typedef struct
{
    uint32 cryIfKey;
    boolean usePort;
} Csm_KeyCfgType;

 
typedef struct
{
    uint32 queueSize;
    uint32 cryIfChRef;
} Csm_QueueCfgType;

 
typedef uint16 Csm_ConfigIdType;












 












 


 
















 




 
 




















 
 



 



 



 




 




 




 



 


     



 


 

 




 

typedef uint8 CryIf_ConfigType;

typedef struct
{
     
    Std_ReturnType (*Crypto_ProcessJob_Name)
    (uint32 channelId, Crypto_JobType * job);
     
    Std_ReturnType (*Crypto_CancelJob_Name)
    (uint32 channelId, Crypto_JobType * job);
     
    Std_ReturnType (*Crypto_KeyElementSet_Name)
    (uint32 cryIfKeyId,
     uint32 keyElementId,
     const uint8 * keyPtr,
     uint32 keyLength);
     
    Std_ReturnType (*Crypto_KeySetValid_Name)(uint32 cryIfKeyId);
     
    Std_ReturnType (*Crypto_KeyElementGet_Name)
    (uint32 cryIfKeyId,
     uint32 keyElementId,
     uint8 * resultPtr,
     uint32 * resultLengthPtr);
     
    Std_ReturnType (*Crypto_KeyElementCopy_Name)
    (uint32 cryptoKeyId,
     uint32 keyElementId,
     uint32 targetCryptoKeyId,
     uint32 targetKeyElementId);
     
    Std_ReturnType (*Crypto_KeyElementCopyPartial_Name)
    (uint32 cryIfKeyId,
     uint32 keyElementId,
     uint32 keyElementSourceOffset,
     uint32 keyElementTargetOffset,
     uint32 keyElementCopyLength,
     uint32 targetCryIfKeyId,
     uint32 targetKeyElementId);
     
    Std_ReturnType (*Crypto_KeyCopy_Name)
    (uint32 cryIfKeyId, uint32 targetCryIfKeyId);
     
    Std_ReturnType (*Crypto_RandomSeed_Name)
    (uint32 cryIfKeyId,
     const uint8 * seedPtr,
     uint32 seedLength);
     
    Std_ReturnType (*Crypto_KeyGenerate_Name)(uint32 cryIfKeyId);
     
    Std_ReturnType (*Crypto_KeyDerive_Name)
    (uint32 cryIfKeyId, uint32 targetCryIfKeyId);
     
    Std_ReturnType (*Crypto_KeyExchangeCalcPubVal_Name)
    (uint32 cryIfKeyId,
     uint8 * publicValuePtr,
     uint32 * publicValueLengthPtr);
     
    Std_ReturnType (*Crypto_KeyExchangeCalcSecret_Name)
    (uint32 cryIfKeyId,
     const uint8 * partnerPublicValuePtr,
     uint32 partnerPublicValueLength);
} CryIf_FuncNameConfigType;

typedef struct
{
    uint32 KeyId;
    uint32 CryptoKeyId;
} CryIf_KeyCfgType;

typedef struct
{
    uint32 ChannelId;
    uint32 CryptoDriverObjectId;
} CryIf_ChannelCfgType;


 
extern const CryIf_KeyCfgType CryIf_KeyCfg[(1U)];
extern const CryIf_FuncNameConfigType CryIf_DriverApi[(1U)];



 










 
 void
CryIf_Init(const CryIf_ConfigType * configPtr);










 

















 
 Std_ReturnType
CryIf_ProcessJob(uint32 channelId, Crypto_JobType * job);












 
 Std_ReturnType
CryIf_CancelJob(uint32 channelId, Crypto_JobType * job);




















 

 Std_ReturnType
CryIf_KeyElementSet(
    uint32 cryIfKeyId,
    uint32 keyElementId,
    const uint8 * keyPtr,
    uint32 keyLength);













 

 Std_ReturnType
CryIf_KeySetValid(uint32 cryIfKeyId);


























 

 Std_ReturnType
CryIf_KeyElementGet(
    uint32 cryIfKeyId,
    uint32 keyElementId,
    uint8 * resultPtr,
    uint32 * resultLengthPtr);


















 

 Std_ReturnType
CryIf_KeyElementCopy(
    uint32 cryIfKeyId,
    uint32 keyElementId,
    uint32 targetCryIfKeyId,
    uint32 targetKeyElementId);
























 

 Std_ReturnType
CryIf_KeyElementCopyPartial(
    uint32 cryIfKeyId,
    uint32 keyElementId,
    uint32 keyElementSourceOffset,
    uint32 keyElementTargetOffset,
    uint32 keyElementCopyLength,
    uint32 targetCryIfKeyId,
    uint32 targetKeyElementId);




















 

 Std_ReturnType
CryIf_KeyCopy(uint32 cryIfKeyId, uint32 targetCryIfKeyId);















 

 Std_ReturnType
CryIf_RandomSeed(
    uint32 cryIfKeyId,
    const uint8 * seedPtr,
    uint32 seedLength);














 

 Std_ReturnType
CryIf_KeyGenerate(uint32 cryIfKeyId);















 

 Std_ReturnType
CryIf_KeyDerive(uint32 cryIfKeyId, uint32 targetCryIfKeyId);











 

 Std_ReturnType
CryIf_KeyExchangeCalcPubVal(
    uint32 cryIfKeyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr);















 

 Std_ReturnType
CryIf_KeyExchangeCalcSecret(
    uint32 cryIfKeyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength);



























 
   
   
   








 
extern void SchM_Enter_CryPto_ExclusiveArea_Channel(void);
extern void SchM_Exit_CryPto_ExclusiveArea_Channel(void);














 



 

 

 

 



 

typedef uint8 Crypto_ConfigType;



 



 












 

 
 void Crypto_ISoft_Init(const Crypto_ConfigType * configPtr);









 

























 

 
 Std_ReturnType
Crypto_ISoft_ProcessJob(uint32 objectId, Crypto_JobType * job);














 

 Std_ReturnType
Crypto_ISoft_CancelJob(uint32 objectId, Crypto_JobType * job);




















 
 Std_ReturnType
Crypto_ISoft_KeyElementSet(
    uint32 cryptokeyId,
    uint32 keyElementId,
    const uint8 * keyPtr,
    uint32 keyLength);















 

 Std_ReturnType Crypto_ISoft_KeySetValid(uint32 cryptoKeyId);


























 
 Std_ReturnType
Crypto_ISoft_KeyElementGet(
    uint32 cryptoKeyId,
    uint32 keyElementId,
    uint8 * resultPtr,
    uint32 * resultLengthPtr);


























 

 Std_ReturnType
Crypto_ISoft_KeyElementCopy(
    uint32 cryptoKeyId,
    uint32 keyElementId,
    uint32 targetCryptoKeyId,
    uint32 targetKeyElementId);




































 
 Std_ReturnType
Crypto_ISoft_KeyElementCopyPartial(
    uint32 cryptoKeyId,
    uint32 keyElementId,
    uint32 keyElementSourceOffset,
    uint32 keyElementTargetOffset,
    uint32 keyElementCopyLength,
    uint32 targetCryptoKeyId,
    uint32 targetKeyElementId);


























 
 Std_ReturnType
Crypto_ISoft_KeyCopy(uint32 cryptoKeyId, uint32 targetCryptoKeyId);






















 

 Std_ReturnType
Crypto_ISoft_KeyElementIdsGet(
    uint32 cryptoKeyId,
    uint32 * keyElementIdsPtr,
    uint32 * keyElementIdsLengthPtr);





















 
 Std_ReturnType
Crypto_ISoft_RandomSeed(
    uint32 cryptoKeyId,
    const uint8 * seedPtr,
    uint32 seedLength);



















 
 Std_ReturnType Crypto_ISoft_KeyGenerate(uint32 cryptoKeyId);























 
 Std_ReturnType
Crypto_ISoft_KeyDerive(uint32 cryptoKeyId, uint32 targetCryptoKeyId);























 

 Std_ReturnType
Crypto_ISoft_KeyExchangeCalcPubVal(
    uint32 cryptoKeyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr);
























 

 Std_ReturnType
Crypto_ISoft_KeyExchangeCalcSecret(
    uint32 cryptoKeyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength);




















 
 Std_ReturnType
Crypto_ISoft_CertificateParse(uint32 cryptoKeyId);






















 

 Std_ReturnType
Crypto_ISoft_CertificateVerify(
    uint32 cryptoKeyId,
    uint32 verifyCryptoKeyId,
    Crypto_VerifyResultType * verifyPtr);



 

 




 



 
 
static inline void Crypto_ReportDetErr(uint8 serviceId, uint8 error)
{
    (void)Det_ReportError(114, ((uint8)0), (serviceId), (error));
}



 



 
 
typedef enum
{
    CRYPTO_KEYSTATE_INVALID = 0x00u,  
    CRYPTO_KEYSTATE_VALID = 0x01u     
} Crypto_KeyStateType;

extern const Crypto_KeyCfgType Crypto_Key[(1U)];

extern Crypto_KeyStateType CryptoKeyStatus[(1U)];

extern const Crypto_DriverObjectCfgType Crypto_DriverObjects[(1U)];




 

 Std_ReturnType
Crypto_KeyElementIndexFind(
    uint32 cryptokeyId,
    uint32 keyElementId,
    uint32 * getkeyElementId);
 Std_ReturnType
Get_Key(
    uint32 cryptoKeyId,
    uint8 * key,

    uint8 keyelementid);
 void Crypto_memcpy(void* buf, const void* buf1, uint32 len);
 void Crypto_memset(void* buf, uint32 len);
 void Crypto_memsetVal(void* buf, uint8 val, uint32 len);
 Std_ReturnType
Crypto_KeyElementSetInternal(
    uint32 cryptokeyId,
    uint32 keyElementId,
    const uint8 * keyPtr,
    uint32 keyLength);













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType internal_aes_encrypt(Crypto_AESData* ctx, const uint8 input[16], uint8 output[16]);
 Std_ReturnType internal_aes_decrypt(Crypto_AESData* ctx, const uint8 input[16], uint8 output[16]);





 
static const uint8 FSb[256] = {
    0x63, 0x7C, 0x77, 0x7B, 0xF2, 0x6B, 0x6F, 0xC5, 0x30, 0x01, 0x67, 0x2B, 0xFE, 0xD7, 0xAB, 0x76, 0xCA, 0x82, 0xC9,
    0x7D, 0xFA, 0x59, 0x47, 0xF0, 0xAD, 0xD4, 0xA2, 0xAF, 0x9C, 0xA4, 0x72, 0xC0, 0xB7, 0xFD, 0x93, 0x26, 0x36, 0x3F,
    0xF7, 0xCC, 0x34, 0xA5, 0xE5, 0xF1, 0x71, 0xD8, 0x31, 0x15, 0x04, 0xC7, 0x23, 0xC3, 0x18, 0x96, 0x05, 0x9A, 0x07,
    0x12, 0x80, 0xE2, 0xEB, 0x27, 0xB2, 0x75, 0x09, 0x83, 0x2C, 0x1A, 0x1B, 0x6E, 0x5A, 0xA0, 0x52, 0x3B, 0xD6, 0xB3,
    0x29, 0xE3, 0x2F, 0x84, 0x53, 0xD1, 0x00, 0xED, 0x20, 0xFC, 0xB1, 0x5B, 0x6A, 0xCB, 0xBE, 0x39, 0x4A, 0x4C, 0x58,
    0xCF, 0xD0, 0xEF, 0xAA, 0xFB, 0x43, 0x4D, 0x33, 0x85, 0x45, 0xF9, 0x02, 0x7F, 0x50, 0x3C, 0x9F, 0xA8, 0x51, 0xA3,
    0x40, 0x8F, 0x92, 0x9D, 0x38, 0xF5, 0xBC, 0xB6, 0xDA, 0x21, 0x10, 0xFF, 0xF3, 0xD2, 0xCD, 0x0C, 0x13, 0xEC, 0x5F,
    0x97, 0x44, 0x17, 0xC4, 0xA7, 0x7E, 0x3D, 0x64, 0x5D, 0x19, 0x73, 0x60, 0x81, 0x4F, 0xDC, 0x22, 0x2A, 0x90, 0x88,
    0x46, 0xEE, 0xB8, 0x14, 0xDE, 0x5E, 0x0B, 0xDB, 0xE0, 0x32, 0x3A, 0x0A, 0x49, 0x06, 0x24, 0x5C, 0xC2, 0xD3, 0xAC,
    0x62, 0x91, 0x95, 0xE4, 0x79, 0xE7, 0xC8, 0x37, 0x6D, 0x8D, 0xD5, 0x4E, 0xA9, 0x6C, 0x56, 0xF4, 0xEA, 0x65, 0x7A,
    0xAE, 0x08, 0xBA, 0x78, 0x25, 0x2E, 0x1C, 0xA6, 0xB4, 0xC6, 0xE8, 0xDD, 0x74, 0x1F, 0x4B, 0xBD, 0x8B, 0x8A, 0x70,
    0x3E, 0xB5, 0x66, 0x48, 0x03, 0xF6, 0x0E, 0x61, 0x35, 0x57, 0xB9, 0x86, 0xC1, 0x1D, 0x9E, 0xE1, 0xF8, 0x98, 0x11,
    0x69, 0xD9, 0x8E, 0x94, 0x9B, 0x1E, 0x87, 0xE9, 0xCE, 0x55, 0x28, 0xDF, 0x8C, 0xA1, 0x89, 0x0D, 0xBF, 0xE6, 0x42,
    0x68, 0x41, 0x99, 0x2D, 0x0F, 0xB0, 0x54, 0xBB, 0x16};



 

static const uint32 FT0[256] = {0xA56363C6u, 0x847C7CF8u, 0x997777EEu, 0x8D7B7BF6u, 0x0DF2F2FFu, 0xBD6B6BD6u, 0xB16F6FDEu, 0x54C5C591u, 0x50303060u, 0x03010102u, 0xA96767CEu, 0x7D2B2B56u, 0x19FEFEE7u, 0x62D7D7B5u, 0xE6ABAB4Du, 0x9A7676ECu, 0x45CACA8Fu, 0x9D82821Fu, 0x40C9C989u, 0x877D7DFAu, 0x15FAFAEFu, 0xEB5959B2u, 0xC947478Eu, 0x0BF0F0FBu, 0xECADAD41u, 0x67D4D4B3u, 0xFDA2A25Fu, 0xEAAFAF45u, 0xBF9C9C23u, 0xF7A4A453u, 0x967272E4u, 0x5BC0C09Bu, 0xC2B7B775u, 0x1CFDFDE1u, 0xAE93933Du, 0x6A26264Cu, 0x5A36366Cu, 0x413F3F7Eu, 0x02F7F7F5u, 0x4FCCCC83u, 0x5C343468u, 0xF4A5A551u, 0x34E5E5D1u, 0x08F1F1F9u, 0x937171E2u, 0x73D8D8ABu, 0x53313162u, 0x3F15152Au, 0x0C040408u, 0x52C7C795u, 0x65232346u, 0x5EC3C39Du, 0x28181830u, 0xA1969637u, 0x0F05050Au, 0xB59A9A2Fu, 0x0907070Eu, 0x36121224u, 0x9B80801Bu, 0x3DE2E2DFu, 0x26EBEBCDu, 0x6927274Eu, 0xCDB2B27Fu, 0x9F7575EAu, 0x1B090912u, 0x9E83831Du, 0x742C2C58u, 0x2E1A1A34u, 0x2D1B1B36u, 0xB26E6EDCu, 0xEE5A5AB4u, 0xFBA0A05Bu, 0xF65252A4u, 0x4D3B3B76u, 0x61D6D6B7u, 0xCEB3B37Du, 0x7B292952u, 0x3EE3E3DDu, 0x712F2F5Eu, 0x97848413u, 0xF55353A6u, 0x68D1D1B9u, 0x00000000u, 0x2CEDEDC1u, 0x60202040u, 0x1FFCFCE3u, 0xC8B1B179u, 0xED5B5BB6u, 0xBE6A6AD4u, 0x46CBCB8Du, 0xD9BEBE67u, 0x4B393972u, 0xDE4A4A94u, 0xD44C4C98u, 0xE85858B0u, 0x4ACFCF85u, 0x6BD0D0BBu, 0x2AEFEFC5u, 0xE5AAAA4Fu, 0x16FBFBEDu, 0xC5434386u, 0xD74D4D9Au, 0x55333366u, 0x94858511u, 0xCF45458Au, 0x10F9F9E9u, 0x06020204u, 0x817F7FFEu, 0xF05050A0u, 0x443C3C78u, 0xBA9F9F25u, 0xE3A8A84Bu, 0xF35151A2u, 0xFEA3A35Du, 0xC0404080u, 0x8A8F8F05u, 0xAD92923Fu, 0xBC9D9D21u, 0x48383870u, 0x04F5F5F1u, 0xDFBCBC63u, 0xC1B6B677u, 0x75DADAAFu, 0x63212142u, 0x30101020u, 0x1AFFFFE5u, 0x0EF3F3FDu, 0x6DD2D2BFu, 0x4CCDCD81u, 0x140C0C18u, 0x35131326u, 0x2FECECC3u, 0xE15F5FBEu, 0xA2979735u, 0xCC444488u, 0x3917172Eu, 0x57C4C493u, 0xF2A7A755u, 0x827E7EFCu, 0x473D3D7Au, 0xAC6464C8u, 0xE75D5DBAu, 0x2B191932u, 0x957373E6u, 0xA06060C0u, 0x98818119u, 0xD14F4F9Eu, 0x7FDCDCA3u, 0x66222244u, 0x7E2A2A54u, 0xAB90903Bu, 0x8388880Bu, 0xCA46468Cu, 0x29EEEEC7u, 0xD3B8B86Bu, 0x3C141428u, 0x79DEDEA7u, 0xE25E5EBCu, 0x1D0B0B16u, 0x76DBDBADu, 0x3BE0E0DBu, 0x56323264u, 0x4E3A3A74u, 0x1E0A0A14u, 0xDB494992u, 0x0A06060Cu, 0x6C242448u, 0xE45C5CB8u, 0x5DC2C29Fu, 0x6ED3D3BDu, 0xEFACAC43u, 0xA66262C4u, 0xA8919139u, 0xA4959531u, 0x37E4E4D3u, 0x8B7979F2u, 0x32E7E7D5u, 0x43C8C88Bu, 0x5937376Eu, 0xB76D6DDAu, 0x8C8D8D01u, 0x64D5D5B1u, 0xD24E4E9Cu, 0xE0A9A949u, 0xB46C6CD8u, 0xFA5656ACu, 0x07F4F4F3u, 0x25EAEACFu, 0xAF6565CAu, 0x8E7A7AF4u, 0xE9AEAE47u, 0x18080810u, 0xD5BABA6Fu, 0x887878F0u, 0x6F25254Au, 0x722E2E5Cu, 0x241C1C38u, 0xF1A6A657u, 0xC7B4B473u, 0x51C6C697u, 0x23E8E8CBu, 0x7CDDDDA1u, 0x9C7474E8u, 0x211F1F3Eu, 0xDD4B4B96u, 0xDCBDBD61u, 0x868B8B0Du, 0x858A8A0Fu, 0x907070E0u, 0x423E3E7Cu, 0xC4B5B571u, 0xAA6666CCu, 0xD8484890u, 0x05030306u, 0x01F6F6F7u, 0x120E0E1Cu, 0xA36161C2u, 0x5F35356Au, 0xF95757AEu, 0xD0B9B969u, 0x91868617u, 0x58C1C199u, 0x271D1D3Au, 0xB99E9E27u, 0x38E1E1D9u, 0x13F8F8EBu, 0xB398982Bu, 0x33111122u, 0xBB6969D2u, 0x70D9D9A9u, 0x898E8E07u, 0xA7949433u, 0xB69B9B2Du, 0x221E1E3Cu, 0x92878715u, 0x20E9E9C9u, 0x49CECE87u, 0xFF5555AAu, 0x78282850u, 0x7ADFDFA5u, 0x8F8C8C03u, 0xF8A1A159u, 0x80898909u, 0x170D0D1Au, 0xDABFBF65u, 0x31E6E6D7u, 0xC6424284u, 0xB86868D0u, 0xC3414182u, 0xB0999929u, 0x772D2D5Au, 0x110F0F1Eu, 0xCBB0B07Bu, 0xFC5454A8u, 0xD6BBBB6Du, 0x3A16162Cu};


static const uint32 FT1[256] = {0x6363C6A5u, 0x7C7CF884u, 0x7777EE99u, 0x7B7BF68Du, 0xF2F2FF0Du, 0x6B6BD6BDu, 0x6F6FDEB1u, 0xC5C59154u, 0x30306050u, 0x01010203u, 0x6767CEA9u, 0x2B2B567Du, 0xFEFEE719u, 0xD7D7B562u, 0xABAB4DE6u, 0x7676EC9Au, 0xCACA8F45u, 0x82821F9Du, 0xC9C98940u, 0x7D7DFA87u, 0xFAFAEF15u, 0x5959B2EBu, 0x47478EC9u, 0xF0F0FB0Bu, 0xADAD41ECu, 0xD4D4B367u, 0xA2A25FFDu, 0xAFAF45EAu, 0x9C9C23BFu, 0xA4A453F7u, 0x7272E496u, 0xC0C09B5Bu, 0xB7B775C2u, 0xFDFDE11Cu, 0x93933DAEu, 0x26264C6Au, 0x36366C5Au, 0x3F3F7E41u, 0xF7F7F502u, 0xCCCC834Fu, 0x3434685Cu, 0xA5A551F4u, 0xE5E5D134u, 0xF1F1F908u, 0x7171E293u, 0xD8D8AB73u, 0x31316253u, 0x15152A3Fu, 0x0404080Cu, 0xC7C79552u, 0x23234665u, 0xC3C39D5Eu, 0x18183028u, 0x969637A1u, 0x05050A0Fu, 0x9A9A2FB5u, 0x07070E09u, 0x12122436u, 0x80801B9Bu, 0xE2E2DF3Du, 0xEBEBCD26u, 0x27274E69u, 0xB2B27FCDu, 0x7575EA9Fu, 0x0909121Bu, 0x83831D9Eu, 0x2C2C5874u, 0x1A1A342Eu, 0x1B1B362Du, 0x6E6EDCB2u, 0x5A5AB4EEu, 0xA0A05BFBu, 0x5252A4F6u, 0x3B3B764Du, 0xD6D6B761u, 0xB3B37DCEu, 0x2929527Bu, 0xE3E3DD3Eu, 0x2F2F5E71u, 0x84841397u, 0x5353A6F5u, 0xD1D1B968u, 0x00000000u, 0xEDEDC12Cu, 0x20204060u, 0xFCFCE31Fu, 0xB1B179C8u, 0x5B5BB6EDu, 0x6A6AD4BEu, 0xCBCB8D46u, 0xBEBE67D9u, 0x3939724Bu, 0x4A4A94DEu, 0x4C4C98D4u, 0x5858B0E8u, 0xCFCF854Au, 0xD0D0BB6Bu, 0xEFEFC52Au, 0xAAAA4FE5u, 0xFBFBED16u, 0x434386C5u, 0x4D4D9AD7u, 0x33336655u, 0x85851194u, 0x45458ACFu, 0xF9F9E910u, 0x02020406u, 0x7F7FFE81u, 0x5050A0F0u, 0x3C3C7844u, 0x9F9F25BAu, 0xA8A84BE3u, 0x5151A2F3u, 0xA3A35DFEu, 0x404080C0u, 0x8F8F058Au, 0x92923FADu, 0x9D9D21BCu, 0x38387048u, 0xF5F5F104u, 0xBCBC63DFu, 0xB6B677C1u, 0xDADAAF75u, 0x21214263u, 0x10102030u, 0xFFFFE51Au, 0xF3F3FD0Eu, 0xD2D2BF6Du, 0xCDCD814Cu, 0x0C0C1814u, 0x13132635u, 0xECECC32Fu, 0x5F5FBEE1u, 0x979735A2u, 0x444488CCu, 0x17172E39u, 0xC4C49357u, 0xA7A755F2u, 0x7E7EFC82u, 0x3D3D7A47u, 0x6464C8ACu, 0x5D5DBAE7u, 0x1919322Bu, 0x7373E695u, 0x6060C0A0u, 0x81811998u, 0x4F4F9ED1u, 0xDCDCA37Fu, 0x22224466u, 0x2A2A547Eu, 0x90903BABu, 0x88880B83u, 0x46468CCAu, 0xEEEEC729u, 0xB8B86BD3u, 0x1414283Cu, 0xDEDEA779u, 0x5E5EBCE2u, 0x0B0B161Du, 0xDBDBAD76u, 0xE0E0DB3Bu, 0x32326456u, 0x3A3A744Eu, 0x0A0A141Eu, 0x494992DBu, 0x06060C0Au, 0x2424486Cu, 0x5C5CB8E4u, 0xC2C29F5Du, 0xD3D3BD6Eu, 0xACAC43EFu, 0x6262C4A6u, 0x919139A8u, 0x959531A4u, 0xE4E4D337u, 0x7979F28Bu, 0xE7E7D532u, 0xC8C88B43u, 0x37376E59u, 0x6D6DDAB7u, 0x8D8D018Cu, 0xD5D5B164u, 0x4E4E9CD2u, 0xA9A949E0u, 0x6C6CD8B4u, 0x5656ACFAu, 0xF4F4F307u, 0xEAEACF25u, 0x6565CAAFu, 0x7A7AF48Eu, 0xAEAE47E9u, 0x08081018u, 0xBABA6FD5u, 0x7878F088u, 0x25254A6Fu, 0x2E2E5C72u, 0x1C1C3824u, 0xA6A657F1u, 0xB4B473C7u, 0xC6C69751u, 0xE8E8CB23u, 0xDDDDA17Cu, 0x7474E89Cu, 0x1F1F3E21u, 0x4B4B96DDu, 0xBDBD61DCu, 0x8B8B0D86u, 0x8A8A0F85u, 0x7070E090u, 0x3E3E7C42u, 0xB5B571C4u, 0x6666CCAAu, 0x484890D8u, 0x03030605u, 0xF6F6F701u, 0x0E0E1C12u, 0x6161C2A3u, 0x35356A5Fu, 0x5757AEF9u, 0xB9B969D0u, 0x86861791u, 0xC1C19958u, 0x1D1D3A27u, 0x9E9E27B9u, 0xE1E1D938u, 0xF8F8EB13u, 0x98982BB3u, 0x11112233u, 0x6969D2BBu, 0xD9D9A970u, 0x8E8E0789u, 0x949433A7u, 0x9B9B2DB6u, 0x1E1E3C22u, 0x87871592u, 0xE9E9C920u, 0xCECE8749u, 0x5555AAFFu, 0x28285078u, 0xDFDFA57Au, 0x8C8C038Fu, 0xA1A159F8u, 0x89890980u, 0x0D0D1A17u, 0xBFBF65DAu, 0xE6E6D731u, 0x424284C6u, 0x6868D0B8u, 0x414182C3u, 0x999929B0u, 0x2D2D5A77u, 0x0F0F1E11u, 0xB0B07BCBu, 0x5454A8FCu, 0xBBBB6DD6u, 0x16162C3Au};

static const uint32 FT2[256] = {0x63C6A563u, 0x7CF8847Cu, 0x77EE9977u, 0x7BF68D7Bu, 0xF2FF0DF2u, 0x6BD6BD6Bu, 0x6FDEB16Fu, 0xC59154C5u, 0x30605030u, 0x01020301u, 0x67CEA967u, 0x2B567D2Bu, 0xFEE719FEu, 0xD7B562D7u, 0xAB4DE6ABu, 0x76EC9A76u, 0xCA8F45CAu, 0x821F9D82u, 0xC98940C9u, 0x7DFA877Du, 0xFAEF15FAu, 0x59B2EB59u, 0x478EC947u, 0xF0FB0BF0u, 0xAD41ECADu, 0xD4B367D4u, 0xA25FFDA2u, 0xAF45EAAFu, 0x9C23BF9Cu, 0xA453F7A4u, 0x72E49672u, 0xC09B5BC0u, 0xB775C2B7u, 0xFDE11CFDu, 0x933DAE93u, 0x264C6A26u, 0x366C5A36u, 0x3F7E413Fu, 0xF7F502F7u, 0xCC834FCCu, 0x34685C34u, 0xA551F4A5u, 0xE5D134E5u, 0xF1F908F1u, 0x71E29371u, 0xD8AB73D8u, 0x31625331u, 0x152A3F15u, 0x04080C04u, 0xC79552C7u, 0x23466523u, 0xC39D5EC3u, 0x18302818u, 0x9637A196u, 0x050A0F05u, 0x9A2FB59Au, 0x070E0907u, 0x12243612u, 0x801B9B80u, 0xE2DF3DE2u, 0xEBCD26EBu, 0x274E6927u, 0xB27FCDB2u, 0x75EA9F75u, 0x09121B09u, 0x831D9E83u, 0x2C58742Cu, 0x1A342E1Au, 0x1B362D1Bu, 0x6EDCB26Eu, 0x5AB4EE5Au, 0xA05BFBA0u, 0x52A4F652u, 0x3B764D3Bu, 0xD6B761D6u, 0xB37DCEB3u, 0x29527B29u, 0xE3DD3EE3u, 0x2F5E712Fu, 0x84139784u, 0x53A6F553u, 0xD1B968D1u, 0x00000000u, 0xEDC12CEDu, 0x20406020u, 0xFCE31FFCu, 0xB179C8B1u, 0x5BB6ED5Bu, 0x6AD4BE6Au, 0xCB8D46CBu, 0xBE67D9BEu, 0x39724B39u, 0x4A94DE4Au, 0x4C98D44Cu, 0x58B0E858u, 0xCF854ACFu, 0xD0BB6BD0u, 0xEFC52AEFu, 0xAA4FE5AAu, 0xFBED16FBu, 0x4386C543u, 0x4D9AD74Du, 0x33665533u, 0x85119485u, 0x458ACF45u, 0xF9E910F9u, 0x02040602u, 0x7FFE817Fu, 0x50A0F050u, 0x3C78443Cu, 0x9F25BA9Fu, 0xA84BE3A8u, 0x51A2F351u, 0xA35DFEA3u, 0x4080C040u, 0x8F058A8Fu, 0x923FAD92u, 0x9D21BC9Du, 0x38704838u, 0xF5F104F5u, 0xBC63DFBCu, 0xB677C1B6u, 0xDAAF75DAu, 0x21426321u, 0x10203010u, 0xFFE51AFFu, 0xF3FD0EF3u, 0xD2BF6DD2u, 0xCD814CCDu, 0x0C18140Cu, 0x13263513u, 0xECC32FECu, 0x5FBEE15Fu, 0x9735A297u, 0x4488CC44u, 0x172E3917u, 0xC49357C4u, 0xA755F2A7u, 0x7EFC827Eu, 0x3D7A473Du, 0x64C8AC64u, 0x5DBAE75Du, 0x19322B19u, 0x73E69573u, 0x60C0A060u, 0x81199881u, 0x4F9ED14Fu, 0xDCA37FDCu, 0x22446622u, 0x2A547E2Au, 0x903BAB90u, 0x880B8388u, 0x468CCA46u, 0xEEC729EEu, 0xB86BD3B8u, 0x14283C14u, 0xDEA779DEu, 0x5EBCE25Eu, 0x0B161D0Bu, 0xDBAD76DBu, 0xE0DB3BE0u, 0x32645632u, 0x3A744E3Au, 0x0A141E0Au, 0x4992DB49u, 0x060C0A06u, 0x24486C24u, 0x5CB8E45Cu, 0xC29F5DC2u, 0xD3BD6ED3u, 0xAC43EFACu, 0x62C4A662u, 0x9139A891u, 0x9531A495u, 0xE4D337E4u, 0x79F28B79u, 0xE7D532E7u, 0xC88B43C8u, 0x376E5937u, 0x6DDAB76Du, 0x8D018C8Du, 0xD5B164D5u, 0x4E9CD24Eu, 0xA949E0A9u, 0x6CD8B46Cu, 0x56ACFA56u, 0xF4F307F4u, 0xEACF25EAu, 0x65CAAF65u, 0x7AF48E7Au, 0xAE47E9AEu, 0x08101808u, 0xBA6FD5BAu, 0x78F08878u, 0x254A6F25u, 0x2E5C722Eu, 0x1C38241Cu, 0xA657F1A6u, 0xB473C7B4u, 0xC69751C6u, 0xE8CB23E8u, 0xDDA17CDDu, 0x74E89C74u, 0x1F3E211Fu, 0x4B96DD4Bu, 0xBD61DCBDu, 0x8B0D868Bu, 0x8A0F858Au, 0x70E09070u, 0x3E7C423Eu, 0xB571C4B5u, 0x66CCAA66u, 0x4890D848u, 0x03060503u, 0xF6F701F6u, 0x0E1C120Eu, 0x61C2A361u, 0x356A5F35u, 0x57AEF957u, 0xB969D0B9u, 0x86179186u, 0xC19958C1u, 0x1D3A271Du, 0x9E27B99Eu, 0xE1D938E1u, 0xF8EB13F8u, 0x982BB398u, 0x11223311u, 0x69D2BB69u, 0xD9A970D9u, 0x8E07898Eu, 0x9433A794u, 0x9B2DB69Bu, 0x1E3C221Eu, 0x87159287u, 0xE9C920E9u, 0xCE8749CEu, 0x55AAFF55u, 0x28507828u, 0xDFA57ADFu, 0x8C038F8Cu, 0xA159F8A1u, 0x89098089u, 0x0D1A170Du, 0xBF65DABFu, 0xE6D731E6u, 0x4284C642u, 0x68D0B868u, 0x4182C341u, 0x9929B099u, 0x2D5A772Du, 0x0F1E110Fu, 0xB07BCBB0u, 0x54A8FC54u, 0xBB6DD6BBu, 0x162C3A16u};

static const uint32 FT3[256] = {0xC6A56363u, 0xF8847C7Cu, 0xEE997777u, 0xF68D7B7Bu, 0xFF0DF2F2u, 0xD6BD6B6Bu, 0xDEB16F6Fu, 0x9154C5C5u, 0x60503030u, 0x02030101u, 0xCEA96767u, 0x567D2B2Bu, 0xE719FEFEu, 0xB562D7D7u, 0x4DE6ABABu, 0xEC9A7676u, 0x8F45CACAu, 0x1F9D8282u, 0x8940C9C9u, 0xFA877D7Du, 0xEF15FAFAu, 0xB2EB5959u, 0x8EC94747u, 0xFB0BF0F0u, 0x41ECADADu, 0xB367D4D4u, 0x5FFDA2A2u, 0x45EAAFAFu, 0x23BF9C9Cu, 0x53F7A4A4u, 0xE4967272u, 0x9B5BC0C0u, 0x75C2B7B7u, 0xE11CFDFDu, 0x3DAE9393u, 0x4C6A2626u, 0x6C5A3636u, 0x7E413F3Fu, 0xF502F7F7u, 0x834FCCCCu, 0x685C3434u, 0x51F4A5A5u, 0xD134E5E5u, 0xF908F1F1u, 0xE2937171u, 0xAB73D8D8u, 0x62533131u, 0x2A3F1515u, 0x080C0404u, 0x9552C7C7u, 0x46652323u, 0x9D5EC3C3u, 0x30281818u, 0x37A19696u, 0x0A0F0505u, 0x2FB59A9Au, 0x0E090707u, 0x24361212u, 0x1B9B8080u, 0xDF3DE2E2u, 0xCD26EBEBu, 0x4E692727u, 0x7FCDB2B2u, 0xEA9F7575u, 0x121B0909u, 0x1D9E8383u, 0x58742C2Cu, 0x342E1A1Au, 0x362D1B1Bu, 0xDCB26E6Eu, 0xB4EE5A5Au, 0x5BFBA0A0u, 0xA4F65252u, 0x764D3B3Bu, 0xB761D6D6u, 0x7DCEB3B3u, 0x527B2929u, 0xDD3EE3E3u, 0x5E712F2Fu, 0x13978484u, 0xA6F55353u, 0xB968D1D1u, 0x00000000u, 0xC12CEDEDu, 0x40602020u, 0xE31FFCFCu, 0x79C8B1B1u, 0xB6ED5B5Bu, 0xD4BE6A6Au, 0x8D46CBCBu, 0x67D9BEBEu, 0x724B3939u, 0x94DE4A4Au, 0x98D44C4Cu, 0xB0E85858u, 0x854ACFCFu, 0xBB6BD0D0u, 0xC52AEFEFu, 0x4FE5AAAAu, 0xED16FBFBu, 0x86C54343u, 0x9AD74D4Du, 0x66553333u, 0x11948585u, 0x8ACF4545u, 0xE910F9F9u, 0x04060202u, 0xFE817F7Fu, 0xA0F05050u, 0x78443C3Cu, 0x25BA9F9Fu, 0x4BE3A8A8u, 0xA2F35151u, 0x5DFEA3A3u, 0x80C04040u, 0x058A8F8Fu, 0x3FAD9292u, 0x21BC9D9Du, 0x70483838u, 0xF104F5F5u, 0x63DFBCBCu, 0x77C1B6B6u, 0xAF75DADAu, 0x42632121u, 0x20301010u, 0xE51AFFFFu, 0xFD0EF3F3u, 0xBF6DD2D2u, 0x814CCDCDu, 0x18140C0Cu, 0x26351313u, 0xC32FECECu, 0xBEE15F5Fu, 0x35A29797u, 0x88CC4444u, 0x2E391717u, 0x9357C4C4u, 0x55F2A7A7u, 0xFC827E7Eu, 0x7A473D3Du, 0xC8AC6464u, 0xBAE75D5Du, 0x322B1919u, 0xE6957373u, 0xC0A06060u, 0x19988181u, 0x9ED14F4Fu, 0xA37FDCDCu, 0x44662222u, 0x547E2A2Au, 0x3BAB9090u, 0x0B838888u, 0x8CCA4646u, 0xC729EEEEu, 0x6BD3B8B8u, 0x283C1414u, 0xA779DEDEu, 0xBCE25E5Eu, 0x161D0B0Bu, 0xAD76DBDBu, 0xDB3BE0E0u, 0x64563232u, 0x744E3A3Au, 0x141E0A0Au, 0x92DB4949u, 0x0C0A0606u, 0x486C2424u, 0xB8E45C5Cu, 0x9F5DC2C2u, 0xBD6ED3D3u, 0x43EFACACu, 0xC4A66262u, 0x39A89191u, 0x31A49595u, 0xD337E4E4u, 0xF28B7979u, 0xD532E7E7u, 0x8B43C8C8u, 0x6E593737u, 0xDAB76D6Du, 0x018C8D8Du, 0xB164D5D5u, 0x9CD24E4Eu, 0x49E0A9A9u, 0xD8B46C6Cu, 0xACFA5656u, 0xF307F4F4u, 0xCF25EAEAu, 0xCAAF6565u, 0xF48E7A7Au, 0x47E9AEAEu, 0x10180808u, 0x6FD5BABAu, 0xF0887878u, 0x4A6F2525u, 0x5C722E2Eu, 0x38241C1Cu, 0x57F1A6A6u, 0x73C7B4B4u, 0x9751C6C6u, 0xCB23E8E8u, 0xA17CDDDDu, 0xE89C7474u, 0x3E211F1Fu, 0x96DD4B4Bu, 0x61DCBDBDu, 0x0D868B8Bu, 0x0F858A8Au, 0xE0907070u, 0x7C423E3Eu, 0x71C4B5B5u, 0xCCAA6666u, 0x90D84848u, 0x06050303u, 0xF701F6F6u, 0x1C120E0Eu, 0xC2A36161u, 0x6A5F3535u, 0xAEF95757u, 0x69D0B9B9u, 0x17918686u, 0x9958C1C1u, 0x3A271D1Du, 0x27B99E9Eu, 0xD938E1E1u, 0xEB13F8F8u, 0x2BB39898u, 0x22331111u, 0xD2BB6969u, 0xA970D9D9u, 0x07898E8Eu, 0x33A79494u, 0x2DB69B9Bu, 0x3C221E1Eu, 0x15928787u, 0xC920E9E9u, 0x8749CECEu, 0xAAFF5555u, 0x50782828u, 0xA57ADFDFu, 0x038F8C8Cu, 0x59F8A1A1u, 0x09808989u, 0x1A170D0Du, 0x65DABFBFu, 0xD731E6E6u, 0x84C64242u, 0xD0B86868u, 0x82C34141u, 0x29B09999u, 0x5A772D2Du, 0x1E110F0Fu, 0x7BCBB0B0u, 0xA8FC5454u, 0x6DD6BBBBu, 0x2C3A1616u};





 
static const uint8 RSb[256] = {
    0x52, 0x09, 0x6A, 0xD5, 0x30, 0x36, 0xA5, 0x38, 0xBF, 0x40, 0xA3, 0x9E, 0x81, 0xF3, 0xD7, 0xFB, 0x7C, 0xE3, 0x39,
    0x82, 0x9B, 0x2F, 0xFF, 0x87, 0x34, 0x8E, 0x43, 0x44, 0xC4, 0xDE, 0xE9, 0xCB, 0x54, 0x7B, 0x94, 0x32, 0xA6, 0xC2,
    0x23, 0x3D, 0xEE, 0x4C, 0x95, 0x0B, 0x42, 0xFA, 0xC3, 0x4E, 0x08, 0x2E, 0xA1, 0x66, 0x28, 0xD9, 0x24, 0xB2, 0x76,
    0x5B, 0xA2, 0x49, 0x6D, 0x8B, 0xD1, 0x25, 0x72, 0xF8, 0xF6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xD4, 0xA4, 0x5C, 0xCC,
    0x5D, 0x65, 0xB6, 0x92, 0x6C, 0x70, 0x48, 0x50, 0xFD, 0xED, 0xB9, 0xDA, 0x5E, 0x15, 0x46, 0x57, 0xA7, 0x8D, 0x9D,
    0x84, 0x90, 0xD8, 0xAB, 0x00, 0x8C, 0xBC, 0xD3, 0x0A, 0xF7, 0xE4, 0x58, 0x05, 0xB8, 0xB3, 0x45, 0x06, 0xD0, 0x2C,
    0x1E, 0x8F, 0xCA, 0x3F, 0x0F, 0x02, 0xC1, 0xAF, 0xBD, 0x03, 0x01, 0x13, 0x8A, 0x6B, 0x3A, 0x91, 0x11, 0x41, 0x4F,
    0x67, 0xDC, 0xEA, 0x97, 0xF2, 0xCF, 0xCE, 0xF0, 0xB4, 0xE6, 0x73, 0x96, 0xAC, 0x74, 0x22, 0xE7, 0xAD, 0x35, 0x85,
    0xE2, 0xF9, 0x37, 0xE8, 0x1C, 0x75, 0xDF, 0x6E, 0x47, 0xF1, 0x1A, 0x71, 0x1D, 0x29, 0xC5, 0x89, 0x6F, 0xB7, 0x62,
    0x0E, 0xAA, 0x18, 0xBE, 0x1B, 0xFC, 0x56, 0x3E, 0x4B, 0xC6, 0xD2, 0x79, 0x20, 0x9A, 0xDB, 0xC0, 0xFE, 0x78, 0xCD,
    0x5A, 0xF4, 0x1F, 0xDD, 0xA8, 0x33, 0x88, 0x07, 0xC7, 0x31, 0xB1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xEC, 0x5F, 0x60,
    0x51, 0x7F, 0xA9, 0x19, 0xB5, 0x4A, 0x0D, 0x2D, 0xE5, 0x7A, 0x9F, 0x93, 0xC9, 0x9C, 0xEF, 0xA0, 0xE0, 0x3B, 0x4D,
    0xAE, 0x2A, 0xF5, 0xB0, 0xC8, 0xEB, 0xBB, 0x3C, 0x83, 0x53, 0x99, 0x61, 0x17, 0x2B, 0x04, 0x7E, 0xBA, 0x77, 0xD6,
    0x26, 0xE1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0C, 0x7D};



 

static const uint32 RT0[256] = {0x50A7F451u, 0x5365417Eu, 0xC3A4171Au, 0x965E273Au, 0xCB6BAB3Bu, 0xF1459D1Fu, 0xAB58FAACu, 0x9303E34Bu, 0x55FA3020u, 0xF66D76ADu, 0x9176CC88u, 0x254C02F5u, 0xFCD7E54Fu, 0xD7CB2AC5u, 0x80443526u, 0x8FA362B5u, 0x495AB1DEu, 0x671BBA25u, 0x980EEA45u, 0xE1C0FE5Du, 0x02752FC3u, 0x12F04C81u, 0xA397468Du, 0xC6F9D36Bu, 0xE75F8F03u, 0x959C9215u, 0xEB7A6DBFu, 0xDA595295u, 0x2D83BED4u, 0xD3217458u, 0x2969E049u, 0x44C8C98Eu, 0x6A89C275u, 0x78798EF4u, 0x6B3E5899u, 0xDD71B927u, 0xB64FE1BEu, 0x17AD88F0u, 0x66AC20C9u, 0xB43ACE7Du, 0x184ADF63u, 0x82311AE5u, 0x60335197u, 0x457F5362u, 0xE07764B1u, 0x84AE6BBBu, 0x1CA081FEu, 0x942B08F9u, 0x58684870u, 0x19FD458Fu, 0x876CDE94u, 0xB7F87B52u, 0x23D373ABu, 0xE2024B72u, 0x578F1FE3u, 0x2AAB5566u, 0x0728EBB2u, 0x03C2B52Fu, 0x9A7BC586u, 0xA50837D3u, 0xF2872830u, 0xB2A5BF23u, 0xBA6A0302u, 0x5C8216EDu, 0x2B1CCF8Au, 0x92B479A7u, 0xF0F207F3u, 0xA1E2694Eu, 0xCDF4DA65u, 0xD5BE0506u, 0x1F6234D1u, 0x8AFEA6C4u, 0x9D532E34u, 0xA055F3A2u, 0x32E18A05u, 0x75EBF6A4u, 0x39EC830Bu, 0xAAEF6040u, 0x069F715Eu, 0x51106EBDu, 0xF98A213Eu, 0x3D06DD96u, 0xAE053EDDu, 0x46BDE64Du, 0xB58D5491u, 0x055DC471u, 0x6FD40604u, 0xFF155060u, 0x24FB9819u, 0x97E9BDD6u, 0xCC434089u, 0x779ED967u, 0xBD42E8B0u, 0x888B8907u, 0x385B19E7u, 0xDBEEC879u, 0x470A7CA1u, 0xE90F427Cu, 0xC91E84F8u, 0x00000000u, 0x83868009u, 0x48ED2B32u, 0xAC70111Eu, 0x4E725A6Cu, 0xFBFF0EFDu, 0x5638850Fu, 0x1ED5AE3Du, 0x27392D36u, 0x64D90F0Au, 0x21A65C68u, 0xD1545B9Bu, 0x3A2E3624u, 0xB1670A0Cu, 0x0FE75793u, 0xD296EEB4u, 0x9E919B1Bu, 0x4FC5C080u, 0xA220DC61u, 0x694B775Au, 0x161A121Cu, 0x0ABA93E2u, 0xE52AA0C0u, 0x43E0223Cu, 0x1D171B12u, 0x0B0D090Eu, 0xADC78BF2u, 0xB9A8B62Du, 0xC8A91E14u, 0x8519F157u, 0x4C0775AFu, 0xBBDD99EEu, 0xFD607FA3u, 0x9F2601F7u, 0xBCF5725Cu, 0xC53B6644u, 0x347EFB5Bu, 0x7629438Bu, 0xDCC623CBu, 0x68FCEDB6u, 0x63F1E4B8u, 0xCADC31D7u, 0x10856342u, 0x40229713u, 0x2011C684u, 0x7D244A85u, 0xF83DBBD2u, 0x1132F9AEu, 0x6DA129C7u, 0x4B2F9E1Du, 0xF330B2DCu, 0xEC52860Du, 0xD0E3C177u, 0x6C16B32Bu, 0x99B970A9u, 0xFA489411u, 0x2264E947u, 0xC48CFCA8u, 0x1A3FF0A0u, 0xD82C7D56u, 0xEF903322u, 0xC74E4987u, 0xC1D138D9u, 0xFEA2CA8Cu, 0x360BD498u, 0xCF81F5A6u, 0x28DE7AA5u, 0x268EB7DAu, 0xA4BFAD3Fu, 0xE49D3A2Cu, 0x0D927850u, 0x9BCC5F6Au, 0x62467E54u, 0xC2138DF6u, 0xE8B8D890u, 0x5EF7392Eu, 0xF5AFC382u, 0xBE805D9Fu, 0x7C93D069u, 0xA92DD56Fu, 0xB31225CFu, 0x3B99ACC8u, 0xA77D1810u, 0x6E639CE8u, 0x7BBB3BDBu, 0x097826CDu, 0xF418596Eu, 0x01B79AECu, 0xA89A4F83u, 0x656E95E6u, 0x7EE6FFAAu, 0x08CFBC21u, 0xE6E815EFu, 0xD99BE7BAu, 0xCE366F4Au, 0xD4099FEAu, 0xD67CB029u, 0xAFB2A431u, 0x31233F2Au, 0x3094A5C6u, 0xC066A235u, 0x37BC4E74u, 0xA6CA82FCu, 0xB0D090E0u, 0x15D8A733u, 0x4A9804F1u, 0xF7DAEC41u, 0x0E50CD7Fu, 0x2FF69117u, 0x8DD64D76u, 0x4DB0EF43u, 0x544DAACCu, 0xDF0496E4u, 0xE3B5D19Eu, 0x1B886A4Cu, 0xB81F2CC1u, 0x7F516546u, 0x04EA5E9Du, 0x5D358C01u, 0x737487FAu, 0x2E410BFBu, 0x5A1D67B3u, 0x52D2DB92u, 0x335610E9u, 0x1347D66Du, 0x8C61D79Au, 0x7A0CA137u, 0x8E14F859u, 0x893C13EBu, 0xEE27A9CEu, 0x35C961B7u, 0xEDE51CE1u, 0x3CB1477Au, 0x59DFD29Cu, 0x3F73F255u, 0x79CE1418u, 0xBF37C773u, 0xEACDF753u, 0x5BAAFD5Fu, 0x146F3DDFu, 0x86DB4478u, 0x81F3AFCAu, 0x3EC468B9u, 0x2C342438u, 0x5F40A3C2u, 0x72C31D16u, 0x0C25E2BCu, 0x8B493C28u, 0x41950DFFu, 0x7101A839u, 0xDEB30C08u, 0x9CE4B4D8u, 0x90C15664u, 0x6184CB7Bu, 0x70B632D5u, 0x745C6C48u, 0x4257B8D0u};


static const uint32 RT1[256] = {0xA7F45150u, 0x65417E53u, 0xA4171AC3u, 0x5E273A96u, 0x6BAB3BCBu, 0x459D1FF1u, 0x58FAACABu, 0x03E34B93u, 0xFA302055u, 0x6D76ADF6u, 0x76CC8891u, 0x4C02F525u, 0xD7E54FFCu, 0xCB2AC5D7u, 0x44352680u, 0xA362B58Fu, 0x5AB1DE49u, 0x1BBA2567u, 0x0EEA4598u, 0xC0FE5DE1u, 0x752FC302u, 0xF04C8112u, 0x97468DA3u, 0xF9D36BC6u, 0x5F8F03E7u, 0x9C921595u, 0x7A6DBFEBu, 0x595295DAu, 0x83BED42Du, 0x217458D3u, 0x69E04929u, 0xC8C98E44u, 0x89C2756Au, 0x798EF478u, 0x3E58996Bu, 0x71B927DDu, 0x4FE1BEB6u, 0xAD88F017u, 0xAC20C966u, 0x3ACE7DB4u, 0x4ADF6318u, 0x311AE582u, 0x33519760u, 0x7F536245u, 0x7764B1E0u, 0xAE6BBB84u, 0xA081FE1Cu, 0x2B08F994u, 0x68487058u, 0xFD458F19u, 0x6CDE9487u, 0xF87B52B7u, 0xD373AB23u, 0x024B72E2u, 0x8F1FE357u, 0xAB55662Au, 0x28EBB207u, 0xC2B52F03u, 0x7BC5869Au, 0x0837D3A5u, 0x872830F2u, 0xA5BF23B2u, 0x6A0302BAu, 0x8216ED5Cu, 0x1CCF8A2Bu, 0xB479A792u, 0xF207F3F0u, 0xE2694EA1u, 0xF4DA65CDu, 0xBE0506D5u, 0x6234D11Fu, 0xFEA6C48Au, 0x532E349Du, 0x55F3A2A0u, 0xE18A0532u, 0xEBF6A475u, 0xEC830B39u, 0xEF6040AAu, 0x9F715E06u, 0x106EBD51u, 0x8A213EF9u, 0x06DD963Du, 0x053EDDAEu, 0xBDE64D46u, 0x8D5491B5u, 0x5DC47105u, 0xD406046Fu, 0x155060FFu, 0xFB981924u, 0xE9BDD697u, 0x434089CCu, 0x9ED96777u, 0x42E8B0BDu, 0x8B890788u, 0x5B19E738u, 0xEEC879DBu, 0x0A7CA147u, 0x0F427CE9u, 0x1E84F8C9u, 0x00000000u, 0x86800983u, 0xED2B3248u, 0x70111EACu, 0x725A6C4Eu, 0xFF0EFDFBu, 0x38850F56u, 0xD5AE3D1Eu, 0x392D3627u, 0xD90F0A64u, 0xA65C6821u, 0x545B9BD1u, 0x2E36243Au, 0x670A0CB1u, 0xE757930Fu, 0x96EEB4D2u, 0x919B1B9Eu, 0xC5C0804Fu, 0x20DC61A2u, 0x4B775A69u, 0x1A121C16u, 0xBA93E20Au, 0x2AA0C0E5u, 0xE0223C43u, 0x171B121Du, 0x0D090E0Bu, 0xC78BF2ADu, 0xA8B62DB9u, 0xA91E14C8u, 0x19F15785u, 0x0775AF4Cu, 0xDD99EEBBu, 0x607FA3FDu, 0x2601F79Fu, 0xF5725CBCu, 0x3B6644C5u, 0x7EFB5B34u, 0x29438B76u, 0xC623CBDCu, 0xFCEDB668u, 0xF1E4B863u, 0xDC31D7CAu, 0x85634210u, 0x22971340u, 0x11C68420u, 0x244A857Du, 0x3DBBD2F8u, 0x32F9AE11u, 0xA129C76Du, 0x2F9E1D4Bu, 0x30B2DCF3u, 0x52860DECu, 0xE3C177D0u, 0x16B32B6Cu, 0xB970A999u, 0x489411FAu, 0x64E94722u, 0x8CFCA8C4u, 0x3FF0A01Au, 0x2C7D56D8u, 0x903322EFu, 0x4E4987C7u, 0xD138D9C1u, 0xA2CA8CFEu, 0x0BD49836u, 0x81F5A6CFu, 0xDE7AA528u, 0x8EB7DA26u, 0xBFAD3FA4u, 0x9D3A2CE4u, 0x9278500Du, 0xCC5F6A9Bu, 0x467E5462u, 0x138DF6C2u, 0xB8D890E8u, 0xF7392E5Eu, 0xAFC382F5u, 0x805D9FBEu, 0x93D0697Cu, 0x2DD56FA9u, 0x1225CFB3u, 0x99ACC83Bu, 0x7D1810A7u, 0x639CE86Eu, 0xBB3BDB7Bu, 0x7826CD09u, 0x18596EF4u, 0xB79AEC01u, 0x9A4F83A8u, 0x6E95E665u, 0xE6FFAA7Eu, 0xCFBC2108u, 0xE815EFE6u, 0x9BE7BAD9u, 0x366F4ACEu, 0x099FEAD4u, 0x7CB029D6u, 0xB2A431AFu, 0x233F2A31u, 0x94A5C630u, 0x66A235C0u, 0xBC4E7437u, 0xCA82FCA6u, 0xD090E0B0u, 0xD8A73315u, 0x9804F14Au, 0xDAEC41F7u, 0x50CD7F0Eu, 0xF691172Fu, 0xD64D768Du, 0xB0EF434Du, 0x4DAACC54u, 0x0496E4DFu, 0xB5D19EE3u, 0x886A4C1Bu, 0x1F2CC1B8u, 0x5165467Fu, 0xEA5E9D04u, 0x358C015Du, 0x7487FA73u, 0x410BFB2Eu, 0x1D67B35Au, 0xD2DB9252u, 0x5610E933u, 0x47D66D13u, 0x61D79A8Cu, 0x0CA1377Au, 0x14F8598Eu, 0x3C13EB89u, 0x27A9CEEEu, 0xC961B735u, 0xE51CE1EDu, 0xB1477A3Cu, 0xDFD29C59u, 0x73F2553Fu, 0xCE141879u, 0x37C773BFu, 0xCDF753EAu, 0xAAFD5F5Bu, 0x6F3DDF14u, 0xDB447886u, 0xF3AFCA81u, 0xC468B93Eu, 0x3424382Cu, 0x40A3C25Fu, 0xC31D1672u, 0x25E2BC0Cu, 0x493C288Bu, 0x950DFF41u, 0x01A83971u, 0xB30C08DEu, 0xE4B4D89Cu, 0xC1566490u, 0x84CB7B61u, 0xB632D570u, 0x5C6C4874u, 0x57B8D042u};

static const uint32 RT2[256] = {0xF45150A7u, 0x417E5365u, 0x171AC3A4u, 0x273A965Eu, 0xAB3BCB6Bu, 0x9D1FF145u, 0xFAACAB58u, 0xE34B9303u, 0x302055FAu, 0x76ADF66Du, 0xCC889176u, 0x02F5254Cu, 0xE54FFCD7u, 0x2AC5D7CBu, 0x35268044u, 0x62B58FA3u, 0xB1DE495Au, 0xBA25671Bu, 0xEA45980Eu, 0xFE5DE1C0u, 0x2FC30275u, 0x4C8112F0u, 0x468DA397u, 0xD36BC6F9u, 0x8F03E75Fu, 0x9215959Cu, 0x6DBFEB7Au, 0x5295DA59u, 0xBED42D83u, 0x7458D321u, 0xE0492969u, 0xC98E44C8u, 0xC2756A89u, 0x8EF47879u, 0x58996B3Eu, 0xB927DD71u, 0xE1BEB64Fu, 0x88F017ADu, 0x20C966ACu, 0xCE7DB43Au, 0xDF63184Au, 0x1AE58231u, 0x51976033u, 0x5362457Fu, 0x64B1E077u, 0x6BBB84AEu, 0x81FE1CA0u, 0x08F9942Bu, 0x48705868u, 0x458F19FDu, 0xDE94876Cu, 0x7B52B7F8u, 0x73AB23D3u, 0x4B72E202u, 0x1FE3578Fu, 0x55662AABu, 0xEBB20728u, 0xB52F03C2u, 0xC5869A7Bu, 0x37D3A508u, 0x2830F287u, 0xBF23B2A5u, 0x0302BA6Au, 0x16ED5C82u, 0xCF8A2B1Cu, 0x79A792B4u, 0x07F3F0F2u, 0x694EA1E2u, 0xDA65CDF4u, 0x0506D5BEu, 0x34D11F62u, 0xA6C48AFEu, 0x2E349D53u, 0xF3A2A055u, 0x8A0532E1u, 0xF6A475EBu, 0x830B39ECu, 0x6040AAEFu, 0x715E069Fu, 0x6EBD5110u, 0x213EF98Au, 0xDD963D06u, 0x3EDDAE05u, 0xE64D46BDu, 0x5491B58Du, 0xC471055Du, 0x06046FD4u, 0x5060FF15u, 0x981924FBu, 0xBDD697E9u, 0x4089CC43u, 0xD967779Eu, 0xE8B0BD42u, 0x8907888Bu, 0x19E7385Bu, 0xC879DBEEu, 0x7CA1470Au, 0x427CE90Fu, 0x84F8C91Eu, 0x00000000u, 0x80098386u, 0x2B3248EDu, 0x111EAC70u, 0x5A6C4E72u, 0x0EFDFBFFu, 0x850F5638u, 0xAE3D1ED5u, 0x2D362739u, 0x0F0A64D9u, 0x5C6821A6u, 0x5B9BD154u, 0x36243A2Eu, 0x0A0CB167u, 0x57930FE7u, 0xEEB4D296u, 0x9B1B9E91u, 0xC0804FC5u, 0xDC61A220u, 0x775A694Bu, 0x121C161Au, 0x93E20ABAu, 0xA0C0E52Au, 0x223C43E0u, 0x1B121D17u, 0x090E0B0Du, 0x8BF2ADC7u, 0xB62DB9A8u, 0x1E14C8A9u, 0xF1578519u, 0x75AF4C07u, 0x99EEBBDDu, 0x7FA3FD60u, 0x01F79F26u, 0x725CBCF5u, 0x6644C53Bu, 0xFB5B347Eu, 0x438B7629u, 0x23CBDCC6u, 0xEDB668FCu, 0xE4B863F1u, 0x31D7CADCu, 0x63421085u, 0x97134022u, 0xC6842011u, 0x4A857D24u, 0xBBD2F83Du, 0xF9AE1132u, 0x29C76DA1u, 0x9E1D4B2Fu, 0xB2DCF330u, 0x860DEC52u, 0xC177D0E3u, 0xB32B6C16u, 0x70A999B9u, 0x9411FA48u, 0xE9472264u, 0xFCA8C48Cu, 0xF0A01A3Fu, 0x7D56D82Cu, 0x3322EF90u, 0x4987C74Eu, 0x38D9C1D1u, 0xCA8CFEA2u, 0xD498360Bu, 0xF5A6CF81u, 0x7AA528DEu, 0xB7DA268Eu, 0xAD3FA4BFu, 0x3A2CE49Du, 0x78500D92u, 0x5F6A9BCCu, 0x7E546246u, 0x8DF6C213u, 0xD890E8B8u, 0x392E5EF7u, 0xC382F5AFu, 0x5D9FBE80u, 0xD0697C93u, 0xD56FA92Du, 0x25CFB312u, 0xACC83B99u, 0x1810A77Du, 0x9CE86E63u, 0x3BDB7BBBu, 0x26CD0978u, 0x596EF418u, 0x9AEC01B7u, 0x4F83A89Au, 0x95E6656Eu, 0xFFAA7EE6u, 0xBC2108CFu, 0x15EFE6E8u, 0xE7BAD99Bu, 0x6F4ACE36u, 0x9FEAD409u, 0xB029D67Cu, 0xA431AFB2u, 0x3F2A3123u, 0xA5C63094u, 0xA235C066u, 0x4E7437BCu, 0x82FCA6CAu, 0x90E0B0D0u, 0xA73315D8u, 0x04F14A98u, 0xEC41F7DAu, 0xCD7F0E50u, 0x91172FF6u, 0x4D768DD6u, 0xEF434DB0u, 0xAACC544Du, 0x96E4DF04u, 0xD19EE3B5u, 0x6A4C1B88u, 0x2CC1B81Fu, 0x65467F51u, 0x5E9D04EAu, 0x8C015D35u, 0x87FA7374u, 0x0BFB2E41u, 0x67B35A1Du, 0xDB9252D2u, 0x10E93356u, 0xD66D1347u, 0xD79A8C61u, 0xA1377A0Cu, 0xF8598E14u, 0x13EB893Cu, 0xA9CEEE27u, 0x61B735C9u, 0x1CE1EDE5u, 0x477A3CB1u, 0xD29C59DFu, 0xF2553F73u, 0x141879CEu, 0xC773BF37u, 0xF753EACDu, 0xFD5F5BAAu, 0x3DDF146Fu, 0x447886DBu, 0xAFCA81F3u, 0x68B93EC4u, 0x24382C34u, 0xA3C25F40u, 0x1D1672C3u, 0xE2BC0C25u, 0x3C288B49u, 0x0DFF4195u, 0xA8397101u, 0x0C08DEB3u, 0xB4D89CE4u, 0x566490C1u, 0xCB7B6184u, 0x32D570B6u, 0x6C48745Cu, 0xB8D04257u};

static const uint32 RT3[256] = {0x5150A7F4u, 0x7E536541u, 0x1AC3A417u, 0x3A965E27u, 0x3BCB6BABu, 0x1FF1459Du, 0xACAB58FAu, 0x4B9303E3u, 0x2055FA30u, 0xADF66D76u, 0x889176CCu, 0xF5254C02u, 0x4FFCD7E5u, 0xC5D7CB2Au, 0x26804435u, 0xB58FA362u, 0xDE495AB1u, 0x25671BBAu, 0x45980EEAu, 0x5DE1C0FEu, 0xC302752Fu, 0x8112F04Cu, 0x8DA39746u, 0x6BC6F9D3u, 0x03E75F8Fu, 0x15959C92u, 0xBFEB7A6Du, 0x95DA5952u, 0xD42D83BEu, 0x58D32174u, 0x492969E0u, 0x8E44C8C9u, 0x756A89C2u, 0xF478798Eu, 0x996B3E58u, 0x27DD71B9u, 0xBEB64FE1u, 0xF017AD88u, 0xC966AC20u, 0x7DB43ACEu, 0x63184ADFu, 0xE582311Au, 0x97603351u, 0x62457F53u, 0xB1E07764u, 0xBB84AE6Bu, 0xFE1CA081u, 0xF9942B08u, 0x70586848u, 0x8F19FD45u, 0x94876CDEu, 0x52B7F87Bu, 0xAB23D373u, 0x72E2024Bu, 0xE3578F1Fu, 0x662AAB55u, 0xB20728EBu, 0x2F03C2B5u, 0x869A7BC5u, 0xD3A50837u, 0x30F28728u, 0x23B2A5BFu, 0x02BA6A03u, 0xED5C8216u, 0x8A2B1CCFu, 0xA792B479u, 0xF3F0F207u, 0x4EA1E269u, 0x65CDF4DAu, 0x06D5BE05u, 0xD11F6234u, 0xC48AFEA6u, 0x349D532Eu, 0xA2A055F3u, 0x0532E18Au, 0xA475EBF6u, 0x0B39EC83u, 0x40AAEF60u, 0x5E069F71u, 0xBD51106Eu, 0x3EF98A21u, 0x963D06DDu, 0xDDAE053Eu, 0x4D46BDE6u, 0x91B58D54u, 0x71055DC4u, 0x046FD406u, 0x60FF1550u, 0x1924FB98u, 0xD697E9BDu, 0x89CC4340u, 0x67779ED9u, 0xB0BD42E8u, 0x07888B89u, 0xE7385B19u, 0x79DBEEC8u, 0xA1470A7Cu, 0x7CE90F42u, 0xF8C91E84u, 0x00000000u, 0x09838680u, 0x3248ED2Bu, 0x1EAC7011u, 0x6C4E725Au, 0xFDFBFF0Eu, 0x0F563885u, 0x3D1ED5AEu, 0x3627392Du, 0x0A64D90Fu, 0x6821A65Cu, 0x9BD1545Bu, 0x243A2E36u, 0x0CB1670Au, 0x930FE757u, 0xB4D296EEu, 0x1B9E919Bu, 0x804FC5C0u, 0x61A220DCu, 0x5A694B77u, 0x1C161A12u, 0xE20ABA93u, 0xC0E52AA0u, 0x3C43E022u, 0x121D171Bu, 0x0E0B0D09u, 0xF2ADC78Bu, 0x2DB9A8B6u, 0x14C8A91Eu, 0x578519F1u, 0xAF4C0775u, 0xEEBBDD99u, 0xA3FD607Fu, 0xF79F2601u, 0x5CBCF572u, 0x44C53B66u, 0x5B347EFBu, 0x8B762943u, 0xCBDCC623u, 0xB668FCEDu, 0xB863F1E4u, 0xD7CADC31u, 0x42108563u, 0x13402297u, 0x842011C6u, 0x857D244Au, 0xD2F83DBBu, 0xAE1132F9u, 0xC76DA129u, 0x1D4B2F9Eu, 0xDCF330B2u, 0x0DEC5286u, 0x77D0E3C1u, 0x2B6C16B3u, 0xA999B970u, 0x11FA4894u, 0x472264E9u, 0xA8C48CFCu, 0xA01A3FF0u, 0x56D82C7Du, 0x22EF9033u, 0x87C74E49u, 0xD9C1D138u, 0x8CFEA2CAu, 0x98360BD4u, 0xA6CF81F5u, 0xA528DE7Au, 0xDA268EB7u, 0x3FA4BFADu, 0x2CE49D3Au, 0x500D9278u, 0x6A9BCC5Fu, 0x5462467Eu, 0xF6C2138Du, 0x90E8B8D8u, 0x2E5EF739u, 0x82F5AFC3u, 0x9FBE805Du, 0x697C93D0u, 0x6FA92DD5u, 0xCFB31225u, 0xC83B99ACu, 0x10A77D18u, 0xE86E639Cu, 0xDB7BBB3Bu, 0xCD097826u, 0x6EF41859u, 0xEC01B79Au, 0x83A89A4Fu, 0xE6656E95u, 0xAA7EE6FFu, 0x2108CFBCu, 0xEFE6E815u, 0xBAD99BE7u, 0x4ACE366Fu, 0xEAD4099Fu, 0x29D67CB0u, 0x31AFB2A4u, 0x2A31233Fu, 0xC63094A5u, 0x35C066A2u, 0x7437BC4Eu, 0xFCA6CA82u, 0xE0B0D090u, 0x3315D8A7u, 0xF14A9804u, 0x41F7DAECu, 0x7F0E50CDu, 0x172FF691u, 0x768DD64Du, 0x434DB0EFu, 0xCC544DAAu, 0xE4DF0496u, 0x9EE3B5D1u, 0x4C1B886Au, 0xC1B81F2Cu, 0x467F5165u, 0x9D04EA5Eu, 0x015D358Cu, 0xFA737487u, 0xFB2E410Bu, 0xB35A1D67u, 0x9252D2DBu, 0xE9335610u, 0x6D1347D6u, 0x9A8C61D7u, 0x377A0CA1u, 0x598E14F8u, 0xEB893C13u, 0xCEEE27A9u, 0xB735C961u, 0xE1EDE51Cu, 0x7A3CB147u, 0x9C59DFD2u, 0x553F73F2u, 0x1879CE14u, 0x73BF37C7u, 0x53EACDF7u, 0x5F5BAAFDu, 0xDF146F3Du, 0x7886DB44u, 0xCA81F3AFu, 0xB93EC468u, 0x382C3424u, 0xC25F40A3u, 0x1672C31Du, 0xBC0C25E2u, 0x288B493Cu, 0xFF41950Du, 0x397101A8u, 0x08DEB30Cu, 0xD89CE4B4u, 0x6490C156u, 0x7B6184CBu, 0xD570B632u, 0x48745C6Cu, 0xD04257B8u};





 
static const uint32 RCON[10] = {
    0x00000001,
    0x00000002,
    0x00000004,
    0x00000008,
    0x00000010,
    0x00000020,
    0x00000040,
    0x00000080,
    0x0000001B,
    0x00000036};





 

 Std_ReturnType
Crypto_aes_setkey_enc(Crypto_AESData* ctx, uint8 * key, uint16 keybits)
{
    uint16 i;
    uint32* RK;
    Std_ReturnType ret = 0U;
    switch (keybits)
    {
    case 128:
        ctx->nr = 10;
        break;
    case 192:
        ctx->nr = 12;
        break;
    case 256:
        ctx->nr = 14;
        break;
    default:
        break;
    }

    ctx->rk = RK = ctx->buf;

    for (i = 0; i < (keybits >> 5); i++)
    {
        { (RK[i]) = ((uint32)(key)[(i << 2)]) | ((uint32)(key)[(i << 2) + 1] << 8) | ((uint32)(key)[(i << 2) + 2] << 16) | ((uint32)(key)[(i << 2) + 3] << 24); };
    }

    switch (ctx->nr)
    {
    case 10:

        for (i = 0; i < 10; i++, RK += 4)
        {
            RK[4] = RK[0] ^ RCON[i] ^ ((uint32)FSb[(RK[3] >> 8) & 0xFF]) ^ ((uint32)FSb[(RK[3] >> 16) & 0xFF] << 8)
                    ^ ((uint32)FSb[(RK[3] >> 24) & 0xFF] << 16) ^ ((uint32)FSb[(RK[3]) & 0xFF] << 24);

            RK[5] = RK[1] ^ RK[4];
            RK[6] = RK[2] ^ RK[5];
            RK[7] = RK[3] ^ RK[6];
        }
        break;

    case 12:

        for (i = 0; i < 8; i++, RK += 6)
        {
            RK[6] = RK[0] ^ RCON[i] ^ ((uint32)FSb[(RK[5] >> 8) & 0xFF]) ^ ((uint32)FSb[(RK[5] >> 16) & 0xFF] << 8)
                    ^ ((uint32)FSb[(RK[5] >> 24) & 0xFF] << 16) ^ ((uint32)FSb[(RK[5]) & 0xFF] << 24);

            RK[7] = RK[1] ^ RK[6];
            RK[8] = RK[2] ^ RK[7];
            RK[9] = RK[3] ^ RK[8];
            RK[10] = RK[4] ^ RK[9];
            RK[11] = RK[5] ^ RK[10];
        }
        break;

    case 14:

        for (i = 0; i < 7; i++, RK += 8)
        {
            RK[8] = RK[0] ^ RCON[i] ^ ((uint32)FSb[(RK[7] >> 8) & 0xFF]) ^ ((uint32)FSb[(RK[7] >> 16) & 0xFF] << 8)
                    ^ ((uint32)FSb[(RK[7] >> 24) & 0xFF] << 16) ^ ((uint32)FSb[(RK[7]) & 0xFF] << 24);

            RK[9] = RK[1] ^ RK[8];
            RK[10] = RK[2] ^ RK[9];
            RK[11] = RK[3] ^ RK[10];

            RK[12] = RK[4] ^ ((uint32)FSb[(RK[11]) & 0xFF]) ^ ((uint32)FSb[(RK[11] >> 8) & 0xFF] << 8)
                     ^ ((uint32)FSb[(RK[11] >> 16) & 0xFF] << 16) ^ ((uint32)FSb[(RK[11] >> 24) & 0xFF] << 24);

            RK[13] = RK[5] ^ RK[12];
            RK[14] = RK[6] ^ RK[13];
            RK[15] = RK[7] ^ RK[14];
        }
        break;
    }

    return ret;
}



 

 Std_ReturnType
Crypto_aes_setkey_dec(Crypto_AESData* ctx, uint8 * key, uint16 keybits)
{
    int i, j;
    Crypto_AESData cty;
    uint32* RK;
    uint32* SK;
    Std_ReturnType ret;
    Crypto_memset(&cty, sizeof(Crypto_AESData));
    Crypto_memset(&cty, sizeof(Crypto_AESData));
    ctx->rk = RK = ctx->buf;

     
    ret = Crypto_aes_setkey_enc(&cty, key, keybits);
    ctx->nr = cty.nr;

    SK = cty.rk + cty.nr * 4;    

    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;

    for (i = ctx->nr - 1, SK -= 8; i > 0; i--, SK -= 8)
    {
        for (j = 0; j < 4; j++, SK++)
        {
            *RK++ = RT0[FSb[(*SK) & 0xFF]] ^ RT1[FSb[(*SK >> 8) & 0xFF]] ^ RT2[FSb[(*SK >> 16) & 0xFF]]
                    ^ RT3[FSb[(*SK >> 24) & 0xFF]];
        }
    }

    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;    

    return ret;
}





 

 Std_ReturnType internal_aes_encrypt(Crypto_AESData* ctx, const uint8 input[16], uint8 output[16])
{
    int i;
    Std_ReturnType ret = 0U;

    uint32 *RK, X0, X1, X2, X3, Y0, Y1, Y2, Y3;

    RK = ctx->rk;

    { (X0) = ((uint32)(input)[(0)]) | ((uint32)(input)[(0) + 1] << 8) | ((uint32)(input)[(0) + 2] << 16) | ((uint32)(input)[(0) + 3] << 24); };
    X0 ^= *RK++;
    { (X1) = ((uint32)(input)[(4)]) | ((uint32)(input)[(4) + 1] << 8) | ((uint32)(input)[(4) + 2] << 16) | ((uint32)(input)[(4) + 3] << 24); };
    X1 ^= *RK++;
    { (X2) = ((uint32)(input)[(8)]) | ((uint32)(input)[(8) + 1] << 8) | ((uint32)(input)[(8) + 2] << 16) | ((uint32)(input)[(8) + 3] << 24); };
    X2 ^= *RK++;
    { (X3) = ((uint32)(input)[(12)]) | ((uint32)(input)[(12) + 1] << 8) | ((uint32)(input)[(12) + 2] << 16) | ((uint32)(input)[(12) + 3] << 24); };
    X3 ^= *RK++;

    for (i = (ctx->nr >> 1) - 1; i > 0; i--)
    {
        do { (Y0) = *RK++ ^ FT0[((X0)) & 0xFF] ^ FT1[((X1) >> 8) & 0xFF] ^ FT2[((X2) >> 16) & 0xFF] ^ FT3[((X3) >> 24) & 0xFF]; (Y1) = *RK++ ^ FT0[((X1)) & 0xFF] ^ FT1[((X2) >> 8) & 0xFF] ^ FT2[((X3) >> 16) & 0xFF] ^ FT3[((X0) >> 24) & 0xFF]; (Y2) = *RK++ ^ FT0[((X2)) & 0xFF] ^ FT1[((X3) >> 8) & 0xFF] ^ FT2[((X0) >> 16) & 0xFF] ^ FT3[((X1) >> 24) & 0xFF]; (Y3) = *RK++ ^ FT0[((X3)) & 0xFF] ^ FT1[((X0) >> 8) & 0xFF] ^ FT2[((X1) >> 16) & 0xFF] ^ FT3[((X2) >> 24) & 0xFF]; } while (0);
        do { (X0) = *RK++ ^ FT0[((Y0)) & 0xFF] ^ FT1[((Y1) >> 8) & 0xFF] ^ FT2[((Y2) >> 16) & 0xFF] ^ FT3[((Y3) >> 24) & 0xFF]; (X1) = *RK++ ^ FT0[((Y1)) & 0xFF] ^ FT1[((Y2) >> 8) & 0xFF] ^ FT2[((Y3) >> 16) & 0xFF] ^ FT3[((Y0) >> 24) & 0xFF]; (X2) = *RK++ ^ FT0[((Y2)) & 0xFF] ^ FT1[((Y3) >> 8) & 0xFF] ^ FT2[((Y0) >> 16) & 0xFF] ^ FT3[((Y1) >> 24) & 0xFF]; (X3) = *RK++ ^ FT0[((Y3)) & 0xFF] ^ FT1[((Y0) >> 8) & 0xFF] ^ FT2[((Y1) >> 16) & 0xFF] ^ FT3[((Y2) >> 24) & 0xFF]; } while (0);
    }

    do { (Y0) = *RK++ ^ FT0[((X0)) & 0xFF] ^ FT1[((X1) >> 8) & 0xFF] ^ FT2[((X2) >> 16) & 0xFF] ^ FT3[((X3) >> 24) & 0xFF]; (Y1) = *RK++ ^ FT0[((X1)) & 0xFF] ^ FT1[((X2) >> 8) & 0xFF] ^ FT2[((X3) >> 16) & 0xFF] ^ FT3[((X0) >> 24) & 0xFF]; (Y2) = *RK++ ^ FT0[((X2)) & 0xFF] ^ FT1[((X3) >> 8) & 0xFF] ^ FT2[((X0) >> 16) & 0xFF] ^ FT3[((X1) >> 24) & 0xFF]; (Y3) = *RK++ ^ FT0[((X3)) & 0xFF] ^ FT1[((X0) >> 8) & 0xFF] ^ FT2[((X1) >> 16) & 0xFF] ^ FT3[((X2) >> 24) & 0xFF]; } while (0);

    X0 = *RK++ ^ ((uint32)FSb[(Y0) & 0xFF]) ^ ((uint32)FSb[(Y1 >> 8) & 0xFF] << 8)
         ^ ((uint32)FSb[(Y2 >> 16) & 0xFF] << 16) ^ ((uint32)FSb[(Y3 >> 24) & 0xFF] << 24);

    X1 = *RK++ ^ ((uint32)FSb[(Y1) & 0xFF]) ^ ((uint32)FSb[(Y2 >> 8) & 0xFF] << 8)
         ^ ((uint32)FSb[(Y3 >> 16) & 0xFF] << 16) ^ ((uint32)FSb[(Y0 >> 24) & 0xFF] << 24);

    X2 = *RK++ ^ ((uint32)FSb[(Y2) & 0xFF]) ^ ((uint32)FSb[(Y3 >> 8) & 0xFF] << 8)
         ^ ((uint32)FSb[(Y0 >> 16) & 0xFF] << 16) ^ ((uint32)FSb[(Y1 >> 24) & 0xFF] << 24);

    X3 = *RK++ ^ ((uint32)FSb[(Y3) & 0xFF]) ^ ((uint32)FSb[(Y0 >> 8) & 0xFF] << 8)
         ^ ((uint32)FSb[(Y1 >> 16) & 0xFF] << 16) ^ ((uint32)FSb[(Y2 >> 24) & 0xFF] << 24);

    { (output)[(0)] = (uint8)(((X0)) & 0xFF); (output)[(0) + 1] = (uint8)(((X0) >> 8) & 0xFF); (output)[(0) + 2] = (uint8)(((X0) >> 16) & 0xFF); (output)[(0) + 3] = (uint8)(((X0) >> 24) & 0xFF); };
    { (output)[(4)] = (uint8)(((X1)) & 0xFF); (output)[(4) + 1] = (uint8)(((X1) >> 8) & 0xFF); (output)[(4) + 2] = (uint8)(((X1) >> 16) & 0xFF); (output)[(4) + 3] = (uint8)(((X1) >> 24) & 0xFF); };
    { (output)[(8)] = (uint8)(((X2)) & 0xFF); (output)[(8) + 1] = (uint8)(((X2) >> 8) & 0xFF); (output)[(8) + 2] = (uint8)(((X2) >> 16) & 0xFF); (output)[(8) + 3] = (uint8)(((X2) >> 24) & 0xFF); };
    { (output)[(12)] = (uint8)(((X3)) & 0xFF); (output)[(12) + 1] = (uint8)(((X3) >> 8) & 0xFF); (output)[(12) + 2] = (uint8)(((X3) >> 16) & 0xFF); (output)[(12) + 3] = (uint8)(((X3) >> 24) & 0xFF); };

    Crypto_memset(&X0, sizeof(X0));
    Crypto_memset(&X1, sizeof(X1));
    Crypto_memset(&X2, sizeof(X2));
    Crypto_memset(&X3, sizeof(X3));

    Crypto_memset(&Y0, sizeof(Y0));
    Crypto_memset(&Y1, sizeof(Y1));
    Crypto_memset(&Y2, sizeof(Y2));
    Crypto_memset(&Y3, sizeof(Y3));

    Crypto_memset(&RK, sizeof(RK));

    return ret;
}


 

 Std_ReturnType internal_aes_decrypt(Crypto_AESData* ctx, const uint8 input[16], uint8 output[16])
{
    int i;
    Std_ReturnType ret = 0U;
    uint32 *RK, X0, X1, X2, X3, Y0, Y1, Y2, Y3;

    RK = ctx->rk;

    { (X0) = ((uint32)(input)[(0)]) | ((uint32)(input)[(0) + 1] << 8) | ((uint32)(input)[(0) + 2] << 16) | ((uint32)(input)[(0) + 3] << 24); };
    X0 ^= *RK++;
    { (X1) = ((uint32)(input)[(4)]) | ((uint32)(input)[(4) + 1] << 8) | ((uint32)(input)[(4) + 2] << 16) | ((uint32)(input)[(4) + 3] << 24); };
    X1 ^= *RK++;
    { (X2) = ((uint32)(input)[(8)]) | ((uint32)(input)[(8) + 1] << 8) | ((uint32)(input)[(8) + 2] << 16) | ((uint32)(input)[(8) + 3] << 24); };
    X2 ^= *RK++;
    { (X3) = ((uint32)(input)[(12)]) | ((uint32)(input)[(12) + 1] << 8) | ((uint32)(input)[(12) + 2] << 16) | ((uint32)(input)[(12) + 3] << 24); };
    X3 ^= *RK++;

    for (i = (ctx->nr >> 1) - 1; i > 0; i--)
    {
        do { (Y0) = *RK++ ^ RT0[((X0)) & 0xFF] ^ RT1[((X3) >> 8) & 0xFF] ^ RT2[((X2) >> 16) & 0xFF] ^ RT3[((X1) >> 24) & 0xFF]; (Y1) = *RK++ ^ RT0[((X1)) & 0xFF] ^ RT1[((X0) >> 8) & 0xFF] ^ RT2[((X3) >> 16) & 0xFF] ^ RT3[((X2) >> 24) & 0xFF]; (Y2) = *RK++ ^ RT0[((X2)) & 0xFF] ^ RT1[((X1) >> 8) & 0xFF] ^ RT2[((X0) >> 16) & 0xFF] ^ RT3[((X3) >> 24) & 0xFF]; (Y3) = *RK++ ^ RT0[((X3)) & 0xFF] ^ RT1[((X2) >> 8) & 0xFF] ^ RT2[((X1) >> 16) & 0xFF] ^ RT3[((X0) >> 24) & 0xFF]; } while (0);
        do { (X0) = *RK++ ^ RT0[((Y0)) & 0xFF] ^ RT1[((Y3) >> 8) & 0xFF] ^ RT2[((Y2) >> 16) & 0xFF] ^ RT3[((Y1) >> 24) & 0xFF]; (X1) = *RK++ ^ RT0[((Y1)) & 0xFF] ^ RT1[((Y0) >> 8) & 0xFF] ^ RT2[((Y3) >> 16) & 0xFF] ^ RT3[((Y2) >> 24) & 0xFF]; (X2) = *RK++ ^ RT0[((Y2)) & 0xFF] ^ RT1[((Y1) >> 8) & 0xFF] ^ RT2[((Y0) >> 16) & 0xFF] ^ RT3[((Y3) >> 24) & 0xFF]; (X3) = *RK++ ^ RT0[((Y3)) & 0xFF] ^ RT1[((Y2) >> 8) & 0xFF] ^ RT2[((Y1) >> 16) & 0xFF] ^ RT3[((Y0) >> 24) & 0xFF]; } while (0);
    }

    do { (Y0) = *RK++ ^ RT0[((X0)) & 0xFF] ^ RT1[((X3) >> 8) & 0xFF] ^ RT2[((X2) >> 16) & 0xFF] ^ RT3[((X1) >> 24) & 0xFF]; (Y1) = *RK++ ^ RT0[((X1)) & 0xFF] ^ RT1[((X0) >> 8) & 0xFF] ^ RT2[((X3) >> 16) & 0xFF] ^ RT3[((X2) >> 24) & 0xFF]; (Y2) = *RK++ ^ RT0[((X2)) & 0xFF] ^ RT1[((X1) >> 8) & 0xFF] ^ RT2[((X0) >> 16) & 0xFF] ^ RT3[((X3) >> 24) & 0xFF]; (Y3) = *RK++ ^ RT0[((X3)) & 0xFF] ^ RT1[((X2) >> 8) & 0xFF] ^ RT2[((X1) >> 16) & 0xFF] ^ RT3[((X0) >> 24) & 0xFF]; } while (0);

    X0 = *RK++ ^ ((uint32)RSb[(Y0) & 0xFF]) ^ ((uint32)RSb[(Y3 >> 8) & 0xFF] << 8)
         ^ ((uint32)RSb[(Y2 >> 16) & 0xFF] << 16) ^ ((uint32)RSb[(Y1 >> 24) & 0xFF] << 24);

    X1 = *RK++ ^ ((uint32)RSb[(Y1) & 0xFF]) ^ ((uint32)RSb[(Y0 >> 8) & 0xFF] << 8)
         ^ ((uint32)RSb[(Y3 >> 16) & 0xFF] << 16) ^ ((uint32)RSb[(Y2 >> 24) & 0xFF] << 24);

    X2 = *RK++ ^ ((uint32)RSb[(Y2) & 0xFF]) ^ ((uint32)RSb[(Y1 >> 8) & 0xFF] << 8)
         ^ ((uint32)RSb[(Y0 >> 16) & 0xFF] << 16) ^ ((uint32)RSb[(Y3 >> 24) & 0xFF] << 24);

    X3 = *RK++ ^ ((uint32)RSb[(Y3) & 0xFF]) ^ ((uint32)RSb[(Y2 >> 8) & 0xFF] << 8)
         ^ ((uint32)RSb[(Y1 >> 16) & 0xFF] << 16) ^ ((uint32)RSb[(Y0 >> 24) & 0xFF] << 24);

    { (output)[(0)] = (uint8)(((X0)) & 0xFF); (output)[(0) + 1] = (uint8)(((X0) >> 8) & 0xFF); (output)[(0) + 2] = (uint8)(((X0) >> 16) & 0xFF); (output)[(0) + 3] = (uint8)(((X0) >> 24) & 0xFF); };
    { (output)[(4)] = (uint8)(((X1)) & 0xFF); (output)[(4) + 1] = (uint8)(((X1) >> 8) & 0xFF); (output)[(4) + 2] = (uint8)(((X1) >> 16) & 0xFF); (output)[(4) + 3] = (uint8)(((X1) >> 24) & 0xFF); };
    { (output)[(8)] = (uint8)(((X2)) & 0xFF); (output)[(8) + 1] = (uint8)(((X2) >> 8) & 0xFF); (output)[(8) + 2] = (uint8)(((X2) >> 16) & 0xFF); (output)[(8) + 3] = (uint8)(((X2) >> 24) & 0xFF); };
    { (output)[(12)] = (uint8)(((X3)) & 0xFF); (output)[(12) + 1] = (uint8)(((X3) >> 8) & 0xFF); (output)[(12) + 2] = (uint8)(((X3) >> 16) & 0xFF); (output)[(12) + 3] = (uint8)(((X3) >> 24) & 0xFF); };

    Crypto_memset(&X0, sizeof(X0));
    Crypto_memset(&X1, sizeof(X1));
    Crypto_memset(&X2, sizeof(X2));
    Crypto_memset(&X3, sizeof(X3));

    Crypto_memset(&Y0, sizeof(Y0));
    Crypto_memset(&Y1, sizeof(Y1));
    Crypto_memset(&Y2, sizeof(Y2));
    Crypto_memset(&Y3, sizeof(Y3));

    Crypto_memset(&RK, sizeof(RK));

    return ret;
}



 
 Std_ReturnType
Crypto_aes_crypt_ecb(Crypto_AESData* ctx, uint8 mode, const uint8 input[16], uint8 output[16])
{
    if (mode == 1)
        return (internal_aes_encrypt(ctx, input, output));
    else
        return (internal_aes_decrypt(ctx, input, output));
}



 
 Std_ReturnType
Crypto_aes_crypt_cbc(
    Crypto_AESData* ctx,
    uint8 mode,
    uint8 length,
    uint8 iv[16],
    uint8 * input,
    uint8 * output)
{
    int i;
    uint8 temp[16];
    Std_ReturnType ret = 1U;

    if (mode == 0)
    {
        while (length > 0)
        {
            Crypto_memcpy(temp, input, 16);
            ret = internal_aes_decrypt(ctx, input, output);    

            for (i = 0; i < 16; i++)
                output[i] = (uint8)(input[i] ^ iv[i]);

            Crypto_memcpy(iv, temp, 16);

            input += 16;
            output += 16;
            length = (length >= 16) ? (length - 16) : 0;
        }
    }
    else
    {
        while (length > 0)
        {
            for (i = 0; i < 16; i++)
                output[i] = (uint8)(input[i] ^ iv[i]);

            ret = internal_aes_encrypt(ctx, output, output);    

            Crypto_memcpy(iv, output, 16);

            input += 16;
            output += 16;
            length = (length >= 16) ? (length - 16) : 0;
        }
    }
    return ret;
}

 Std_ReturnType
Crypto_aes_crypt_cbc_CMAC(
    Crypto_AESData* ctx,
    uint8 mode,
    uint8 length,
    uint8 iv[16],
    uint8 * input,
    uint8 * output)
{
    int i;
    uint8 temp[16];
    Std_ReturnType ret = 1U;

    if (mode == 0)
    {
        while (length > 0)
        {
            Crypto_memcpy(temp, input, 16);
            ret = internal_aes_decrypt(ctx, input, output);    

            for (i = 0; i < 16; i++)
                output[i] = input[i]; 

            

            input += 16;
            output += 16;
            length = (length >= 16) ? (length - 16) : 0;
        }
    }
    else
    {
        while (length > 0)
        {
            for (i = 0; i < 16; i++)
                output[i] = input[i]; 

            ret = internal_aes_encrypt(ctx, output, output);    

            

            input += 16;
            output += 16;
            length = (length >= 16) ? (length - 16) : 0;
        }
    }
    return ret;
}



 

 Std_ReturnType Crypto_AESEncryptECB(uint8 * key, uint8 buf[64])
{
    Crypto_AESData ctx;
    Std_ReturnType ret;
    Crypto_memset(&ctx, sizeof(Crypto_AESData));
    ret = Crypto_aes_setkey_enc(&ctx, key, 128);

    ret = internal_aes_encrypt(&ctx, buf, buf);
    return ret;
}

 Std_ReturnType Crypto_AESDecryptECB(uint8 * key, uint8 buf[64])
{
    Crypto_AESData ctx;
    Std_ReturnType ret;
    Crypto_memset(&ctx, sizeof(Crypto_AESData));

    ret = Crypto_aes_setkey_dec(&ctx, key, 128);

    ret = internal_aes_decrypt(&ctx, buf, buf);
    return ret;
}

 Std_ReturnType
Crypto_AESEncryptCBC(uint8 * key, uint8 buf[64], uint8 iv[16], uint8 inputlength)
{
    Crypto_AESData ctx;
    Std_ReturnType ret;
    uint8 prv[16];
    uint8 tmp[16];
    Crypto_memset(&ctx, sizeof(Crypto_AESData));
    Crypto_memset(prv, 16);
    Crypto_memset(tmp, 16);

    ret = Crypto_aes_setkey_enc(&ctx, key, 128);

    ret = Crypto_aes_crypt_cbc(&ctx, 1, inputlength, iv, buf, buf);
    return ret;
}

 Std_ReturnType
Crypto_AESDecryptCBC(uint8 * key, uint8 buf[64], uint8 iv[16], uint8 inputlength)
{
    Crypto_AESData ctx;
    Std_ReturnType ret;
    uint8 prv[16];
    Crypto_memset(&ctx, sizeof(Crypto_AESData));
    Crypto_memset(prv, 16);

    ret = Crypto_aes_setkey_dec(&ctx, key, 128);
    if (0U == ret)
    {
        ret = Crypto_aes_crypt_cbc(&ctx, 0, inputlength, iv, buf, buf);
    }

    return ret;
}

 Std_ReturnType
Crypto_AESEncryptCTR(uint8 * key, uint8 buf[64], uint8 iv[16])
{

    Crypto_AESData ctx;
    Std_ReturnType ret;
    uint8 j;
    Crypto_memset(&ctx, sizeof(Crypto_AESData));

    ret = Crypto_aes_setkey_dec(&ctx, key, 128);

    ret = internal_aes_encrypt(&ctx, iv, iv);

    for (j = 0; j < 16; j++)
    {
        buf[j] = buf[j] ^ iv[j];
    }

    return ret;
}

 Std_ReturnType
Crypto_AESDecryptCTR(uint8 * key, uint8 buf[64], uint8 iv[16])
{

    Crypto_AESData ctx;
    Std_ReturnType ret;
    uint8 j;
    Crypto_memset(&ctx, sizeof(Crypto_AESData));

    ret = Crypto_aes_setkey_dec(&ctx, key, 128);

    ret = internal_aes_encrypt(&ctx, iv, iv);

    for (j = 0; j < 16; j++)
    {
        buf[j] = buf[j] ^ iv[j];
    }

    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

                       
                       
                  
                       
                  
                       
                       
                       
   
                       
                       
                  
                       
                  
