











 











 



 








 

                  
                  
             
                  
             
   
                  
                  
                  
             
                  
        



 












 












 


 
















 




 
 




















 
 



 



 



 




 




 




 



 


     












 












 



 



 



 












 












 


 




 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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













 












 


 


 



 



 



 













 
 void
CryIf_CallbackNotification(
    Crypto_JobType * job,
    Crypto_ResultType result);













 












 


























 




 
 




















 
 

 


 

 

 

 

 

 

 

 

 

 

 

 

 

 












 












 

   




 


 



 

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













 












 

 Std_ReturnType
Crypto_GernerateMAC(uint8 MAC[16], uint8 Key[16], uint8 IVKey[16], uint8* add, uint8 inputlength);
 Std_ReturnType
Crypto_VerifyMAC(uint8* Key, uint8* IVKey, uint8* add, uint8 inputlength, uint8 MAC_Result[16], uint32 Verifylength);













 












 












 












 


 


 



 


 

 




 



 
 
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




 



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType Crypto_QueueJob(Crypto_JobType * job);
Std_ReturnType Crypto_QueueOutJob(Crypto_JobType* job);
 Std_ReturnType Crypto_CancelQueuedJob(const Crypto_JobType * job);
 Std_ReturnType Crypto_ProcessSYNCJob(const Crypto_JobType * job);
 Std_ReturnType
Crypto_ProcessASYNCJob_NONQUEUE(const Crypto_JobType * job);
 void Crypto_Start(const Crypto_JobType * job);
 Std_ReturnType Crypto_Update(void);
 Std_ReturnType Crypto_Finish(void);
 Std_ReturnType
Crypto_RandomSeedInternal(
    uint32 cryptoKeyId,
    const uint8 * seedPtr,
    uint32 seedLength);
 Std_ReturnType Crypto_KeySetValid_internal(uint32 cryptoKeyId);
 Std_ReturnType
Crypto_KeyExchangeCalcPubVal_internal(
    uint32 cryptoKeyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr);
 Std_ReturnType
Crypto_KeyExchangeCalcSecret_internal(
    uint32 cryptoKeyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength);
 Std_ReturnType Crypto_sha256_Process();
 Std_ReturnType Crypto_GernerateMAC_Process();
 Std_ReturnType Crypto_VerifyMAC_Process();
 Std_ReturnType Crypto_AESDecryptProcess();
 Std_ReturnType Crypto_AESEncryptProcess();
 Std_ReturnType Crypto_CtrDrbgProcess();
 Std_ReturnType Crypto_AlgorithmGetInput(uint8 * buf);
 Std_ReturnType Crypto_AlgorithmGetSecondInput(uint8 * buf);
 void
Crypto_AlgorithmOutput(const uint8 * buf, uint32 outputLength);
 Std_ReturnType Crypto_ProcessAlgorithm(void);













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static Crypto_JobType Crypto_StoredJob;
static Crypto_JobType Crypto_JobInQueue[(5U)];
uint32 Crypto_62_QueueFilledSize;    
Crypto_JobType Crypto_JobTempBuf;    












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static Crypto_DriverStatusType Crypto_DriverStatus = CRYPTO_DRIVER_UNINIT;
Crypto_KeyStateType CryptoKeyStatus[(1U)];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
extern const Crypto_KeyCfgType Crypto_Key[(1U)];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  void Crypto_ClearStoredJob(void)
{
    Crypto_StoredJob.jobId = (0xffffU);
    Crypto_StoredJob.jobInfo = ((void *)0);
    Crypto_StoredJob.jobPrimitiveInfo = ((void *)0);
    Crypto_StoredJob.jobRedirectionInfoRef = ((void *)0);
}











 

 

 void Crypto_ISoft_Init(const Crypto_ConfigType * configPtr)
{
    uint32 index;
    uint32 Keyindex;

    if (((void *)0) != configPtr)
    {
        Crypto_ReportDetErr(((uint8)0x00), ((uint8)0x01));
    }
    else
    {
           
         
        Crypto_ClearStoredJob();

        for (Keyindex = 0; Keyindex < (1U); Keyindex++)
        {
             
            CryptoKeyStatus[Keyindex] = CRYPTO_KEYSTATE_INVALID;
        }
        Crypto_DriverStatus = CRYPTO_DRIVER_IDLE;
    }
}










 

























 

 
   
 Std_ReturnType
