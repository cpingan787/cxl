











 












 
                                 
                                 
                                 
                                 
                                 
                            
                            
                                 
   
        
                                
                           
                 
                                












 












 












 












 


 


 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType
mbedtls_ctr_drbg_reseed(Crypto_CtrDrbgData* ctx, const uint8 * additional, uint32 len);

 Std_ReturnType
mbedtls_ctr_drbg_update_ret(
    Crypto_CtrDrbgData* ctx,
    const uint8 * additional,
    uint32 add_len);

 Std_ReturnType
mbedtls_ctr_drbg_random_with_add(
    void* p_rng,
    uint8 * output,
    uint32 output_len,
    const uint8 * additional,
    uint32 add_len);

 void
mbedtls_ctr_drbg_update(
    Crypto_CtrDrbgData* ctx,
    const uint8 * additional,
    uint32 add_len);

static  Std_ReturnType block_cipher_df(
    uint8 * output,
    const uint8 * data,
    uint32 data_len)
{
    uint8 buf[256 + 16 + 16];
    uint8 tmp[(16 + 16)];
    uint8 key[16];
    uint8 chain[16];
    uint8 *p, *iv;
    Crypto_AESData aes_ctx;
    Std_ReturnType ret;
    int i, j;
    uint32 buf_len, use_len;

    Crypto_memset(buf, (256 + 16 + 16));
    Crypto_memset(&aes_ctx, sizeof(Crypto_AESData));

    p = buf + 16;
    *p++ = (data_len >> 24) & 0xff;
    *p++ = (data_len >> 16) & 0xff;
    *p++ = (data_len >> 8) & 0xff;
    *p++ = (data_len) & 0xff;
    p += 3;
    *p++ = (16 + 16);
    Crypto_memcpy(p, (uint8*)data, data_len);
    p[data_len] = 0x80;

    buf_len = 16 + 8 + data_len + 1;

    for (i = 0; i < 16; i++)
        key[i] = i;

    ret = Crypto_aes_setkey_enc(&aes_ctx, key, 128);
    

 
    for (j = 0; j < (16 + 16); j += 16)
    {
        p = buf;
        Crypto_memset(chain, 16);
        use_len = buf_len;

        while (use_len > 0)
        {
            for (i = 0; i < 16; i++)
                chain[i] ^= p[i];
            p += 16;
            use_len -= (use_len >= 16) ? 16 : use_len;

            ret = Crypto_aes_crypt_ecb(&aes_ctx, 1, chain, chain);
        }

        Crypto_memcpy(tmp + j, chain, 16);

        

 
        buf[3]++;
    }

    

 
    ret = Crypto_aes_setkey_enc(&aes_ctx, tmp, 128);
    iv = tmp + 16;
    p = output;

    for (j = 0; j < (16 + 16); j += 16)
    {
        ret = Crypto_aes_crypt_ecb(&aes_ctx, 1, iv, iv);
        Crypto_memcpy(p, iv, 16);
        p += 16;
    }
    if (0U != ret)
    {
        

 
        Crypto_memset(output, (16 + 16));
    }

    return ret;
}

static  Std_ReturnType
    ctr_drbg_update_internal(Crypto_CtrDrbgData* ctx, const uint8 data[(16 + 16)])
{
    uint8 tmp[(16 + 16)];
    uint8* p = tmp;
    int i, j;
    Std_ReturnType ret;

    Crypto_memset(tmp, (16 + 16));

    for (j = 0; j < (16 + 16); j += 16)
    {
        

 
        for (i = 16; i > 0; i--)
            if (++ctx->counter[i - 1] != 0)
                break;

        

 
        ret = Crypto_aes_crypt_ecb(&ctx->aes_ctx, 1, ctx->counter, p);

        p += 16;
    }

    for (i = 0; i < (16 + 16); i++)
        tmp[i] ^= data[i];

    

 
    ret = Crypto_aes_setkey_enc(&ctx->aes_ctx, tmp, 128);
    Crypto_memcpy(ctx->counter, tmp + 16, 16);

    return ret;
}












 
 Std_ReturnType
mbedtls_ctr_drbg_update_ret(
    Crypto_CtrDrbgData* ctx,
    const uint8 * additional,
    uint32 add_len)
{
    uint8 add_input[(16 + 16)];
    Std_ReturnType ret;

    if (add_len == 0)
        return (0);

    ret = block_cipher_df(add_input, additional, add_len);
    if (0U == ret)
    {
        ret = ctr_drbg_update_internal(ctx, add_input);
    }

    return ret;
}

