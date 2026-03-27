











 












 



 




 



 












 












 


 




 



 












 











 



 



















































 




 












 












 



 



 



 












 












 


 




 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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
 




















 
 




 



 













 



 



 




 


 

 


 
typedef uint8 Csm_ConfigType;


 



 










 
 void
Csm_Init(const Csm_ConfigType * configPtr);




























 
 Std_ReturnType
Csm_MacGenerate(
    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    uint8 * macPtr,
    uint32 * macLengthPtr);
























 
 Std_ReturnType
Csm_MacVerify(
    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    const uint8 * macPtr,
    uint32 macLength,
    Crypto_VerifyResultType * verifyPtr);






























 
 Std_ReturnType
Csm_SignatureGenerate(
    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    uint8 * resultPtr,
    uint32 * resultLengthPtr);
























 
 Std_ReturnType
Csm_SignatureVerify(
    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    const uint8 * signaturePtr,
    uint32 signatureLength,
    Crypto_VerifyResultType * verifyPtr);





















 
 Std_ReturnType
Csm_KeyElementSet(
    uint32 keyId,
    uint32 keyElementId,
    const uint8 * keyPtr,
    uint32 keyLength);














 
 Std_ReturnType
Csm_KeySetValid(uint32 keyId);


























 
 Std_ReturnType
Csm_KeyElementGet(
    uint32 keyId,
    uint32 keyElementId,
    uint8 * keyPtr,
    uint32 * keyLengthPtr);


















 
 Std_ReturnType
Csm_KeyElementCopy(
    const uint32 keyId,
    const uint32 keyElementId,
    const uint32 targetKeyId,
    const uint32 targetKeyElementId);




















 
 Std_ReturnType
Csm_KeyCopy(const uint32 keyId, const uint32 targetKeyId);





























 
 Std_ReturnType
Csm_KeyElementCopyPartial(
    uint32 keyId,
    uint32 keyElementId,
    uint32 keyElementSourceOffset,
    uint32 keyElementTargetOffset,
    uint32 keyElementCopyLength,
    uint32 targetKeyId,
    uint32 targetKeyElementId);

















 
 Std_ReturnType
Csm_RandomSeed(
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength);
















 
 Std_ReturnType
Csm_KeyGenerate(uint32 keyId);























 
 Std_ReturnType
Csm_KeyDerive(uint32 keyId, uint32 targetKeyId);























 
 Std_ReturnType
Csm_KeyExchangeCalcPubVal(
    uint32 keyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr);





















 
 Std_ReturnType
Csm_KeyExchangeCalcSecret(
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength);















 
 Std_ReturnType
Csm_JobKeySetValid(uint32 jobId, uint32 keyId);


















 
 Std_ReturnType
Csm_JobRandomSeed(
    uint32 jobId,
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength);

















 
 Std_ReturnType
Csm_JobKeyGenerate(uint32 jobId, uint32 keyId);























 
 Std_ReturnType
Csm_JobKeyDerive(
    uint32 jobId,
    uint32 keyId,
    uint32 targetKeyId);
























 
 Std_ReturnType
Csm_JobKeyExchangeCalcPubVal(
    uint32 jobId,
    uint32 keyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr);























 
 Std_ReturnType
Csm_JobKeyExchangeCalcSecret(
    uint32 jobId,
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength);
















 
 Std_ReturnType
Csm_CancelJob(uint32 job, Crypto_OperationModeType mode);



























 
   
   
   








 
extern void SchM_Enter_Csm_Area_Csm(void);
extern void SchM_Exit_Csm_Area_Csm(void);












 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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



 


   
 


 
 
 
typedef void (*Csm_CallbackFuncType)(
    const Crypto_JobType * job,
    Crypto_ResultType result);

 
typedef struct Csm_JobInQueueType
{
    struct Csm_JobInQueueType * next;
     
    Crypto_JobPrimitiveInputOutputType jobPriInOut;
    uint32 jobId;
    uint32 jobPriority;
    uint32 bufPos;  
} Csm_JobInQueueType;

typedef struct Csm_JobInQueueType* Csm_JobInQueuePtrType;

 
typedef struct
{
    Csm_JobInQueueType * pendingJobQue;
    uint32 maxPriority;  
    uint32 jobCnt;       
    boolean dealSynJobIng;
} Csm_QueueChStatusType;

 
typedef struct
{
    uint32 cbkId;
    Csm_CallbackFuncType cbkFnc;
} Csm_JobCbkCfgType;


 

 


 
extern const Csm_KeyCfgType Csm_KeyCfg[1U];

 
extern const Csm_QueueCfgType Csm_QueCfg[1U];

 
extern const Csm_JobsCfgType Csm_JobCfg[2U];

 