Crypto_ISoft_ProcessJob(uint32 objectId, Crypto_JobType * job)
{
    Std_ReturnType Status = 0U;
    uint16 rsaLen = 384u;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x03), ((uint8)0x00));
    }
     
    else if (objectId >= (1U))
    {
        Crypto_ReportDetErr(((uint8)0x03), ((uint8)0x04));
    }
     
    else if (((void *)0) == job)
    {
        Crypto_ReportDetErr(((uint8)0x03), ((uint8)0x02));
    }
     
    else if (job->jobPrimitiveInfo->primitiveInfo->service > CRYPTO_KEYSETVALID)
    {
        Crypto_ReportDetErr(((uint8)0x03), ((uint8)0x04));
    }
     
    else if (
        ((CRYPTO_KEYSETVALID == job->jobPrimitiveInfo->primitiveInfo->service)
         || (CRYPTO_RANDOMSEED == job->jobPrimitiveInfo->primitiveInfo->service)
         || (CRYPTO_KEYGENERATE == job->jobPrimitiveInfo->primitiveInfo->service)
         || (CRYPTO_KEYDERIVE == job->jobPrimitiveInfo->primitiveInfo->service)
         || (CRYPTO_KEYEXCHANGECALCPUBVAL == job->jobPrimitiveInfo->primitiveInfo->service)
         || (CRYPTO_KEYEXCHANGECALCSECRET == job->jobPrimitiveInfo->primitiveInfo->service))
        && (job->cryptoKeyId >= (1U)))
    {
        Crypto_ReportDetErr(((uint8)0x03), ((uint8)0x04));
    }
    else
    {
        if (((CRYPTO_ENCRYPT == job->jobPrimitiveInfo->primitiveInfo->service)
             || (CRYPTO_SIGNATUREGENERATE == job->jobPrimitiveInfo->primitiveInfo->service))
            && (CRYPTO_ALGOFAM_RSA == job->jobPrimitiveInfo->primitiveInfo->algorithm.family)
            && (rsaLen > *(job->jobPrimitiveInputOutput.outputLengthPtr)))
        {
            return 1U;
        }
         
           
        if ((CRYPTO_HASH != job->jobPrimitiveInfo->primitiveInfo->service)
            || (CRYPTO_RANDOMGENERATE != job->jobPrimitiveInfo->primitiveInfo->service)
            || (job->cryptoKeyId < (1U)))
           
        {
            if (CRYPTO_PROCESSING_SYNC == job->jobPrimitiveInfo->processingType)
            {
                if (Crypto_StoredJob.jobId == job->jobId)
                {
                     
                    if ((CRYPTO_OPERATIONMODE_START == job->jobPrimitiveInputOutput.mode)
                        || (CRYPTO_OPERATIONMODE_STREAMSTART == job->jobPrimitiveInputOutput.mode)
                        || (CRYPTO_OPERATIONMODE_SINGLECALL == job->jobPrimitiveInputOutput.mode)
                        || (CRYPTO_OPERATIONMODE_UPDATE == job->jobPrimitiveInputOutput.mode)
                        || (CRYPTO_OPERATIONMODE_FINISH == job->jobPrimitiveInputOutput.mode))
                    {
                        Status = 0U;
                    }
                }
                else
                {
                    if (CRYPTO_DRIVER_BUSY == Crypto_DriverStatus)
                    {
                         
                        Status = (Std_ReturnType)((Std_ReturnType)0x02u);
                    }
                    else
                    {
                        if ((CRYPTO_OPERATIONMODE_START == job->jobPrimitiveInputOutput.mode)
                            || (CRYPTO_OPERATIONMODE_STREAMSTART == job->jobPrimitiveInputOutput.mode)
                            || (CRYPTO_OPERATIONMODE_SINGLECALL == job->jobPrimitiveInputOutput.mode))
                        {
                            Status = 0U;
                        }
                        else
                        {
                            Status = 1U;
                        }
                    }
                }
                if (0U == Status)
                {
                    Status = Crypto_ProcessSYNCJob(job);
                }
            }
            else
            {
                if (CRYPTO_DRIVER_BUSY == Crypto_DriverStatus)
                {

                    if ((CRYPTO_OPERATIONMODE_START == job->jobPrimitiveInputOutput.mode)
                        || (CRYPTO_OPERATIONMODE_STREAMSTART == job->jobPrimitiveInputOutput.mode)
                        || (CRYPTO_OPERATIONMODE_SINGLECALL == job->jobPrimitiveInputOutput.mode))
                    {
                        Status = Crypto_QueueJob(job);
                    }
                    else if (
                        (CRYPTO_OPERATIONMODE_UPDATE == job->jobPrimitiveInputOutput.mode)
                        || (CRYPTO_OPERATIONMODE_FINISH == job->jobPrimitiveInputOutput.mode))
                    {
                        Status = Crypto_ProcessASYNCJob_NONQUEUE(job);
                    }
                    else
                    {
                        Status = 1U;
                    }
                }
                else
                {
                    Crypto_DriverStatus = CRYPTO_DRIVER_BUSY;
                    Status = Crypto_QueueJob(job);
                }
            }
        }
    }
    return Status;
}














 

 Std_ReturnType
Crypto_ISoft_CancelJob(uint32 objectId, Crypto_JobType * job)
{
    Std_ReturnType Status = 0U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x0E), ((uint8)0x00));
    }
     
    else if (objectId >= (1U))
    {
        Crypto_ReportDetErr(((uint8)0x0E), ((uint8)0x04));
    }
     
    else if (((void *)0) == job)
    {
        Crypto_ReportDetErr(((uint8)0x0E), ((uint8)0x02));
    }
    else
    {
        


 
        if (CRYPTO_PROCESSING_ASYNC == job->jobPrimitiveInfo->processingType)
        {
            Status = Crypto_CancelQueuedJob(job);
            if (0U == Status)
            {
                Status = (Std_ReturnType)((Std_ReturnType)0x0Cu);
                CryIf_CallbackNotification(job, (Std_ReturnType)((Std_ReturnType)0x0Cu));
            }
            else
            {
                if (&Crypto_StoredJob == job)
                {
                    if (0u != Crypto_62_QueueFilledSize)
                    {
                        Crypto_StoredJob = Crypto_JobInQueue[0];
                        (void)Crypto_CancelQueuedJob(&Crypto_JobInQueue[0]);
                        Crypto_DriverStatus = CRYPTO_DRIVER_BUSY;
                    }
                    else
                    {
                        Crypto_DriverStatus = CRYPTO_DRIVER_IDLE;
                    }
                    Status = (Std_ReturnType)((Std_ReturnType)0x0Cu);
                    CryIf_CallbackNotification(job, (Std_ReturnType)((Std_ReturnType)0x0Cu));
                }
                else
                {
                    Status = 1U;
                }
            }
        }
        else
        {
            Status = (Std_ReturnType)0U;
            Crypto_DriverStatus = CRYPTO_DRIVER_IDLE;
        }
    }
    return Status;
}




















 
 Std_ReturnType
Crypto_ISoft_KeyElementSet(
    uint32 cryptokeyId,
    uint32 keyElementId,
    const uint8 * keyPtr,
    uint32 keyLength)
{

    Std_ReturnType Status = 1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x04), ((uint8)0x00));
    }
     
    else if (((void *)0) == keyPtr)
    {
        Crypto_ReportDetErr(((uint8)0x04), ((uint8)0x02));
    }
     
    else if (0u == keyLength)
    {
        Crypto_ReportDetErr(((uint8)0x04), ((uint8)0x05));
    }
    else
    {
        Status = Crypto_KeyElementSetInternal(cryptokeyId, keyElementId, keyPtr, keyLength);
    }
    return Status;
}















 

 Std_ReturnType Crypto_ISoft_KeySetValid(uint32 cryptoKeyId)
{
    Std_ReturnType Status = 1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x05), ((uint8)0x00));
    }
    else
    {
        Status = Crypto_KeySetValid_internal(cryptoKeyId);
    }
    return Status;
}


























 
 Std_ReturnType
