











 











 



 








 



 












 












 


 




 



 












 











 



 



















































 




 












 












 



 



 



 












 












 


 




 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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



 



 



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 
static  Std_ReturnType Csm_ProcessJobToCryIf(
    Crypto_JobPrimitiveInputOutputType * jobPrimInOut,
    uint32 jobId);

 
static  Std_ReturnType Csm_EnqueueJobToQue(
    uint32 jobId,
    uint32 queId,
    Crypto_JobPrimitiveInputOutputType jobPriInOutInfo);

 
static  Std_ReturnType Csm_DequeueJobInQue(uint32 jobId, uint32 queId);

 
static  Csm_JobInQueuePtrType Csm_FindIdleQueue(uint32 * bufPos);

 
static  Std_ReturnType Csm_CheckOperaMode(Crypto_OperationModeType mode);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 
   
static Csm_JobInQueueType Csm_JobQueBuf[5U];
 
static Csm_QueueChStatusType Csm_QueueChRunStatus[1U];













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 
static boolean Csm_JobQueBufUsed[5U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   



 
 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
boolean Csm_InitStatus;    
 
boolean Csm_JobPostponeFlag[2U];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 
Crypto_JobStateType Csm_JobStates[2U];












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   









 

 void
Csm_Init(const Csm_ConfigType * configPtr)
{
    uint32 jobIdx;
    uint32 queIdx;
    boolean chkRes;
    chkRes = Csm_ChkInitParam(configPtr);
    if ((boolean)1u == chkRes)
    {
         
        for (jobIdx = 0u; jobIdx < 2U; jobIdx++)
        {
            Csm_JobStates[jobIdx] = CRYPTO_JOBSTATE_IDLE;
            Csm_JobPostponeFlag[jobIdx] = (boolean)0u;
        }
         
        for (queIdx = 0u; queIdx < 1U; queIdx++)
        {
            Csm_QueueChRunStatus[queIdx].pendingJobQue = ((void *)0);
            Csm_QueueChRunStatus[queIdx].jobCnt = 0u;
            Csm_QueueChRunStatus[queIdx].maxPriority = ((uint32)0xFFFFFFFFU);
            Csm_QueueChRunStatus[queIdx].dealSynJobIng = (boolean)0u;
        }
        SchM_Enter_Csm_Area_Csm();
        for (queIdx = 0u; queIdx < 5U; queIdx++)
        {
            Csm_JobQueBufUsed[queIdx] = (boolean)0u;
        }
        SchM_Exit_Csm_Area_Csm();
        Csm_InitStatus = (boolean)1u;
    }
}





























 
   
 Std_ReturnType
Csm_MacGenerate(
    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    uint8 * macPtr,
    uint32 * macLengthPtr)
{
    Crypto_JobPrimitiveInputOutputType macInfo;
    Std_ReturnType ret;

    ret = Csm_ChkServiceParam(jobId, ((uint8)0x60));
    if (0U == ret)
    {
        ret = Csm_CheckOperaMode(mode);
        if (0U == ret)
        {
            macInfo.mode = mode;
            macInfo.inputPtr = dataPtr;
            macInfo.inputLength = dataLength;
            macInfo.outputPtr = macPtr;
            macInfo.outputLengthPtr = macLengthPtr;
            ret = Csm_ProcessJobToCryIf(&macInfo, jobId);
        }
    }
    return ret;
}
   
























 
   
 Std_ReturnType
Csm_MacVerify(
    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    const uint8 * macPtr,
    uint32 macLength,
    Crypto_VerifyResultType * verifyPtr)
{
    Crypto_JobPrimitiveInputOutputType macInfo;
    Std_ReturnType ret;

    ret = Csm_ChkServiceParam(jobId, ((uint8)0x61));
    if (0U == ret)
    {
        ret = Csm_CheckOperaMode(mode);
        if (0U == ret)
        {
            macInfo.mode = mode;
            macInfo.inputPtr = dataPtr;
            macInfo.inputLength = dataLength;
            macInfo.secondaryInputPtr = macPtr;
            macInfo.secondaryInputLength = macLength / (8U);
            macInfo.verifyPtr = verifyPtr;
            ret = Csm_ProcessJobToCryIf(&macInfo, jobId);
        }
    }
    return ret;
}
   





























 
   
 Std_ReturnType
Csm_SignatureGenerate(
    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    uint8 * resultPtr,
    uint32 * resultLengthPtr)
{
    Crypto_JobPrimitiveInputOutputType signatureInfo;
    Std_ReturnType ret;

    ret = Csm_ChkServiceParam(jobId, ((uint8)0x76));
    if (0U == ret)
    {
        ret = Csm_CheckOperaMode(mode);
        if (0U == ret)
        {
            signatureInfo.mode = mode;
            signatureInfo.inputPtr = dataPtr;
            signatureInfo.inputLength = dataLength;
            signatureInfo.outputPtr = resultPtr;
            signatureInfo.outputLengthPtr = resultLengthPtr;
            ret = Csm_ProcessJobToCryIf(&signatureInfo, jobId);
        }
    }
    return ret;
}
   
























 
   
 Std_ReturnType
Csm_SignatureVerify(

    uint32 jobId,
    Crypto_OperationModeType mode,
    const uint8 * dataPtr,
    uint32 dataLength,
    const uint8 * signaturePtr,
    uint32 signatureLength,
    Crypto_VerifyResultType * verifyPtr)
{
    Crypto_JobPrimitiveInputOutputType signatureInfo;
    Std_ReturnType ret;

    ret = Csm_ChkServiceParam(jobId, ((uint8)0x64));
    if (0U == ret)
    {
        ret = Csm_CheckOperaMode(mode);
        if (0U == ret)
        {
            signatureInfo.mode = mode;
            signatureInfo.inputPtr = dataPtr;
            signatureInfo.inputLength = dataLength;
            signatureInfo.secondaryInputPtr = signaturePtr;
            signatureInfo.secondaryInputLength = signatureLength;
            signatureInfo.verifyPtr = verifyPtr;
            ret = Csm_ProcessJobToCryIf(&signatureInfo, jobId);
        }
    }
    return ret;
}
   





















 
 Std_ReturnType
Csm_KeyElementSet(
    uint32 keyId,
    uint32 keyElementId,
    const uint8 * keyPtr,
    uint32 keyLength)
{
    uint32 cryIfKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeyEleSetParam(keyId, keyPtr, keyLength, ((uint8)0x78));
    if (0U == ret)
    {
        cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = CryIf_KeyElementSet(cryIfKeyId, keyElementId, keyPtr, keyLength);
    }
    return ret;
}














 
 Std_ReturnType
Csm_KeySetValid(uint32 keyId)
{
    uint32 cryIfKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeySetValid(keyId, ((uint8)0x67));
    if (0U == ret)
    {
        cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = CryIf_KeySetValid(cryIfKeyId);
    }
    return ret;
}


























 
 Std_ReturnType
Csm_KeyElementGet(
    uint32 keyId,
    uint32 keyElementId,
    uint8 * keyPtr,
    uint32 * keyLengthPtr)
{
    uint32 cryIfKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeyEleGet(keyId, keyPtr, keyLengthPtr, ((uint8)0x68));
    if (0U == ret)
    {
        cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = CryIf_KeyElementGet(cryIfKeyId, keyElementId, keyPtr, keyLengthPtr);
    }
    return ret;
}


















 

 Std_ReturnType
Csm_KeyElementCopy(
    const uint32 keyId,
    const uint32 keyElementId,
    const uint32 targetKeyId,
    const uint32 targetKeyElementId)
{
    uint32 cryIfSrcKeyId;
    uint32 cryIfDestKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeyEleCopy(keyId, targetKeyId, ((uint8)0x71));
    if (0U == ret)
    {
        cryIfSrcKeyId = Csm_KeyCfg[keyId].cryIfKey;
        cryIfDestKeyId = Csm_KeyCfg[targetKeyId].cryIfKey;
        ret = CryIf_KeyElementCopy(cryIfSrcKeyId, keyElementId, cryIfDestKeyId, targetKeyElementId);
    }
    return ret;
}




















 

 Std_ReturnType
Csm_KeyCopy(const uint32 keyId, const uint32 targetKeyId)
{
    uint32 cryIfSrcKeyId;
    uint32 cryIfDestKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeyCopy(keyId, targetKeyId, ((uint8)0x73));
    if (0U == ret)
    {
        cryIfSrcKeyId = Csm_KeyCfg[keyId].cryIfKey;
        cryIfDestKeyId = Csm_KeyCfg[targetKeyId].cryIfKey;
        ret = CryIf_KeyCopy(cryIfSrcKeyId, cryIfDestKeyId);
    }
    return ret;
}





























 
   
 Std_ReturnType
Csm_KeyElementCopyPartial(
    uint32 keyId,
    uint32 keyElementId,
    uint32 keyElementSourceOffset,
    uint32 keyElementTargetOffset,
    uint32 keyElementCopyLength,
    uint32 targetKeyId,
    uint32 targetKeyElementId)
{
    uint32 cryIfSrcKeyId;
    uint32 cryIfDestKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeyEleCopyPart(keyId, targetKeyId, ((uint8)0x79));
    if (0U == ret)
    {
        cryIfSrcKeyId = Csm_KeyCfg[keyId].cryIfKey;
        cryIfDestKeyId = Csm_KeyCfg[targetKeyId].cryIfKey;
        ret = CryIf_KeyElementCopyPartial(
            cryIfSrcKeyId,
            keyElementId,
            keyElementSourceOffset,
            keyElementTargetOffset,
            keyElementCopyLength,
            cryIfDestKeyId,
            targetKeyElementId);
    }
    return ret;
}
   

















 

 Std_ReturnType
Csm_RandomSeed(
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength)
{
    uint32 cryIfKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkRandomSeed(keyId, seedPtr, seedLength, ((uint8)0x69));
    if (0U == ret)
    {
        cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = CryIf_RandomSeed(cryIfKeyId, seedPtr, seedLength);
    }
    return ret;
}
















 

 Std_ReturnType
Csm_KeyGenerate(uint32 keyId)
{
    uint32 cryIfKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeyGenerate(keyId, ((uint8)0x6A));
    if (0U == ret)
    {
        cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = CryIf_KeyGenerate(cryIfKeyId);
    }
    return ret;
}























 

 Std_ReturnType
Csm_KeyDerive(uint32 keyId, uint32 targetKeyId)
{
    uint32 cryIfSrcKeyId;
    uint32 cryIfDestKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkKeyDerive(keyId, targetKeyId, ((uint8)0x6B));
    if (0U == ret)
    {
        cryIfSrcKeyId = Csm_KeyCfg[keyId].cryIfKey;
        cryIfDestKeyId = Csm_KeyCfg[targetKeyId].cryIfKey;
        ret = CryIf_KeyDerive(cryIfSrcKeyId, cryIfDestKeyId);
    }
    return ret;
}























 

 Std_ReturnType
Csm_KeyExchangeCalcPubVal(
    uint32 keyId,
    uint8 * publicValuePtr,
    uint32 * publicValueLengthPtr)
{
    uint32 cryIfKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkExCalcPubVal(keyId, publicValuePtr, publicValueLengthPtr, ((uint8)0x6C));
    if (0U == ret)
    {
        cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = CryIf_KeyExchangeCalcPubVal(cryIfKeyId, publicValuePtr, publicValueLengthPtr);
    }
    return ret;
}





















 

 Std_ReturnType
Csm_KeyExchangeCalcSecret(
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength)
{
    uint32 cryIfKeyId;
    Std_ReturnType ret;

    ret = Csm_ChkExCalcSecVal(keyId, partnerPublicValuePtr, partnerPublicValueLength, ((uint8)0x6D));
    if (0U == ret)
    {
        cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = CryIf_KeyExchangeCalcSecret(cryIfKeyId, partnerPublicValuePtr, partnerPublicValueLength);
    }
    return ret;
}















 

 Std_ReturnType
Csm_JobKeySetValid(uint32 jobId, uint32 keyId)
{
    Crypto_JobPrimitiveInputOutputType jobInfo;
    Std_ReturnType ret;

    ret = Csm_ChkJobKeySetValid(jobId, keyId, ((uint8)0x7A));
    if (0U == ret)
    {
        jobInfo.cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = Csm_ProcessJobToCryIf(&jobInfo, jobId);
    }
    return ret;
}


















 

 Std_ReturnType
Csm_JobRandomSeed(
    uint32 jobId,
    uint32 keyId,
    const uint8 * seedPtr,
    uint32 seedLength)
{
    Crypto_JobPrimitiveInputOutputType jobInfo;
    Std_ReturnType ret;

    ret = Csm_ChkJobRandomSeed(jobId, keyId, seedPtr, seedLength, ((uint8)0x7B));
    if (0U == ret)
    {
        jobInfo.cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        jobInfo.inputPtr = seedPtr;
        jobInfo.inputLength = seedLength;
        ret = Csm_ProcessJobToCryIf(&jobInfo, jobId);
    }
    return ret;
}

















 

 Std_ReturnType
Csm_JobKeyGenerate(uint32 jobId, uint32 keyId)
{
    Crypto_JobPrimitiveInputOutputType jobInfo;
    Std_ReturnType ret;

    ret = Csm_ChkJobKeyGenerate(jobId, keyId, ((uint8)0x7C));
    if (0U == ret)
    {
        jobInfo.cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        ret = Csm_ProcessJobToCryIf(&jobInfo, jobId);
    }
    return ret;
}























 

 Std_ReturnType
Csm_JobKeyDerive(
    uint32 jobId,
    uint32 keyId,
    uint32 targetKeyId)
{
    Crypto_JobPrimitiveInputOutputType jobInfo;
    Std_ReturnType ret;

    ret = Csm_ChkJobKeyDerive(jobId, keyId, targetKeyId, ((uint8)0x7D));
    if (0U == ret)
    {
        jobInfo.cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        jobInfo.targetCryIfKeyId = targetKeyId;
        ret = Csm_ProcessJobToCryIf(&jobInfo, jobId);
    }
    return ret;
}
























 

 Std_ReturnType
Csm_JobKeyExchangeCalcPubVal(
    uint32 jobId,
    uint32 keyId,
       
    uint8 * publicValuePtr,
       
    uint32 * publicValueLengthPtr)
{
    Crypto_JobPrimitiveInputOutputType jobInfo;
    Std_ReturnType ret;

    ret = Csm_ChkJobExCalcPubVal(jobId, keyId, publicValuePtr, publicValueLengthPtr, ((uint8)0x7E));
    if (0U == ret)
    {
        jobInfo.cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        jobInfo.secondaryInputPtr = publicValuePtr;
        jobInfo.secondaryInputLength = *publicValuePtr;
        jobInfo.secondaryOutputLengthPtr = publicValueLengthPtr;
        ret = Csm_ProcessJobToCryIf(&jobInfo, jobId);
    }
    return ret;
}






















 

 Std_ReturnType
Csm_JobKeyExchangeCalcSecret(
    uint32 jobId,
    uint32 keyId,
    const uint8 * partnerPublicValuePtr,
    uint32 partnerPublicValueLength)
{
    Crypto_JobPrimitiveInputOutputType jobInfo;
    Std_ReturnType ret;

    ret = Csm_ChkJobExCalcSec(jobId, keyId, partnerPublicValuePtr, partnerPublicValueLength, ((uint8)0x7F));
    if (0U == ret)
    {
        jobInfo.cryIfKeyId = Csm_KeyCfg[keyId].cryIfKey;
        jobInfo.inputPtr = partnerPublicValuePtr;
        jobInfo.inputLength = partnerPublicValueLength;
        ret = Csm_ProcessJobToCryIf(&jobInfo, jobId);
    }
    return ret;
}
















 
   
 Std_ReturnType
Csm_CancelJob(uint32 job, Crypto_OperationModeType mode)
{
    const Csm_JobsCfgType * jobCfgPtr;
    Crypto_JobType jobInfo;
    Std_ReturnType ret;
    uint32 cryIfChId;
    uint32 jobQueId;
    uint32 cbkId;

    ret = Csm_ChkCancelJob(job, ((uint8)0x6F));
    if (0U == ret)
    {
        

 
        ((void)(mode));
        SchM_Enter_Csm_Area_Csm();
        if (CRYPTO_JOBSTATE_ACTIVE == Csm_JobStates[job])
        {
            jobCfgPtr = &(Csm_JobCfg[job]);
            jobQueId = jobCfgPtr->queRef;
            cryIfChId = Csm_QueCfg[jobQueId].cryIfChRef;
            cbkId = jobCfgPtr->jobPrimitiveInfo->callbackId;
            jobInfo.jobInfo = jobCfgPtr->jobInfo;
             
            ret = CryIf_CancelJob(cryIfChId, &jobInfo);
            if (0U == ret)
            {
                ((void)(cbkId));
            }
            else if (((Std_ReturnType)0x0Cu) == ret)
            {
                 
                Csm_JobPostponeFlag[job] = (boolean)1u;
            }
            else
            {
                 
            }
             
            (void)Csm_DequeueJobInQue(job, jobQueId);
        }
        SchM_Exit_Csm_Area_Csm();
    }
    return ret;
}
   









 

 void
Csm_MainFunction(void)
{
       
    Csm_QueueChStatusType * queChRunPtr;
       
    const Csm_JobsCfgType * jobCfgPtr;
    Crypto_JobType jobInfo;
    uint32 queIdx;
    uint32 cryIfChId;
    uint32 jobInQueId;
    Std_ReturnType ret;

     
    for (queIdx = 0u; queIdx < 1U; queIdx++)
    {
        queChRunPtr = &(Csm_QueueChRunStatus[queIdx]);
        if (((boolean)1u == queChRunPtr->dealSynJobIng) || (0u == queChRunPtr->jobCnt))
        {
            

 
            continue;
        }
        cryIfChId = Csm_QueCfg[queIdx].cryIfChRef;
        jobInQueId = queChRunPtr->pendingJobQue->jobId;
        jobCfgPtr = &(Csm_JobCfg[jobInQueId]);
        jobInfo.jobRedirectionInfoRef = jobCfgPtr->inOutRedirtRef;
        jobInfo.jobInfo = jobCfgPtr->jobInfo;
        jobInfo.jobPrimitiveInfo = jobCfgPtr->jobPrimitiveInfo;
        jobInfo.jobId = jobInQueId;
        SchM_Enter_Csm_Area_Csm();
        jobInfo.jobState = Csm_JobStates[jobInQueId];
        SchM_Exit_Csm_Area_Csm();
        jobInfo.jobPrimitiveInputOutput = queChRunPtr->pendingJobQue->jobPriInOut;
        ret = CryIf_ProcessJob(cryIfChId, &jobInfo);
        if (0U == ret)
        {
            SchM_Enter_Csm_Area_Csm();
            Csm_JobStates[jobInQueId] = CRYPTO_JOBSTATE_ACTIVE;
            SchM_Exit_Csm_Area_Csm();
             
            (void)Csm_DequeueJobInQue(jobInQueId, queIdx);
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 
static  Std_ReturnType Csm_ProcessJobToCryIf(
       
    Crypto_JobPrimitiveInputOutputType * jobPrimInOut,
       
    uint32 jobId)
{
    Crypto_JobType job;
    const Csm_JobsCfgType * jobCfgPtr;
    Csm_QueueChStatusType * queChRunPtr;
    uint32 queueRef;
    uint32 channelId;
    Crypto_JobStateType jobState;
    Crypto_ProcessingType processMode;
    Std_ReturnType ret = 0U;

    jobCfgPtr = &(Csm_JobCfg[jobId]);
    SchM_Enter_Csm_Area_Csm();
    jobState = Csm_JobStates[jobId];
    SchM_Exit_Csm_Area_Csm();
    if ((jobCfgPtr->inOutRedirtRef != ((void *)0))
        && ((jobPrimInOut->inputLength != 0u) || (*(jobPrimInOut->outputLengthPtr) != 0u)))
    {
         
        ret = 1U;
    }
    else
    {

        job.jobRedirectionInfoRef = jobCfgPtr->inOutRedirtRef;
        job.jobInfo = jobCfgPtr->jobInfo;
        job.jobPrimitiveInfo = jobCfgPtr->jobPrimitiveInfo;
        job.jobId = jobId;
        job.jobState = jobState;
        job.jobPrimitiveInputOutput = *jobPrimInOut;
         
        queueRef = jobCfgPtr->queRef;
        channelId = Csm_QueCfg[queueRef].cryIfChRef;
        processMode = jobCfgPtr->jobPrimitiveInfo->processingType;
        if (CRYPTO_JOBSTATE_ACTIVE == jobState)
        {
            ret = CryIf_ProcessJob(channelId, &job);
            if (CRYPTO_PROCESSING_SYNC == processMode)
            {
                 
                SchM_Enter_Csm_Area_Csm();
                if (ret != 0U)
                {
                    Csm_JobStates[jobId] = CRYPTO_JOBSTATE_IDLE;
                }
                 
                   
                else if ((jobPrimInOut->mode & CRYPTO_OPERATIONMODE_FINISH) != 0u)
                {
                    Csm_JobStates[jobId] = CRYPTO_JOBSTATE_IDLE;
                }
                 
                else
                {
                     
                }
                SchM_Exit_Csm_Area_Csm();
            }
        }
        else  
        {
            queChRunPtr = &(Csm_QueueChRunStatus[queueRef]);
            if (CRYPTO_PROCESSING_SYNC == processMode)
            {
                 
                if (((jobCfgPtr->jobInfo->jobPriority > queChRunPtr->maxPriority)) || (0u == queChRunPtr->jobCnt))
                {
                    queChRunPtr->dealSynJobIng = (boolean)1u;
                    ret = CryIf_ProcessJob(channelId, &job);
                       
                    if ((0U == ret) && (0u == (jobPrimInOut->mode & CRYPTO_OPERATIONMODE_FINISH)))
                    {
                         
                        SchM_Enter_Csm_Area_Csm();
                        Csm_JobStates[jobId] = CRYPTO_JOBSTATE_ACTIVE;
                        SchM_Exit_Csm_Area_Csm();
                    }
                     
                    queChRunPtr->dealSynJobIng = (boolean)0u;
                }
                else
                {
                     
                    ret = ((Std_ReturnType)0x02u);
                }
            }
            else  
            {
                 
                if (0u == queChRunPtr->jobCnt)
                {
                     
                    ret = CryIf_ProcessJob(channelId, &job);
                    if (0U == ret)
                    {
                        SchM_Enter_Csm_Area_Csm();
                        Csm_JobStates[jobId] = CRYPTO_JOBSTATE_ACTIVE;
                        SchM_Exit_Csm_Area_Csm();
                    }
                    else if (((Std_ReturnType)0x02u) == ret)
                    {
                         
                        (void)Csm_EnqueueJobToQue(jobId, queueRef, *jobPrimInOut);
                    }
                    else
                    {
                         
                    }
                }
                else
                {
                     
                    if (Csm_QueCfg[queueRef].queueSize > queChRunPtr->jobCnt)
                    {
                         
                        (void)Csm_EnqueueJobToQue(jobId, queueRef, *jobPrimInOut);
                    }
                    else
                    {
                        ret = ((Std_ReturnType)0x02u);
                    }
                }
            }
        }
    }
    return ret;
}

 
static  Std_ReturnType Csm_EnqueueJobToQue(
    uint32 jobId,
    uint32 queId,
    Crypto_JobPrimitiveInputOutputType jobPriInOutInfo)
{
    Csm_QueueChStatusType * queChRunPtr;
    const Csm_JobsCfgType * jobCfgPtr;
    Csm_JobInQueueType * queBuf;
    Csm_JobInQueueType * swapqueBuf;
    Csm_JobInQueueType * preNode = ((void *)0);
    Csm_JobInQueuePtrType * curNode;
    Csm_JobInQueueType * pendingNode;
    uint32 bufPos;
    uint32 itemPriority;
    uint32 idx;
    Std_ReturnType ret = 0U;
    boolean break_Flag = 0u;

    queChRunPtr = &(Csm_QueueChRunStatus[queId]);
    jobCfgPtr = &(Csm_JobCfg[jobId]);
    itemPriority = jobCfgPtr->jobInfo->jobPriority;
    curNode = &(queChRunPtr->pendingJobQue);
    pendingNode = queChRunPtr->pendingJobQue;
     
    if ((queChRunPtr->maxPriority == ((uint32)0xFFFFFFFFU)) || (itemPriority > queChRunPtr->maxPriority))
    {
        queChRunPtr->maxPriority = itemPriority;
    }
    if (0u == queChRunPtr->jobCnt)
    {
         
        (*curNode) = Csm_FindIdleQueue(&bufPos);
        if ((*curNode) != ((void *)0))
        {
            (*curNode)->jobId = jobId;
            (*curNode)->jobPriority = itemPriority;
            (*curNode)->next = ((void *)0);
            (*curNode)->bufPos = bufPos;
            (*curNode)->jobPriInOut = jobPriInOutInfo;
            queChRunPtr->jobCnt++;
        }
    }
    else
    {
        if (queChRunPtr->jobCnt < Csm_QueCfg[queId].queueSize)
        {
             
            queBuf = Csm_FindIdleQueue(&bufPos);
            if (((void *)0) == queBuf)
            {
                ret = ((Std_ReturnType)0x02u);
            }
            else
            {
                 
                queBuf->bufPos = bufPos;
                queBuf->jobId = jobId;
                queBuf->jobPriority = itemPriority;
                queBuf->jobPriInOut = jobPriInOutInfo;
                for (idx = 0u; idx < queChRunPtr->jobCnt; idx++)
                {
                     
                    if ((itemPriority > (*curNode)->jobPriority))
                    {
                        swapqueBuf = (*curNode);
                        (*curNode) = queBuf;
                        (*curNode)->next = swapqueBuf;
                        if (itemPriority > pendingNode->jobPriority)
                        {
                            pendingNode = queBuf;
                        }
                        if (preNode != ((void *)0))
                        {
                            preNode->next = (*curNode);
                        }
                        break_Flag = 1u;
                    }
                    else
                    {
                        if (((void *)0) == (*curNode)->next)
                        {
                            queBuf->next = (*curNode)->next;
                            (*curNode)->next = queBuf;
                            break_Flag = 1u;
                        }
                        else
                        {
                            preNode = (*curNode);
                            (*curNode) = (*curNode)->next;
                        }
                    }
                    if (break_Flag == 1u)
                    {
                        break;
                    }
                }
                (*curNode) = pendingNode;
                queChRunPtr->jobCnt++;
            }
        }
    }
    return ret;
}

 
static  Std_ReturnType Csm_DequeueJobInQue(uint32 jobId, uint32 queId)
{
    Csm_QueueChStatusType * queChRunPtr;
    Csm_JobInQueuePtrType * curNode;
       
    Csm_JobInQueuePtrType * preNode;
       
    const Csm_JobInQueueType * temNode;
    uint32 idx;
    Std_ReturnType ret = 1U;

    queChRunPtr = &(Csm_QueueChRunStatus[queId]);
    curNode = &(queChRunPtr->pendingJobQue);
    if ((*curNode)->jobId == jobId)
    {
         
        if ((*curNode)->next != ((void *)0))
        {
            queChRunPtr->maxPriority = (*curNode)->next->jobPriority;
        }
        else
        {
            queChRunPtr->maxPriority = ((uint32)0xFFFFFFFFU);
        }
        SchM_Enter_Csm_Area_Csm();
        Csm_JobQueBufUsed[(*curNode)->bufPos] = (boolean)0u;
        SchM_Exit_Csm_Area_Csm();
        (*curNode) = (*curNode)->next;
        queChRunPtr->jobCnt--;
    }
    else
    {
        for (idx = (1U); idx < queChRunPtr->jobCnt; idx++)
        {
            preNode = curNode;
            temNode = (*curNode)->next;
             
            if (temNode->jobId == jobId)
            {
                SchM_Enter_Csm_Area_Csm();
                Csm_JobQueBufUsed[temNode->bufPos] = (boolean)0u;
                SchM_Exit_Csm_Area_Csm();
                (*preNode)->next = temNode->next;
                queChRunPtr->jobCnt--;
                ret = 0U;
                break;
            }
        }
    }
    return ret;
}

 
static  Csm_JobInQueuePtrType Csm_FindIdleQueue(uint32 * bufPos)
{
    Csm_JobInQueueType * queBuf;
    uint32 queIdx;

    queBuf = ((void *)0);
    SchM_Enter_Csm_Area_Csm();
    for (queIdx = 0u; queIdx < 5U; queIdx++)
    {
        if ((boolean)0u == Csm_JobQueBufUsed[queIdx])
        {
            break;
        }
    }
    SchM_Exit_Csm_Area_Csm();
    if (queIdx != 5U)
    {
        queBuf = &(Csm_JobQueBuf[queIdx]);
        *bufPos = queIdx;
        SchM_Enter_Csm_Area_Csm();
        Csm_JobQueBufUsed[queIdx] = (boolean)1u;
        SchM_Exit_Csm_Area_Csm();
    }
    return queBuf;
}

 
static  Std_ReturnType Csm_CheckOperaMode(Crypto_OperationModeType mode)
{
    Std_ReturnType ret = 0U;

    if ((mode != CRYPTO_OPERATIONMODE_START) && (mode != CRYPTO_OPERATIONMODE_UPDATE)
        && (mode != CRYPTO_OPERATIONMODE_STREAMSTART) && (mode != CRYPTO_OPERATIONMODE_FINISH)
        && (mode != CRYPTO_OPERATIONMODE_SINGLECALL))
    {
        ret = 1U;
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