void mbedtls_ctr_drbg_update(
    Crypto_CtrDrbgData* ctx,
    const uint8 * additional,
    uint32 add_len)
{
    
 
    if (add_len > 256)
        add_len = 256;
    (void)mbedtls_ctr_drbg_update_ret(ctx, additional, add_len);
}












 
 Std_ReturnType mbedtls_ctr_drbg_reseed(Crypto_CtrDrbgData* ctx, const uint8* additional, uint32 len)
{
    uint8 seed[256] = {0x00};    
    uint32 seedlen = 0;
    Std_ReturnType ret;

    Crypto_memset(seed, 256);
    

 
    ret = ctx->f_entropy(ctx->p_entropy, seed, ctx->entropy_len);
    if (0 == ret)
    {
        seedlen += ctx->entropy_len;
    }

    

 
    if (additional != 0 && len != 0)
    {
        Crypto_memcpy(seed + seedlen, (uint8*)additional, len);
        seedlen += len;
    }

    

 
    ret = block_cipher_df(seed, seed, seedlen);

    

 
    ret = ctr_drbg_update_internal(ctx, seed);

    ctx->reseed_counter = 1;

    return ret;
}




 
static uint32 good_nonce_len(uint32 entropy_len)
{
    if (entropy_len >= 16 * 3 / 2)
        return (0);
    else
        return ((entropy_len + 1) / 2);
}

 Std_ReturnType
mbedtls_ctr_drbg_seed(
    Crypto_CtrDrbgData * ctx,
       
    Std_ReturnType (*f_entropy)(void*, uint8*, uint32),
       

    Crypto_entropy_context * p_entropy,
    const uint8* custom,
    uint32 len)
{
    Std_ReturnType ret;
    uint8 key[16];
    uint32 nonce_len;

    Crypto_memset(&ctx->aes_ctx, sizeof(Crypto_AESData));
    Crypto_memset(key, 16);

    ctx->f_entropy = f_entropy;
    ctx->p_entropy = p_entropy;

    if (ctx->entropy_len == 0)
    {
        ctx->entropy_len = 32;
    }
    nonce_len = (ctx->reseed_counter >= 0 ? (uint32)ctx->reseed_counter : good_nonce_len(ctx->entropy_len));

    

 
    ret = Crypto_aes_setkey_enc(&ctx->aes_ctx, key, 128);
    if (ret == 1U)
    {
        return ret;
    }
    ret = mbedtls_ctr_drbg_reseed(ctx, custom, len);

    return ret;
}

 Std_ReturnType
mbedtls_ctr_drbg_random_with_add(
    void* p_rng,
    uint8 * output,
    uint32 output_len,
    const uint8* additional,
    uint32 add_len)
{
    Std_ReturnType ret = 1U;
    Crypto_CtrDrbgData* ctx = (Crypto_CtrDrbgData*)p_rng;
    uint8 add_input[(16 + 16)];
    uint8* p = output;
    uint8 tmp[16];
    int i;
    uint32 use_len;

    if (output_len > 1024)
    {
        return ret;
    }
    if (add_len > 256)
    {
        return ret;
    }
    Crypto_memset(add_input, (16 + 16));

    if (ctx->reseed_counter > ctx->reseed_interval || ctx->prediction_resistance)
    {
        ret = mbedtls_ctr_drbg_reseed(ctx, additional, add_len);
        if (ret != 0U)
        {
            return ret;
        }
        add_len = 0;
    }

    if (add_len > 0)
    {
        ret = block_cipher_df(add_input, additional, add_len);
        if (ret != 0U)
        {
            return ret;
        }
        ret = ctr_drbg_update_internal(ctx, add_input);
        if (ret != 0U)
        {
            return ret;
        }
    }

    while (output_len > 0)
    {
        

 
        for (i = 16; i > 0; i--)
            if (++ctx->counter[i - 1] != 0)
                break;

        

 
        ret = Crypto_aes_crypt_ecb(&ctx->aes_ctx, 1, ctx->counter, tmp);
        if (ret != 0U)
        {
            return ret;
        }

        use_len = (output_len > 16) ? 16 : output_len;
        

 
        Crypto_memcpy(p, tmp, use_len);
        p += use_len;
        output_len -= use_len;
    }

    ret = ctr_drbg_update_internal(ctx, add_input);
    if (ret != 0U)
    {
        return ret;
    }

    ctx->reseed_counter++;

    return ret;
}

 Std_ReturnType
mbedtls_ctr_drbg_random(void* p_rng, uint8 * output, uint32 output_len)
{
    Std_ReturnType ret;
    Crypto_CtrDrbgData* ctx = (Crypto_CtrDrbgData*)p_rng;

    ret = mbedtls_ctr_drbg_random_with_add(ctx, output, output_len, ((void *)0), 0);
    return ret;
}