Crypto_ISoft_KeyElementGet(
    uint32 cryptoKeyId,
    uint32 keyElementId,
    uint8 * resultPtr,
    uint32 * resultLengthPtr)
{

    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x06), ((uint8)0x00));
    }
     
    else if ((((void *)0) == resultPtr) || (((void *)0) == resultLengthPtr))
    {
        Crypto_ReportDetErr(((uint8)0x06), ((uint8)0x02));
    }
     
    else if (0u == *resultLengthPtr)
    {
        Crypto_ReportDetErr(((uint8)0x06), ((uint8)0x05));
    }
    else
    {
         
        uint32 KeyElementIndex = 0;
        uint32 Index;
         
        Status = Crypto_KeyElementIndexFind(cryptoKeyId, keyElementId, &KeyElementIndex);
        if (0U == Status)
        {
            if (*resultLengthPtr
                < Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex].CryptoKeyElementSize)
            {
                 
                Status = (Std_ReturnType)1U;
            }
             
            else if (
                Crypto_Key[cryptoKeyId]
                    .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                    .CryptoKeyElementReadAccess
                == CRYPTO_RA_DENIED)
            {
                Status = (Std_ReturnType)((Std_ReturnType)0x06u);
            }
            else
            {
                for (Index = 0; Index < *resultLengthPtr; Index++)
                {
                    resultPtr[Index] = Crypto_Key[cryptoKeyId]
                                           .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                                           .CryptoKeyElementInitValue[Index];
                }
                *resultLengthPtr =
                    Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex].CryptoKeyElementSize;
            }
        }
    }
    return Status;
}


























 

 Std_ReturnType
Crypto_ISoft_KeyElementCopy(
    uint32 cryptoKeyId,
    uint32 keyElementId,
    uint32 targetCryptoKeyId,
    uint32 targetKeyElementId)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x0F), ((uint8)0x00));
    }
    else
    {
         
        uint32 KeyElementIndex = 0;
        uint32 KeyElementIndexS = 0;
        uint8 i;

         
        Status = Crypto_KeyElementIndexFind(targetCryptoKeyId, targetKeyElementId, &KeyElementIndex);
        if (0U == Status)
        {
            Status = Crypto_KeyElementIndexFind(cryptoKeyId, keyElementId, &KeyElementIndexS);
            if (0U == Status)
            {
                 
                if (Crypto_Key[cryptoKeyId]
                        .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                        .CryptoKeyElementReadAccess
                    == CRYPTO_RA_DENIED)
                {
                    Status = ((Std_ReturnType)0x06u);
                }
                else if (
                    Crypto_Key[cryptoKeyId]
                        .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                        .CryptoKeyElementWriteAccess
                    == CRYPTO_WA_DENIED)
                {
                    Status = ((Std_ReturnType)0x07u);
                }
                else if (
                    Crypto_Key[cryptoKeyId]
                        .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                        .CryptoKeyElementFormat
                    != Crypto_Key[cryptoKeyId]
                           .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                           .CryptoKeyElementFormat)
                {
                    Status = ((Std_ReturnType)0x0Au);
                }
                else
                {
                    for (i = 0; i < Crypto_Key[cryptoKeyId]
                                        .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                                        .CryptoKeyElementSize;
                         i++)
                    {
                        Crypto_Key[cryptoKeyId]
                            .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                            .CryptoKeyElementInitValue[i] = Crypto_Key[targetCryptoKeyId]
                                                                .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                                                                .CryptoKeyElementInitValue[i];
                    }
                    *(Crypto_Key[cryptoKeyId]
                          .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                          .CryptoKeyElementLength) = *(Crypto_Key[cryptoKeyId]
                                                           .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                                                           .CryptoKeyElementLength);
                }
            }
        }
    }
    return Status;
}




































 
   
 Std_ReturnType
Crypto_ISoft_KeyElementCopyPartial(
    uint32 cryptoKeyId,
    uint32 keyElementId,
    uint32 keyElementSourceOffset,
    uint32 keyElementTargetOffset,
    uint32 keyElementCopyLength,
    uint32 targetCryptoKeyId,
    uint32 targetKeyElementId)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x13), ((uint8)0x00));
    }
    else
    {
        uint32 KeyElementIndex = 0;
        uint32 KeyElementIndexS = 0;
        uint8 i;
         
        Status = Crypto_KeyElementIndexFind(targetCryptoKeyId, targetKeyElementId, &KeyElementIndex);
        if (0U == Status)
        {
            Status = Crypto_KeyElementIndexFind(cryptoKeyId, keyElementId, &KeyElementIndexS);
            if (0U == Status)
            {
                 
                if (Crypto_Key[cryptoKeyId]
                        .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                        .CryptoKeyElementReadAccess
                    == CRYPTO_RA_DENIED)
                {
                    Status = 1U;
                    Crypto_ReportDetErr(((uint8)0x13), ((Std_ReturnType)0x06u));
                }
                else if (
                    Crypto_Key[cryptoKeyId]
                        .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                        .CryptoKeyElementWriteAccess
                    == CRYPTO_WA_DENIED)
                {
                    Status = 1U;
                    Crypto_ReportDetErr(((uint8)0x13), ((Std_ReturnType)0x07u));
                }
                else if (
                    Crypto_Key[cryptoKeyId]
                        .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                        .CryptoKeyElementFormat
                    != Crypto_Key[cryptoKeyId]
                           .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                           .CryptoKeyElementFormat)
                {
                    Status = ((Std_ReturnType)0x0Au);
                }
                else if (
                    0u
                        == Crypto_Key[cryptoKeyId]
                               .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                               .CryptoKeyElementAllowPartialAccess
                    || 0u
                           == Crypto_Key[cryptoKeyId]
                                  .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                                  .CryptoKeyElementAllowPartialAccess)
                {
                    Status = ((Std_ReturnType)0x0Au);
                }
                else
                {
                    for (i = 0; i < keyElementCopyLength; i++)
                    {
                        Crypto_Key[cryptoKeyId]
                            .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                            .CryptoKeyElementInitValue[i + keyElementTargetOffset] =
                            Crypto_Key[cryptoKeyId]
                                .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                                .CryptoKeyElementInitValue[i + keyElementSourceOffset];
                    }
                    if ((keyElementCopyLength + keyElementSourceOffset)
                        > Crypto_Key[cryptoKeyId]
                              .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                              .CryptoKeyElementSize)
                    {
                        *(Crypto_Key[cryptoKeyId]
                              .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndexS]
                              .CryptoKeyElementLength) = keyElementCopyLength + keyElementSourceOffset;
                    }
                }
            }
        }
    }
    return Status;
}
   


























 
 Std_ReturnType
