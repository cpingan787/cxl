











 












 
   












 












 
   
   












 












 

   




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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



 
 
 
 
 

 

typedef struct Crypto_CtrDrbgData
{
    uint8 counter[16];          
    int reseed_counter;         
    int prediction_resistance;  
    uint32 entropy_len;         
    int reseed_interval;        
    Crypto_AESData aes_ctx;     
    void* p_entropy;            
    Std_ReturnType (*f_entropy)(void*, uint8 *, uint32);
} Crypto_CtrDrbgData;

typedef int (*entropy_f_source_ptr)(void* data, unsigned char* output, uint32 len, uint32* olen);


 
typedef struct
{
    entropy_f_source_ptr f_source;  
    void* p_source;                 
    uint32 size;                    
    uint32 threshold;               
    int strong;                     
} Crypto_entropy_source_state;



 
typedef struct
{
    int accumulator_started;
    Crypto_Sha256Data accumulator;
    int source_count;
    Crypto_entropy_source_state source[20];

} Crypto_entropy_context;

 Std_ReturnType
mbedtls_ctr_drbg_seed(
    Crypto_CtrDrbgData * ctx,
    Std_ReturnType (*f_entropy)(void*, uint8*, uint32),
    Crypto_entropy_context * p_entropy,
    const uint8* custom,
    uint32 len);
   

 Std_ReturnType
mbedtls_ctr_drbg_random(void* p_rng, uint8 * output, uint32 output_len);

 Std_ReturnType mbedtls_entropy_func(void* data, uint8* output, uint32 len);

 Std_ReturnType Crypto_CtrDrbg(uint8 key[16], uint8 buf[16]);

void mbedtls_ctr_drbg_init(Crypto_CtrDrbgData* ctx);

typedef uint64 mbedtls_t_udbl;





 
 
 
 
 
 
 
 


 

 



 
 


 




typedef struct mbedtls_md_info_t mbedtls_md_info_t;



typedef enum
{
    MBEDTLS_MPI_GEN_PRIME_FLAG_DH = 0x0001,       
    MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR = 0x0002,  
} mbedtls_mpi_gen_prime_flag_t;











 








 
typedef enum
{
    MBEDTLS_MD_NONE = 0,   
    MBEDTLS_MD_MD2,        
    MBEDTLS_MD_MD4,        
    MBEDTLS_MD_MD5,        
    MBEDTLS_MD_SHA1,       
    MBEDTLS_MD_SHA224,     
    MBEDTLS_MD_SHA256,     
    MBEDTLS_MD_SHA384,     
    MBEDTLS_MD_SHA512,     
    MBEDTLS_MD_RIPEMD160,  
} mbedtls_md_type_t;

typedef uint32 mbedtls_mpi_uint;
typedef sint32 mbedtls_mpi_sint;



 
typedef struct mbedtls_mpi
{
    int s;                
    uint32 n;             
    mbedtls_mpi_uint* p;  
} mbedtls_mpi;







 
typedef struct
{
    int ver;     
    uint32 len;  

    mbedtls_mpi N;  
    mbedtls_mpi E;  

    mbedtls_mpi D;  
    mbedtls_mpi P;  
    mbedtls_mpi Q;  

    mbedtls_mpi DP;  
    mbedtls_mpi DQ;  
    mbedtls_mpi QP;  

    mbedtls_mpi RN;  

    mbedtls_mpi RP;  
    mbedtls_mpi RQ;  

    mbedtls_mpi Vi;  
    mbedtls_mpi Vf;  

    int padding; 

 
    int hash_id; 


 
} mbedtls_rsa_context;



























 
void mbedtls_rsa_init(mbedtls_rsa_context* ctx);





























 
int mbedtls_rsa_import(
    mbedtls_rsa_context* ctx,
    const mbedtls_mpi* N,
    const mbedtls_mpi* P,
    const mbedtls_mpi* Q,
    const mbedtls_mpi* D,
    const mbedtls_mpi* E);


































 
int mbedtls_rsa_import_raw(
    mbedtls_rsa_context* ctx,
    uint8 const* N,
    uint32 N_len,
    uint8 const* P,
    uint32 P_len,
    uint8 const* Q,
    uint32 Q_len,
    uint8 const* D,
    uint32 D_len,
    uint8 const* E,
    uint32 E_len);
































 
int mbedtls_rsa_complete(mbedtls_rsa_context* ctx);








































 
int mbedtls_rsa_export(
    const mbedtls_rsa_context* ctx,
    mbedtls_mpi* N,
    mbedtls_mpi* P,
    mbedtls_mpi* Q,
    mbedtls_mpi* D,
    mbedtls_mpi* E);















































 
int mbedtls_rsa_export_raw(
    const mbedtls_rsa_context* ctx,
    uint8* N,
    uint32 N_len,
    uint8* P,
    uint32 P_len,
    uint8* Q,
    uint32 Q_len,
    uint8* D,
    uint32 D_len,
    uint8* E,
    uint32 E_len);



















 
int mbedtls_rsa_export_crt(const mbedtls_rsa_context* ctx, mbedtls_mpi* DP, mbedtls_mpi* DQ, mbedtls_mpi* QP);








 
uint32 mbedtls_rsa_get_len(const mbedtls_rsa_context* ctx);


















 
int mbedtls_rsa_gen_key(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    uint32 nbits,
    int exponent);














 