extern boolean Csm_InitStatus;

 
extern Crypto_JobStateType Csm_JobStates[2U];

extern boolean Csm_JobPostponeFlag[2U];



 
 boolean
Csm_ChkInitParam(const Csm_ConfigType * configPtr);

 
 Std_ReturnType
Csm_ChkGetVersionInfo(const Std_VersionInfoType * versioninfo, uint8 sid);

 
 Std_ReturnType
Csm_ChkServiceParam(uint32 jobId, uint8 sid);

 
 Std_ReturnType
Csm_ChkKeyEleSetParam(
    uint32 keyId,
    const uint8 * keyPtr,
    uint32 keyLength,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkKeySetValid(uint32 keyId, uint8 sid);

 
 Std_ReturnType
Csm_ChkKeyEleGet(
    uint32 keyId,
    const uint8 * keyPtr,
    const uint32 * keyLengthPtr,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkKeyEleCopy(
    const uint32 keyId,
    const uint32 targetKeyId,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkKeyCopy(
    const uint32 keyId,
    const uint32 targetKeyId,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkKeyEleCopyPart(uint32 keyId, uint32 targetKeyId, uint8 sid);

 
 Std_ReturnType
Csm_ChkRandomSeed(
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkKeyGenerate(uint32 keyId, uint8 sid);

 
 Std_ReturnType
Csm_ChkKeyDerive(uint32 keyId, uint32 targetKeyId, uint8 sid);

 
 Std_ReturnType
Csm_ChkExCalcPubVal(
    uint32 keyId,
    const uint8 * publicValuePtr,
    const uint32 * publicValueLengthPtr,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkExCalcSecVal(
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkJobKeySetValid(uint32 jobId, uint32 keyId, uint8 sid);

 
 Std_ReturnType
Csm_ChkJobRandomSeed(
    uint32 jobId,
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkJobKeyGenerate(uint32 jobId, uint32 keyId, uint8 sid);

 
 Std_ReturnType
Csm_ChkJobKeyDerive(
    uint32 jobId,
    uint32 keyId,
    uint32 targetKeyId,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkJobExCalcPubVal(
    uint32 jobId,
    uint32 keyId,
    const uint8 * publicValuePtr,
    const uint32 * publicValueLengthPtr,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkJobExCalcSec(
    uint32 jobId,
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength,
    uint8 sid);

 
 Std_ReturnType
Csm_ChkCancelJob(uint32 jobId, uint8 sid);

 
 Std_ReturnType
Csm_ChkCbkNotify(const Crypto_JobType * job, uint8 sid);



 
 
static inline void Csm_ReportDetErr(uint8 serviceId, uint8 error)
{
    (void)Det_ReportError(((uint16)(110U)), ((uint8)(0U)), (serviceId), (error));
}



 



 
static  Std_ReturnType Csm_ChkInitStatus(uint8 servId);


 



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 boolean
Csm_ChkInitParam(const Csm_ConfigType * configPtr)
{
    boolean ret = (boolean)1u;
     
    if (((void *)0) != configPtr)
    {
        ret = (boolean)0u;
        Csm_ReportDetErr(((uint8)0x00), ((uint8)0x07));
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkGetVersionInfo(const Std_VersionInfoType * versioninfo, uint8 sid)
{
    Std_ReturnType ret = 0U;

    if (((void *)0) == versioninfo)
    {
        ret = 1U;
        Csm_ReportDetErr(sid, ((uint8)0x01));
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkServiceParam(uint32 jobId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (jobId > 2U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        switch (sid)
        {
        case ((uint8)0x5D):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_HASH)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x60):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_MACGENERATE)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x61):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_MACVERIFY)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x5E):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_ENCRYPT)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x5F):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_DECRYPT)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x62):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_AEADENCRYPT)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x63):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_AEADDECRYPT)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x76):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_SIGNATUREGENERATE)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x64):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_SIGNATUREVERIFY)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        case ((uint8)0x72):
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_RANDOMGENERATE)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        default:
            if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_SIGNATUREVERIFY)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x09));
            }
            break;
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeyEleSetParam(
    uint32 keyId,
    const uint8 * keyPtr,
    uint32 keyLength,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (keyId > 1U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else if (((void *)0) == keyPtr)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x01));
        }
        else if (0u == keyLength)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else
        {
             
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeySetValid(uint32 keyId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (keyId > 1U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeyEleGet(
    uint32 keyId,
    const uint8 * keyPtr,
    const uint32 * keyLengthPtr,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (keyId > 1U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else if ((((void *)0) == keyPtr) || (((void *)0) == keyLengthPtr))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x01));
        }
        else if (0u == *keyLengthPtr)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else
        {
             
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeyEleCopy(
    const uint32 keyId,
    const uint32 targetKeyId,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (targetKeyId > 1U))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeyCopy(const uint32 keyId, const uint32 targetKeyId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (targetKeyId > 1U))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeyEleCopyPart(uint32 keyId, uint32 targetKeyId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (targetKeyId > 1U))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkRandomSeed(
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (keyId > 1U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else if (((void *)0) == seedPtr)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x01));
        }
        else if (0u == seedLength)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else
        {
             
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeyGenerate(uint32 keyId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (keyId > 1U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkKeyDerive(uint32 keyId, uint32 targetKeyId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (targetKeyId > 1U))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkExCalcPubVal(
    uint32 keyId,
    const uint8 * publicValuePtr,
    const uint32 * publicValueLengthPtr,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (keyId > 1U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else if ((((void *)0) == publicValuePtr) || (((void *)0) == publicValueLengthPtr))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x01));
        }
        else
        {
             
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkExCalcSecVal(
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (0u == partnerPublicValueLength))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else if (((void *)0) == partnerPublicValuePtr)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x01));
        }
        else
        {
             
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkJobKeySetValid(uint32 jobId, uint32 keyId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (jobId > 2U))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_KEYSETVALID)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x09));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkJobRandomSeed(
    uint32 jobId,
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (jobId > 2U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_RANDOMSEED)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x09));
        }
        if (0U == ret)
        {
            ret = Csm_ChkRandomSeed(keyId, seedPtr, seedLength, sid);
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkJobKeyGenerate(uint32 jobId, uint32 keyId, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (jobId > 2U))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_KEYGENERATE)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x09));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkJobKeyDerive(
    uint32 jobId,
    uint32 keyId,
    uint32 targetKeyId,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if ((keyId > 1U) || (targetKeyId > 1U) || (jobId > 2U))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_KEYDERIVE)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x09));
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkJobExCalcPubVal(
    uint32 jobId,
    uint32 keyId,
    const uint8 * publicValuePtr,
    const uint32 * publicValueLengthPtr,
    uint8 sid)
{
    Std_ReturnType ret = 0U;
    if (0U == ret)
    {
        if (jobId > 2U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_KEYEXCHANGECALCPUBVAL)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x09));
        }
        if (0U == ret)
        {
            ret = Csm_ChkExCalcPubVal(keyId, publicValuePtr, publicValueLengthPtr, sid);
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkJobExCalcSec(
    uint32 jobId,
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength,
    uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (jobId > 2U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        if (Csm_JobCfg[jobId].jobPrimitiveInfo->primitiveInfo->service != CRYPTO_KEYEXCHANGECALCSECRET)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x09));
        }
        if (0U == ret)
        {
            ret = Csm_ChkExCalcSecVal(keyId, partnerPublicValuePtr, partnerPublicValueLength, sid);
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkCancelJob(uint32 jobId, uint8 sid)
{
    const Csm_JobsCfgType * jobCfgPtr;
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (jobId > 2U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else
        {
            jobCfgPtr = &(Csm_JobCfg[jobId]);
             
            if (CRYPTO_PROCESSING_SYNC == jobCfgPtr->jobPrimitiveInfo->processingType)
            {
                ret = 1U;
                Csm_ReportDetErr(sid, ((uint8)0x08));
            }
        }
    }
    return ret;
}

 
 Std_ReturnType
Csm_ChkCbkNotify(const Crypto_JobType * job, uint8 sid)
{
    Std_ReturnType ret;

    ret = Csm_ChkInitStatus(sid);
    if (0U == ret)
    {
        if (job->jobId > 2U)
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x04));
        }
        else if ((((void *)0) == job->jobInfo) || (((void *)0) == job->jobPrimitiveInfo))
        {
            ret = 1U;
            Csm_ReportDetErr(sid, ((uint8)0x01));
        }
        else
        {
             
        }
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  Std_ReturnType Csm_ChkInitStatus(uint8 servId)
{
    Std_ReturnType ret = 0U;

    if ((boolean)0u == Csm_InitStatus)
    {
        ret = 1U;
        Csm_ReportDetErr(servId, ((uint8)0x05));
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

   