Crypto_ISoft_KeyCopy(uint32 cryptoKeyId, uint32 targetCryptoKeyId)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x10), ((uint8)0x00));
    }
    else
    {
        uint8 i, j;

         
        if (Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->KeyElementNum
            == Crypto_Key[targetCryptoKeyId].CryptoKeyTypeRef->KeyElementNum)
        {
            for (i = 0; i < Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->KeyElementNum; i++)
            {
                if (Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[i].CryptoKeyElementReadAccess
                    == CRYPTO_RA_DENIED)
                {
                    Status = ((Std_ReturnType)0x06u);
                }
                else if (
                    Crypto_Key[targetCryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[i].CryptoKeyElementWriteAccess
                    == CRYPTO_WA_DENIED)
                {
                    Status = ((Std_ReturnType)0x07u);
                }
                else if (
                    Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[i].CryptoKeyElementFormat
                    != Crypto_Key[targetCryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[i].CryptoKeyElementFormat)
                {
                    Status = ((Std_ReturnType)0x0Au);
                }
                else
                {
                    Status = 0U;
                }
                if (0U != Status)
                {
                    break;
                }
            }
            if (0U == Status)
            {
                 
                for (i = 0; i < Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->KeyElementNum; i++)
                {
                    if (Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[i].CryptoKeyElementFormat
                        != Crypto_Key[targetCryptoKeyId]
                               .CryptoKeyTypeRef->CryptoKeyElementRef[i]
                               .CryptoKeyElementFormat)
                    {
                        Status = ((Std_ReturnType)0x0Au);
                        break;
                    }
                    for (j = 0;
                         j < Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[i].CryptoKeyElementSize;
                         j++)
                    {
                        Crypto_Key[targetCryptoKeyId]
                            .CryptoKeyTypeRef->CryptoKeyElementRef[i]
                            .CryptoKeyElementInitValue[j] = Crypto_Key[cryptoKeyId]
                                                                .CryptoKeyTypeRef->CryptoKeyElementRef[i]
                                                                .CryptoKeyElementInitValue[j];
                    }
                }
            }
        }
    }
    return Status;
}






















 

 Std_ReturnType
Crypto_ISoft_KeyElementIdsGet(
    uint32 cryptoKeyId,
    uint32 * keyElementIdsPtr,
    uint32 * keyElementIdsLengthPtr)
{
    Std_ReturnType Status = 0U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x11), ((uint8)0x00));
    }
    else
    {
        uint32 Count;
        uint32 temp;

        temp = Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->KeyElementNum;

        if (1U == Crypto_DriverStatus)
        {
            Crypto_ReportDetErr(((uint8)0x11), ((Std_ReturnType)0x02u));
            Status = (Std_ReturnType)1U;
        }
        else
        {
            for (Count = 0; Count < temp; Count++)
            {
                keyElementIdsPtr[Count] =
                    Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[Count].CryptoKeyElementId;
                keyElementIdsLengthPtr[Count] =
                    Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[Count].CryptoKeyElementSize;
            }
        }
    }
    return Status;
}





















 
 Std_ReturnType
Crypto_ISoft_RandomSeed(
    uint32 cryptoKeyId,
    const uint8 * seedPtr,
    uint32 seedLength)
{
    Std_ReturnType Status = 0U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x0D), ((uint8)0x00));
    }
     
    else if (((void *)0) == seedPtr)
    {
        Crypto_ReportDetErr(((uint8)0x0D), ((uint8)0x02));
    }
     
    else if (0u == seedLength)
    {
        Crypto_ReportDetErr(((uint8)0x0D), ((uint8)0x05));
    }
    else
    {
        Status = Crypto_RandomSeedInternal(cryptoKeyId, seedPtr, seedLength);
    }
    return Status;
}



















 
 Std_ReturnType Crypto_ISoft_KeyGenerate(uint32 cryptoKeyId)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x07), ((uint8)0x00));
    }
    else
    {
    }
    return Status;
}
























 
 Std_ReturnType
Crypto_ISoft_KeyDerive(uint32 cryptoKeyId, uint32 targetCryptoKeyId)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x08), ((uint8)0x00));
    }
       
    else if ((cryptoKeyId >= (1U)) || (targetCryptoKeyId >= (1U)))
    {
        Crypto_ReportDetErr(((uint8)0x07), ((uint8)0x04));
    }
    else
    {
        Status = (Std_ReturnType)1U;
    }
    return Status;
}























 

 Std_ReturnType
Crypto_ISoft_KeyExchangeCalcPubVal(
    uint32 cryptoKeyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr)
{
    Std_ReturnType Status = (Std_ReturnType)1U;

     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x09), ((uint8)0x00));
    }
       
    else if ((((void *)0) == publicValuePtr) || (((void *)0) == publicValueLengthPtr))
    {
        Crypto_ReportDetErr(((uint8)0x09), ((uint8)0x02));
    }
     
    else if (0u == *publicValueLengthPtr)
    {
        Crypto_ReportDetErr(((uint8)0x09), ((uint8)0x05));
    }
    else
    {
        Status = Crypto_KeyExchangeCalcPubVal_internal(cryptoKeyId, publicValuePtr, publicValueLengthPtr);
    }
    return Status;
}
























 

 Std_ReturnType
