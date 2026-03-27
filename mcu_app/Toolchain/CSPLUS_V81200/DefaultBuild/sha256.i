











 












 
                       
                       
                  
   
                  
                       
                       
                       













 












 












 












 

   




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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
    uint32 total[2];   
    uint32 state[8];   
    uint8 buffer[64];  
} Crypto_Sha256Data;
 Std_ReturnType Crypto_sha256_starts_ret(Crypto_Sha256Data* ctx);

 Std_ReturnType
Crypto_sha256_update_ret(
    Crypto_Sha256Data* ctx,
    uint8 * input,
    uint32 ilen);

 Std_ReturnType Crypto_sha256_finish_ret(Crypto_Sha256Data* ctx, uint8 output[32]);

 Std_ReturnType
Crypto_sha256(
    uint8 * input,
    uint32 ilen,
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




 

 
   
 Std_ReturnType
Crypto_internal_sha256_process(Crypto_Sha256Data* ctx, uint8 data[64]);



 




 
 Std_ReturnType Crypto_sha256_starts_ret(Crypto_Sha256Data* ctx)
{
    Std_ReturnType ret = 0U;

    ctx->total[0] = 0;
    ctx->total[1] = 0;

     
    ctx->state[0] = 0x6A09E667;
    ctx->state[1] = 0xBB67AE85;
    ctx->state[2] = 0x3C6EF372;
    ctx->state[3] = 0xA54FF53A;
    ctx->state[4] = 0x510E527F;
    ctx->state[5] = 0x9B05688C;
    ctx->state[6] = 0x1F83D9AB;
    ctx->state[7] = 0x5BE0CD19;

    return (ret);
}

static uint32 K[] = {
    0x428A2F98, 0x71374491, 0xB5C0FBCF, 0xE9B5DBA5, 0x3956C25B, 0x59F111F1, 0x923F82A4, 0xAB1C5ED5,
    0xD807AA98, 0x12835B01, 0x243185BE, 0x550C7DC3, 0x72BE5D74, 0x80DEB1FE, 0x9BDC06A7, 0xC19BF174,
    0xE49B69C1, 0xEFBE4786, 0x0FC19DC6, 0x240CA1CC, 0x2DE92C6F, 0x4A7484AA, 0x5CB0A9DC, 0x76F988DA,
    0x983E5152, 0xA831C66D, 0xB00327C8, 0xBF597FC7, 0xC6E00BF3, 0xD5A79147, 0x06CA6351, 0x14292967,
    0x27B70A85, 0x2E1B2138, 0x4D2C6DFC, 0x53380D13, 0x650A7354, 0x766A0ABB, 0x81C2C92E, 0x92722C85,
    0xA2BFE8A1, 0xA81A664B, 0xC24B8B70, 0xC76C51A3, 0xD192E819, 0xD6990624, 0xF40E3585, 0x106AA070,
    0x19A4C116, 0x1E376C08, 0x2748774C, 0x34B0BCB5, 0x391C0CB3, 0x4ED8AA4A, 0x5B9CCA4F, 0x682E6FF3,
    0x748F82EE, 0x78A5636F, 0x84C87814, 0x8CC70208, 0x90BEFFFA, 0xA4506CEB, 0xBEF9A3F7, 0xC67178F2,
};







 Std_ReturnType Crypto_internal_sha256_process(Crypto_Sha256Data* ctx, uint8 data[64])
{
    struct
    {
        uint32 temp1, temp2, W[64];
        uint32 A[8];
    } local;
    uint32 i;
    Std_ReturnType ret = 0U;

    for (i = 0; i < 8; i++)
    {
        local.A[i] = ctx->state[i];
    }

    for (i = 0; i < 16; i++)
    {
        do { (local . W[i]) = ((uint32)(data)[(4 * i)] << 24) | ((uint32)(data)[(4 * i) + 1] << 16) | ((uint32)(data)[(4 * i) + 2] << 8) | ((uint32)(data)[(4 * i) + 3]); } while (0);
    }

    for (i = 0; i < 16; i += 8)
    {
        do { local . temp1 = (local . A[7]) + (((((local . A[4]) & 0xFFFFFFFF) >> (6)) | ((local . A[4]) << (32 - (6)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (11)) | ((local . A[4]) << (32 - (11)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (25)) | ((local . A[4]) << (32 - (25))))) + (((local . A[6])) ^ (((local . A[4])) & (((local . A[5])) ^ ((local . A[6]))))) + (K[i + 0]) + (local . W[i + 0]); local . temp2 = (((((local . A[0]) & 0xFFFFFFFF) >> (2)) | ((local . A[0]) << (32 - (2)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (13)) | ((local . A[0]) << (32 - (13)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (22)) | ((local . A[0]) << (32 - (22))))) + ((((local . A[0])) & ((local . A[1]))) | (((local . A[2])) & (((local . A[0])) | ((local . A[1]))))); (local . A[3]) += local . temp1; (local . A[7]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[6]) + (((((local . A[3]) & 0xFFFFFFFF) >> (6)) | ((local . A[3]) << (32 - (6)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (11)) | ((local . A[3]) << (32 - (11)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (25)) | ((local . A[3]) << (32 - (25))))) + (((local . A[5])) ^ (((local . A[3])) & (((local . A[4])) ^ ((local . A[5]))))) + (K[i + 1]) + (local . W[i + 1]); local . temp2 = (((((local . A[7]) & 0xFFFFFFFF) >> (2)) | ((local . A[7]) << (32 - (2)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (13)) | ((local . A[7]) << (32 - (13)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (22)) | ((local . A[7]) << (32 - (22))))) + ((((local . A[7])) & ((local . A[0]))) | (((local . A[1])) & (((local . A[7])) | ((local . A[0]))))); (local . A[2]) += local . temp1; (local . A[6]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[5]) + (((((local . A[2]) & 0xFFFFFFFF) >> (6)) | ((local . A[2]) << (32 - (6)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (11)) | ((local . A[2]) << (32 - (11)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (25)) | ((local . A[2]) << (32 - (25))))) + (((local . A[4])) ^ (((local . A[2])) & (((local . A[3])) ^ ((local . A[4]))))) + (K[i + 2]) + (local . W[i + 2]); local . temp2 = (((((local . A[6]) & 0xFFFFFFFF) >> (2)) | ((local . A[6]) << (32 - (2)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (13)) | ((local . A[6]) << (32 - (13)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (22)) | ((local . A[6]) << (32 - (22))))) + ((((local . A[6])) & ((local . A[7]))) | (((local . A[0])) & (((local . A[6])) | ((local . A[7]))))); (local . A[1]) += local . temp1; (local . A[5]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[4]) + (((((local . A[1]) & 0xFFFFFFFF) >> (6)) | ((local . A[1]) << (32 - (6)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (11)) | ((local . A[1]) << (32 - (11)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (25)) | ((local . A[1]) << (32 - (25))))) + (((local . A[3])) ^ (((local . A[1])) & (((local . A[2])) ^ ((local . A[3]))))) + (K[i + 3]) + (local . W[i + 3]); local . temp2 = (((((local . A[5]) & 0xFFFFFFFF) >> (2)) | ((local . A[5]) << (32 - (2)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (13)) | ((local . A[5]) << (32 - (13)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (22)) | ((local . A[5]) << (32 - (22))))) + ((((local . A[5])) & ((local . A[6]))) | (((local . A[7])) & (((local . A[5])) | ((local . A[6]))))); (local . A[0]) += local . temp1; (local . A[4]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[3]) + (((((local . A[0]) & 0xFFFFFFFF) >> (6)) | ((local . A[0]) << (32 - (6)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (11)) | ((local . A[0]) << (32 - (11)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (25)) | ((local . A[0]) << (32 - (25))))) + (((local . A[2])) ^ (((local . A[0])) & (((local . A[1])) ^ ((local . A[2]))))) + (K[i + 4]) + (local . W[i + 4]); local . temp2 = (((((local . A[4]) & 0xFFFFFFFF) >> (2)) | ((local . A[4]) << (32 - (2)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (13)) | ((local . A[4]) << (32 - (13)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (22)) | ((local . A[4]) << (32 - (22))))) + ((((local . A[4])) & ((local . A[5]))) | (((local . A[6])) & (((local . A[4])) | ((local . A[5]))))); (local . A[7]) += local . temp1; (local . A[3]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[2]) + (((((local . A[7]) & 0xFFFFFFFF) >> (6)) | ((local . A[7]) << (32 - (6)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (11)) | ((local . A[7]) << (32 - (11)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (25)) | ((local . A[7]) << (32 - (25))))) + (((local . A[1])) ^ (((local . A[7])) & (((local . A[0])) ^ ((local . A[1]))))) + (K[i + 5]) + (local . W[i + 5]); local . temp2 = (((((local . A[3]) & 0xFFFFFFFF) >> (2)) | ((local . A[3]) << (32 - (2)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (13)) | ((local . A[3]) << (32 - (13)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (22)) | ((local . A[3]) << (32 - (22))))) + ((((local . A[3])) & ((local . A[4]))) | (((local . A[5])) & (((local . A[3])) | ((local . A[4]))))); (local . A[6]) += local . temp1; (local . A[2]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[1]) + (((((local . A[6]) & 0xFFFFFFFF) >> (6)) | ((local . A[6]) << (32 - (6)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (11)) | ((local . A[6]) << (32 - (11)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (25)) | ((local . A[6]) << (32 - (25))))) + (((local . A[0])) ^ (((local . A[6])) & (((local . A[7])) ^ ((local . A[0]))))) + (K[i + 6]) + (local . W[i + 6]); local . temp2 = (((((local . A[2]) & 0xFFFFFFFF) >> (2)) | ((local . A[2]) << (32 - (2)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (13)) | ((local . A[2]) << (32 - (13)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (22)) | ((local . A[2]) << (32 - (22))))) + ((((local . A[2])) & ((local . A[3]))) | (((local . A[4])) & (((local . A[2])) | ((local . A[3]))))); (local . A[5]) += local . temp1; (local . A[1]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[0]) + (((((local . A[5]) & 0xFFFFFFFF) >> (6)) | ((local . A[5]) << (32 - (6)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (11)) | ((local . A[5]) << (32 - (11)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (25)) | ((local . A[5]) << (32 - (25))))) + (((local . A[7])) ^ (((local . A[5])) & (((local . A[6])) ^ ((local . A[7]))))) + (K[i + 7]) + (local . W[i + 7]); local . temp2 = (((((local . A[1]) & 0xFFFFFFFF) >> (2)) | ((local . A[1]) << (32 - (2)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (13)) | ((local . A[1]) << (32 - (13)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (22)) | ((local . A[1]) << (32 - (22))))) + ((((local . A[1])) & ((local . A[2]))) | (((local . A[3])) & (((local . A[1])) | ((local . A[2]))))); (local . A[4]) += local . temp1; (local . A[0]) = local . temp1 + local . temp2; } while (0);
    }

    for (i = 16; i < 64; i += 8)
    {
        do { local . temp1 = (local . A[7]) + (((((local . A[4]) & 0xFFFFFFFF) >> (6)) | ((local . A[4]) << (32 - (6)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (11)) | ((local . A[4]) << (32 - (11)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (25)) | ((local . A[4]) << (32 - (25))))) + (((local . A[6])) ^ (((local . A[4])) & (((local . A[5])) ^ ((local . A[6]))))) + (K[i + 0]) + ((local . W[i + 0] = (((((local . W[(i + 0)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 0)-2]) << (32 - (17)))) ^ ((((local . W[(i + 0)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 0)-2]) << (32 - (19)))) ^ (((local . W[(i + 0)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 0)-7] + (((((local . W[(i + 0)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 0)-15]) << (32 - (7)))) ^ ((((local . W[(i + 0)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 0)-15]) << (32 - (18)))) ^ (((local . W[(i + 0)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 0)-16])); local . temp2 = (((((local . A[0]) & 0xFFFFFFFF) >> (2)) | ((local . A[0]) << (32 - (2)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (13)) | ((local . A[0]) << (32 - (13)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (22)) | ((local . A[0]) << (32 - (22))))) + ((((local . A[0])) & ((local . A[1]))) | (((local . A[2])) & (((local . A[0])) | ((local . A[1]))))); (local . A[3]) += local . temp1; (local . A[7]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[6]) + (((((local . A[3]) & 0xFFFFFFFF) >> (6)) | ((local . A[3]) << (32 - (6)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (11)) | ((local . A[3]) << (32 - (11)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (25)) | ((local . A[3]) << (32 - (25))))) + (((local . A[5])) ^ (((local . A[3])) & (((local . A[4])) ^ ((local . A[5]))))) + (K[i + 1]) + ((local . W[i + 1] = (((((local . W[(i + 1)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 1)-2]) << (32 - (17)))) ^ ((((local . W[(i + 1)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 1)-2]) << (32 - (19)))) ^ (((local . W[(i + 1)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 1)-7] + (((((local . W[(i + 1)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 1)-15]) << (32 - (7)))) ^ ((((local . W[(i + 1)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 1)-15]) << (32 - (18)))) ^ (((local . W[(i + 1)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 1)-16])); local . temp2 = (((((local . A[7]) & 0xFFFFFFFF) >> (2)) | ((local . A[7]) << (32 - (2)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (13)) | ((local . A[7]) << (32 - (13)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (22)) | ((local . A[7]) << (32 - (22))))) + ((((local . A[7])) & ((local . A[0]))) | (((local . A[1])) & (((local . A[7])) | ((local . A[0]))))); (local . A[2]) += local . temp1; (local . A[6]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[5]) + (((((local . A[2]) & 0xFFFFFFFF) >> (6)) | ((local . A[2]) << (32 - (6)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (11)) | ((local . A[2]) << (32 - (11)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (25)) | ((local . A[2]) << (32 - (25))))) + (((local . A[4])) ^ (((local . A[2])) & (((local . A[3])) ^ ((local . A[4]))))) + (K[i + 2]) + ((local . W[i + 2] = (((((local . W[(i + 2)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 2)-2]) << (32 - (17)))) ^ ((((local . W[(i + 2)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 2)-2]) << (32 - (19)))) ^ (((local . W[(i + 2)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 2)-7] + (((((local . W[(i + 2)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 2)-15]) << (32 - (7)))) ^ ((((local . W[(i + 2)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 2)-15]) << (32 - (18)))) ^ (((local . W[(i + 2)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 2)-16])); local . temp2 = (((((local . A[6]) & 0xFFFFFFFF) >> (2)) | ((local . A[6]) << (32 - (2)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (13)) | ((local . A[6]) << (32 - (13)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (22)) | ((local . A[6]) << (32 - (22))))) + ((((local . A[6])) & ((local . A[7]))) | (((local . A[0])) & (((local . A[6])) | ((local . A[7]))))); (local . A[1]) += local . temp1; (local . A[5]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[4]) + (((((local . A[1]) & 0xFFFFFFFF) >> (6)) | ((local . A[1]) << (32 - (6)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (11)) | ((local . A[1]) << (32 - (11)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (25)) | ((local . A[1]) << (32 - (25))))) + (((local . A[3])) ^ (((local . A[1])) & (((local . A[2])) ^ ((local . A[3]))))) + (K[i + 3]) + ((local . W[i + 3] = (((((local . W[(i + 3)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 3)-2]) << (32 - (17)))) ^ ((((local . W[(i + 3)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 3)-2]) << (32 - (19)))) ^ (((local . W[(i + 3)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 3)-7] + (((((local . W[(i + 3)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 3)-15]) << (32 - (7)))) ^ ((((local . W[(i + 3)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 3)-15]) << (32 - (18)))) ^ (((local . W[(i + 3)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 3)-16])); local . temp2 = (((((local . A[5]) & 0xFFFFFFFF) >> (2)) | ((local . A[5]) << (32 - (2)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (13)) | ((local . A[5]) << (32 - (13)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (22)) | ((local . A[5]) << (32 - (22))))) + ((((local . A[5])) & ((local . A[6]))) | (((local . A[7])) & (((local . A[5])) | ((local . A[6]))))); (local . A[0]) += local . temp1; (local . A[4]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[3]) + (((((local . A[0]) & 0xFFFFFFFF) >> (6)) | ((local . A[0]) << (32 - (6)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (11)) | ((local . A[0]) << (32 - (11)))) ^ ((((local . A[0]) & 0xFFFFFFFF) >> (25)) | ((local . A[0]) << (32 - (25))))) + (((local . A[2])) ^ (((local . A[0])) & (((local . A[1])) ^ ((local . A[2]))))) + (K[i + 4]) + ((local . W[i + 4] = (((((local . W[(i + 4)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 4)-2]) << (32 - (17)))) ^ ((((local . W[(i + 4)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 4)-2]) << (32 - (19)))) ^ (((local . W[(i + 4)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 4)-7] + (((((local . W[(i + 4)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 4)-15]) << (32 - (7)))) ^ ((((local . W[(i + 4)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 4)-15]) << (32 - (18)))) ^ (((local . W[(i + 4)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 4)-16])); local . temp2 = (((((local . A[4]) & 0xFFFFFFFF) >> (2)) | ((local . A[4]) << (32 - (2)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (13)) | ((local . A[4]) << (32 - (13)))) ^ ((((local . A[4]) & 0xFFFFFFFF) >> (22)) | ((local . A[4]) << (32 - (22))))) + ((((local . A[4])) & ((local . A[5]))) | (((local . A[6])) & (((local . A[4])) | ((local . A[5]))))); (local . A[7]) += local . temp1; (local . A[3]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[2]) + (((((local . A[7]) & 0xFFFFFFFF) >> (6)) | ((local . A[7]) << (32 - (6)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (11)) | ((local . A[7]) << (32 - (11)))) ^ ((((local . A[7]) & 0xFFFFFFFF) >> (25)) | ((local . A[7]) << (32 - (25))))) + (((local . A[1])) ^ (((local . A[7])) & (((local . A[0])) ^ ((local . A[1]))))) + (K[i + 5]) + ((local . W[i + 5] = (((((local . W[(i + 5)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 5)-2]) << (32 - (17)))) ^ ((((local . W[(i + 5)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 5)-2]) << (32 - (19)))) ^ (((local . W[(i + 5)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 5)-7] + (((((local . W[(i + 5)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 5)-15]) << (32 - (7)))) ^ ((((local . W[(i + 5)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 5)-15]) << (32 - (18)))) ^ (((local . W[(i + 5)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 5)-16])); local . temp2 = (((((local . A[3]) & 0xFFFFFFFF) >> (2)) | ((local . A[3]) << (32 - (2)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (13)) | ((local . A[3]) << (32 - (13)))) ^ ((((local . A[3]) & 0xFFFFFFFF) >> (22)) | ((local . A[3]) << (32 - (22))))) + ((((local . A[3])) & ((local . A[4]))) | (((local . A[5])) & (((local . A[3])) | ((local . A[4]))))); (local . A[6]) += local . temp1; (local . A[2]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[1]) + (((((local . A[6]) & 0xFFFFFFFF) >> (6)) | ((local . A[6]) << (32 - (6)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (11)) | ((local . A[6]) << (32 - (11)))) ^ ((((local . A[6]) & 0xFFFFFFFF) >> (25)) | ((local . A[6]) << (32 - (25))))) + (((local . A[0])) ^ (((local . A[6])) & (((local . A[7])) ^ ((local . A[0]))))) + (K[i + 6]) + ((local . W[i + 6] = (((((local . W[(i + 6)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 6)-2]) << (32 - (17)))) ^ ((((local . W[(i + 6)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 6)-2]) << (32 - (19)))) ^ (((local . W[(i + 6)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 6)-7] + (((((local . W[(i + 6)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 6)-15]) << (32 - (7)))) ^ ((((local . W[(i + 6)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 6)-15]) << (32 - (18)))) ^ (((local . W[(i + 6)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 6)-16])); local . temp2 = (((((local . A[2]) & 0xFFFFFFFF) >> (2)) | ((local . A[2]) << (32 - (2)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (13)) | ((local . A[2]) << (32 - (13)))) ^ ((((local . A[2]) & 0xFFFFFFFF) >> (22)) | ((local . A[2]) << (32 - (22))))) + ((((local . A[2])) & ((local . A[3]))) | (((local . A[4])) & (((local . A[2])) | ((local . A[3]))))); (local . A[5]) += local . temp1; (local . A[1]) = local . temp1 + local . temp2; } while (0);
        do { local . temp1 = (local . A[0]) + (((((local . A[5]) & 0xFFFFFFFF) >> (6)) | ((local . A[5]) << (32 - (6)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (11)) | ((local . A[5]) << (32 - (11)))) ^ ((((local . A[5]) & 0xFFFFFFFF) >> (25)) | ((local . A[5]) << (32 - (25))))) + (((local . A[7])) ^ (((local . A[5])) & (((local . A[6])) ^ ((local . A[7]))))) + (K[i + 7]) + ((local . W[i + 7] = (((((local . W[(i + 7)-2]) & 0xFFFFFFFF) >> (17)) | ((local . W[(i + 7)-2]) << (32 - (17)))) ^ ((((local . W[(i + 7)-2]) & 0xFFFFFFFF) >> (19)) | ((local . W[(i + 7)-2]) << (32 - (19)))) ^ (((local . W[(i + 7)-2]) & 0xFFFFFFFF) >> (10))) + local . W[(i + 7)-7] + (((((local . W[(i + 7)-15]) & 0xFFFFFFFF) >> (7)) | ((local . W[(i + 7)-15]) << (32 - (7)))) ^ ((((local . W[(i + 7)-15]) & 0xFFFFFFFF) >> (18)) | ((local . W[(i + 7)-15]) << (32 - (18)))) ^ (((local . W[(i + 7)-15]) & 0xFFFFFFFF) >> (3))) + local . W[(i + 7)-16])); local . temp2 = (((((local . A[1]) & 0xFFFFFFFF) >> (2)) | ((local . A[1]) << (32 - (2)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (13)) | ((local . A[1]) << (32 - (13)))) ^ ((((local . A[1]) & 0xFFFFFFFF) >> (22)) | ((local . A[1]) << (32 - (22))))) + ((((local . A[1])) & ((local . A[2]))) | (((local . A[3])) & (((local . A[1])) | ((local . A[2]))))); (local . A[4]) += local . temp1; (local . A[0]) = local . temp1 + local . temp2; } while (0);
    }

    for (i = 0; i < 8; i++)
        ctx->state[i] += local.A[i];

    Crypto_memset(&local, sizeof(local));
    return (ret);
}



 
 Std_ReturnType
Crypto_sha256_update_ret(
    Crypto_Sha256Data* ctx,
    uint8 * input,
    uint32 ilen)
{
    Std_ReturnType ret = 0U;
    uint32 fill;
    uint32 left;

    if (ilen == 0)
    {
        goto exit;
    }

    left = ctx->total[0] & 0x3F;
    fill = 64 - left;

    ctx->total[0] += (uint32)ilen;
    ctx->total[0] &= 0xFFFFFFFF;

    if (ctx->total[0] < ilen)
    {
        ctx->total[1]++;
    }

    if (left && ilen >= fill)    
    {
        Crypto_memcpy((void*)(ctx->buffer + left), input, fill);

        if ((ret = Crypto_internal_sha256_process(ctx, ctx->buffer)) != 0)
        {
            goto exit;
        }

        input += fill;
        ilen -= fill;
        left = 0;
    }

    while (ilen >= 64)
    {
        if ((ret = Crypto_internal_sha256_process(ctx, input)) != 0)    
        {
            goto exit;
        }

        input += 64;
        ilen -= 64;
    }

    if (ilen > 0)
        Crypto_memcpy((void*)(ctx->buffer + left), input, ilen);

exit:
    return (ret);
}



 
 Std_ReturnType Crypto_sha256_finish_ret(Crypto_Sha256Data* ctx, uint8 output[32])
{
    uint32 used;
    uint32 high, low;
    Std_ReturnType ret;
    

 
    used = ctx->total[0] & 0x3F;

    ctx->buffer[used++] = 0x80;    

    if (used <= 56)
    {
         
        Crypto_memset((ctx->buffer + used), (56 - used));
    }
    else
    {
         
        Crypto_memset((ctx->buffer + used), (64 - used));
        if ((ret = Crypto_internal_sha256_process(ctx, ctx->buffer)) != 0)
        {
            goto exit;
        }
        Crypto_memset((ctx->buffer), 56);
    }

    

 
    high = (ctx->total[0] >> 29) | (ctx->total[1] << 3);
    low = (ctx->total[0] << 3);

    do { (ctx->buffer)[(56)] = ((uint8)(((high) >> 24) & 0xff)); (ctx->buffer)[(56) + 1] = ((uint8)(((high) >> 16) & 0xff)); (ctx->buffer)[(56) + 2] = ((uint8)(((high) >> 8) & 0xff)); (ctx->buffer)[(56) + 3] = ((uint8)(((high) >> 0) & 0xff)); } while (0);
    do { (ctx->buffer)[(60)] = ((uint8)(((low) >> 24) & 0xff)); (ctx->buffer)[(60) + 1] = ((uint8)(((low) >> 16) & 0xff)); (ctx->buffer)[(60) + 2] = ((uint8)(((low) >> 8) & 0xff)); (ctx->buffer)[(60) + 3] = ((uint8)(((low) >> 0) & 0xff)); } while (0);

    if ((ret = Crypto_internal_sha256_process(ctx, ctx->buffer)) != 0)
    {
        goto exit;
    }
    

 
    do { (output)[(0)] = ((uint8)(((ctx->state[0]) >> 24) & 0xff)); (output)[(0) + 1] = ((uint8)(((ctx->state[0]) >> 16) & 0xff)); (output)[(0) + 2] = ((uint8)(((ctx->state[0]) >> 8) & 0xff)); (output)[(0) + 3] = ((uint8)(((ctx->state[0]) >> 0) & 0xff)); } while (0);
    do { (output)[(4)] = ((uint8)(((ctx->state[1]) >> 24) & 0xff)); (output)[(4) + 1] = ((uint8)(((ctx->state[1]) >> 16) & 0xff)); (output)[(4) + 2] = ((uint8)(((ctx->state[1]) >> 8) & 0xff)); (output)[(4) + 3] = ((uint8)(((ctx->state[1]) >> 0) & 0xff)); } while (0);
    do { (output)[(8)] = ((uint8)(((ctx->state[2]) >> 24) & 0xff)); (output)[(8) + 1] = ((uint8)(((ctx->state[2]) >> 16) & 0xff)); (output)[(8) + 2] = ((uint8)(((ctx->state[2]) >> 8) & 0xff)); (output)[(8) + 3] = ((uint8)(((ctx->state[2]) >> 0) & 0xff)); } while (0);
    do { (output)[(12)] = ((uint8)(((ctx->state[3]) >> 24) & 0xff)); (output)[(12) + 1] = ((uint8)(((ctx->state[3]) >> 16) & 0xff)); (output)[(12) + 2] = ((uint8)(((ctx->state[3]) >> 8) & 0xff)); (output)[(12) + 3] = ((uint8)(((ctx->state[3]) >> 0) & 0xff)); } while (0);
    do { (output)[(16)] = ((uint8)(((ctx->state[4]) >> 24) & 0xff)); (output)[(16) + 1] = ((uint8)(((ctx->state[4]) >> 16) & 0xff)); (output)[(16) + 2] = ((uint8)(((ctx->state[4]) >> 8) & 0xff)); (output)[(16) + 3] = ((uint8)(((ctx->state[4]) >> 0) & 0xff)); } while (0);
    do { (output)[(20)] = ((uint8)(((ctx->state[5]) >> 24) & 0xff)); (output)[(20) + 1] = ((uint8)(((ctx->state[5]) >> 16) & 0xff)); (output)[(20) + 2] = ((uint8)(((ctx->state[5]) >> 8) & 0xff)); (output)[(20) + 3] = ((uint8)(((ctx->state[5]) >> 0) & 0xff)); } while (0);
    do { (output)[(24)] = ((uint8)(((ctx->state[6]) >> 24) & 0xff)); (output)[(24) + 1] = ((uint8)(((ctx->state[6]) >> 16) & 0xff)); (output)[(24) + 2] = ((uint8)(((ctx->state[6]) >> 8) & 0xff)); (output)[(24) + 3] = ((uint8)(((ctx->state[6]) >> 0) & 0xff)); } while (0);
    do { (output)[(28)] = ((uint8)(((ctx->state[7]) >> 24) & 0xff)); (output)[(28) + 1] = ((uint8)(((ctx->state[7]) >> 16) & 0xff)); (output)[(28) + 2] = ((uint8)(((ctx->state[7]) >> 8) & 0xff)); (output)[(28) + 3] = ((uint8)(((ctx->state[7]) >> 0) & 0xff)); } while (0);
exit:
    return (ret);
}



 
 Std_ReturnType
Crypto_sha256(
    uint8 * input,
    uint32 ilen,
    uint8 * output)
{
    Std_ReturnType ret;
    Crypto_Sha256Data ctx;

    Crypto_memset(&ctx, sizeof(Crypto_Sha256Data));
    ret = Crypto_sha256_starts_ret(&ctx);

    if (1U != ret)
    {
        ret = Crypto_sha256_update_ret(&ctx, input, ilen);
        if (1U != ret)
        {
            ret = Crypto_sha256_finish_ret(&ctx, output);    
        }
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

                       
                       
                  
   
                  
                       
                       
                       