static int entropy_update(
    Crypto_entropy_context* ctx,
    unsigned char source_id,
    unsigned char* data,
    uint32 len)    
{
    unsigned char header[2];
    unsigned char tmp[64];
    uint32 use_len = len;
    unsigned char* p = data;
    int ret;

    if (use_len > 64)
    {
        if ((ret = Crypto_sha256(data, len, tmp)) != 0U)
        {
            Crypto_memset(tmp, sizeof(tmp));
        }
        p = tmp;
        use_len = 64;
    }

    header[0] = source_id;
    header[1] = use_len & 0xFF;

    



 

    if (ctx->accumulator_started == 0 && (ret = Crypto_sha256_starts_ret(&ctx->accumulator)) != 0U)
    {
        Crypto_memset(tmp, sizeof(tmp));
    }
    else
        ctx->accumulator_started = 1;

    if ((ret = Crypto_sha256_update_ret(&ctx->accumulator, header, 2)) != 0U)
    {
        Crypto_memset(tmp, sizeof(tmp));
    }

    ret = Crypto_sha256_update_ret(&ctx->accumulator, p, use_len);

    return ret;
}
int Crypto_platform_entropy_poll(void* data, unsigned char* output, uint32 len, uint32* olen)
{
    ((void)data);
    uint32 i;

    



 
    for (i = 0; i < len; i++)
    {
        output[i] = rand();
        *olen += 1U;
    }

    return 0;
}
Std_ReturnType entropy_gather_internal(Crypto_entropy_context* ctx)    
{
    Std_ReturnType ret = 0x11;
    int i;
    int have_one_strong;
    unsigned char buf[128];
    uint32 olen;

    if (ctx->source_count == 0)
    {
        ret = 0x33;
        goto exit;
    }

    

 
    for (i = 0; i < ctx->source_count; i++)
    {
        if (ctx->source[i].strong == 1)
        {
            have_one_strong = 1;
        }
        olen = 0;
        if ((ret = ctx->source[i].f_source(ctx->source[i].p_source, buf, 128, &olen)) != 0)
        {
            Crypto_memset(buf, sizeof(buf));
            olen = 0;
        }
        

 
        if (olen > 0)
        {
            if ((ret = entropy_update(ctx, (unsigned char)i, buf, olen)) != 0)
            {
                goto exit;
            }
            ctx->source[i].size += olen;
        }
    }

    if (have_one_strong == 0)
    {
        ret = 0x44;
    }

exit:
    return ret;
}

Std_ReturnType mbedtls_entropy_func(void* data, uint8* output, uint32 len)
{
    Std_ReturnType ret;
    int count = 0;
    int i;
    int thresholds_reached;
    uint32 strong_size;
    Crypto_entropy_context* ctx = (Crypto_entropy_context*)data;
    uint8 buf[32];

    if (len > 32u)
    {
        ret = 0x11;
        goto exit;
    }
    do
    {
        if (count++ > 256)
        {
            ret = 0x11;
            goto exit;
        }

        if ((ret = entropy_gather_internal(ctx)) != 0)
        {
            goto exit;
        }

        thresholds_reached = 1;
        strong_size = 0;

        for (i = 0; i < ctx->source_count; i++)
        {
            if (ctx->source[i].size < ctx->source[i].threshold)
            {
                thresholds_reached = 0;
            }
            if (ctx->source[i].strong == 1u)
            {
                strong_size += ctx->source[i].size;
            }
        }
    } while (!thresholds_reached || strong_size < 32u);

    Crypto_memset(buf, sizeof(buf));

    if ((ret = Crypto_sha256_finish_ret(&ctx->accumulator, buf)) != 0U)
    {
        goto exit;
    }

    Crypto_memset(&ctx->accumulator, sizeof(Crypto_Sha256Data));

    if ((ret = Crypto_sha256_starts_ret(&ctx->accumulator)) != 0U)
    {
        goto exit;
    }
    if ((ret = Crypto_sha256_update_ret(&ctx->accumulator, buf, 32)) != 0)
    {
        goto exit;
    }

    if ((ret = Crypto_sha256(buf, 32, buf)) != 0)
    {
        goto exit;
    }

    for (i = 0; i < ctx->source_count; i++)
    {
        ctx->source[i].size = 0;
    }

    Crypto_memcpy(output, buf, len);

    ret = 0U;
exit:
    Crypto_memset(buf, sizeof(buf));
    return ret;
}

 Std_ReturnType Crypto_CtrDrbg(uint8 key[16], uint8 buf[16])
{
    Crypto_CtrDrbgData ctx;
    Crypto_entropy_context entropy;
    Std_ReturnType ret;
    Crypto_memset(&ctx, sizeof(Crypto_CtrDrbgData));
    Crypto_memset(&entropy, sizeof(Crypto_entropy_context));
    entropy.source_count = 1;
    entropy.source[0].f_source = Crypto_platform_entropy_poll;
    entropy.source[0].p_source = ((void *)0);
    entropy.source[0].threshold = 16;
    entropy.source[0].strong = 1;

    ctx.entropy_len = 16;

    {
        ret = mbedtls_ctr_drbg_seed(&ctx, mbedtls_entropy_func, &entropy, key, 16);
    }

    ret = mbedtls_ctr_drbg_random(&ctx, buf, 16);

    Crypto_memset(&ctx, sizeof(Crypto_CtrDrbgData));

    return ret;
}



 
void mbedtls_ctr_drbg_init(Crypto_CtrDrbgData* ctx)
{
    Crypto_memset(ctx, sizeof(Crypto_CtrDrbgData));
    
 
    ctx->reseed_counter = -1;

    ctx->reseed_interval = 10000;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

                                 
                                 
                                 
                                 
                                 
                            
                            
                                 
   
        
                                
                           
                  
                                 