Crypto_ISoft_KeyExchangeCalcSecret(
    uint32 cryptoKeyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x0A), ((uint8)0x00));
    }
     
    else if (((void *)0) == partnerPublicValuePtr)
    {
        Crypto_ReportDetErr(((uint8)0x0A), ((uint8)0x02));
    }
     
    else if (0u == partnerPublicValueLength)
    {
        Crypto_ReportDetErr(((uint8)0x0A), ((uint8)0x05));
    }
    else
    {
        Status = Crypto_KeyExchangeCalcSecret_internal(cryptoKeyId, partnerPublicValuePtr, partnerPublicValueLength);
    }
    return Status;
}




















 
 Std_ReturnType
Crypto_ISoft_CertificateParse(uint32 cryptoKeyId)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x0B), ((uint8)0x00));
    }
     
    else if (cryptoKeyId >= (1U))
    {
        Crypto_ReportDetErr(((uint8)0x0B), ((uint8)0x04));
    }
    else
    {
        Status = 0U;
    }
    return Status;
}






















 

 Std_ReturnType
Crypto_ISoft_CertificateVerify(
    uint32 cryptoKeyId,
    uint32 verifyCryptoKeyId,
    Crypto_VerifyResultType * verifyPtr)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
     
    if (CRYPTO_DRIVER_UNINIT == Crypto_DriverStatus)
    {
        Crypto_ReportDetErr(((uint8)0x12), ((uint8)0x00));
    }
       
    else if ((cryptoKeyId >= (1U)) || (verifyCryptoKeyId >= (1U)))
    {
        Crypto_ReportDetErr(((uint8)0x12), ((uint8)0x04));
    }
     
    else if (((void *)0) == verifyPtr)
    {
        Crypto_ReportDetErr(((uint8)0x12), ((uint8)0x02));
    }
    else
    {
        Status = 0U;
    }
    return Status;
}














 

 void Crypto_ISoft_MainFunction(void)
{
    Std_ReturnType Status = 1U;

    while (0u < Crypto_62_QueueFilledSize)
    {
        Status = Crypto_QueueOutJob(&Crypto_StoredJob);
        if (0U == Status)
        {
            Crypto_StoredJob.jobState = CRYPTO_JOBSTATE_ACTIVE;
        }

        if (Crypto_StoredJob.jobState == CRYPTO_JOBSTATE_ACTIVE)
        {
            switch (Crypto_StoredJob.jobPrimitiveInputOutput.mode)
            {
            case CRYPTO_OPERATIONMODE_START:
                CryIf_CallbackNotification(&Crypto_StoredJob, 0U);
                break;
            case CRYPTO_OPERATIONMODE_UPDATE:
                Status = Crypto_ProcessAlgorithm();
                CryIf_CallbackNotification(&Crypto_StoredJob, Status);
                break;
            case CRYPTO_OPERATIONMODE_FINISH:
                Status = Crypto_Finish();    
                break;
            case CRYPTO_OPERATIONMODE_SINGLECALL:
                Crypto_DriverStatus = CRYPTO_DRIVER_BUSY;
                Status = Crypto_Finish();    
                break;
            case CRYPTO_OPERATIONMODE_STREAMSTART:
                Crypto_DriverStatus = CRYPTO_DRIVER_BUSY;
                Status = Crypto_ProcessAlgorithm();
                CryIf_CallbackNotification(&Crypto_StoredJob, Status);
                break;
            default:
                break;
            }
        }
    }
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
   
static  void Crypto_SetQueueBuf(
    Crypto_JobType * destJob,
    Crypto_JobType * srcJob)
{
       
    destJob->jobId = srcJob->jobId;
    destJob->jobState = srcJob->jobState;
    destJob->jobPrimitiveInputOutput = srcJob->jobPrimitiveInputOutput;
    destJob->jobPrimitiveInfo = srcJob->jobPrimitiveInfo;
    destJob->jobInfo = srcJob->jobInfo;
    destJob->cryptoKeyId = srcJob->cryptoKeyId;
    destJob->jobRedirectionInfoRef = srcJob->jobRedirectionInfoRef;
    destJob->targetCryptoKeyId = srcJob->targetCryptoKeyId;
}

 Std_ReturnType Crypto_QueueJob(Crypto_JobType * job)
{
    uint32 offset;
    Std_ReturnType Status = 0U;

    Crypto_SetQueueBuf(&Crypto_JobTempBuf, job);
    if (0u == Crypto_62_QueueFilledSize)
    {
         
         
        Crypto_JobInQueue[0] = Crypto_JobTempBuf;
        Crypto_62_QueueFilledSize = 1u;
    }
    else if (Crypto_62_QueueFilledSize == (5U))
    {
         
         
        Status = ((Std_ReturnType)0x02u);
    }
    else
    {
         
         
         
        Crypto_62_QueueFilledSize += 1u;
        for (offset = Crypto_62_QueueFilledSize - 1u; offset > 0u; offset--)
        {
             

             
            if (job->jobInfo->jobPriority > Crypto_JobInQueue[offset - 1U].jobInfo->jobPriority)
            {
                 
                Crypto_JobInQueue[offset] = Crypto_JobInQueue[offset - 1U];
                Crypto_JobInQueue[offset - 1U] = Crypto_JobTempBuf;
                   
                if (0u == offset)
                   
                {
                    Status = 0U;
                }
            }
            else
            {
                 
                 
                Crypto_JobInQueue[offset] = Crypto_JobTempBuf;
                Status = 0U;
                break;
            }
        }
    }
    return Status;
}
Std_ReturnType Crypto_QueueOutJob(Crypto_JobType* job)
{
    uint32 offset;
    Std_ReturnType ret = 1U;

    if (Crypto_62_QueueFilledSize > 0U)
    {
        Crypto_62_QueueFilledSize--;
        *job = Crypto_JobInQueue[0u];
        for (offset = 0; offset < Crypto_62_QueueFilledSize; offset++)
        {
             
            Crypto_JobInQueue[offset] = Crypto_JobInQueue[offset + 1U];
        }
        ret = 0U;
    }
    return ret;
}










 
 Std_ReturnType Crypto_CancelQueuedJob(const Crypto_JobType * job)
{
    uint32 offset;
    uint8 shift;
    Std_ReturnType Status = 1U;

    for (offset = 0u; offset < Crypto_62_QueueFilledSize; offset++)
    {
         
        if (job->jobId == Crypto_JobInQueue[offset].jobId)
        {

            for (shift = offset; shift < Crypto_62_QueueFilledSize - offset - 1U; shift++)
            {
                Crypto_JobInQueue[shift] = Crypto_JobInQueue[shift + 1U];
            }
            Crypto_62_QueueFilledSize -= 1U;
            Status = 0U;
            if (0u == Crypto_62_QueueFilledSize)
            {
                Crypto_DriverStatus = CRYPTO_DRIVER_IDLE;
            }
            break;
        }
    }
    return Status;
}

 Std_ReturnType Crypto_ProcessSYNCJob(const Crypto_JobType * job)
{
    Std_ReturnType Status = 1U;
    switch (job->jobPrimitiveInputOutput.mode)
    {
    case CRYPTO_OPERATIONMODE_START:
        Crypto_Start(job);
        Status = 0U;
        break;
    case CRYPTO_OPERATIONMODE_UPDATE:
        if (CRYPTO_OPERATIONMODE_FINISH != Crypto_StoredJob.jobPrimitiveInputOutput.mode
            && CRYPTO_JOBSTATE_ACTIVE == Crypto_StoredJob.jobState)
        {
            Crypto_StoredJob = *job;
            Status = Crypto_Update();
        }
        break;
    case CRYPTO_OPERATIONMODE_FINISH:
        if ((CRYPTO_OPERATIONMODE_FINISH != Crypto_StoredJob.jobPrimitiveInputOutput.mode)
            && CRYPTO_JOBSTATE_ACTIVE == Crypto_StoredJob.jobState)
        {
            Crypto_StoredJob = *job;
            Status = Crypto_Finish();
        }
        break;
    case CRYPTO_OPERATIONMODE_STREAMSTART:
        Crypto_Start(job);
        Status = Crypto_Update();
        if (Status == 0U)
        {
            Status = Crypto_Finish();
        }
        break;
    case CRYPTO_OPERATIONMODE_SINGLECALL:
        Crypto_Start(job);
        Status = Crypto_Finish();
        break;
    default:
        break;
    }
    return Status;
}

 Std_ReturnType
Crypto_ProcessASYNCJob_NONQUEUE(const Crypto_JobType * job)
{
    Std_ReturnType Status = 0U;

    switch (job->jobPrimitiveInputOutput.mode)
    {
    case CRYPTO_OPERATIONMODE_START:
        Crypto_Start(job);
        Crypto_StoredJob.jobState = CRYPTO_JOBSTATE_ACTIVE;
        break;
    case CRYPTO_OPERATIONMODE_UPDATE:
        if (CRYPTO_OPERATIONMODE_START == Crypto_StoredJob.jobPrimitiveInputOutput.mode
            && CRYPTO_JOBSTATE_ACTIVE == Crypto_StoredJob.jobState)
        {
            Crypto_StoredJob = *job;
        }
        break;
    case CRYPTO_OPERATIONMODE_FINISH:
        if ((CRYPTO_OPERATIONMODE_UPDATE == Crypto_StoredJob.jobPrimitiveInputOutput.mode
             || CRYPTO_OPERATIONMODE_STREAMSTART == Crypto_StoredJob.jobPrimitiveInputOutput.mode)
            && CRYPTO_JOBSTATE_ACTIVE == Crypto_StoredJob.jobState)
        {
            Crypto_StoredJob = *job;
        }
        else
        {
            Status = 1U;
        }
        break;
    case CRYPTO_OPERATIONMODE_STREAMSTART:
        Crypto_Start(job);
        break;
    case CRYPTO_OPERATIONMODE_SINGLECALL:
        Crypto_Start(job);
        break;
    default:
        break;
    }
    return Status;
}

 void Crypto_Start(const Crypto_JobType * job)
{
    Crypto_StoredJob = *job;
    Crypto_StoredJob.jobState = CRYPTO_JOBSTATE_ACTIVE;
    Crypto_DriverStatus = CRYPTO_DRIVER_BUSY;
    return;
}

 Std_ReturnType Crypto_Update(void)
{
    Std_ReturnType ret;
    ret = Crypto_ProcessAlgorithm();
    return ret;
}

 Std_ReturnType Crypto_Finish(void)
{
    Std_ReturnType ret;
    ret = Crypto_ProcessAlgorithm();
    Crypto_DriverStatus = CRYPTO_DRIVER_IDLE;
    if (CRYPTO_PROCESSING_ASYNC == Crypto_StoredJob.jobPrimitiveInfo->processingType)
    {
        CryIf_CallbackNotification(&Crypto_StoredJob, ret);
    }

    Crypto_ClearStoredJob();

    return ret;
}

 Std_ReturnType
Crypto_RandomSeedInternal(
    uint32 cryptoKeyId,
    const uint8 * seedPtr,
    uint32 seedLength)
{
    Std_ReturnType Status;
    uint8 Index;
    uint32 KeyElementIndex = 0;
    Status = Crypto_KeyElementIndexFind(cryptoKeyId, ((uint32)3U), &KeyElementIndex);
    if (0U == Status)
    {
        for (Index = 0; Index < seedLength; Index++)
        {
            Crypto_Key[cryptoKeyId]
                .CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex]
                .CryptoKeyElementInitValue[Index] = seedPtr[Index];
        }
        *(Crypto_Key[cryptoKeyId].CryptoKeyTypeRef->CryptoKeyElementRef[KeyElementIndex].CryptoKeyElementLength) =
            seedLength;
    }
    return Status;
}

 Std_ReturnType Crypto_KeySetValid_internal(uint32 cryptoKeyId)
{

    Std_ReturnType Status = 1U;

     
    if (cryptoKeyId >= (1U))
    {
        Crypto_ReportDetErr(((uint8)0x05), ((uint8)0x04));
    }
    else
    {
        CryptoKeyStatus[cryptoKeyId] = CRYPTO_KEYSTATE_VALID;
        Status = 0U;
    }
    return Status;
}

 Std_ReturnType
