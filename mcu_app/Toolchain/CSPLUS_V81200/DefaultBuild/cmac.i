











 












 
                 
                 
                  
                  
        
   
             
             













 












 












 












 

   




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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



 



 


 Std_ReturnType
Crypto_GernerateMAC(uint8 MAC[16], uint8 Key[16], uint8 IVKey[16], uint8* add, uint8 inputlength);
 Std_ReturnType
Crypto_VerifyMAC(uint8* Key, uint8* IVKey, uint8* add, uint8 inputlength, uint8 MAC_Result[16], uint32 Verifylength);













 












 


 


 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   

 void leftshift(int len, uint8* add, uint8* des);
 void ArrayXor(int len, uint8* a1, uint8* a2, uint8* des);
 Std_ReturnType
LoadMacKey(
    Crypto_AESData * aes,
    uint8 * key,
    uint8 * IVkey,
    uint8 * k1,
    uint8 * k2);
 Std_ReturnType
internal_GenerateMAC(
    Crypto_AESData * aes,
    uint8 len,
    uint8 * add,
    uint8 * macvalue,
    uint8 * Key,
    uint8 * IVKey,
    uint8 * k1,
    uint8 * k2);

 void leftshift(int len, uint8* add, uint8* des)
{
    int i;
    for (i = 0; i < len - 1; i++)
    {
        des[i] = (add[i] << 1) + (add[i + 1] >= 0x80 ? 1 : 0);
    }
    des[len - 1] = add[len - 1] << 1;
}

 void ArrayXor(int len, uint8* a1, uint8* a2, uint8* des)
{
    int i;
    for (i = 0; i < len; i++)
    {
        des[i] = a1[i] ^ a2[i];
    }
}

 Std_ReturnType
LoadMacKey(
    Crypto_AESData * aes,
    uint8 * key,
    uint8 * IVkey,
    uint8 * k1,
    uint8 * k2)
{
    Std_ReturnType ret;
    uint8 c0[16];
    uint8 plain[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    uint8 Rb[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87};
    (void)Crypto_aes_setkey_enc(aes, key, 128);

    ret = Crypto_aes_crypt_cbc_CMAC(aes, 1, 16, IVkey, plain, c0);
    if (c0[0] < 0x80) 
    {
        leftshift(16, c0, k1);
    }
    else
    {
        leftshift(16, c0, k1);
        ArrayXor(16, k1, Rb, k1);
    }

    if (k1[0] < 0x80) 
    {
        leftshift(16, k1, k2);
    }
    else
    {
        leftshift(16, k1, k2);
        ArrayXor(16, k2, Rb, k2);
    }
    return ret;
}

 Std_ReturnType
internal_GenerateMAC(
    Crypto_AESData * aes,
    uint8 len,
    uint8 * add,
    uint8 * macvalue,
    uint8 * Key,
    uint8 * IVKey,
    uint8 * k1,
    uint8 * k2)
{
    Std_ReturnType ret;
    int i, block;
    uint8 IVtemp[128];
    uint8 Blocktemp[128];
    Crypto_memset(IVtemp, 128);
    Crypto_memset(Blocktemp, 128);

    if (len % 16 == 0 && len != 0)
    {
        ret = Crypto_aes_setkey_enc(aes, Key, 128); 
        block = len / 16;
        for (i = 0; i < block - 1; i++)
        {
            ArrayXor(16, &add[i * 16], IVtemp, Blocktemp);
            Crypto_aes_crypt_cbc_CMAC(aes, 1, 16, IVKey, Blocktemp, IVtemp);
        }
        ArrayXor(16, &add[(block - 1) * 16], IVtemp, Blocktemp);
        ArrayXor(16, Blocktemp, k1, Blocktemp);
        Crypto_aes_crypt_cbc_CMAC(aes, 1, 16, IVKey, Blocktemp, macvalue);
    }
    else
    {
        if (len == 0)
        {
            ret = Crypto_aes_setkey_enc(aes, Key, 128); 
            block = 1;                  
            Blocktemp[0] = 0x80;                        
            ArrayXor(16, Blocktemp, k2, Blocktemp);
            Crypto_aes_crypt_cbc_CMAC(aes, 1, 16, IVKey, Blocktemp, macvalue);
        }
        else
        {
            ret = Crypto_aes_setkey_enc(aes, Key, 128); 
            uint8 remain = len % 16;
            block = len / 16 + 1;
            for (i = 0; i < block - 1; i++)
            {
                ArrayXor(16, &add[i * 16], IVtemp, Blocktemp);
                Crypto_aes_crypt_cbc_CMAC(aes, 1, 16, IVKey, Blocktemp, IVtemp);
            }
            
            for (i = 0; i < remain; i++)
            {
                Blocktemp[i] = add[(block - 1) * 16 + i];
            }
            Blocktemp[remain] = 0x80;
            for (i = remain + 1; i < 16; i++)
            {
                Blocktemp[i] = 0;
            }
            

            ArrayXor(16, Blocktemp, k2, Blocktemp);
            ArrayXor(16, Blocktemp, IVtemp, Blocktemp);
            Crypto_aes_crypt_cbc_CMAC(aes, 1, 16, IVKey, Blocktemp, macvalue);
        }
    }
    return ret;
}

 Std_ReturnType
Crypto_GernerateMAC(uint8 MAC[16], uint8 Key[16], uint8 IVKey[16], uint8* add, uint8 inputlength)
{
    Std_ReturnType ret;
    uint8 k1[16] = {0X00};
    uint8 k2[16] = {0X00};
    Crypto_AESData aes;

    
    
    ret = VssSecocCmacGen(add, inputlength,MAC);
    return ret;
}

 Std_ReturnType
Crypto_VerifyMAC(uint8* Key, uint8* IVKey, uint8* add, uint8 inputlength, uint8 MAC_Result[16], uint32 Verifylength)
{
    Std_ReturnType ret;
    uint8 i;
    uint8 MAC[16] = {0X00};
    uint8 k1[16] = {0X00};
    uint8 k2[16] = {0X00};
    Crypto_AESData aes;

    ret = LoadMacKey(&aes, Key, IVKey, k1, k2);
    if (ret == 0U)
    {
        ret = internal_GenerateMAC(&aes, inputlength, add, MAC, Key, IVKey, k1, k2);
    }

    if (ret == 0U)
    {
        for (i = 0; i < Verifylength; i++)
        {
            if (MAC[i] != MAC_Result[i])
            {
                ret = 1U;
                break;
            }
        }
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

                 
                 
                  
                  
        
   
             
             