int mbedtls_rsa_check_pubkey(const mbedtls_rsa_context* ctx);




































 
int mbedtls_rsa_check_privkey(const mbedtls_rsa_context* ctx);











 
int mbedtls_rsa_check_pub_priv(const mbedtls_rsa_context* pub, const mbedtls_rsa_context* prv);



















 
int mbedtls_rsa_public(mbedtls_rsa_context* ctx, const uint8* input, uint8* output);































 
int mbedtls_rsa_private(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    const uint8* input,
    uint8* output);






































 
int mbedtls_rsa_pkcs1_encrypt(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    uint32 ilen,
    const uint8* input,
    uint8* output);

































 
int mbedtls_rsa_rsaes_pkcs1_v15_encrypt(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    uint32 ilen,
    const uint8* input,
    uint8* output);





































 
int mbedtls_rsa_rsaes_oaep_encrypt(
    mbedtls_rsa_context* ctx,
    int (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    const uint8* label,
    uint32 label_len,
    uint32 ilen,
    const uint8* input,
    uint8* output);












































 
int mbedtls_rsa_pkcs1_decrypt(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    uint32* olen,
    const uint8* input,
    uint8* output,
    uint32 output_max_len);










































 
int mbedtls_rsa_rsaes_pkcs1_v15_decrypt(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    uint32* olen,
    const uint8* input,
    uint8* output,
    uint32 output_max_len);














































 
int mbedtls_rsa_rsaes_oaep_decrypt(
    mbedtls_rsa_context* ctx,
    int (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    const uint8* label,
    uint32 label_len,
    uint32* olen,
    const uint8* input,
    uint8* output,
    uint32 output_max_len);


















































 







































 





















































 
int mbedtls_rsa_rsassa_pss_sign(
    mbedtls_rsa_context* ctx,
    int (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    mbedtls_md_type_t md_alg,
    uint32 hashlen,
    const uint8* hash,
    uint8* sig);












































 
int mbedtls_rsa_pkcs1_verify(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, unsigned char*, uint32),
    void* p_rng,
    int mode,
    mbedtls_md_type_t md_alg,
    uint32 hashlen,
    const unsigned char* hash,
    const unsigned char* sig);





































 
int mbedtls_rsa_rsassa_pkcs1_v15_verify(
    mbedtls_rsa_context* ctx,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    mbedtls_md_type_t md_alg,
    uint32 hashlen,
    const uint8* hash,
    const uint8* sig);
















































 
int mbedtls_rsa_rsassa_pss_verify(
    mbedtls_rsa_context* ctx,
    int (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    mbedtls_md_type_t md_alg,
    uint32 hashlen,
    const uint8* hash,
    const uint8* sig);







































 
int mbedtls_rsa_rsassa_pss_verify_ext(
    mbedtls_rsa_context* ctx,
    int (*f_rng)(void*, uint8*, uint32),
    void* p_rng,
    int mode,
    mbedtls_md_type_t md_alg,
    uint32 hashlen,
    const uint8* hash,
    mbedtls_md_type_t mgf1_hash_id,
    int expected_salt_len,
    const uint8* sig);









 
int mbedtls_rsa_copy(mbedtls_rsa_context* dst, const mbedtls_rsa_context* src);







 
int mbedtls_mpi_fill_random(mbedtls_mpi* X, uint32 size, Std_ReturnType (*f_rng)(void*, uint8*, uint32), void* p_rng);

 Std_ReturnType
rsa_encrypt(uint8 keyN[], uint8 keyE[], uint8 Plaintext[], uint32 Length, uint8 Output[]);
 Std_ReturnType
rsa_decrypt(
    uint8 keyN[],
    uint8 keyP[],
    uint8 keyQ[],
    uint8 keyD[],
    uint8 keyE[],
    uint32 Length,
    uint8 Outcome[],
    uint8 Ciphertext[]);
 Std_ReturnType rsa_keygenerate(uint32 cryptoKeyId);
 Std_ReturnType
rsa_sign(
    uint8 keyN[],
    uint8 keyP[],
    uint8 keyQ[],
    uint8 keyD[],
    uint8 keyE[],
    uint32 Length,
    uint8 Plaintext[],
    uint8* Output);
 Std_ReturnType
rsa_verify(uint8 keyN[], uint8 keyE[], uint32 Length, uint8 Ciphertext[], uint8 sig[]);
void mbedtls_mpi_init(mbedtls_mpi* X);
int mbedtls_mpi_read_binary(mbedtls_mpi* X, const uint8* buf, uint32 buflen);
int mbedtls_mpi_exp_mod(
    mbedtls_mpi* X,
    const mbedtls_mpi* A,
    const mbedtls_mpi* E,
    const mbedtls_mpi* N,
    mbedtls_mpi* prec_RR);
int mbedtls_mpi_gen_prime(
    mbedtls_mpi* X,
    uint32 nbits,
    int flags,
    Std_ReturnType (*f_rng)(void*, uint8*, uint32),
    void* p_rng);
int mbedtls_mpi_write_binary(const mbedtls_mpi* X, uint8* buf, uint32 buflen);

   
   
   