Crypto_KeyExchangeCalcPubVal_internal(
    uint32 cryptoKeyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
    return Status;
}

 Std_ReturnType
Crypto_KeyExchangeCalcSecret_internal(
    uint32 cryptoKeyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength)
{
    Std_ReturnType Status = (Std_ReturnType)1U;
    return Status;
}

 Std_ReturnType Crypto_sha256_Process()
{
    Std_ReturnType ret = 1U;
    uint8 output[32];

    uint32 ilen = Crypto_StoredJob.jobPrimitiveInputOutput.inputLength;
    if (*(Crypto_StoredJob.jobPrimitiveInputOutput.outputLengthPtr) >= 32)
    {
           
        uint8* input = (uint8*)(Crypto_StoredJob.jobPrimitiveInputOutput.inputPtr);
           

        ret = Crypto_sha256(input, ilen, output);
        Crypto_AlgorithmOutput(output, 32);
    }
    return ret;
}

 Std_ReturnType Crypto_GernerateMAC_Process()
{
    Std_ReturnType ret;
    uint8 result[16];
    uint8 Key[16] = {0x00};
    uint8 IVKey[16] = {0x00};
    uint8 input[64];
    uint8 inputlength = Crypto_StoredJob.jobPrimitiveInputOutput.inputLength;

    ret = Get_Key(Crypto_StoredJob.cryptoKeyId, Key, ((uint32)1U));
    if (0U == ret)
    {
        ret = Get_Key(Crypto_StoredJob.cryptoKeyId, IVKey, ((uint32)5U));
    }
    if (0U == ret)
    {
        Crypto_AlgorithmGetInput(input);
        ret = Crypto_GernerateMAC(result, Key, IVKey, input, inputlength);
    }

    if (0U == ret)
    {
        Crypto_AlgorithmOutput(result, 16);
        *(Crypto_StoredJob.jobPrimitiveInputOutput.outputLengthPtr) = 16;
    }

    return ret;
}

 Std_ReturnType Crypto_VerifyMAC_Process()
{
    Std_ReturnType ret;
    uint8 Key[16] = {0X00};
    uint8 IVKey[16] = {0X00};
    uint8 input[64] = {0X00};
    uint8 MAC_Result[16] = {0X00};
    uint32 Verifylength;
    uint8 i;
    uint8 inputlength = Crypto_StoredJob.jobPrimitiveInputOutput.inputLength;

    Verifylength = Crypto_StoredJob.jobPrimitiveInputOutput.secondaryInputLength;
    ret = Get_Key(Crypto_StoredJob.cryptoKeyId, Key, ((uint32)1U));
    if (0U == ret)
    {
        ret = Get_Key(Crypto_StoredJob.cryptoKeyId, IVKey, ((uint32)5U));
    }
    for (i = 0; i < Verifylength; i++)
    {
        MAC_Result[i] = Crypto_StoredJob.jobPrimitiveInputOutput.secondaryInputPtr[i];
    }

    if (0U == ret)
    {
        Crypto_AlgorithmGetInput(input);
        ret = Crypto_VerifyMAC(Key, IVKey, input, inputlength, MAC_Result, Verifylength);
    }

    if (0U == ret)
    {
        *(Crypto_StoredJob.jobPrimitiveInputOutput.verifyPtr) = ((Std_ReturnType)0x00u);
    }
    else
    {
        *(Crypto_StoredJob.jobPrimitiveInputOutput.verifyPtr) = ((Std_ReturnType)0x01u);
    }
    return ret;
}

 Std_ReturnType Crypto_AESEncryptProcess()
{
    uint8 key[16];
    uint8 iv[16];
    uint8 buf[64];
    Std_ReturnType ret;
    uint8 outputLength;
    uint8 inputLength;
    Crypto_memset(key, 16);
    Crypto_memset(iv, 16);
    Crypto_memset(buf, 64);
    ret = Crypto_AlgorithmGetInput(buf);
    if (ret == 1U)
    {
        return ret;
    }
    ret = Get_Key(Crypto_StoredJob.cryptoKeyId, key, ((uint32)1U));
    if (ret == 1U)
    {
        return ret;
    }

    switch (Crypto_StoredJob.jobPrimitiveInfo->primitiveInfo->algorithm.mode)
    {
    case CRYPTO_ALGOMODE_ECB:
        ret = Crypto_AESEncryptECB(key, buf);
        break;
    case CRYPTO_ALGOMODE_CBC:
        inputLength = Crypto_StoredJob.jobPrimitiveInputOutput.inputLength;
        ret = Get_Key(Crypto_StoredJob.cryptoKeyId, iv, ((uint32)5U));
        if (ret == 0U)
        {
            ret = Crypto_AESEncryptCBC(key, buf, iv, inputLength);
        }
        break;
    case CRYPTO_ALGOMODE_CTR:
        ret = Get_Key(Crypto_StoredJob.cryptoKeyId, iv, ((uint32)5U));
        if (ret == 0U)
        {
            ret = Crypto_AESEncryptCTR(key, buf, iv);
        }
        break;
    }

    if ((buf != ((void *)0)) && (0U == ret))    
    {
        outputLength = *(Crypto_StoredJob.jobPrimitiveInputOutput.outputLengthPtr);
        Crypto_AlgorithmOutput(buf, outputLength);
    }
    return ret;
}

 Std_ReturnType Crypto_AESDecryptProcess()
{
    uint8 key[16];
    uint8 iv[16];
    uint8 buf[64];
    Std_ReturnType ret;
    uint8 outputLength;
    uint8 inputLength;

    Crypto_memset(key, 16);
    Crypto_memset(iv, 16);
    Crypto_memset(buf, 64);
    ret = Crypto_AlgorithmGetInput(buf);
    if (ret == 1U)
    {
        return ret;
    }
    ret = Get_Key(Crypto_StoredJob.cryptoKeyId, key, ((uint32)1U));
    if (ret == 1U)
    {
        return ret;
    }

    switch (Crypto_StoredJob.jobPrimitiveInfo->primitiveInfo->algorithm.mode)
    {
    case CRYPTO_ALGOMODE_ECB:
        ret = Crypto_AESDecryptECB(key, buf);
        break;
    case CRYPTO_ALGOMODE_CBC:
        inputLength = Crypto_StoredJob.jobPrimitiveInputOutput.inputLength;
        ret = Get_Key(Crypto_StoredJob.cryptoKeyId, iv, ((uint32)5U));
        if (ret == 0U)
        {
            ret = Crypto_AESDecryptCBC(key, buf, iv, inputLength);
        }
        break;
    case CRYPTO_ALGOMODE_CTR:
        ret = Get_Key(Crypto_StoredJob.cryptoKeyId, iv, ((uint32)5U));
        if (ret == 0U)
        {
            ret = Crypto_AESDecryptCTR(key, buf, iv);
        }
        break;
    }

    if (0U == ret)
    {
        outputLength = *(Crypto_StoredJob.jobPrimitiveInputOutput.outputLengthPtr);
        Crypto_AlgorithmOutput(buf, outputLength);
    }
    return ret;
}

 Std_ReturnType Crypto_CtrDrbgProcess()
{
    Std_ReturnType ret;
    uint8 key[16];
    uint8 buf[16];
    Crypto_memset(key, 16);
    Crypto_memset(buf, 16);

    ret = Get_Key(Crypto_StoredJob.cryptoKeyId, key, ((uint32)3U));
    if (0U == ret)
    {
        ret = Crypto_CtrDrbg(key, buf);
        if (0U == ret)
        {
            Crypto_AlgorithmOutput(buf, 16);
        }
    }
    return ret;
}

 Std_ReturnType Crypto_AlgorithmGetInput(uint8 * buf)
{
    Std_ReturnType ret = 1U;
    uint32 i, p;
    p = Crypto_StoredJob.jobPrimitiveInputOutput.inputLength;

    if (Crypto_StoredJob.jobPrimitiveInputOutput.inputPtr != ((void *)0))
    {
        for (i = 0; i < p; i++)
        {
            buf[i] = Crypto_StoredJob.jobPrimitiveInputOutput.inputPtr[i];
        }
        ret = 0U;
    }
    return ret;
}

 Std_ReturnType Crypto_AlgorithmGetSecondInput(uint8 * buf)
{
    Std_ReturnType ret = 1U;
    uint32 i, p;
    p = Crypto_StoredJob.jobPrimitiveInputOutput.secondaryInputLength;

    if (Crypto_StoredJob.jobPrimitiveInputOutput.secondaryInputPtr != ((void *)0))
    {
        for (i = 0; i < p; i++)
        {
            buf[i] = Crypto_StoredJob.jobPrimitiveInputOutput.secondaryInputPtr[i];
        }
        ret = 0U;
    }
    return ret;
}

 void
Crypto_AlgorithmOutput(const uint8 * buf, uint32 outputLength)
{
    uint32 i;
    for (i = 0; i < outputLength; i++)
    {
        Crypto_StoredJob.jobPrimitiveInputOutput.outputPtr[i] = buf[i];
    }
}

   
 Std_ReturnType Crypto_ProcessAlgorithm(void)
{
    Std_ReturnType Result = 1U;
     

    uint8 algorithmfamily = Crypto_StoredJob.jobPrimitiveInfo->primitiveInfo->algorithm.family;
    switch (Crypto_StoredJob.jobPrimitiveInfo->primitiveInfo->service)
    {
    case CRYPTO_HASH:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_SHA2_256:
            Result = Crypto_sha256_Process();
            break;
        default:
            break;
        }
        break;
    case CRYPTO_MACGENERATE:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_AES:
            Result = Crypto_GernerateMAC_Process();
            break;
        default:
            break;
        }
        break;
    case CRYPTO_MACVERIFY:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_AES:
            Result = Crypto_VerifyMAC_Process();
            break;
        default:
            break;
        }
        break;
    case CRYPTO_ENCRYPT:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_AES:
            Result = Crypto_AESEncryptProcess();
            break;
        case CRYPTO_ALGOFAM_RSA:
            break;
        default:
            break;
        }
        break;
    case CRYPTO_DECRYPT:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_AES:
            Result = Crypto_AESDecryptProcess();
            break;
        case CRYPTO_ALGOFAM_RSA:
            break;
        default:
            break;
        }
        break;
    case CRYPTO_AEADENCRYPT:
        break;
    case CRYPTO_AEADDECRYPT:
        break;
    case CRYPTO_SIGNATUREGENERATE:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_RSA:
            break;
        default:
            break;
        }
        break;
    case CRYPTO_SIGNATUREVERIFY:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_RSA:
            break;
        default:
            break;
        }
        break;
    case CRYPTO_RANDOMGENERATE:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_RNG:
            Result = Crypto_CtrDrbgProcess();
            break;
        default:
            break;
        }
        break;
    case CRYPTO_RANDOMSEED:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_DRBG:
            Result = Crypto_RandomSeedInternal(
                Crypto_StoredJob.cryptoKeyId,
                Crypto_StoredJob.jobPrimitiveInputOutput.inputPtr,
                Crypto_StoredJob.jobPrimitiveInputOutput.inputLength);
            break;
        default:
            break;
        }
        break;
    case CRYPTO_KEYGENERATE:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_RSA:
            break;
        default:
            break;
        }
        break;
    case CRYPTO_KEYDERIVE:
        break;
    case CRYPTO_KEYEXCHANGECALCPUBVAL:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_DH:
        break;
        default:
            break;
        }
        break;
    case CRYPTO_KEYEXCHANGECALCSECRET:
        switch (algorithmfamily)
        {
        case CRYPTO_ALGOFAM_DH:

            break;
        default:
            break;
        }
        break;
    case CRYPTO_KEYSETVALID:
        Result = Crypto_KeySetValid_internal(Crypto_StoredJob.cryptoKeyId);
        break;
    default:
        break;
    }
    return Result;
}
   












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
                  
                  
             
                  
             
   
                  
                  
                  
             
                  
        
 
