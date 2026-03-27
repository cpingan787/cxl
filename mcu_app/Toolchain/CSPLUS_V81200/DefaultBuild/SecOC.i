











 












 


 






























 



 




 












 












 



 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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













 












 



 




 


























































































 














 












 



 



 


 




















 
 



 



 


 




















 
 



 









 
  
 




 
 
 




 

 

 
 
 
 
 

 

 


 






 
 
typedef uint8 SecOC_FreshnessArrayType[8u];

 
 
typedef enum
{
    SECOC_VERIFICATIONSUCCESS,
    SECOC_VERIFICATIONFAILURE,
    SECOC_FRESHNESSFAILURE,
    SECOC_AUTHENTICATIONBUILDFAILURE,
    SECOC_NO_VERIFICATION,
    SECOC_VERIFICATIONFAILURE_OVERWRITTEN
} SecOC_VerificationResultType;

 



 
typedef struct
{
    uint16 freshnessValueID;
    SecOC_VerificationResultType verificationStatus;
    uint16 secOCDataId;
} SecOC_VerificationStatusType;

 
 
typedef enum
{
    SECOC_OVERRIDE_DROP_UNTIL_NOTICE = 0x00,
    SECOC_OVERRIDE_DROP_UNTIL_LIMIT = 0x01,
    SECOC_OVERRIDE_CANCEL = 0x02,
    SECOC_OVERRIDE_PASS_UNTIL_NOTICE = 0x40,
    SECOC_OVERRIDE_SKIP_UNTIL_LIMIT = 0x41,
    SECOC_OVERRIDE_PASS_UNTIL_LIMIT = 0x42,
    SECOC_OVERRIDE_SKIP_UNTIL_NOTICE = 0x43
} SecOC_OverrideStatusType;





 
 
typedef enum
{
    SECOC_UNINIT,
    SECOC_INIT
} SecOC_StateType;

 

typedef struct
{
    uint32 SecOCBufferLength;
    boolean * SecOCSameBufferInUse;
    uint16 SecOCAuthenticPduBuffLength;
    uint8 * SecOCAuthenticPduBufferRef;
    uint16 SecOCSecuredPduBuffLength;
    uint8 * SecOCSecuredPduBufferRef;
    uint16 SecOCColAuthenticPduBuffLength;
    uint8 * SecOCColAuthenticPduBufferRef;
    uint16 SecOCCryptographicPduBuffLength;
    uint8 * SecOCCryptographicPduBufferRef;
} SecOC_SameBufferPduCollectionType;

typedef enum
{
    SECOC_QUEUE,
    SECOC_REJECT,
    SECOC_REPLACE
} SecOC_ReceptionOverflowStrategyType;

typedef enum
{
    SECOC_BOTH,          
    SECOC_FAILURE_ONLY,  
    SECOC_NONE           
} SecOC_VeriStatusPropModeType;

typedef enum
{
    SECOC_IFPDU,
    SECOC_TPPDU
} SecOC_PduType;

typedef enum
{
    SECOC_CRYPTO_PROCESSING_ASYNC,
    SECOC_CRYPTO_PROCESSING_SYNC
} SecOC_CryptoProcessingTypeType;

typedef enum
{
    SECOC_CSMMAC,
    SECOC_CSMSIGNATURE
} SecOC_CsmPrimitivesType;

typedef struct
{
    uint32 SecOCJobId;
    SecOC_CryptoProcessingTypeType SecOCCryptoProcessingType;
    SecOC_CsmPrimitivesType SecOCCsmPrimitives;
} SecOC_CsmJobType;

typedef struct
{
    PduIdType SecOCRxPduRAsUpLayerId;  
    SecOC_PduType SecOCPduType;
    PduLengthType SecOCPduLength;
} SecOC_RxAuthenticPduLayerType;

typedef struct
{
    uint8 SecOCAuthPduHeaderLength;
    PduIdType SecOCRxSecuredLayerPduId;
    PduIdType SecOCRxPduRAsLowerLayerPduId;
    boolean SecOCSecuredRxPduVerification;
    boolean SecOCDynamicLength;
    PduLengthType SecOCPduLength;
    uint16 SecOCRxSecuredPduBuffLength;

    uint8 * SecOCRxSecuredPduBufferRef;

} SecOC_RxSecuredPduType;

typedef struct
{
    uint8 SecOCAuthPduHeaderLength;
    PduIdType SecOCRxAuthenticPduId;
    PduIdType SecOCRxPduRAsLowerLayerPduId;
    boolean SecOCDynamicLength;
    PduLengthType SecOCPduLength;
    uint16 SecOCRxColAuthenticPduBuffLength;

    uint8 * SecOCRxColAuthenticPduBufferRef;

} SecOC_RxAuthenticPduType;

typedef struct
{
    PduIdType SecOCRxCryptographicPduId;
    PduIdType SecOCRxPduRAsLowerLayerPduId;
    boolean SecOCDynamicLength;
    PduLengthType SecOCPduLength;
    uint16 SecOCRxCryptographicPduBuffLength;

    uint8 * SecOCRxCryptographicPduBufferRef;

} SecOC_RxCryptographicPduType;

typedef struct
{
    uint16 SecOCMessageLinkLen;
    uint16 SecOCMessageLinkPos;
} SecOC_UseMessageLinkType;

typedef struct
{
    boolean SecOCSecuredRxPduVerification;
    const SecOC_RxAuthenticPduType * SecOCRxAuthenticPdu;
    const SecOC_RxCryptographicPduType * SecOCRxCryptographicPdu;
    const SecOC_UseMessageLinkType * SecOCUseMessageLink;
} SecOC_RxSecuredPduCollectionType;

typedef struct
{
    const SecOC_RxSecuredPduType * SecOCRxSecuredPdu;
    const SecOC_RxSecuredPduCollectionType *
    SecOCRxSecuredPduCollection;
} SecOC_RxSecuredPduLayerType;

typedef struct
{
    uint32 SecOCSecuredRxPduLength;
    uint32 SecOCSecuredRxPduOffset;
} SecOC_RxPduSecuredAreaType;

typedef struct
{
    uint16 SecOCAuthDataFreshnessLen;
    uint16 SecOCAuthDataFreshnessStartPosition;
    uint16 SecOCAuthenticationBuildAttempts;
    uint16 SecOCAuthenticationVerifyAttempts;
    uint16 SecOCAuthInfoTruncLength;
    uint16 SecOCDataId;
    uint16 SecOCFreshnessValueId;
    uint8 SecOCFreshnessValueLength;
    uint8 SecOCFreshnessValueTruncLength;
    SecOC_ReceptionOverflowStrategyType SecOCReceptionOverflowStrategy;
    uint16 SecOCReceptionQueueSize;

    uint8 * SecOCReceptionQueueRef;

    boolean SecOCUseAuthDataFreshness;
    SecOC_VeriStatusPropModeType SecOCVerificationStatusPropagationMode;
    const SecOC_CsmJobType * SecOCRxAuthServiceConfigRef;
    const SecOC_SameBufferPduCollectionType *
    SecOCSameBufferPduRef;
    const SecOC_RxAuthenticPduLayerType *
    SecOCRxAuthenticPduLayer;
    const SecOC_RxPduSecuredAreaType *
    SecOCRxPduSecuredArea;
    const SecOC_RxSecuredPduLayerType *
    SecOCRxSecuredPduLayer;
    uint16 SecOCAuthenticPduBuffLength;

    uint8 * SecOCAuthenticPduBufferRef;

    uint16 SecOCAuthFrsInfoLength;
} SecOC_RxPduProcessingType;

typedef struct
{
    SecOC_PduType SecOCPduType;
    PduIdType SecOCTxAuthenticLayerPduId;  
    PduIdType SecOCTxPduRAsUpLayerId;      
} SecOC_TxAuthenticPduLayerType;

typedef struct
{
    uint32 SecOCSecuredTxPduLength;
    uint32 SecOCSecuredTxPduOffset;
} SecOC_TxPduSecuredAreaType;

typedef struct
{
    uint8 SecOCAuthPduHeaderLength;
    PduIdType SecOCTxSecuredLayerPduId;   
    PduIdType SecOCTxPduRAsLowerLayerId;  
    uint16 SecOCTxSecuredPduBuffLength;

    uint8 * SecOCTxSecuredPduBufferRef;

} SecOC_TxSecuredPduType;

typedef struct
{
    uint8 SecOCAuthPduHeaderLength;
    PduIdType SecOCTxAuthenticPduId;
    PduIdType SecOCTxPduRAsLowerLayerId;  
    uint16 SecOCTxColAuthenticPduBuffLength;

    uint8 * SecOCTxColAuthenticPduBufferRef;

} SecOC_TxAuthenticPduType;

typedef struct
{
    PduIdType SecOCTxCryptographicPduId;
    PduIdType SecOCTxPduRAsLowerLayerId;  
    uint16 SecOCTxCryptographicPduBuffLength;

    uint8 * SecOCTxCryptographicPduBufferRef;

} SecOC_TxCryptographicPduType;

typedef struct
{
    const SecOC_TxAuthenticPduType * SecOCTxAuthenticPdu;
    const SecOC_TxCryptographicPduType *
    SecOCTxCryptographicPdu;
    const SecOC_UseMessageLinkType * SecOCUseMessageLink;
} SecOC_TxSecuredPduCollectionType;

typedef struct
{
    const SecOC_TxSecuredPduType * SecOCTxSecuredPdu;
    const SecOC_TxSecuredPduCollectionType *
    SecOCTxSecuredPduCollection;
} SecOC_TxSecuredPduLayerType;

typedef struct
{
    uint16 SecOCAuthenticationBuildAttempts;
    uint16 SecOCAuthInfoTruncLength;
    uint16 SecOCDataId;
    uint16 SecOCFreshnessValueId;
    uint8 SecOCFreshnessValueLength;
    uint8 SecOCFreshnessValueTruncLength;
    boolean SecOCProvideTxTruncatedFreshnessValue;
    boolean SecOCUseTxConfirmation;
    const SecOC_SameBufferPduCollectionType *
    SecOCSameBufferPduRef;
    const SecOC_CsmJobType * SecOCTxAuthServiceConfigRef;
    const SecOC_TxAuthenticPduLayerType *
    SecOCTxAuthenticPduLayer;
    const SecOC_TxPduSecuredAreaType *
    SecOCTxPduSecuredArea;
    const SecOC_TxSecuredPduLayerType *
    SecOCTxSecuredPduLayer;
    uint16 SecOCAuthenticPduBuffLength;

    uint8 * SecOCAuthenticPduBufferRef;

     
    uint16 SecOCAuthFrsInfoLength;
} SecOC_TxPduProcessingType;

   
typedef void (*SecOC_VerificationStatusCalloutType)(SecOC_VerificationStatusType);
   

 
typedef struct
{
    const SecOC_RxPduProcessingType *
    SecOCRxPduProcessing;
    const SecOC_SameBufferPduCollectionType *
    SecOCSameBufferPduCollection;
    const SecOC_TxPduProcessingType *
    SecOCTxPduProcessing;
    const SecOC_VerificationStatusCalloutType *
    SecOCVerificationStatusCallout;
    boolean * SecOCIgnoreVerificationResultRef;
} SecOC_ConfigType;













 












 



 


 














 












 


 




 



 
 




















 
 




 

























 
   
   
   
   


 

























 
 

































































































































































































































 


 




 












 











 


 


 


 













































 




 














 
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



 



 




 



 



 



 

 













 
 
 void
SecOC_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr);

 











 
 
 void SecOC_TpRxIndication(PduIdType id, Std_ReturnType result);

 










 
 
 void SecOC_TxConfirmation(PduIdType TxPduId);

 












 
 
 void SecOC_TpTxConfirmation(PduIdType id, Std_ReturnType result);

 























 
 
 Std_ReturnType
SecOC_TriggerTransmit(PduIdType TxPduId, PduInfoType * PduInfoPtr);

 





















 
 
 BufReq_ReturnType
SecOC_CopyRxData(
    PduIdType id,
    const PduInfoType * info,
    PduLengthType * bufferSizePtr);

 

























 
 
 BufReq_ReturnType
SecOC_CopyTxData(
    PduIdType id,
    const PduInfoType * info,
    const RetryInfoType * retry,
    PduLengthType * availableDataPtr);

 


























 
 
 BufReq_ReturnType
SecOC_StartOfReception(
    PduIdType id,
    const PduInfoType * info,
    PduLengthType TpSduLength,
    PduLengthType * bufferSizePtr);

 











 
 
 void
SecOC_CsmGenerateJobFinishedIndication(
    const Crypto_JobType * job,
    Crypto_ResultType result);

 











 
 
 void
SecOC_CsmVerifyJobFinishedIndication(
    const Crypto_JobType * job,
    Crypto_ResultType result);



























 
   
   
   






 
extern void SchM_Enter_SecOC_ExclusiveArea_Channel(void);

extern void SchM_Exit_SecOC_ExclusiveArea_Channel(void);

extern void SchM_Enter_SecOC_TxData(void);

extern void SchM_Exit_SecOC_TxData(void);

extern void SchM_Enter_SecOC_RxData(void);

extern void SchM_Exit_SecOC_RxData(void);

extern void SchM_Enter_SecOC_Authentication(void);

extern void SchM_Exit_SecOC_Authentication(void);










 




















 
 














 












 



 




 


























































































 



 



 



 



 

 


























 
 
 Std_ReturnType
SecOC_GetRxFreshness(
    uint16 SecOCFreshnessValueID,
    const uint8 * SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength);

 































 
 
 Std_ReturnType
SecOC_GetRxFreshnessAuthData(
    uint16 SecOCFreshnessValueID,
    const uint8 * SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    const uint8 * SecOCAuthDataFreshnessValue,
    uint16 SecOCAuthDataFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength);

 



















 
 
 Std_ReturnType
SecOC_GetTxFreshness(
    uint16 SecOCFreshnessValueID,
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength);

 























 
 
 Std_ReturnType
SecOC_GetTxFreshnessTruncData(
    uint16 SecOCFreshnessValueID,
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength,
    uint8 * SecOCTruncatedFreshnessValue,
    uint32 * SecOCTruncatedFreshnessValueLength);

 











 
 
 Std_ReturnType SecOC_SPduTxConfirmation(uint16 SecOCFreshnessValueID);






 

 

 

 




 



 

extern const SecOC_ConfigType SecOC_ConfigData;



 

 









 
 
 void SecOC_Init(const SecOC_ConfigType * config);

 











 
 
 void SecOC_DeInit(void);

 










 
 
 void SecOC_GetVersionInfo(Std_VersionInfoType * versioninfo);

 












 
 
 Std_ReturnType
SecOC_IfTransmit(PduIdType TxPduId, const PduInfoType * PduInfoPtr);

 












 
 
 Std_ReturnType
SecOC_TpTransmit(PduIdType TxPduId, const PduInfoType * PduInfoPtr);

 













 
 
 Std_ReturnType SecOC_IfCancelTransmit(PduIdType TxPduId);

 













 
 
 Std_ReturnType SecOC_TpCancelTransmit(PduIdType TxPduId);

 













 
 
 Std_ReturnType SecOC_TpCancelReceive(PduIdType RxPduId);

 

























 
 
 Std_ReturnType
SecOC_VerifyStatusOverride(uint16 ValueID, SecOC_OverrideStatusType overrideStatus, uint8 numberOfMessagesToOverride);

 


















 
 
 Std_ReturnType
SecOC_SendDefaultAuthenticationInformation(uint16 FreshnessValueID, boolean sendDefaultAuthenticationInformation);




 


 

   

 

 
static inline uint8 SECOC_MOD_FROM_EIGHT(uint16 dividend)
{
    return (uint8)(dividend) & 0X07u;
}

 
static inline uint16 SECOC_DIV_SHIFT(uint16 dividend, uint16 y)
{
    return (dividend) >> (y);
}

static uint16 SECOC_BIT_TO_BYTE(uint16 nbits)
{
    return SECOC_DIV_SHIFT(((nbits) + 7u), 3u);
}

 
   



 
typedef enum
{
    SECOC_TX_NONE,
    SECOC_TX_CALC,
    SECOC_TX_TRANS,
    SECOC_TX_RETRY,
    SECOC_TX_CANCEL
} SecOC_TxStatusType;

typedef enum
{
    SECOC_RX_NONE,
    SECOC_RX_CALC,
    SECOC_RX_RETRY
} SecOC_RxStatusType;

 
typedef struct
{
    SecOC_TxStatusType txPduStatus;
    PduLengthType txPduLength;
    PduLengthType txSecuredPduLen;
    PduLengthType txAuthenticPduLen;
    PduLengthType txCryptographicPduLen;
    SecOC_FreshnessArrayType txFreshnessValue;
    boolean txPduReady;
    uint16 txAuthBuildCnt;
    uint8 txResultBuffer[(16u + 1u)];
    uint32 txResultLength;
    boolean txDefaultAuthInfoEnable;
} SecOC_TxPduRTType;

 


 
typedef struct
{
    PduLengthType pduLength;
    PduIdType pduId;
} SecOC_QueueInfoType;

typedef struct
{
    uint16 queueInfoIdx;
    uint16 freeQueSize;
    uint16 freeQueStartIdx;
    uint16 queueFrameCnt;
} SecOC_QueueManageType;

 
typedef struct
{
    SecOC_RxStatusType rxPduStatus;
    PduIdType curPduId;
    PduLengthType rxSecuredPduLen;
    PduLengthType rxAuthenticPduLen;
    PduLengthType rxCryptographicPduLen;
    PduLengthType rxParsedAuthPduLen;
    SecOC_QueueManageType queueManage;
    uint8 rxParsedFreshnessValue[8u];  
    uint8 rxParsedAuthenticator[(16u + 1u)];
    uint8* rxParsedAuthPduBufPtr;
    uint16 rxAuthBuildAttempts;
    uint16 rxVerifyAttempts;
    SecOC_FreshnessArrayType rxFreshnessValue;
    Crypto_VerifyResultType rxVerifyResult;
    SecOC_OverrideStatusType rxOverrideStatus;
    uint8 rxNumOfMsgToOverride;
    uint8 rxBakNumOfMsgToOverride;
    SecOC_VerificationResultType rxVeryfyResult;
} SecOC_RxPduRTType;

 




















 
 



 












 












 


 



























 

 































 


 












 












 



 
 




















 
 




 
 




















 
 




 



 



 











 




 




 














 




 
 

typedef enum
{
    PDUR_DIRECT = 0u,
    PDUR_TRIGGERTRANSMIT
} PduR_DestPduDataProvisionType;

typedef uint16 PduR_PBConfigIdType;
typedef uint16 PduR_RoutingPathGroupIdType;

typedef uint32 PduR_TpThresholdType;

typedef enum
{
    PDUR_UNINIT = 0u,
    PDUR_ONLINE
} PduR_StateType;

 
typedef struct
{
    PduLengthType DefaultValueStart;
    PduLengthType DefaultValueLength;
} PduRDefaultValueType;

typedef enum
{
    PDUR_BUFFER_UNLOCK,
    PDUR_BUFFER_LOCK
} PduR_BufferLockStateType;

typedef enum
{
    PDUR_BUFFER_WRITE_OK,
    PDUR_BUFFER_WRITE_NOT_OK,
    PDUR_BUFFER_WRITE_PENDING
} PduR_BufferWriteStateType;

typedef enum
{
    PDUR_ROUTE_IF_TX_NOBUFFERED,
    PDUR_ROUTE_IF_RX_NOBUFFERED,
    PDUR_ROUTE_IF_RX_BUFFERED,
    PDUR_ROUTE_IF_GW_NOBUFFERED,
    PDUR_ROUTE_IF_GW_BUFFERED,
    PDUR_ROUTE_TP_TX_NOBUFFERED,
    PDUR_ROUTE_TP_RX_NOBUFFERED,
    PDUR_ROUTE_TP_RX_BUFFERED,
    PDUR_ROUTE_TP_GW_BUFFERED
} PduR_RouteType;

typedef enum
{
    PDUR_RES_INITIAL,
    PDUR_RES_PENDING,
    PDUR_RES_OK,
    PDUR_RES_NOT_OK
} PduR_RouteStatusType;

typedef enum
{
    PDUR_QUEUESTORE_NOT_OK,
    PDUR_QUEUESTORE_OK,
    PDUR_QUEUESTORE_FLUSH_OK
} PduR_QueueStoreType;

typedef struct
{
    boolean PduRSrcPduUpTxConf;
    uint8 BswModuleIndex;
    PduIdType PduRSrcModulePduIndex;
} PduRSrcPduType;

typedef struct
{
    uint8 BswModuleIndex;
    boolean transmissionConfirmation;
    uint8 PduSrcSum;
    const PduIdType * PduRSrcPduRef;
    PduIdType PduRDestModulePduIndex;
    PduLengthType configuredLength;
    PduR_RouteType routeType;
    PduR_DestPduDataProvisionType PduRDestPduDataProvision;
} PduRDestPduType;

typedef struct
{
    uint8 PduDestSum;
    boolean TpRoute;
    const PduIdType * PduRDestPduIdRef;
} PduRRoutingPathType;

typedef struct
{
    const PduRRoutingPathType * PduRRoutingPathRef;
} PduRRoutingTableType;
 
typedef struct
{
    boolean PduRIsEnabledAtInit;
    PduR_RoutingPathGroupIdType PduRRoutingPathGroupId;
    PduIdType PduRDestPduRefNumber;
    const PduIdType * PduRDestPduIdRef;
} PduRRoutingPathGroupType;
 
typedef struct
{
    PduR_PBConfigIdType PduRConfigId;
    uint16 routingPathGroupCnt;
    uint16 PduRSrcPduNum;
    PduIdType PduRRoutingPathNum;
    const PduRRoutingPathGroupType * PduRRoutingPathGroupRef;
    const PduRRoutingTableType * PduRRoutingTableRef;
    const PduRSrcPduType * PduRSrcPduRef;
    const PduRDestPduType * PduRDestPduRef;
} PduR_PBConfigType;

typedef Std_ReturnType (*ModuleCancelReceiveApiType)(PduIdType RxPduId);
typedef Std_ReturnType (*ModuleIfTpCancelTransmitApiType)(PduIdType TxPduId);
typedef Std_ReturnType (*ModuleTriggertransmitApiType)(PduIdType TxPduId, PduInfoType* PduInfoPtr);
typedef Std_ReturnType (*ModuleIfTransmitApiType)(PduIdType id, const PduInfoType* info);
typedef void (*ModuleTxConfirmationApiType)(PduIdType TxPduId);
typedef void (*ModuleIfRxIndicationApiType)(PduIdType RxPduId, const PduInfoType* PduInfoPtr);
typedef Std_ReturnType (*ModuleTpTransmitApiType)(PduIdType id, const PduInfoType* info);
typedef BufReq_ReturnType (*ModuleCopyTxDataApiType)(
    PduIdType id,
    const PduInfoType* info,
    const RetryInfoType* retry,
    PduLengthType* availableDataPtr);
typedef void (*ModuleTpTxConfirmationApiType)(PduIdType id, Std_ReturnType result);
typedef BufReq_ReturnType (*ModuleStartOfReceptionApiType)(
    PduIdType id,
    const PduInfoType* info,
    PduLengthType TpSduLength,
    PduLengthType* bufferSizePtr);
typedef BufReq_ReturnType (
    *ModuleCopyRxDataApiType)(PduIdType id, const PduInfoType* info, PduLengthType* bufferSizePtr);
typedef void (*ModuleTpRxIndicationApiType)(PduIdType id, Std_ReturnType result);

typedef struct
{
    uint8 PduRBswModuleRef;
    ModuleCancelReceiveApiType CancelReceiveApi;
    ModuleIfTpCancelTransmitApiType IfCancelTransmitApi;
    ModuleIfTpCancelTransmitApiType TpCancelTransmitApi;
    ModuleTriggertransmitApiType TriggertransmitApi;
    ModuleIfTransmitApiType IfTransmitApi;
    ModuleTxConfirmationApiType TxConfirmationApi;
    ModuleIfRxIndicationApiType IfRxIndicationApi;
    ModuleTpTransmitApiType TpTransmitApi;
    ModuleCopyTxDataApiType CopyTxDataApi;
    ModuleTpTxConfirmationApiType TpTxConfirmationApi;
    ModuleStartOfReceptionApiType StartOfReceptionApi;
    ModuleCopyRxDataApiType CopyRxDataApi;
    ModuleTpRxIndicationApiType TpRxIndicationApi;
} PduRBswModuleType;

 
typedef struct
{
    const PduLengthType pduMaxLength;  
    PduLengthType sduLength;           
    PduLengthType pduCurLength;        
    PduIdType srcPduId;                
    uint8* data;
    PduR_BufferLockStateType lockState;    
    PduR_BufferWriteStateType writeState;  
} PduR_BufferType;

typedef uint8 PduR_QueueDepthType;
typedef uint16 PduR_BufferPoolSizeType;
typedef uint16 PduR_BufferIndexType;
typedef PduIdType PduR_QueueIndexType;  
typedef struct
{
    PduR_BufferPoolSizeType size;
    const PduR_BufferIndexType* indexes;
} PduR_BufferPoolType;

typedef struct
{
    const PduR_QueueDepthType depth;
    PduLengthType
        curPosition;  
    PduLengthType
        curSduLength;  
    PduR_BufferType** bufferPtrs;  
    const PduR_BufferPoolType* const bufferPoolPtr;
} PduR_QueueType;

 
typedef uint8 PduR_MetaDataLengthType;





 
 




 
 

 

 







 

 
extern void PduR_Init(const PduR_PBConfigType* ConfigPtr);


extern PduR_PBConfigIdType PduR_GetConfigurationId(void);
extern void PduR_EnableRouting(PduR_RoutingPathGroupIdType id);
extern void PduR_DisableRouting(PduR_RoutingPathGroupIdType id, boolean initialize);

 
extern Std_ReturnType PduR_Transmit(PduIdType TxPduId, const PduInfoType* PduInfoPtr);

extern Std_ReturnType PduR_CancelTransmit(PduIdType TxPduId);

extern Std_ReturnType PduR_CancelReceive(PduIdType RxPduId);

extern void PduR_IfRxIndication(PduIdType RxPduId, const PduInfoType* PduInfoPtr);

extern void PduR_IfTxConfirmation(PduIdType TxPduId);

extern Std_ReturnType PduR_IfTriggerTransmit(PduIdType TxPduId, PduInfoType* PduInfoPtr);

extern BufReq_ReturnType PduR_TpCopyRxData(PduIdType id, const PduInfoType* info, PduLengthType* bufferSizePtr);

extern void PduR_TpRxIndication(PduIdType id, Std_ReturnType result);

extern BufReq_ReturnType PduR_TpStartOfReception(
    PduIdType id,
    const PduInfoType* info,
    PduLengthType TpSduLength,
    PduLengthType* bufferSizePtr);

extern BufReq_ReturnType PduR_TpCopyTxData(
    PduIdType id,
    const PduInfoType* info,
    const RetryInfoType* retry,
    PduLengthType* availableDataPtr);

extern void PduR_TpTxConfirmation(PduIdType id, Std_ReturnType result);



 
 
extern const PduR_PBConfigType * PduR_ConfigStd;
 
extern const PduR_PBConfigType PduR_PBConfigData;




 


 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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



 


 



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   

   

static  void SecOC_TxGenerateAuthenticator(uint16 index);

static  uint32 SecOC_TxCalcDataToAuthenticatorLength(uint16 index);

static  Std_ReturnType SecOC_TxConstructDataToAuthenticator(uint16 index);

static  void SecOC_TxGenerateAuthenticatorRetry(uint16 index);

static  void SecOC_TxBuildAuthenticatorFailHandle(uint16 index);

static  void SecOC_TxSendSecuredIPDU(uint16 index);

static  void SecOC_TxConstructSecuredIPDU(uint16 index);

static  void SecOC_TxConstructAuthenticIPDU(uint16 index);

static  void SecOC_TxConstructCryptographicIPDU(uint16 index);

static  void SecOC_TxBroadcastSecuredIPDU(uint16 index);

static  void SecOC_TxBroadcastAuthenticIPDU(uint16 index);

static  void SecOC_TxBroadcastCryptographicIPDU(uint16 index);

static  void SECOC_SET_TX_EVENT(uint16 i, uint16 e);

static  void SECOC_CLR_TX_EVENT(uint16 i, uint16 e);

static  boolean SECOC_IS_TX_EVENT(uint16 i, uint16 e);

static const SecOC_TxPduProcessingType * SecOC_GetTxPduProcessingPtr(uint16 idx);

static const SecOC_TxAuthenticPduLayerType * SecOC_GetTxAuthenticPduLayerPtr(uint16 idx);

static const SecOC_TxSecuredPduLayerType * SecOC_GetTxSecuredPduLayerPtr(uint16 idx);

static const SecOC_TxSecuredPduType * SecOC_GetTxSecuredPduPtr(uint16 idx);

static const SecOC_TxSecuredPduCollectionType * SecOC_GetTxSecuredPduCollectionPtr(uint16 idx);

static const SecOC_TxAuthenticPduType * SecOC_GetTxAuthenticPduPtr(uint16 idx);

static const SecOC_TxCryptographicPduType * SecOC_GetTxCryptographicPduPtr(uint16 idx);

static const SecOC_UseMessageLinkType * SecOC_GetTxUseMessageLinkPtr(uint16 idx);


static  void SecOC_TxChannelReset(uint16 index);

static  void SECOC_SET_RX_EVENT(uint16 i, uint16 e);

static  void SECOC_CLR_RX_EVENT(uint16 i, uint16 e);

static  boolean SECOC_IS_RX_EVENT(uint16 i, uint16 e);

static const SecOC_RxPduProcessingType * SecOC_GetRxPduProcessingPtr(uint16 idx);

static const SecOC_RxAuthenticPduLayerType * SecOC_GetRxAuthenticPduLayerPtr(uint16 idx);

static const SecOC_RxSecuredPduLayerType * SecOC_GetRxSecuredPduLayerPtr(uint16 idx);

static const SecOC_RxSecuredPduType * SecOC_GetRxSecuredPduPtr(uint16 idx);

static const SecOC_RxSecuredPduCollectionType * SecOC_GetRxSecuredPduCollectionPtr(uint16 idx);

static const SecOC_RxAuthenticPduType * SecOC_GetRxAuthenticPduPtr(uint16 idx);

static const SecOC_RxCryptographicPduType * SecOC_GetRxCryptographicPduPtr(uint16 idx);

static  void SecOC_RxIfSecuredPduIndication(
    uint16 index,
    PduIdType RxPduId,
    const PduInfoType * PduInfoPtr);

static  void
    SecOC_RxIfAuthenticPduIndication(uint16 index, const PduInfoType * PduInfoPtr);

static  void
    SecOC_RxIfCryptographicPduIndication(uint16 index, const PduInfoType * PduInfoPtr);

static  void SecOC_RxParseSecuredIpdu(uint16 index);

static  void SecOC_RxVerifyProcee(uint16 index);

static  void SecOC_RxVerifyAuthenticationInfo(uint16 index);

static  uint32 SecOC_RxCalcDataToAuthenticatorLength(uint16 index);

static  Std_ReturnType SecOC_RxConstructDataToAuthenticator(uint16 index);

static  void SecOC_RxAuthenticationBuildRetry(uint16 index);

static  void SecOC_RxVerifyAuthenticInfoRetry(uint16 index);


static  void SecOC_RxPassAuthenticPduToUpperLayer(uint16 index);


static  void SecOC_RxLoadQueuedPdu(uint16 index);

static  void SecOC_RxReportVerifyStatus(uint16 index);

static  void SecOC_RxChannelReset(uint16 index);

static  PduLengthType
    SecOC_RxGetPduLength(uint8 headerLength, const uint8 * headerPtr);

static  void SecOC_EndianSwap(

    uint8 * dataPtr,

    uint8 size);

static  void SecOC_ArrayShiftLeft(

    uint8 * numArr,

    uint16 numLen,
    uint16 shiftBits);

static  void SecOC_ArrayShiftRight(

    uint8 * numArr,

    uint16 numLen,
    uint16 shiftBits);

static  void SecOC_ArrayOrOp(

    uint8 * numArr1,
    const uint8 * numArr2,

    uint16 numLen);

static  void SecOC_ClearLowBit(

    uint8 * numArr,

    uint16 numLen,
    uint16 shiftBits);

static  void
    SecOC_DataInQueue(uint16 index, PduIdType RxPduId, const PduInfoType * PduInfoPtr);

static  Std_ReturnType SecOC_DataOutQueue(
    uint16 index,

    PduIdType * RxPduIdPtr,
    PduInfoType * PduInfoPtr

);

static inline void SECOC_DET_REPORT(uint8 ApiId, uint8 ErrorId);
static inline void SECOC_DET_REPORT_RUNTIMEERROR(uint8 ApiId, uint8 ErrorId);













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static SecOC_StateType SecOC_InitStatus = SECOC_UNINIT;












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static const SecOC_ConfigType * SecOC_ConfigPtr = ((void *)0);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static uint8 SecOC_DataToAuthenticator[58u];

static uint16 SecOC_RxEvent[1u];
static SecOC_RxPduRTType SecOC_RxRtData[1u];
static uint16 SecOC_TxEvent[4u];
static SecOC_TxPduRTType SecOC_TxRtData[4u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 









 
 
 void
SecOC_Init(const SecOC_ConfigType * config)
{
    if (((void *)0) == config)
    {
        SECOC_DET_REPORT(0x01u, 0x01u);
    }
    else
    {
        uint16 index;

         
        SecOC_ConfigPtr = config;

        for (index = 0; index < 4u; index++)
        {
            SecOC_TxChannelReset(index);
        }

        for (index = 0; index < 1u; index++)
        {
            SecOC_RxChannelReset(index);
            SecOC_RxRtData[index].rxOverrideStatus = SECOC_OVERRIDE_CANCEL;
            SecOC_RxRtData[index].rxNumOfMsgToOverride = 0u;
            SecOC_RxRtData[index].rxBakNumOfMsgToOverride = 0u;
        }

         
        SecOC_InitStatus = SECOC_INIT;
    }
}

 











 
 
 void SecOC_DeInit(void)
{
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x05u, 0x02u);
    }
    else
    {
        uint16 index;

        for (index = 0; index < 4u; index++)
        {
            SecOC_TxChannelReset(index);
        }

        for (index = 0; index < 1u; index++)
        {
            SecOC_RxChannelReset(index);
            SecOC_RxRtData[index].rxOverrideStatus = SECOC_OVERRIDE_CANCEL;
            SecOC_RxRtData[index].rxNumOfMsgToOverride = 0u;
            SecOC_RxRtData[index].rxBakNumOfMsgToOverride = 0u;
        }

         
        SecOC_InitStatus = SECOC_UNINIT;
    }
}

 










 
 
 void
SecOC_GetVersionInfo(

    Std_VersionInfoType * versioninfo

)
{
    if (versioninfo == ((void *)0))
    {
        SECOC_DET_REPORT(0x02u, 0x01u);
    }
    else
    {
        versioninfo->vendorID = 62u;
        versioninfo->moduleID = 150u;
        versioninfo->sw_major_version = 2;
        versioninfo->sw_minor_version = 1;
        versioninfo->sw_patch_version = 13;
    }
}

 












 
 
 Std_ReturnType
SecOC_IfTransmit(PduIdType TxPduId, const PduInfoType * PduInfoPtr)
{
    Std_ReturnType result = 1U;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x49u, 0x02u);
        detNoErr = 0u;
    }
     
    if (TxPduId >= 4u)
    {
        SECOC_DET_REPORT(0x49u, 0x03u);
        detNoErr = 0u;
    }
     
    if (PduInfoPtr == ((void *)0))
    {
        SECOC_DET_REPORT(0x49u, 0x01u);
        detNoErr = 0u;
    }
    if (1u == detNoErr)
    {
        const SecOC_TxPduProcessingType *
        txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(TxPduId);
        const SecOC_SameBufferPduCollectionType *
        sameBufferPtr = txPduProcessingPtr->SecOCSameBufferPduRef;

         
        if ((((void *)0) == sameBufferPtr) && (txPduProcessingPtr->SecOCAuthenticPduBuffLength >= PduInfoPtr->SduLength))
        {
            (void)ILib_memcpy(
                txPduProcessingPtr->SecOCAuthenticPduBufferRef,
                PduInfoPtr->SduDataPtr,
                PduInfoPtr->SduLength);
            result = 0U;
        }
        else if (
            (((void *)0) != sameBufferPtr) && (0u == sameBufferPtr->SecOCSameBufferInUse[0u])
            && (sameBufferPtr->SecOCAuthenticPduBuffLength >= PduInfoPtr->SduLength))
        {
            (void)ILib_memcpy(sameBufferPtr->SecOCAuthenticPduBufferRef, PduInfoPtr->SduDataPtr, PduInfoPtr->SduLength);
            sameBufferPtr->SecOCSameBufferInUse[0u] = 1u;

            result = 0U;
        }
        else
        {
            result = 1U;
        }

        if (0U == result)
        {
            SchM_Enter_SecOC_TxData();
            SecOC_TxRtData[TxPduId].txPduStatus = SECOC_TX_CALC;
            SECOC_SET_TX_EVENT(TxPduId, 0x0001u | 0x0002u);
            SecOC_TxRtData[TxPduId].txPduLength = PduInfoPtr->SduLength;
             
            SecOC_TxRtData[TxPduId].txAuthBuildCnt = 0u;
            SchM_Exit_SecOC_TxData();
        }
    }
    return result;
}

 












 
 
 Std_ReturnType
SecOC_TpTransmit(PduIdType TxPduId, const PduInfoType * PduInfoPtr)
{
    Std_ReturnType result = 0U;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x49u, 0x02u);
        detNoErr = 0u;
    }
     
    if (!((TxPduId >= 4u) && (TxPduId < 4u)))
    {
        SECOC_DET_REPORT(0x49u, 0x03u);
        detNoErr = 0u;
    }
     
    if (PduInfoPtr == ((void *)0))
    {
        SECOC_DET_REPORT(0x49u, 0x01u);
        detNoErr = 0u;
    }
    if (1u == detNoErr)
    {
        (void)(TxPduId);
        (void)(PduInfoPtr);
    }
    return result;
}

 













 
 
 Std_ReturnType
SecOC_IfCancelTransmit(PduIdType TxPduId)
{
    Std_ReturnType result = 1U;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x4au, 0x02u);
        detNoErr = 0u;
    }
     
    if (TxPduId >= 4u)
    {
        SECOC_DET_REPORT(0x4au, 0x03u);
        detNoErr = 0u;
    }

    if (1u == detNoErr)
    {
        const SecOC_TxSecuredPduType *
        txSecuredPduPtr = SecOC_GetTxSecuredPduPtr(TxPduId);
        const SecOC_TxAuthenticPduType *
        txAuthenticPduPtr;
        const SecOC_TxCryptographicPduType *
        txCryptographicPduPtr;
        Std_ReturnType result2 = 0U;

        if (((void *)0) != txSecuredPduPtr)
        {
            result = PduR_CancelTransmit(txSecuredPduPtr->SecOCTxPduRAsLowerLayerId);
        }
        else
        {
            txAuthenticPduPtr = SecOC_GetTxAuthenticPduPtr(TxPduId);
            txCryptographicPduPtr = SecOC_GetTxCryptographicPduPtr(TxPduId);
            result = PduR_CancelTransmit(txAuthenticPduPtr->SecOCTxPduRAsLowerLayerId);
            result2 = PduR_CancelTransmit(txCryptographicPduPtr->SecOCTxPduRAsLowerLayerId);
        }

        if ((0U == result) && (0U == result2))
        {
            SecOC_TxChannelReset(TxPduId);
        }
        else
        {
             
        }
    }

    return result;
}

 













 
 
 Std_ReturnType
SecOC_TpCancelTransmit(PduIdType TxPduId)
{
    Std_ReturnType result = 1U;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x4au, 0x02u);
        detNoErr = 0u;
    }
     
    if ((TxPduId < 4u) || (TxPduId >= 4u))
    {
        SECOC_DET_REPORT(0x4au, 0x03u);
        detNoErr = 0u;
    }

    if (1u == detNoErr)
    {
        (void)(TxPduId);
    }

    return result;
}

 













 
 
 Std_ReturnType
SecOC_TpCancelReceive(PduIdType RxPduId)
{
    Std_ReturnType result = 1U;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x4cu, 0x02u);
        detNoErr = 0u;
    }
     
    if ((RxPduId < 1u) || (RxPduId >= 1u))
    {
        SECOC_DET_REPORT(0x4cu, 0x03u);
        detNoErr = 0u;
    }

    if (1u == detNoErr)
    {
        (void)(RxPduId);
    }

    return result;
}

 

























 
 
 Std_ReturnType
SecOC_VerifyStatusOverride(uint16 ValueID, SecOC_OverrideStatusType overrideStatus, uint8 numberOfMessagesToOverride)
{
    Std_ReturnType ret = 1U;

    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x0bu, 0x02u);
    }
    else
    {
        const SecOC_RxPduProcessingType *
        rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(0u);
        SecOC_RxPduRTType *
        rxRtPtr = &SecOC_RxRtData[0u];
        uint16 index;
        SchM_Enter_SecOC_RxData();
        for (index = 0u; index < 1u; index++)
        {
            if (rxPduProcessingPtr->SecOCFreshnessValueId == ValueID)
            {
                if (((SECOC_OVERRIDE_DROP_UNTIL_NOTICE == overrideStatus)
                     || (SECOC_OVERRIDE_DROP_UNTIL_LIMIT == overrideStatus)
                     || (SECOC_OVERRIDE_CANCEL == overrideStatus))
                    || (1U == 0U))
                {
                    rxRtPtr->rxOverrideStatus = overrideStatus;
                    rxRtPtr->rxNumOfMsgToOverride = numberOfMessagesToOverride;
                    ret = 0U;
                }
            }
               
            rxPduProcessingPtr++;
            rxRtPtr++;
               
        }
        SchM_Exit_SecOC_RxData();
    }

    return ret;
}

 


















 
 
 Std_ReturnType
SecOC_SendDefaultAuthenticationInformation(uint16 FreshnessValueID, boolean sendDefaultAuthenticationInformation)
{
    Std_ReturnType ret = 1U;

    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x04u, 0x02u);
    }
    else
    {
        const SecOC_TxPduProcessingType *
        txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(0u);
        SchM_Enter_SecOC_TxData();
        SecOC_TxPduRTType *
        txRtPtr = &SecOC_TxRtData[0u];
        uint16 index;

        for (index = 0u; index < 4u; index++)
        {
            if (txPduProcessingPtr->SecOCFreshnessValueId == FreshnessValueID)
            {
                txRtPtr->txDefaultAuthInfoEnable = sendDefaultAuthenticationInformation;
                ret = 0U;
            }
               
            txPduProcessingPtr++;
            txRtPtr++;
               
        }
        SchM_Exit_SecOC_TxData();
    }

    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 













 
 
 void
SecOC_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{
    boolean detNoErr = 1u;
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x42u, 0x02u);
        detNoErr = 0u;
    }
    if (RxPduId >= 1u)
    {
        SECOC_DET_REPORT(0x42u, 0x03u);
        detNoErr = 0u;
    }
    if ((((void *)0) == PduInfoPtr) || (((void *)0) == PduInfoPtr->SduDataPtr))
    {
        SECOC_DET_REPORT(0x42u, 0x01u);
        detNoErr = 0u;
    }
    if (1u == detNoErr)
    {
        const SecOC_RxSecuredPduType * rxSecuredPduPtr;
        const SecOC_RxAuthenticPduType *
        rxAuthenticPduPtr;
        const SecOC_RxCryptographicPduType *
        rxCryptographicPduPtr;
        uint16 index;
        boolean rxPduTag = 0u;

        for (index = 0u; index < 1u; index++)
        {
            rxSecuredPduPtr = SecOC_GetRxSecuredPduPtr(index);
            if (((void *)0) != rxSecuredPduPtr)
            {
                if (rxSecuredPduPtr->SecOCRxSecuredLayerPduId == RxPduId)
                {
                    SecOC_RxIfSecuredPduIndication(index, RxPduId, PduInfoPtr);
                    rxPduTag = 1u;
                }
            }
            else
            {
                rxAuthenticPduPtr = SecOC_GetRxAuthenticPduPtr(index);
                if (rxAuthenticPduPtr->SecOCRxAuthenticPduId == RxPduId)
                {
                    SecOC_RxIfAuthenticPduIndication(index, PduInfoPtr);
                    rxPduTag = 1u;
                }

                rxCryptographicPduPtr = SecOC_GetRxCryptographicPduPtr(index);
                if (rxCryptographicPduPtr->SecOCRxCryptographicPduId == RxPduId)
                {
                    SecOC_RxIfCryptographicPduIndication(index, PduInfoPtr);
                    rxPduTag = 1u;
                }
            }
            if (1u == rxPduTag)
            {
                break;
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 











 
 
 void
SecOC_TpRxIndication(PduIdType id, Std_ReturnType result)
{
    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x45u, 0x02u);
        detNoErr = 0u;
    }
     
    if ((id >= 1u) || (id < 1u))
    {
        SECOC_DET_REPORT(0x45u, 0x03u);
        detNoErr = 0u;
    }

    if (detNoErr == 1u)
    {
        (void)(id);
        (void)(result);
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 










 
 
 void
SecOC_TxConfirmation(PduIdType TxPduId)
{

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x40u, 0x02u);
        detNoErr = 0u;
    }
     
    if (TxPduId >= 4u)
    {
        SECOC_DET_REPORT(0x40u, 0x03u);
        detNoErr = 0u;
    }
    if (1u == detNoErr)
    {
        const SecOC_TxPduProcessingType *
        txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(0u);
        const SecOC_TxSecuredPduType * txSecuredPduPtr;
        const SecOC_TxAuthenticPduType *
        txAuthenticPduPtr;
        const SecOC_TxCryptographicPduType *
        txCryptographicPduPtr;
        SecOC_TxPduRTType * txRtPtr;
        PduIdType upLayerPduId;
        uint16 index;
        boolean txPduTag = 0u;
        SchM_Enter_SecOC_TxData();
        for (index = 0u; index < 4u; index++)
        {
            txSecuredPduPtr = SecOC_GetTxSecuredPduPtr(index);
            if (((void *)0) != txSecuredPduPtr)
            {
                if (txSecuredPduPtr->SecOCTxSecuredLayerPduId == TxPduId)
                {
                    txPduTag = 1u;
                }
            }
            else
            {
                txAuthenticPduPtr = SecOC_GetTxAuthenticPduPtr(index);
                if (txAuthenticPduPtr->SecOCTxAuthenticPduId == TxPduId)
                {
                    SECOC_SET_TX_EVENT(index, 0x0004u);
                    txPduTag = 1u;
                }

                txCryptographicPduPtr = SecOC_GetTxCryptographicPduPtr(index);
                if (txCryptographicPduPtr->SecOCTxCryptographicPduId == TxPduId)
                {
                    SECOC_SET_TX_EVENT(index, 0x0008u);
                    txPduTag = 1u;
                }
            }
            if (1u == txPduTag)
            {
                break;
            }

            txPduProcessingPtr++;    
        }

        if (index < 4u)
        {
             
            upLayerPduId = txPduProcessingPtr->SecOCTxAuthenticPduLayer->SecOCTxPduRAsUpLayerId;
            if ((((void *)0) != txSecuredPduPtr)
                || (SECOC_IS_TX_EVENT(index, 0x0004u)
                    && SECOC_IS_TX_EVENT(index, 0x0008u)))
            {
                PduR_IfTxConfirmation(upLayerPduId);
            }

             
             
            txRtPtr = &SecOC_TxRtData[index];
            txRtPtr->txPduReady = 0u;
            if (((void *)0) != txPduProcessingPtr->SecOCSameBufferPduRef)
            {
                *(txPduProcessingPtr->SecOCSameBufferPduRef->SecOCSameBufferInUse) = 0u;
            }

             
            txRtPtr->txPduStatus = SECOC_TX_NONE;
            txRtPtr->txAuthBuildCnt = 0u;
             
            SECOC_CLR_TX_EVENT(index, 0x00FFu);
        }
        SchM_Exit_SecOC_TxData();
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 












 
 
 void
SecOC_TpTxConfirmation(PduIdType id, Std_ReturnType result)
{
    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x48u, 0x02u);
        detNoErr = 0u;
    }
     
    if ((id >= 4u) || (id < 4u))
    {
        SECOC_DET_REPORT(0x48u, 0x03u);
        detNoErr = 0u;
    }
    if (detNoErr == 1u)
    {
        (void)(id);
        (void)(result);
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 























 
 
   
 Std_ReturnType
SecOC_TriggerTransmit(PduIdType TxPduId, PduInfoType * PduInfoPtr)
{
    Std_ReturnType result = 1U;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x41u, 0x02u);
        detNoErr = 0u;
    }
     
    if (TxPduId >= 4u)
    {
        SECOC_DET_REPORT(0x41u, 0x03u);
        detNoErr = 0u;
    }
     
    if ((((void *)0) == PduInfoPtr) || (((void *)0) == PduInfoPtr->SduDataPtr))
    {
        SECOC_DET_REPORT(0x41u, 0x01u);
        detNoErr = 0u;
    }
    if (1u == detNoErr)
    {
        const SecOC_TxPduProcessingType *
        txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(0u);
        const SecOC_TxSecuredPduType * txSecuredPduPtr;
        const SecOC_TxAuthenticPduType *
        txAuthenticPduPtr;
        const SecOC_TxCryptographicPduType *
        txCryptographicPduPtr;
        const SecOC_UseMessageLinkType *
        txUseMessageLinkPtr;
        const SecOC_TxPduRTType *
        txRtPtr = &SecOC_TxRtData[0u];
        const uint8 * srcPtr;
        uint16 index;
        uint16 securedPduLength;
        uint16 authInfoTxLength;
        uint16 msgLinkLen = 0u;
        uint8 fvTruncLenInBits;
        uint8 headerLenInBytes;
        boolean txSecuredPduFlag = 0u;
        boolean txAuthenticPduFlag = 0u;
        boolean txCryptographicPduFlag;
        boolean txPduTag = 0u;

        for (index = 0u; index < 4u; index++)
        {
            txSecuredPduPtr = SecOC_GetTxSecuredPduPtr(index);
            if (((void *)0) != txSecuredPduPtr)
            {
                if (txSecuredPduPtr->SecOCTxSecuredLayerPduId == TxPduId)
                {
                    txSecuredPduFlag = 1u;
                    txPduTag = 1u;
                }
            }
            else
            {
                txAuthenticPduPtr = SecOC_GetTxAuthenticPduPtr(index);
                if (txAuthenticPduPtr->SecOCTxAuthenticPduId == TxPduId)
                {
                    txAuthenticPduFlag = 1u;
                    txPduTag = 1u;
                }

                txCryptographicPduPtr = SecOC_GetTxCryptographicPduPtr(index);
                if (txCryptographicPduPtr->SecOCTxCryptographicPduId == TxPduId)
                {
                    txCryptographicPduFlag = 1u;
                    txPduTag = 1u;
                }
            }
            if (1u == txPduTag)
            {
                break;
            }
               
            txRtPtr++;
            txPduProcessingPtr++;
             
        }

        if ((index < 4u) && (1u == txRtPtr->txPduReady))
        {
             
            authInfoTxLength = txPduProcessingPtr->SecOCAuthInfoTruncLength;
            fvTruncLenInBits = txPduProcessingPtr->SecOCFreshnessValueTruncLength;
            if (1u == txSecuredPduFlag)
            {
                headerLenInBytes = txSecuredPduPtr->SecOCAuthPduHeaderLength;
                SchM_Enter_SecOC_TxData();
                securedPduLength =
                    headerLenInBytes + txRtPtr->txPduLength + SECOC_BIT_TO_BYTE(authInfoTxLength + fvTruncLenInBits);
                SchM_Exit_SecOC_TxData();
                if (((void *)0) != txPduProcessingPtr->SecOCSameBufferPduRef)
                {
                    srcPtr = txPduProcessingPtr->SecOCSameBufferPduRef->SecOCSecuredPduBufferRef;
                }
                else
                {
                    srcPtr = txSecuredPduPtr->SecOCTxSecuredPduBufferRef;
                }
            }
            else if (1u == txAuthenticPduFlag)
            {
                headerLenInBytes = txAuthenticPduPtr->SecOCAuthPduHeaderLength;
                SchM_Enter_SecOC_TxData();
                securedPduLength = headerLenInBytes + txRtPtr->txPduLength;
                SchM_Exit_SecOC_TxData();
                if (((void *)0) != txPduProcessingPtr->SecOCSameBufferPduRef)
                {
                    srcPtr = txPduProcessingPtr->SecOCSameBufferPduRef->SecOCAuthenticPduBufferRef;
                }
                else
                {
                    srcPtr = txAuthenticPduPtr->SecOCTxColAuthenticPduBufferRef;
                }
            }
            else if (1u == txCryptographicPduFlag)    
            {
                txUseMessageLinkPtr = SecOC_GetTxUseMessageLinkPtr(index);
                if (((void *)0) != txUseMessageLinkPtr)
                {
                    msgLinkLen = txUseMessageLinkPtr->SecOCMessageLinkLen;
                }
                securedPduLength = SECOC_BIT_TO_BYTE((uint16)fvTruncLenInBits + authInfoTxLength + msgLinkLen);
                if (((void *)0) != txPduProcessingPtr->SecOCSameBufferPduRef)
                {
                    srcPtr = txPduProcessingPtr->SecOCSameBufferPduRef->SecOCCryptographicPduBufferRef;
                }
                else
                {
                    srcPtr = txCryptographicPduPtr->SecOCTxCryptographicPduBufferRef;
                }
            }
            else
            {
                 
            }

            if (PduInfoPtr->SduLength >= securedPduLength)
            {
                 
                 
                (void)ILib_memcpy(PduInfoPtr->SduDataPtr, srcPtr, securedPduLength);
                PduInfoPtr->SduLength = securedPduLength;

                result = 0U;
            }
            else
            {
                result = 1U;
            }
        }
        else
        {
             
             
            result = 1U;
        }
    }

    return result;
}    












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 





















 
 
 BufReq_ReturnType
SecOC_CopyRxData(
    PduIdType id,
    const PduInfoType * info,
       
    PduLengthType * bufferSizePtr
       
)
{
    BufReq_ReturnType result = BUFREQ_E_NOT_OK;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x44u, 0x02u);
        detNoErr = 0u;
    }
     
    if ((id >= 1u) || (id < 1u))
    {
        SECOC_DET_REPORT(0x44u, 0x03u);
        detNoErr = 0u;
    }
     
    if ((((void *)0) == info) || (((void *)0) == bufferSizePtr))
    {
        SECOC_DET_REPORT(0x44u, 0x01u);
        detNoErr = 0u;
    }

    if (detNoErr == 1u)
    {
        (void)(id);
        (void)(info);
        (void)(bufferSizePtr);
    }

    return result;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 

























 
 
 BufReq_ReturnType
SecOC_CopyTxData(
    PduIdType id,
    const PduInfoType * info,
    const RetryInfoType * retry,
       
    PduLengthType * availableDataPtr
       
)
{
    BufReq_ReturnType bufferReqStatus = BUFREQ_E_NOT_OK;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x43u, 0x02u);
        detNoErr = 0u;
    }
     
    if ((id >= 4u) || (id < 4u))
    {
        SECOC_DET_REPORT(0x43u, 0x03u);
        detNoErr = 0u;
    }
     
    if ((((void *)0) == info) || (((void *)0) == availableDataPtr))
    {
        SECOC_DET_REPORT(0x43u, 0x01u);
        detNoErr = 0u;
    }
    if (detNoErr == 1u)
    {
        (void)(id);
        (void)(info);
        (void)(retry);
        (void)(availableDataPtr);
    }
    return bufferReqStatus;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 


























 
 
 BufReq_ReturnType
SecOC_StartOfReception(
    PduIdType id,
    const PduInfoType * info,
    PduLengthType TpSduLength,
       
    PduLengthType * bufferSizePtr
       
)
{
    BufReq_ReturnType bufReqRet = BUFREQ_E_NOT_OK;

    boolean detNoErr = 1u;
     
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x46u, 0x02u);
        detNoErr = 0u;
    }
     
    if ((id >= 1u) || (id < 1u))
    {
        SECOC_DET_REPORT(0x46u, 0x03u);
        detNoErr = 0u;
    }
     
    if (((void *)0) == bufferSizePtr)
    {
        SECOC_DET_REPORT(0x46u, 0x01u);
        detNoErr = 0u;
    }

    if (detNoErr == 1u)
    {
        (void)(id);
        (void)(info);
        (void)(TpSduLength);
        (void)(bufferSizePtr);
    }

    return bufReqRet;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 
   
   

























 




 



 

 
 
   #pragma section





 

 
   
 











 
 
 void
SecOC_CsmGenerateJobFinishedIndication(
    const Crypto_JobType * job,
    Crypto_ResultType result)
{
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x51u, 0x02u);
    }
    else
    {
        const SecOC_TxPduProcessingType *
        txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(0u);
        uint16 index;

        for (index = 0u; index < 4u; index++)
        {
            if (txPduProcessingPtr->SecOCTxAuthServiceConfigRef->SecOCJobId == job->jobId)
            {
                if (0U == result)
                {
                    if (SECOC_IS_TX_EVENT(index, 0x0010u))
                    {
                        SECOC_SET_TX_EVENT(index, 0x0020u);
                    }
                }
                else if (((Std_ReturnType)0x02u) == result)
                {
                     
                     
                    SecOC_TxGenerateAuthenticatorRetry(index);
                }
                else
                {
                     
                    SecOC_TxBuildAuthenticatorFailHandle(index);
                }
                break;
            }
            txPduProcessingPtr++;    
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 
   
   

























 




 



 

 
 
   #pragma section





 

 
   
 











 
 
 void
SecOC_CsmVerifyJobFinishedIndication(const Crypto_JobType * job, Crypto_ResultType result)
{
    if (SecOC_InitStatus == SECOC_UNINIT)
    {
        SECOC_DET_REPORT(0x51u, 0x02u);
    }
    else
    {
        const SecOC_RxPduProcessingType *
        rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(0u);
        SecOC_RxPduRTType *
        rxRtPtr = &SecOC_RxRtData[0u];
        uint16 index;

        for (index = 0u; index < 1u; index++)
        {
            if (rxPduProcessingPtr->SecOCRxAuthServiceConfigRef->SecOCJobId == job->jobId)
            {
                if (0U == result)
                {
                    SchM_Enter_SecOC_RxData();
                    if (SECOC_IS_RX_EVENT(index, 0x0020u))
                    {
                        SECOC_SET_RX_EVENT(index, 0x0040u);
                    }

                     
                    
 
                    rxRtPtr->rxAuthBuildAttempts = 0u;
                    SchM_Exit_SecOC_RxData();
                }
                else if (((Std_ReturnType)0x02u) == result)
                {
                     
                     
                    SecOC_RxAuthenticationBuildRetry(index);
                }
                else
                {
                     
                     
                    if ((SECOC_OVERRIDE_PASS_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
                        || ((SECOC_OVERRIDE_PASS_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                            && (rxRtPtr->rxBakNumOfMsgToOverride > 0u)))
                    {
                        SchM_Enter_SecOC_RxData();
                         
                        SECOC_SET_RX_EVENT(index, 0x0040u);
                        SchM_Exit_SecOC_RxData();
                    }
                    else
                    {
                        rxRtPtr->rxVeryfyResult = SECOC_VERIFICATIONFAILURE;
                         
                        SecOC_RxReportVerifyStatus(index);

                         
                        SecOC_RxChannelReset(index);
                    }
                }
                break;
            }
               
            rxRtPtr++;
            rxPduProcessingPtr++;
               
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 











 
 
 void SecOC_MainFunctionRx(void)
{
    uint16 index;

    if (SECOC_INIT == SecOC_InitStatus)
    {
        for (index = 0u; index < 1u; index++)
        {
            if (SECOC_RX_NONE == SecOC_RxRtData[index].rxPduStatus)
            {
                SecOC_RxLoadQueuedPdu(index);
            }

            if (SECOC_RX_NONE != SecOC_RxRtData[index].rxPduStatus)
            {
                switch (SecOC_RxRtData[index].rxPduStatus)
                {
                case SECOC_RX_CALC:
                case SECOC_RX_RETRY:
                     
                    SecOC_RxParseSecuredIpdu(index);
                    SecOC_RxVerifyProcee(index);
                    SecOC_RxPassAuthenticPduToUpperLayer(index);
                    break;

                default:
                     
                    break;
                }
            }
        }
    }
}

 











 
 

 void SecOC_MainFunctionTx(void)
{
    uint16 index;

    if (SECOC_INIT == SecOC_InitStatus)
    {
         
         
        for (index = 0u; index < 4u; index++)
        {
            if (SECOC_TX_NONE != SecOC_TxRtData[index].txPduStatus)
            {
                switch (SecOC_TxRtData[index].txPduStatus)
                {
                case SECOC_TX_CALC:
                case SECOC_TX_RETRY:
                    
 
                    SecOC_TxGenerateAuthenticator(index);
                    
 
                    SecOC_TxSendSecuredIPDU(index);
                    break;

                default:
                     
                    break;
                }
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   


 










 
 
static  void SECOC_SET_TX_EVENT(uint16 i, uint16 e)
{
    (SecOC_TxEvent[i] |= (e));
}

 










 
 
static  void SECOC_CLR_TX_EVENT(uint16 i, uint16 e)
{
    (SecOC_TxEvent[i] &= ~(e));
}

 










 
 
static  boolean SECOC_IS_TX_EVENT(uint16 i, uint16 e)
{
    return ((SecOC_TxEvent[i] & (e)) != 0u) ? 1u : 0u;
}

 










 
 
static const SecOC_TxPduProcessingType * SecOC_GetTxPduProcessingPtr(uint16 idx)
{
    return (&SecOC_ConfigPtr->SecOCTxPduProcessing[idx]);
}

 










 
 
static const SecOC_TxAuthenticPduLayerType * SecOC_GetTxAuthenticPduLayerPtr(uint16 idx)
{
    return (SecOC_GetTxPduProcessingPtr(idx)->SecOCTxAuthenticPduLayer);
}

 










 
 
static const SecOC_TxSecuredPduLayerType * SecOC_GetTxSecuredPduLayerPtr(uint16 idx)
{
    return (SecOC_GetTxPduProcessingPtr(idx)->SecOCTxSecuredPduLayer);
}

 









 
 
static const SecOC_TxSecuredPduType * SecOC_GetTxSecuredPduPtr(uint16 idx)
{
    return (SecOC_GetTxSecuredPduLayerPtr(idx)->SecOCTxSecuredPdu);
}

 









 
 
static const SecOC_TxSecuredPduCollectionType * SecOC_GetTxSecuredPduCollectionPtr(uint16 idx)
{
    return (SecOC_GetTxSecuredPduLayerPtr(idx)->SecOCTxSecuredPduCollection);
}

 









 
 
static const SecOC_TxAuthenticPduType * SecOC_GetTxAuthenticPduPtr(uint16 idx)
{
    return (SecOC_GetTxSecuredPduCollectionPtr(idx)->SecOCTxAuthenticPdu);
}

 










 
 
static const SecOC_TxCryptographicPduType * SecOC_GetTxCryptographicPduPtr(uint16 idx)
{
    return (SecOC_GetTxSecuredPduCollectionPtr(idx)->SecOCTxCryptographicPdu);
}

 










 
 
static const SecOC_UseMessageLinkType * SecOC_GetTxUseMessageLinkPtr(uint16 idx)
{
    return (SecOC_GetTxSecuredPduCollectionPtr(idx)->SecOCUseMessageLink);
}

 









 
 
static  void SecOC_TxGenerateAuthenticator(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_CsmJobType *
    jobPtr = txPduProcessingPtr->SecOCTxAuthServiceConfigRef;
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    uint32 dataLength;
    Std_ReturnType ret;
    boolean retryFlag = 0u;
    boolean failFlag = 0u;

    if ((1u == SECOC_IS_TX_EVENT(index, 0x0001u))
        && (1u == SECOC_IS_TX_EVENT(index, 0x0002u)))
    {
        dataLength = SecOC_TxCalcDataToAuthenticatorLength(index);
        ret = SecOC_TxConstructDataToAuthenticator(index);
        txRtPtr->txResultLength = (16u + 1u);
        if (0U == ret)
        {
             
            switch (jobPtr->SecOCCsmPrimitives)
            {
            case SECOC_CSMMAC:
                ret = Csm_MacGenerate(
                    jobPtr->SecOCJobId,
                    CRYPTO_OPERATIONMODE_SINGLECALL,
                    &SecOC_DataToAuthenticator[0u],
                    dataLength,
                    &txRtPtr->txResultBuffer[0u],
                    &txRtPtr->txResultLength);
                break;


            default:
                ret = 1U;
                break;
            }

            if (0U == ret)
            {
                SchM_Enter_SecOC_TxData();
                SECOC_CLR_TX_EVENT(index, 0x0001u | 0x0002u);
                if (SECOC_CRYPTO_PROCESSING_SYNC == jobPtr->SecOCCryptoProcessingType)
                {
                    SECOC_SET_TX_EVENT(index, 0x0020u);
                }
                else
                {
                    SECOC_SET_TX_EVENT(index, 0x0010u);
                }
                SchM_Exit_SecOC_TxData();
            }
            else if (((Std_ReturnType)0x02u) == ret)
            {
                 
                retryFlag = 1u;
            }
            else
            {
                 
                failFlag = 1u;
            }
        }
        else if (2U == ret)
        {
             
            retryFlag = 1u;
        }
        else
        {
             
            failFlag = 1u;
        }

        if (1u == retryFlag)
        {
             
            SecOC_TxGenerateAuthenticatorRetry(index);
        }

        if (1u == failFlag)
        {
             
            SecOC_TxBuildAuthenticatorFailHandle(index);
        }
    }
}

 









 
 
static  uint32 SecOC_TxCalcDataToAuthenticatorLength(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    const SecOC_TxPduSecuredAreaType *
    SecOCTxPduSecuredArea = txPduProcessingPtr->SecOCTxPduSecuredArea;
    uint32 dataLength = 2u;

    if (((void *)0) != SecOCTxPduSecuredArea)
    {
         
        dataLength = dataLength + SecOCTxPduSecuredArea->SecOCSecuredTxPduLength;
    }
    else
    {
        SchM_Enter_SecOC_TxData();
         
        dataLength = dataLength + txRtPtr->txPduLength;
        SchM_Exit_SecOC_TxData();
    }

    dataLength += SECOC_BIT_TO_BYTE((uint16)txPduProcessingPtr->SecOCFreshnessValueLength);

    return dataLength;
}

 









 
 
static  Std_ReturnType SecOC_TxConstructDataToAuthenticator(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    const uint8 * authenticPduPtr;
    const SecOC_TxPduSecuredAreaType *
    SecOCTxPduSecuredArea = txPduProcessingPtr->SecOCTxPduSecuredArea;
    SecOC_FreshnessArrayType truncatedFreshnessValue;
    uint32 securedIPDULength;
    uint32 securedIPDUOffset;
    uint32 freshnessValueLen;
    uint32 freshnessValueTruncLen;
    uint16 dataId;
    Std_ReturnType ret;

    SchM_Enter_SecOC_Authentication();

    (void)ILib_memset(SecOC_DataToAuthenticator, 0, 58u);

     
    


 

     
    dataId = txPduProcessingPtr->SecOCDataId;

    SecOC_EndianSwap((uint8*)&dataId, sizeof(dataId));
    (void)ILib_memcpy(&SecOC_DataToAuthenticator[0u], (uint8*)&dataId, 2u);

     
    if (((void *)0) == txPduProcessingPtr->SecOCSameBufferPduRef)
    {
        authenticPduPtr = txPduProcessingPtr->SecOCAuthenticPduBufferRef;
    }
    else
    {
        authenticPduPtr = txPduProcessingPtr->SecOCSameBufferPduRef->SecOCAuthenticPduBufferRef;
    }

    if (((void *)0) != SecOCTxPduSecuredArea)
    {
         
        securedIPDULength = SecOCTxPduSecuredArea->SecOCSecuredTxPduLength;
        securedIPDUOffset = SecOCTxPduSecuredArea->SecOCSecuredTxPduOffset;
    }
    else
    {
         
        securedIPDULength = txRtPtr->txPduLength;
        securedIPDUOffset = 0u;
    }

    (void)ILib_memcpy(
        &SecOC_DataToAuthenticator[2u],
        &authenticPduPtr[securedIPDUOffset],
        securedIPDULength);

     
    freshnessValueLen = txPduProcessingPtr->SecOCFreshnessValueLength;
    freshnessValueTruncLen = txPduProcessingPtr->SecOCFreshnessValueTruncLength;
    SchM_Exit_SecOC_Authentication();
    if (1u == txPduProcessingPtr->SecOCProvideTxTruncatedFreshnessValue)
    {
         
        ret = SecOC_GetTxFreshnessTruncData(
            txPduProcessingPtr->SecOCFreshnessValueId,
            txRtPtr->txFreshnessValue,
            &freshnessValueLen,
            truncatedFreshnessValue,
            &freshnessValueTruncLen);
    }
    else
    {
         
        ret = SecOC_GetTxFreshness(
            txPduProcessingPtr->SecOCFreshnessValueId,
            txRtPtr->txFreshnessValue,
            &freshnessValueLen);
    }
    SchM_Enter_SecOC_Authentication();
    if (0U == ret)
    {
        freshnessValueLen = SECOC_BIT_TO_BYTE((uint16)txPduProcessingPtr->SecOCFreshnessValueLength);
        (void)ILib_memcpy(
            &SecOC_DataToAuthenticator[2u + securedIPDULength],
            txRtPtr->txFreshnessValue,
            freshnessValueLen);
    }
    SchM_Exit_SecOC_Authentication();

    return ret;
}

 









 
 
static  void SecOC_TxGenerateAuthenticatorRetry(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];

    if (txRtPtr->txAuthBuildCnt < txPduProcessingPtr->SecOCAuthenticationBuildAttempts)
    {
        SchM_Enter_SecOC_TxData();
         
        txRtPtr->txAuthBuildCnt++;
        txRtPtr->txPduStatus = SECOC_TX_RETRY;
        SchM_Exit_SecOC_TxData();
    }
    else
    {
         
        SecOC_TxBuildAuthenticatorFailHandle(index);

 
        SECOC_DET_REPORT(0x03u, 0x04u);
    }
}

 









 
 
static  void SecOC_TxBuildAuthenticatorFailHandle(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = txPduProcessingPtr->SecOCSameBufferPduRef;
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    boolean cancelFlag = 0u;
    const SecOC_TxAuthenticPduLayerType *
    txAuthenticPduLayerPtr = SecOC_GetTxAuthenticPduLayerPtr(index);
    PduIdType upLayerPduId = txAuthenticPduLayerPtr->SecOCTxPduRAsUpLayerId;
 
    SchM_Enter_SecOC_TxData();
    if (1u == txRtPtr->txDefaultAuthInfoEnable)
    {
        
 
        (void)ILib_memset(
            txRtPtr->txFreshnessValue,
            0x0,
            sizeof(txRtPtr->txFreshnessValue));
        (void)ILib_memset(
            txRtPtr->txResultBuffer,
            0x0,
            (16u + 1u));
        SECOC_CLR_TX_EVENT(index, 0x0001u | 0x0002u);
        SECOC_SET_TX_EVENT(index, 0x0020u);
    }
    else
    {
         
        cancelFlag = 1u;
    }
    SchM_Exit_SecOC_TxData();

    if (1u == cancelFlag)
    {
        SchM_Enter_SecOC_TxData();
         
        SECOC_CLR_TX_EVENT(index, 0x00FFu);
        txRtPtr->txPduStatus = SECOC_TX_NONE;
        txRtPtr->txAuthBuildCnt = 0u;
        SchM_Exit_SecOC_TxData();

        if (txAuthenticPduLayerPtr->SecOCPduType == SECOC_TPPDU)
        {
            PduR_TpTxConfirmation(upLayerPduId, 1U);
        }
        SchM_Enter_SecOC_TxData();
         
        txRtPtr->txPduReady = 0u;
        SchM_Exit_SecOC_TxData();
        if (((void *)0) != sameBufferPtr)
        {
            *(sameBufferPtr->SecOCSameBufferInUse) = 0u;
        }
    }
}

 









 
 
static  void SecOC_TxSendSecuredIPDU(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_TxSecuredPduType *
    txSecuredPduPtr = SecOC_GetTxSecuredPduPtr(index);
    uint16 freshnessValueId;

    if (SECOC_IS_TX_EVENT(index, 0x0020u))
    {
        SECOC_CLR_TX_EVENT(index, 0x0020u);
        if (((void *)0) != txSecuredPduPtr)
        {
             
            SecOC_TxConstructSecuredIPDU(index);
            SecOC_TxBroadcastSecuredIPDU(index);
        }
        else
        {
             
            



 

             
            SecOC_TxConstructAuthenticIPDU(index);
            SecOC_TxBroadcastAuthenticIPDU(index);

             
            SecOC_TxConstructCryptographicIPDU(index);
            SecOC_TxBroadcastCryptographicIPDU(index);
        }

         
         
        if (1u == txPduProcessingPtr->SecOCUseTxConfirmation)
        {
            freshnessValueId = txPduProcessingPtr->SecOCFreshnessValueId;
            (void)SecOC_SPduTxConfirmation(freshnessValueId);
        }
    }
}

 









 
 
uint32 SecOC_AuthInfoShiftBits_test = 0;
uint32 SecOC_authInfoTruncLenInBytes = 0;


static  void SecOC_TxConstructSecuredIPDU(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = txPduProcessingPtr->SecOCSameBufferPduRef;
    const SecOC_TxSecuredPduType *
    txSecuredPduPtr = SecOC_GetTxSecuredPduPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    uint8 * destPtr;
    const uint8 * srcPtr;
    uint32 offset = 0u;
    PduLengthType pduLength;
    uint16 authInfoTruncLenInBytes;
    uint8 fvLenInBytes;
    uint8 fvLenInBits;
    uint8 fvTruncLenInBytes;
    uint8 fvTruncLenInBits = 0u;
    uint8 authInfoShiftBits;
    uint16 fvOffsetBits = 0u;

    SchM_Enter_SecOC_TxData();
    if (((void *)0) == sameBufferPtr)
    {
        destPtr = txSecuredPduPtr->SecOCTxSecuredPduBufferRef;
        srcPtr = txPduProcessingPtr->SecOCAuthenticPduBufferRef;
        (void)ILib_memset(destPtr, 0x00, txSecuredPduPtr->SecOCTxSecuredPduBuffLength);
    }
    else
    {
        destPtr = sameBufferPtr->SecOCSecuredPduBufferRef;
        srcPtr = sameBufferPtr->SecOCAuthenticPduBufferRef;
        (void)ILib_memset(destPtr, 0x00, sameBufferPtr->SecOCSecuredPduBuffLength);
    }

     
     
    

 

     
     
    if (txSecuredPduPtr->SecOCAuthPduHeaderLength > 0u)
    {
        pduLength = txRtPtr->txPduLength;

        SecOC_EndianSwap((uint8*)&pduLength, sizeof(pduLength));
        (void)ILib_memcpy(&destPtr[offset], (uint8*)&pduLength, sizeof(pduLength));
        offset += sizeof(pduLength);
    }

     
    (void)ILib_memcpy(&destPtr[offset], srcPtr, txRtPtr->txPduLength);
    offset += txRtPtr->txPduLength;

     
     
    if (txPduProcessingPtr->SecOCFreshnessValueTruncLength > 0u)
    {
        fvLenInBits = txPduProcessingPtr->SecOCFreshnessValueLength;
        fvTruncLenInBits = txPduProcessingPtr->SecOCFreshnessValueTruncLength;
        fvLenInBytes = (uint8)SECOC_BIT_TO_BYTE(fvLenInBits);
        fvTruncLenInBytes = (uint8)SECOC_BIT_TO_BYTE(fvTruncLenInBits);
        if (0u != (SECOC_MOD_FROM_EIGHT((fvLenInBits))))
        {
            fvOffsetBits = 8u - (uint16)SECOC_MOD_FROM_EIGHT(fvLenInBits);
        }

        fvOffsetBits = ((uint16)fvLenInBits - (uint16)fvTruncLenInBits) + fvOffsetBits;

        SecOC_ArrayShiftLeft(txRtPtr->txFreshnessValue, fvLenInBytes, fvOffsetBits);
        (void)ILib_memcpy(&destPtr[offset], txRtPtr->txFreshnessValue, fvTruncLenInBytes);
        if (0u != (SECOC_MOD_FROM_EIGHT((fvTruncLenInBits))))
        {
            offset += ((uint32)fvTruncLenInBytes - 1u);
            destPtr[offset] &= (0xFFu << (8u - (SECOC_MOD_FROM_EIGHT((fvTruncLenInBits)))));
        }
        else
        {
            offset += fvTruncLenInBytes;
        }
    }

     
     
    
 
    authInfoShiftBits = SECOC_MOD_FROM_EIGHT((fvTruncLenInBits));
    authInfoTruncLenInBytes =
        SECOC_BIT_TO_BYTE(txPduProcessingPtr->SecOCAuthInfoTruncLength + (uint16)authInfoShiftBits);
     
    SecOC_AuthInfoShiftBits_test = authInfoShiftBits;
    SecOC_authInfoTruncLenInBytes = authInfoTruncLenInBytes;
	SecOC_ArrayShiftRight(&txRtPtr->txResultBuffer[0u], authInfoTruncLenInBytes, authInfoShiftBits);
    SecOC_ClearLowBit(
        &txRtPtr->txResultBuffer[0u],
        authInfoTruncLenInBytes,
        SECOC_MOD_FROM_EIGHT((txPduProcessingPtr->SecOCAuthInfoTruncLength + fvTruncLenInBits)));
    SecOC_ArrayOrOp(&destPtr[offset], &txRtPtr->txResultBuffer[0u], authInfoTruncLenInBytes);
    SchM_Exit_SecOC_TxData();
}

 









 
 
static  void SecOC_TxConstructAuthenticIPDU(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = txPduProcessingPtr->SecOCSameBufferPduRef;
    const SecOC_TxAuthenticPduType *
    txAuthenticPduPtr = SecOC_GetTxAuthenticPduPtr(index);
    const SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    uint8 * destPtr;
    const uint8 * srcPtr;
    uint32 offset = 0u;
    PduLengthType pduLength;

    SchM_Enter_SecOC_TxData();
    if (((void *)0) == sameBufferPtr)
    {
        destPtr = txAuthenticPduPtr->SecOCTxColAuthenticPduBufferRef;
        srcPtr = txPduProcessingPtr->SecOCAuthenticPduBufferRef;
        (void)ILib_memset(destPtr, 0x00, txAuthenticPduPtr->SecOCTxColAuthenticPduBuffLength);
    }
    else
    {
        destPtr = sameBufferPtr->SecOCColAuthenticPduBufferRef;
        srcPtr = sameBufferPtr->SecOCAuthenticPduBufferRef;
        (void)ILib_memset(destPtr, 0x00, sameBufferPtr->SecOCColAuthenticPduBuffLength);
    }

     
     
     
    if (txAuthenticPduPtr->SecOCAuthPduHeaderLength > 0u)
    {
        pduLength = txRtPtr->txPduLength;
        SecOC_EndianSwap((uint8*)&pduLength, sizeof(pduLength));

        (void)ILib_memcpy(&destPtr[offset], (uint8*)&pduLength, sizeof(pduLength));
        offset += sizeof(pduLength);
    }

     
    (void)ILib_memcpy(&destPtr[offset], srcPtr, txRtPtr->txPduLength);
    SchM_Exit_SecOC_TxData();
}

 









 
 
static  void SecOC_TxConstructCryptographicIPDU(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = txPduProcessingPtr->SecOCSameBufferPduRef;
    const SecOC_TxCryptographicPduType *
    txCryptographicPduPtr = SecOC_GetTxCryptographicPduPtr(index);
    const SecOC_UseMessageLinkType *
    messageLinkPtr = SecOC_GetTxUseMessageLinkPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    uint8 * destPtr;
    uint8 * srcPtr;
    uint16 offset = 0u;
    uint16 authInfoTruncLenInBytes;
    uint16 authInfoTruncLenInBits;
    uint16 msgLinkLenInBytes;
    uint16 msgLinkLenInBits;
    uint16 msgLinkPos;
    uint8 fvLenInBytes;
    uint8 fvLenInBits;
    uint8 fvTruncLenInBytes;
    uint8 fvTruncLenInBits = 0u;
    uint8 authInfoShiftBits;
    uint8 msgLinkShiftBits;

    if (((void *)0) == sameBufferPtr)
    {
        destPtr = txCryptographicPduPtr->SecOCTxCryptographicPduBufferRef;
        srcPtr = txPduProcessingPtr->SecOCAuthenticPduBufferRef;
        (void)ILib_memset(destPtr, 0x00, txCryptographicPduPtr->SecOCTxCryptographicPduBuffLength);
    }
    else
    {
        destPtr = sameBufferPtr->SecOCCryptographicPduBufferRef;
        srcPtr = sameBufferPtr->SecOCAuthenticPduBufferRef;
        (void)ILib_memset(destPtr, 0x00, sameBufferPtr->SecOCCryptographicPduBuffLength);
    }

     
     
     
    if (txPduProcessingPtr->SecOCFreshnessValueTruncLength > 0u)
    {
        uint16 fvOffsetBits = 0u;
        fvLenInBits = txPduProcessingPtr->SecOCFreshnessValueLength;
        fvTruncLenInBits = txPduProcessingPtr->SecOCFreshnessValueTruncLength;
        fvLenInBytes = (uint8)SECOC_BIT_TO_BYTE((uint16)fvLenInBits);
        fvTruncLenInBytes = (uint8)SECOC_BIT_TO_BYTE((uint16)fvTruncLenInBits);

        if (0u != (SECOC_MOD_FROM_EIGHT((fvLenInBits))))
        {
            fvOffsetBits = 8u - (uint16)SECOC_MOD_FROM_EIGHT(fvLenInBits);
        }

        fvOffsetBits = ((uint16)fvLenInBits - (uint16)fvTruncLenInBits) + fvOffsetBits;

        SchM_Enter_SecOC_TxData();
        SecOC_ArrayShiftLeft(txRtPtr->txFreshnessValue, fvLenInBytes, fvOffsetBits);
        (void)ILib_memcpy(&destPtr[offset], txRtPtr->txFreshnessValue, fvTruncLenInBytes);
        SchM_Exit_SecOC_TxData();
        if (0u != (SECOC_MOD_FROM_EIGHT((fvTruncLenInBits))))
        {
            offset = ((uint16)fvTruncLenInBytes - 1u);
            destPtr[offset] &= (0xFFu << (8u - (SECOC_MOD_FROM_EIGHT((fvTruncLenInBits)))));
        }
        else
        {
            offset = fvTruncLenInBytes;
        }
    }
    SchM_Enter_SecOC_TxData();
     
    authInfoShiftBits = SECOC_MOD_FROM_EIGHT((fvTruncLenInBits));
    authInfoTruncLenInBits = txPduProcessingPtr->SecOCAuthInfoTruncLength;
    authInfoTruncLenInBytes = SECOC_BIT_TO_BYTE(authInfoTruncLenInBits + (uint16)authInfoShiftBits);
    SecOC_ArrayShiftRight(&txRtPtr->txResultBuffer[0u], authInfoTruncLenInBytes, authInfoShiftBits);
    SecOC_ClearLowBit(
        &txRtPtr->txResultBuffer[0u],
        authInfoTruncLenInBytes,
        SECOC_MOD_FROM_EIGHT((txPduProcessingPtr->SecOCAuthInfoTruncLength + fvTruncLenInBits)));
    SecOC_ArrayOrOp(&destPtr[offset], &txRtPtr->txResultBuffer[0u], authInfoTruncLenInBytes);
    if (0u != (SECOC_MOD_FROM_EIGHT((authInfoTruncLenInBits + fvTruncLenInBits))))
    {
        offset += (authInfoTruncLenInBytes - 1u);
        destPtr[offset] &= (0xFFu << (8u - (SECOC_MOD_FROM_EIGHT((authInfoTruncLenInBits + fvTruncLenInBits)))));
    }
    else
    {
        offset += authInfoTruncLenInBytes;
    }

     
     
    if (((void *)0) != messageLinkPtr)
    {
        msgLinkLenInBits = messageLinkPtr->SecOCMessageLinkLen;
        msgLinkPos = messageLinkPtr->SecOCMessageLinkPos;
        SecOC_ArrayShiftLeft(srcPtr, (uint16)txRtPtr->txPduLength, msgLinkPos);
        msgLinkShiftBits = (uint8)(SECOC_MOD_FROM_EIGHT((fvTruncLenInBits + authInfoTruncLenInBits)));
        msgLinkLenInBytes = SECOC_BIT_TO_BYTE(msgLinkLenInBits + (uint16)msgLinkShiftBits);
        SecOC_ArrayShiftRight(srcPtr, msgLinkLenInBytes, msgLinkShiftBits);
        SecOC_ArrayOrOp(&destPtr[offset], srcPtr, msgLinkLenInBytes);
    }
    SchM_Exit_SecOC_TxData();
}

 









 
 
static  void SecOC_TxBroadcastSecuredIPDU(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_TxSecuredPduType *
    txSecuredPduPtr = SecOC_GetTxSecuredPduPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    PduIdType pduId = txSecuredPduPtr->SecOCTxPduRAsLowerLayerId;
    PduInfoType pduInfo;
    uint16 authInfoTxLength = txPduProcessingPtr->SecOCAuthInfoTruncLength;
    uint8 fvTruncLenInBits = txPduProcessingPtr->SecOCFreshnessValueTruncLength;
    uint8 headerLenInBytes = txSecuredPduPtr->SecOCAuthPduHeaderLength;

    SchM_Enter_SecOC_TxData();
    uint16 SecuredIpduLength =
        headerLenInBytes + txRtPtr->txPduLength + SECOC_BIT_TO_BYTE(authInfoTxLength + fvTruncLenInBits);
    if (SecuredIpduLength < txSecuredPduPtr->SecOCTxSecuredPduBuffLength)
    {
        pduInfo.SduLength = txSecuredPduPtr->SecOCTxSecuredPduBuffLength;
    }
    else
    {
        pduInfo.SduLength = SecuredIpduLength;
    }
    SchM_Exit_SecOC_TxData();

    if (((void *)0) == txPduProcessingPtr->SecOCSameBufferPduRef)
    {
        pduInfo.SduDataPtr = txSecuredPduPtr->SecOCTxSecuredPduBufferRef;
    }
    else
    {
        pduInfo.SduDataPtr = txPduProcessingPtr->SecOCSameBufferPduRef->SecOCSecuredPduBufferRef;
    }
     
     
    (void)PduR_Transmit(pduId, &pduInfo);

    SchM_Enter_SecOC_TxData();
    txRtPtr->txSecuredPduLen = pduInfo.SduLength;
    txRtPtr->txPduReady = 1u;
    txRtPtr->txPduStatus = SECOC_TX_TRANS;
 
    SchM_Exit_SecOC_TxData();
}

 









 
 
static  void SecOC_TxBroadcastAuthenticIPDU(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_TxAuthenticPduType *
    txAuthenticPduPtr = SecOC_GetTxAuthenticPduPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    PduIdType pduId = txAuthenticPduPtr->SecOCTxPduRAsLowerLayerId;
    PduInfoType pduInfo;
    uint8 headerLenInBytes = txAuthenticPduPtr->SecOCAuthPduHeaderLength;
    SchM_Enter_SecOC_TxData();
    pduInfo.SduLength = headerLenInBytes + txRtPtr->txPduLength;
    SchM_Exit_SecOC_TxData();
    if (((void *)0) == txPduProcessingPtr->SecOCSameBufferPduRef)
    {
        pduInfo.SduDataPtr = txAuthenticPduPtr->SecOCTxColAuthenticPduBufferRef;
    }
    else
    {
        pduInfo.SduDataPtr = txPduProcessingPtr->SecOCSameBufferPduRef->SecOCAuthenticPduBufferRef;
    }
     
     
    (void)PduR_Transmit(pduId, &pduInfo);

    SchM_Enter_SecOC_TxData();
    txRtPtr->txAuthenticPduLen = pduInfo.SduLength;
    txRtPtr->txPduReady = 1u;
    txRtPtr->txPduStatus = SECOC_TX_TRANS;
 
    SchM_Exit_SecOC_TxData();
}

 









 
 
static  void SecOC_TxBroadcastCryptographicIPDU(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    const SecOC_TxCryptographicPduType *
    txCryptographicPduPtr = SecOC_GetTxCryptographicPduPtr(index);
    const SecOC_UseMessageLinkType *
    messageLinkPtr = SecOC_GetTxUseMessageLinkPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];
    PduIdType pduId = txCryptographicPduPtr->SecOCTxPduRAsLowerLayerId;
    PduInfoType pduInfo;
    uint16 msgLinkLen;
    uint16 authInfoTxLength = txPduProcessingPtr->SecOCAuthInfoTruncLength;
    uint8 fvTruncLenInBits = txPduProcessingPtr->SecOCFreshnessValueTruncLength;

    if (((void *)0) != messageLinkPtr)
    {
        msgLinkLen = messageLinkPtr->SecOCMessageLinkLen;
    }
    else
    {
        msgLinkLen = 0u;
    }
    pduInfo.SduLength = (uint16)SECOC_BIT_TO_BYTE((uint16)fvTruncLenInBits + authInfoTxLength + msgLinkLen);
    if (((void *)0) == txPduProcessingPtr->SecOCSameBufferPduRef)
    {
        pduInfo.SduDataPtr = txCryptographicPduPtr->SecOCTxCryptographicPduBufferRef;
    }
    else
    {
        pduInfo.SduDataPtr = txPduProcessingPtr->SecOCSameBufferPduRef->SecOCCryptographicPduBufferRef;
    }
     
     
    (void)PduR_Transmit(pduId, &pduInfo);

    SchM_Enter_SecOC_TxData();
    txRtPtr->txCryptographicPduLen = pduInfo.SduLength;
    txRtPtr->txPduReady = 1u;
    txRtPtr->txPduStatus = SECOC_TX_TRANS;
 
    SchM_Exit_SecOC_TxData();
}


 









 
 
static  void SecOC_TxChannelReset(uint16 index)
{
    const SecOC_TxPduProcessingType *
    txPduProcessingPtr = SecOC_GetTxPduProcessingPtr(index);
    SecOC_TxPduRTType *
    txRtPtr = &SecOC_TxRtData[index];

    SchM_Enter_SecOC_TxData();
    txRtPtr->txPduStatus = SECOC_TX_NONE;
    txRtPtr->txPduLength = 0u;
    txRtPtr->txSecuredPduLen = 0u;
    txRtPtr->txAuthenticPduLen = 0u;
    txRtPtr->txCryptographicPduLen = 0u;
    (void)ILib_memset(txRtPtr->txFreshnessValue, 0, 8u);
    txRtPtr->txPduReady = 0u;
    txRtPtr->txAuthBuildCnt = 0u;
    (void)ILib_memset(txRtPtr->txResultBuffer, 0, (16u + 1u));
    txRtPtr->txResultLength = 0u;
    txRtPtr->txDefaultAuthInfoEnable = 0u;

     
    if (((void *)0) != txPduProcessingPtr->SecOCSameBufferPduRef)
    {
        txPduProcessingPtr->SecOCSameBufferPduRef->SecOCSameBufferInUse[0] = 0u;
    }

     
    SECOC_CLR_TX_EVENT(index, 0x00FFu);
    SchM_Exit_SecOC_TxData();
}

 










 
 
static  void SECOC_SET_RX_EVENT(uint16 i, uint16 e)
{
    (SecOC_RxEvent[i] |= (e));
}

 










 
 
static  void SECOC_CLR_RX_EVENT(uint16 i, uint16 e)
{
    (SecOC_RxEvent[i] &= ~(e));
}

 










 
 
static  boolean SECOC_IS_RX_EVENT(uint16 i, uint16 e)
{
    return ((SecOC_RxEvent[i] & (e)) != 0u) ? 1u : 0u;
}

 









 
 
static const SecOC_RxPduProcessingType * SecOC_GetRxPduProcessingPtr(uint16 idx)
{
    return &SecOC_ConfigPtr->SecOCRxPduProcessing[idx];
}

 










 
 
static const SecOC_RxAuthenticPduLayerType * SecOC_GetRxAuthenticPduLayerPtr(uint16 idx)
{
    return (SecOC_GetRxPduProcessingPtr(idx)->SecOCRxAuthenticPduLayer);
}

 










 
 
static const SecOC_RxSecuredPduLayerType * SecOC_GetRxSecuredPduLayerPtr(uint16 idx)
{
    return (SecOC_GetRxPduProcessingPtr(idx)->SecOCRxSecuredPduLayer);
}

 









 
 
static const SecOC_RxSecuredPduType * SecOC_GetRxSecuredPduPtr(uint16 idx)
{
    return (SecOC_GetRxSecuredPduLayerPtr(idx)->SecOCRxSecuredPdu);
}

 










 
 
static const SecOC_RxSecuredPduCollectionType * SecOC_GetRxSecuredPduCollectionPtr(uint16 idx)
{
    return (SecOC_GetRxSecuredPduLayerPtr(idx)->SecOCRxSecuredPduCollection);
}

 









 
 
static const SecOC_RxAuthenticPduType * SecOC_GetRxAuthenticPduPtr(uint16 idx)
{
    return (SecOC_GetRxSecuredPduCollectionPtr(idx)->SecOCRxAuthenticPdu);
}

 










 
 
static const SecOC_RxCryptographicPduType * SecOC_GetRxCryptographicPduPtr(uint16 idx)
{
    return (SecOC_GetRxSecuredPduCollectionPtr(idx)->SecOCRxCryptographicPdu);
}

 













 
 
static  void SecOC_RxIfSecuredPduIndication(
    uint16 index,
    PduIdType RxPduId,
    const PduInfoType * PduInfoPtr)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = rxPduProcessingPtr->SecOCSameBufferPduRef;
    const SecOC_RxSecuredPduType * rxSecuredPduPtr;
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    uint8 * destPtr;
    PduLengthType interBufLen;
    PduInfoType pduInfo;

    rxSecuredPduPtr = SecOC_GetRxSecuredPduPtr(index);
       
    if ((1u == rxSecuredPduPtr->SecOCDynamicLength)
        || ((0u == rxSecuredPduPtr->SecOCDynamicLength)
            && (PduInfoPtr->SduLength >= rxSecuredPduPtr->SecOCPduLength)))
    {
           
        pduInfo.SduDataPtr = PduInfoPtr->SduDataPtr;
        pduInfo.SduLength = PduInfoPtr->SduLength;
         
        

 
        if (rxSecuredPduPtr->SecOCPduLength < pduInfo.SduLength)
        {
            pduInfo.SduLength = rxSecuredPduPtr->SecOCPduLength;
        }

        if (SECOC_RX_NONE != rxRtPtr->rxPduStatus)
        {
            switch (rxPduProcessingPtr->SecOCReceptionOverflowStrategy)
            {
            case SECOC_REJECT:
                 
                 
                break;

            case SECOC_REPLACE:
                 
                 
                SecOC_RxChannelReset(index);
                break;

            case SECOC_QUEUE:
                 
                 
                SecOC_DataInQueue(index, RxPduId, &pduInfo);
                break;

            default:
                 
                break;
            }
        }

        if (SECOC_RX_NONE == rxRtPtr->rxPduStatus)
        {
            if (((void *)0) == sameBufferPtr)
            {
                destPtr = rxSecuredPduPtr->SecOCRxSecuredPduBufferRef;
                interBufLen = rxSecuredPduPtr->SecOCRxSecuredPduBuffLength;
            }
            else
            {
                destPtr = sameBufferPtr->SecOCSecuredPduBufferRef;
                interBufLen = sameBufferPtr->SecOCSecuredPduBuffLength;
            }

            if (interBufLen >= pduInfo.SduLength)
            {
                if ((((void *)0) == sameBufferPtr) || (0u == sameBufferPtr->SecOCSameBufferInUse[0u]))
                {
                    SchM_Enter_SecOC_RxData();
                    (void)ILib_memcpy(destPtr, pduInfo.SduDataPtr, pduInfo.SduLength);

                    SECOC_SET_RX_EVENT(index, 0x0001u);
                    SECOC_SET_RX_EVENT(index, 0x0002u);
                    rxRtPtr->rxPduStatus = SECOC_RX_CALC;
                    rxRtPtr->rxSecuredPduLen = pduInfo.SduLength;
                     
                    rxRtPtr->rxVerifyAttempts = 0u;
                    rxRtPtr->rxAuthBuildAttempts = 0u;
                    if (((void *)0) != sameBufferPtr)
                    {
                        sameBufferPtr->SecOCSameBufferInUse[0u] = 1u;
                    }
                    SchM_Exit_SecOC_RxData();
                }
            }
        }
    }
    else
    {
         
         
    }
}

 












 
 
static  void
    SecOC_RxIfAuthenticPduIndication(uint16 index, const PduInfoType * PduInfoPtr)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = rxPduProcessingPtr->SecOCSameBufferPduRef;
    const SecOC_RxAuthenticPduType * rxAuthenticPduPtr;
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    uint8 * destPtr;
    PduLengthType interBufLen;
    PduInfoType pduInfo;

    rxAuthenticPduPtr = SecOC_GetRxAuthenticPduPtr(index);
       
    if ((1u == rxAuthenticPduPtr->SecOCDynamicLength)
        || ((0u == rxAuthenticPduPtr->SecOCDynamicLength)
            && (PduInfoPtr->SduLength >= rxAuthenticPduPtr->SecOCPduLength)))
    {
           
        pduInfo.SduDataPtr = PduInfoPtr->SduDataPtr;
        pduInfo.SduLength = PduInfoPtr->SduLength;
         
        

 
        if (rxAuthenticPduPtr->SecOCPduLength < pduInfo.SduLength)
        {
            pduInfo.SduLength = rxAuthenticPduPtr->SecOCPduLength;
        }

        if (SECOC_RX_NONE != rxRtPtr->rxPduStatus)
        {
            switch (rxPduProcessingPtr->SecOCReceptionOverflowStrategy)
            {
            case SECOC_REJECT:
                 
                 
                break;

            case SECOC_REPLACE:
                 
                 
                SecOC_RxChannelReset(index);
                break;

            case SECOC_QUEUE:
                 
                break;

            default:
                 
                break;
            }
        }

        if (SECOC_RX_NONE == rxRtPtr->rxPduStatus)
        {
            if (((void *)0) == sameBufferPtr)
            {
                destPtr = rxAuthenticPduPtr->SecOCRxColAuthenticPduBufferRef;
                interBufLen = rxAuthenticPduPtr->SecOCRxColAuthenticPduBuffLength;
            }
            else
            {
                destPtr = sameBufferPtr->SecOCColAuthenticPduBufferRef;
                interBufLen = sameBufferPtr->SecOCColAuthenticPduBuffLength;
            }

            if (interBufLen >= pduInfo.SduLength)
            {
                if ((((void *)0) == sameBufferPtr) || (0u == sameBufferPtr->SecOCSameBufferInUse[0u]))
                {
                    SchM_Enter_SecOC_RxData();
                    (void)ILib_memcpy(destPtr, pduInfo.SduDataPtr, pduInfo.SduLength);

                     
                    SECOC_SET_RX_EVENT(index, 0x0001u);
                    SECOC_SET_RX_EVENT(index, 0x0004u);
                    if (SECOC_IS_RX_EVENT(index, 0x0008u))
                    {
                        rxRtPtr->rxPduStatus = SECOC_RX_CALC;
                    }
                    rxRtPtr->rxAuthenticPduLen = pduInfo.SduLength;
                    rxRtPtr->rxVerifyAttempts = 0u;
                    if (((void *)0) != sameBufferPtr)
                    {
                        sameBufferPtr->SecOCSameBufferInUse[0u] = 1u;
                    }
                    SchM_Exit_SecOC_RxData();
                }
            }
        }
    }
    else
    {
         
         
    }
}

 












 
 
static  void
    SecOC_RxIfCryptographicPduIndication(uint16 index, const PduInfoType * PduInfoPtr)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = rxPduProcessingPtr->SecOCSameBufferPduRef;
    const SecOC_RxCryptographicPduType *
    rxCryptographicPduPtr;
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    uint8 * destPtr;
    PduLengthType interBufLen;
    PduInfoType pduInfo;

    rxCryptographicPduPtr = SecOC_GetRxCryptographicPduPtr(index);
       
    if ((1u == rxCryptographicPduPtr->SecOCDynamicLength)
        || ((0u == rxCryptographicPduPtr->SecOCDynamicLength)
            && (PduInfoPtr->SduLength >= rxCryptographicPduPtr->SecOCPduLength)))
    {
           
        pduInfo.SduDataPtr = PduInfoPtr->SduDataPtr;
        pduInfo.SduLength = PduInfoPtr->SduLength;
         
        

 
        if (rxCryptographicPduPtr->SecOCPduLength < pduInfo.SduLength)
        {
            pduInfo.SduLength = rxCryptographicPduPtr->SecOCPduLength;
        }

        if (SECOC_RX_NONE != rxRtPtr->rxPduStatus)
        {
            switch (rxPduProcessingPtr->SecOCReceptionOverflowStrategy)
            {
            case SECOC_REJECT:
                 
                 
                break;

            case SECOC_REPLACE:
                 
                 
                SecOC_RxChannelReset(index);
                break;

            case SECOC_QUEUE:
                 
                break;

            default:
                 
                break;
            }
        }

        if (SECOC_RX_NONE == rxRtPtr->rxPduStatus)
        {
            if (((void *)0) == sameBufferPtr)
            {
                destPtr = rxCryptographicPduPtr->SecOCRxCryptographicPduBufferRef;
                interBufLen = rxCryptographicPduPtr->SecOCRxCryptographicPduBuffLength;
            }
            else
            {
                destPtr = sameBufferPtr->SecOCCryptographicPduBufferRef;
                interBufLen = sameBufferPtr->SecOCCryptographicPduBuffLength;
            }

            if (interBufLen >= pduInfo.SduLength)
            {
                if ((((void *)0) == sameBufferPtr) || (0u == sameBufferPtr->SecOCSameBufferInUse[0u]))
                {
                    SchM_Enter_SecOC_RxData();
                    (void)ILib_memcpy(destPtr, pduInfo.SduDataPtr, pduInfo.SduLength);

                     
                    SECOC_SET_RX_EVENT(index, 0x0001u);
                    SECOC_SET_RX_EVENT(index, 0x0008u);
                    if (SECOC_IS_RX_EVENT(index, 0x0004u))
                    {
                        rxRtPtr->rxPduStatus = SECOC_RX_CALC;
                    }
                    rxRtPtr->rxCryptographicPduLen = pduInfo.SduLength;
                    rxRtPtr->rxVerifyAttempts = 0u;
                    if (((void *)0) != sameBufferPtr)
                    {
                        sameBufferPtr->SecOCSameBufferInUse[0u] = 1u;
                    }
                    SchM_Exit_SecOC_RxData();
                }
            }
        }
    }
    else
    {
         
         
    }
}

 









 
 
   
static  void SecOC_RxParseSecuredIpdu(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    const SecOC_RxAuthenticPduLayerType * rxAuthenticPduLayerPtr;
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = rxPduProcessingPtr->SecOCSameBufferPduRef;
    const SecOC_RxSecuredPduType *
    rxSecuredPduPtr = SecOC_GetRxSecuredPduPtr(index);
    const SecOC_RxAuthenticPduType * rxAuthenticPduPtr;
    const SecOC_RxCryptographicPduType *
    rxCryptographicPduPtr;
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    uint8 * rxSecuredPduBufPtr;
    const uint8 * rxAuthenticPduBufPtr;
    uint8 * rxCryptographicPduBufPtr;
    PduLengthType authPduLen;
    PduLengthType offset;
    PduLengthType cfgAuthPduLen = rxPduProcessingPtr->SecOCRxAuthenticPduLayer->SecOCPduLength;
    uint8 headerLen;
    boolean securedRxPduVerification;
    boolean dropMsgFlag = 0u;
    uint8 fvTruncLenInBits = rxPduProcessingPtr->SecOCFreshnessValueTruncLength;
    uint8 fvLenInBytes = (uint8)SECOC_BIT_TO_BYTE((uint16)fvTruncLenInBits);

     
    

 
    if ((SECOC_IS_RX_EVENT(index, 0x0001u) && SECOC_IS_RX_EVENT(index, 0x0002u))
        || (SECOC_IS_RX_EVENT(index, 0x0001u) && SECOC_IS_RX_EVENT(index, 0x0004u)
            && SECOC_IS_RX_EVENT(index, 0x0008u))
        || (((SECOC_OVERRIDE_SKIP_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus) && (rxRtPtr->rxNumOfMsgToOverride > 0u))
            || (SECOC_OVERRIDE_SKIP_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)))
    {
        {
             
            
 
            if (((void *)0) != rxSecuredPduPtr)
            {
                securedRxPduVerification = rxSecuredPduPtr->SecOCSecuredRxPduVerification;
                if (((void *)0) == sameBufferPtr)
                {
                    rxRtPtr->rxParsedAuthPduBufPtr = rxPduProcessingPtr->SecOCAuthenticPduBufferRef;
                    rxSecuredPduBufPtr = rxSecuredPduPtr->SecOCRxSecuredPduBufferRef;
                }
                else
                {
                    rxRtPtr->rxParsedAuthPduBufPtr = sameBufferPtr->SecOCAuthenticPduBufferRef;
                    rxSecuredPduBufPtr = sameBufferPtr->SecOCSecuredPduBufferRef;
                }

                headerLen = rxSecuredPduPtr->SecOCAuthPduHeaderLength;
                if (0u == headerLen)
                {
                     
                     
                    if (0u == rxSecuredPduPtr->SecOCDynamicLength)
                    {
                        rxAuthenticPduLayerPtr = SecOC_GetRxAuthenticPduLayerPtr(index);
                        authPduLen = rxAuthenticPduLayerPtr->SecOCPduLength;
                    }
                    else
                    {
                         
                         
                        authPduLen = rxRtPtr->rxSecuredPduLen - rxPduProcessingPtr->SecOCAuthFrsInfoLength;
                    }
                }
                else
                {
                     
                     
                    authPduLen = SecOC_RxGetPduLength(headerLen, rxSecuredPduBufPtr);
                     
                    
 
                    if (authPduLen > cfgAuthPduLen)
                    {
                        dropMsgFlag = 1u;
                    }
                }

                if (0u == dropMsgFlag)
                {
                    SchM_Enter_SecOC_RxData();
                    offset = headerLen;
                     
                    (void)ILib_memcpy(rxRtPtr->rxParsedAuthPduBufPtr, &rxSecuredPduBufPtr[offset], authPduLen);
                    offset += authPduLen;
                     
                    (void)ILib_memcpy(
                        rxRtPtr->rxParsedFreshnessValue,
                        &rxSecuredPduBufPtr[offset],
                        SECOC_BIT_TO_BYTE((uint16)rxPduProcessingPtr->SecOCFreshnessValueTruncLength));
                    if (0u != SECOC_MOD_FROM_EIGHT(fvTruncLenInBits))
                    {
                        SecOC_ArrayShiftRight(
                            rxRtPtr->rxParsedFreshnessValue,
                            fvLenInBytes,
                            (8u - (uint16)SECOC_MOD_FROM_EIGHT((uint16)fvTruncLenInBits)));
                    }
                     
                    SecOC_ArrayShiftLeft(
                        &rxSecuredPduBufPtr[offset],
                        rxPduProcessingPtr->SecOCAuthFrsInfoLength,
                        rxPduProcessingPtr->SecOCFreshnessValueTruncLength);
                    (void)ILib_memcpy(
                        rxRtPtr->rxParsedAuthenticator,
                        &rxSecuredPduBufPtr[offset],
                        (uint32)SECOC_BIT_TO_BYTE((uint16)rxPduProcessingPtr->SecOCAuthInfoTruncLength));
                    SchM_Exit_SecOC_RxData();
                }
            }
            else
            {
                rxAuthenticPduPtr = SecOC_GetRxAuthenticPduPtr(index);
                rxCryptographicPduPtr = SecOC_GetRxCryptographicPduPtr(index);
                securedRxPduVerification = rxPduProcessingPtr->SecOCRxSecuredPduLayer->SecOCRxSecuredPduCollection
                                               ->SecOCSecuredRxPduVerification;

                if (((void *)0) == sameBufferPtr)
                {
                    rxRtPtr->rxParsedAuthPduBufPtr = rxPduProcessingPtr->SecOCAuthenticPduBufferRef;
                    rxAuthenticPduBufPtr = rxAuthenticPduPtr->SecOCRxColAuthenticPduBufferRef;
                    rxCryptographicPduBufPtr = rxCryptographicPduPtr->SecOCRxCryptographicPduBufferRef;
                }
                else
                {
                    rxRtPtr->rxParsedAuthPduBufPtr = sameBufferPtr->SecOCAuthenticPduBufferRef;
                    rxAuthenticPduBufPtr = sameBufferPtr->SecOCColAuthenticPduBufferRef;
                    rxCryptographicPduBufPtr = sameBufferPtr->SecOCCryptographicPduBufferRef;
                }

                headerLen = rxAuthenticPduPtr->SecOCAuthPduHeaderLength;
                if (0u == headerLen)
                {
                     
                     
                    if (0u == rxAuthenticPduPtr->SecOCDynamicLength)
                    {
                        authPduLen = rxAuthenticPduPtr->SecOCPduLength;
                    }
                    else
                    {
                         
                         
                        authPduLen = rxRtPtr->rxAuthenticPduLen;
                    }
                }
                else
                {
                     
                     
                    authPduLen = SecOC_RxGetPduLength(headerLen, rxAuthenticPduBufPtr);
                     
                    
 
                    if (authPduLen > cfgAuthPduLen)
                    {
                        dropMsgFlag = 1u;
                    }
                }

                if (0u == dropMsgFlag)
                {
                    offset = headerLen;
                    SchM_Enter_SecOC_RxData();
                     
                    (void)ILib_memcpy(rxRtPtr->rxParsedAuthPduBufPtr, &rxAuthenticPduBufPtr[offset], authPduLen);

                    if (SECOC_IS_RX_EVENT(index, 0x0008u))
                    {
                         
                        (void)ILib_memcpy(
                            rxRtPtr->rxParsedFreshnessValue,
                            rxCryptographicPduBufPtr,
                            SECOC_BIT_TO_BYTE((uint16)rxPduProcessingPtr->SecOCFreshnessValueTruncLength));
                        if (0u != SECOC_MOD_FROM_EIGHT(fvTruncLenInBits))
                        {
                            SecOC_ArrayShiftRight(
                                rxRtPtr->rxParsedFreshnessValue,
                                fvLenInBytes,
                                (8u - (uint16)SECOC_MOD_FROM_EIGHT((uint16)fvTruncLenInBits)));
                        }
                         
                        SecOC_ArrayShiftLeft(
                            rxCryptographicPduBufPtr,
                            rxPduProcessingPtr->SecOCAuthFrsInfoLength,
                            rxPduProcessingPtr->SecOCFreshnessValueTruncLength);
                        (void)ILib_memcpy(
                            rxRtPtr->rxParsedAuthenticator,
                            rxCryptographicPduBufPtr,
                            SECOC_BIT_TO_BYTE((uint16)rxPduProcessingPtr->SecOCAuthInfoTruncLength));
                    }
                    SchM_Exit_SecOC_RxData();
                }
            }
             
            rxRtPtr->rxParsedAuthPduLen = authPduLen;

            SchM_Enter_SecOC_RxData();
            if (1u == securedRxPduVerification)
            {
                SECOC_SET_RX_EVENT(index, 0x0010u);
            }
            else
            {
                 
                 
                SECOC_SET_RX_EVENT(index, 0x0040u);
            }
            SchM_Exit_SecOC_RxData();
        }

        if (1u == dropMsgFlag)
        {
             
            SecOC_RxChannelReset(index);
        }
        SchM_Enter_SecOC_RxData();
        SECOC_CLR_RX_EVENT(index, 0x0001u);
        SchM_Exit_SecOC_RxData();
    }
    else
    {
        rxRtPtr->rxPduStatus = SECOC_RX_NONE;
    }
}
   

 









 
 
static  void SecOC_RxVerifyProcee(uint16 index)
{
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];

    if (SECOC_IS_RX_EVENT(index, 0x0010u))
    {
         
        rxRtPtr->rxBakNumOfMsgToOverride = rxRtPtr->rxNumOfMsgToOverride;

        if (((SECOC_OVERRIDE_DROP_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus) && (rxRtPtr->rxNumOfMsgToOverride == 0u))
            || (SECOC_OVERRIDE_CANCEL == rxRtPtr->rxOverrideStatus)
            || (SECOC_OVERRIDE_PASS_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
            || ((SECOC_OVERRIDE_SKIP_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus) && (rxRtPtr->rxNumOfMsgToOverride == 0u))
            || (SECOC_OVERRIDE_PASS_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus))
        {
             
            SecOC_RxVerifyAuthenticationInfo(index);
        }
        else
        {
             
            SECOC_CLR_RX_EVENT(index, 0x0010u);
            rxRtPtr->rxVeryfyResult = SECOC_NO_VERIFICATION;

            if ((SECOC_OVERRIDE_SKIP_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                || (SECOC_OVERRIDE_SKIP_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus))
            {
                 
                SECOC_SET_RX_EVENT(index, 0x0040u);
            }
            else
            {
                 
                 
                SecOC_RxReportVerifyStatus(index);
            }
        }

         
        if ((rxRtPtr->rxNumOfMsgToOverride > 0u) && (SECOC_RX_RETRY != rxRtPtr->rxPduStatus))
        {
            rxRtPtr->rxNumOfMsgToOverride--;
        }
    }
}

 









 
 
static  void SecOC_RxVerifyAuthenticationInfo(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    const SecOC_CsmJobType *
    jobPtr = rxPduProcessingPtr->SecOCRxAuthServiceConfigRef;
    uint32 dataLength;
    Std_ReturnType ret;

    if (SECOC_IS_RX_EVENT(index, 0x0010u))
    {
        dataLength = SecOC_RxCalcDataToAuthenticatorLength(index);
        ret = SecOC_RxConstructDataToAuthenticator(index);
        if (0U == ret)
        {
             
            switch (jobPtr->SecOCCsmPrimitives)
            {
            case SECOC_CSMMAC:
                ret = Csm_MacVerify(
                    jobPtr->SecOCJobId,
                    CRYPTO_OPERATIONMODE_SINGLECALL,
                    &SecOC_DataToAuthenticator[0u],
                    dataLength,
                    rxRtPtr->rxParsedAuthenticator,
                    rxPduProcessingPtr->SecOCAuthInfoTruncLength,
                    &rxRtPtr->rxVerifyResult);
                break;


            default:
                 
                break;
            }

            if (0U == ret)
            {
                SECOC_CLR_RX_EVENT(index, 0x0010u);
                if (SECOC_CRYPTO_PROCESSING_SYNC == jobPtr->SecOCCryptoProcessingType)
                {
                    SECOC_SET_RX_EVENT(index, 0x0040u);

                     
                    
 
                    rxRtPtr->rxAuthBuildAttempts = 0u;
                }
                else
                {
                    SECOC_SET_RX_EVENT(index, 0x0020u);
                }
            }
            else if (((Std_ReturnType)0x02u) == ret)
            {
                 
                 
                SecOC_RxAuthenticationBuildRetry(index);
            }
            else
            {
                 
                 
                if ((SECOC_OVERRIDE_PASS_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
                    || ((SECOC_OVERRIDE_PASS_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                        && (rxRtPtr->rxBakNumOfMsgToOverride > 0u))
                    || (*SecOC_ConfigPtr->SecOCIgnoreVerificationResultRef == 1u))
                {
                     
                    SECOC_SET_RX_EVENT(index, 0x0040u);
                }
                else
                {
                    rxRtPtr->rxVeryfyResult = SECOC_VERIFICATIONFAILURE;
                     
                    SecOC_RxReportVerifyStatus(index);

                     
                    SecOC_RxChannelReset(index);
                }
            }
        }
    }
}

 









 
 
static  uint32 SecOC_RxCalcDataToAuthenticatorLength(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    const SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    uint32 dataLength = 2u;

    if (((void *)0) != rxPduProcessingPtr->SecOCRxPduSecuredArea)
    {
         
        dataLength = dataLength + rxPduProcessingPtr->SecOCRxPduSecuredArea->SecOCSecuredRxPduLength;
    }
    else
    {
         
        dataLength = dataLength + rxRtPtr->rxParsedAuthPduLen;
    }

    dataLength += SECOC_BIT_TO_BYTE((uint16)rxPduProcessingPtr->SecOCFreshnessValueLength);

    return dataLength;
}

 










 
 
static  Std_ReturnType SecOC_RxConstructDataToAuthenticator(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    const SecOC_SameBufferPduCollectionType *
    sameBufferPtr = rxPduProcessingPtr->SecOCSameBufferPduRef;
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    const SecOC_RxSecuredPduType *
    rxSecuredPduPtr = SecOC_GetRxSecuredPduPtr(index);
    const SecOC_RxAuthenticPduType * rxAuthenticPduPtr;
    uint8 * authenticPduPtr;
    const uint8 * authDataFreshnessPtr;
    uint32 securedIPDULength;
    uint32 securedIPDUOffset;
    uint32 freshnessValueLen;
    uint16 dataId;
    uint8 headerLen;
    Std_ReturnType ret;

    SchM_Enter_SecOC_Authentication();

    (void)ILib_memset(SecOC_DataToAuthenticator, 0, 58u);
     
    


 

     
    dataId = rxPduProcessingPtr->SecOCDataId;
    SecOC_EndianSwap((uint8*)&dataId, sizeof(dataId));
    (void)ILib_memcpy(&SecOC_DataToAuthenticator[0], (uint8*)&dataId, 2u);

     
    if (((void *)0) != rxPduProcessingPtr->SecOCRxPduSecuredArea)
    {
         
        securedIPDULength = rxPduProcessingPtr->SecOCRxPduSecuredArea->SecOCSecuredRxPduLength;
        securedIPDUOffset = rxPduProcessingPtr->SecOCRxPduSecuredArea->SecOCSecuredRxPduOffset;
    }
    else
    {
        
 
        securedIPDULength = rxRtPtr->rxParsedAuthPduLen;
        securedIPDUOffset = 0u;
    }

    (void)ILib_memcpy(
        &SecOC_DataToAuthenticator[2u],
        &rxRtPtr->rxParsedAuthPduBufPtr[securedIPDUOffset],
        securedIPDULength);

    SchM_Exit_SecOC_Authentication();
     
     
     
    if (rxPduProcessingPtr->SecOCAuthDataFreshnessLen > 0u)
    {
        if (((void *)0) != rxSecuredPduPtr)
        {
            headerLen = rxSecuredPduPtr->SecOCAuthPduHeaderLength;
            if (((void *)0) == sameBufferPtr)
            {
                authenticPduPtr = &rxSecuredPduPtr->SecOCRxSecuredPduBufferRef[headerLen];
            }
            else
            {
                authenticPduPtr = &sameBufferPtr->SecOCSecuredPduBufferRef[headerLen];
            }
        }
        else
        {
            rxAuthenticPduPtr = SecOC_GetRxAuthenticPduPtr(index);
            headerLen = rxAuthenticPduPtr->SecOCAuthPduHeaderLength;
            if (((void *)0) == sameBufferPtr)
            {
                authenticPduPtr = &rxAuthenticPduPtr->SecOCRxColAuthenticPduBufferRef[headerLen];
            }
            else
            {
                authenticPduPtr = &sameBufferPtr->SecOCColAuthenticPduBufferRef[headerLen];
            }
        }
        SecOC_ArrayShiftLeft(
            authenticPduPtr,
            (uint16)rxRtPtr->rxParsedAuthPduLen,
            rxPduProcessingPtr->SecOCAuthDataFreshnessStartPosition);
        authDataFreshnessPtr = authenticPduPtr;
    }
    else
    {
        authDataFreshnessPtr = ((void *)0);
    }

    freshnessValueLen = rxPduProcessingPtr->SecOCFreshnessValueLength;
    if (1u == rxPduProcessingPtr->SecOCUseAuthDataFreshness)
    {
         
        ret = SecOC_GetRxFreshnessAuthData(
            rxPduProcessingPtr->SecOCFreshnessValueId,
            rxRtPtr->rxParsedFreshnessValue,
            rxPduProcessingPtr->SecOCFreshnessValueTruncLength,
            authDataFreshnessPtr,
            rxPduProcessingPtr->SecOCAuthDataFreshnessLen,
            rxRtPtr->rxVerifyAttempts,
            rxRtPtr->rxFreshnessValue,
            &freshnessValueLen);
    }
    else
    {
         
        ret = SecOC_GetRxFreshness(
            rxPduProcessingPtr->SecOCFreshnessValueId,
            rxRtPtr->rxParsedFreshnessValue,
            rxPduProcessingPtr->SecOCFreshnessValueTruncLength,
            rxRtPtr->rxVerifyAttempts,
            rxRtPtr->rxFreshnessValue,
            &freshnessValueLen);
    }

    if (0U == ret)
    {
        SchM_Enter_SecOC_Authentication();
        freshnessValueLen = (uint32)SECOC_BIT_TO_BYTE((uint16)rxPduProcessingPtr->SecOCFreshnessValueLength);
        (void)ILib_memcpy(
            &SecOC_DataToAuthenticator[2u + securedIPDULength],
            rxRtPtr->rxFreshnessValue,
            freshnessValueLen);
        SchM_Exit_SecOC_Authentication();
    }
    else if (2U == ret)
    {
         
        SecOC_RxAuthenticationBuildRetry(index);
    }
    else
    {
         
        rxRtPtr->rxVeryfyResult = SECOC_FRESHNESSFAILURE;
         
        SecOC_RxReportVerifyStatus(index);

         
        SecOC_RxChannelReset(index);
    }

    return ret;
}

 









 
 
static  void SecOC_RxAuthenticationBuildRetry(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];

     
    if (rxRtPtr->rxAuthBuildAttempts < rxPduProcessingPtr->SecOCAuthenticationBuildAttempts)
    {
        SchM_Enter_SecOC_RxData();
        rxRtPtr->rxAuthBuildAttempts++;
        rxRtPtr->rxPduStatus = SECOC_RX_RETRY;
        SchM_Exit_SecOC_RxData();
    }
    else
    {
         
        if ((SECOC_OVERRIDE_PASS_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
            || ((SECOC_OVERRIDE_PASS_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                && (rxRtPtr->rxBakNumOfMsgToOverride > 0u)))
        {
            SchM_Enter_SecOC_RxData();
             
            SECOC_SET_RX_EVENT(index, 0x0040u);
            SchM_Exit_SecOC_RxData();
        }
        else
        {
            SchM_Enter_SecOC_RxData();
             
            rxRtPtr->rxVeryfyResult = SECOC_AUTHENTICATIONBUILDFAILURE;
            SchM_Exit_SecOC_RxData();
             
            SecOC_RxReportVerifyStatus(index);

             
            if (SECOC_IS_RX_EVENT(index, 0x0002u))
            {
                 
                SecOC_RxChannelReset(index);
            }
            else
            {
                SchM_Enter_SecOC_RxData();
                
 
                SECOC_CLR_RX_EVENT(index, 0x0010u);
                SchM_Exit_SecOC_RxData();
            }
        }

         
         
        SECOC_DET_REPORT_RUNTIMEERROR(0x06u, 0x08u);
    }
}

 









 
 
static  void SecOC_RxVerifyAuthenticInfoRetry(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];

     
    if (rxRtPtr->rxVerifyAttempts < rxPduProcessingPtr->SecOCAuthenticationVerifyAttempts)
    {
        SchM_Enter_SecOC_RxData();
        rxRtPtr->rxVerifyAttempts++;
        rxRtPtr->rxPduStatus = SECOC_RX_RETRY;
        SchM_Exit_SecOC_RxData();
    }
    else
    {
        if ((SECOC_OVERRIDE_PASS_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
            || ((SECOC_OVERRIDE_PASS_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                && (rxRtPtr->rxBakNumOfMsgToOverride > 0u)))
        {
            SchM_Enter_SecOC_RxData();
             
            SECOC_SET_RX_EVENT(index, 0x0040u);
            SchM_Exit_SecOC_RxData();
        }
        else
        {
            SchM_Enter_SecOC_RxData();
             
            rxRtPtr->rxVeryfyResult = SECOC_VERIFICATIONFAILURE;
            SchM_Exit_SecOC_RxData();
             
            SecOC_RxReportVerifyStatus(index);

             
            if (SECOC_IS_RX_EVENT(index, 0x0002u))
            {
                 
                SecOC_RxChannelReset(index);
            }
            else
            {
                SchM_Enter_SecOC_RxData();
                
 
                SECOC_CLR_RX_EVENT(index, 0x0010u);
                SchM_Exit_SecOC_RxData();
            }
        }
    }
}


 









 
 
static  void SecOC_RxPassAuthenticPduToUpperLayer(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    const SecOC_RxAuthenticPduLayerType *
    rxAuthenticPduLayerPtr = SecOC_GetRxAuthenticPduLayerPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    PduInfoType pduInfo;
    PduIdType pduId;
    BufReq_ReturnType bufReqRet;

    if (SECOC_IS_RX_EVENT(index, 0x0040u))
    {
        SECOC_CLR_RX_EVENT(index, 0x0040u);

         
        if ((SECOC_OVERRIDE_PASS_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
            || (((SECOC_OVERRIDE_SKIP_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                 || (SECOC_OVERRIDE_PASS_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus))
                && (rxRtPtr->rxBakNumOfMsgToOverride > 0u))
            || ((SECOC_OVERRIDE_DROP_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                && (rxRtPtr->rxBakNumOfMsgToOverride == 0u))
            || (SECOC_OVERRIDE_SKIP_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
            || (((Std_ReturnType)0x00u) == rxRtPtr->rxVerifyResult)
            || (*SecOC_ConfigPtr->SecOCIgnoreVerificationResultRef == 1u))
        {
            SchM_Enter_SecOC_RxData();
             
            pduInfo.SduLength = rxRtPtr->rxParsedAuthPduLen;
            pduInfo.SduDataPtr = rxRtPtr->rxParsedAuthPduBufPtr;
            SchM_Exit_SecOC_RxData();
            pduId = rxAuthenticPduLayerPtr->SecOCRxPduRAsUpLayerId;
             
            if (SECOC_IFPDU == rxAuthenticPduLayerPtr->SecOCPduType)
            {
                 
                PduR_IfRxIndication(pduId, &pduInfo);
                 
                 
                SecOC_RxChannelReset(index);
            }
        }
        else
        {
             
            
 
            SecOC_RxVerifyAuthenticInfoRetry(index);
        }
        SchM_Enter_SecOC_RxData();
        if (((Std_ReturnType)0x00u) == rxRtPtr->rxVerifyResult)
        {
             
            rxRtPtr->rxVeryfyResult = SECOC_VERIFICATIONSUCCESS;
        }
        else
        {
            if ((SECOC_OVERRIDE_PASS_UNTIL_NOTICE == rxRtPtr->rxOverrideStatus)
                || ((SECOC_OVERRIDE_PASS_UNTIL_LIMIT == rxRtPtr->rxOverrideStatus)
                    && (rxRtPtr->rxBakNumOfMsgToOverride > 0u)))
            {
                rxRtPtr->rxVeryfyResult = SECOC_VERIFICATIONFAILURE_OVERWRITTEN;
            }
            else
            {
                rxRtPtr->rxVeryfyResult = SECOC_VERIFICATIONFAILURE;
            }
        }
        SchM_Exit_SecOC_RxData();
         
        SecOC_RxReportVerifyStatus(index);
    }
}


 









 
 
static  void SecOC_RxLoadQueuedPdu(uint16 index)
{
    uint8 SecOC_TempMsgBuf[100u];
    PduInfoType pduInfo;
    PduIdType pduId;
    Std_ReturnType ret;

    pduInfo.SduLength = 100u;
    pduInfo.SduDataPtr = SecOC_TempMsgBuf;
    ret = SecOC_DataOutQueue(index, &pduId, &pduInfo);
    if (0U == ret)
    {
        SecOC_RxIfSecuredPduIndication(index, pduId, &pduInfo);
    }
}

 










 
 
static  void SecOC_RxReportVerifyStatus(uint16 index)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    SecOC_VerificationStatusType verificationStatus;
    uint16 idx;
    boolean notifyFlag = 0u;

     
    
 
    if (SECOC_NONE != rxPduProcessingPtr->SecOCVerificationStatusPropagationMode)
    {
        SchM_Enter_SecOC_RxData();
        verificationStatus.freshnessValueID = rxPduProcessingPtr->SecOCFreshnessValueId;
        verificationStatus.verificationStatus = rxRtPtr->rxVeryfyResult;
        verificationStatus.secOCDataId = rxPduProcessingPtr->SecOCDataId;

         
        if (SECOC_BOTH == rxPduProcessingPtr->SecOCVerificationStatusPropagationMode)
        {
            notifyFlag = 1u;
        }
         
        else if (SECOC_FAILURE_ONLY == rxPduProcessingPtr->SecOCVerificationStatusPropagationMode)
        {
            if ((SECOC_VERIFICATIONFAILURE == rxRtPtr->rxVeryfyResult)
                || (SECOC_FRESHNESSFAILURE == rxRtPtr->rxVeryfyResult)
                || (SECOC_AUTHENTICATIONBUILDFAILURE == rxRtPtr->rxVeryfyResult))
            {
                notifyFlag = 1u;
            }
        }
        else
        {
             
        }
        SchM_Exit_SecOC_RxData();

        if (1u == notifyFlag)
        {
            for (idx = 0u; idx < 1u; idx++)
            {
                SecOC_ConfigPtr->SecOCVerificationStatusCallout[idx](verificationStatus);
            }
        }
    }
}

 









 
 
static  void SecOC_RxChannelReset(uint16 index)
{
    SchM_Enter_SecOC_RxData();
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];

     
    rxRtPtr->rxPduStatus = SECOC_RX_NONE;
    rxRtPtr->curPduId = 0u;
    rxRtPtr->rxSecuredPduLen = 0u;
    rxRtPtr->rxAuthenticPduLen = 0u;
    rxRtPtr->rxCryptographicPduLen = 0u;
    rxRtPtr->rxParsedAuthPduLen = 0u;
    rxRtPtr->queueManage.freeQueSize = rxPduProcessingPtr->SecOCReceptionQueueSize;
    rxRtPtr->queueManage.freeQueStartIdx = 0u;
    rxRtPtr->queueManage.queueFrameCnt = 0u;
    rxRtPtr->queueManage.queueInfoIdx = 0u;
    (void)ILib_memset(rxRtPtr->rxParsedFreshnessValue, 0, 8u);
    (void)ILib_memset(rxRtPtr->rxParsedAuthenticator, 0, (16u + 1u));
    rxRtPtr->rxParsedAuthPduBufPtr = ((void *)0);
    rxRtPtr->rxAuthBuildAttempts = 0u;
    rxRtPtr->rxVerifyAttempts = 0u;
    (void)ILib_memset(rxRtPtr->rxFreshnessValue, 0, sizeof(rxRtPtr->rxFreshnessValue));
    rxRtPtr->rxVeryfyResult = SECOC_VERIFICATIONFAILURE;

     
    if (((void *)0) != rxPduProcessingPtr->SecOCSameBufferPduRef)
    {
        rxPduProcessingPtr->SecOCSameBufferPduRef->SecOCSameBufferInUse[0] = 0u;
    }
    SchM_Exit_SecOC_RxData();

     
    SECOC_CLR_RX_EVENT(index, 0x01FFu);
}

 










 
 
static  PduLengthType
    SecOC_RxGetPduLength(uint8 headerLength, const uint8 * headerPtr)
{
    uint32 pduLength = 0u;
    uint8 * ptr = (uint8*)&pduLength;

    (void)ILib_memcpy(&ptr[4u - headerLength], headerPtr, headerLength);
    SecOC_EndianSwap(ptr, 4u);

    return ((PduLengthType)pduLength);
}

 










 
 
static  void SecOC_EndianSwap(

    uint8 * dataPtr,

    uint8 size)
{
    uint8 i;
    uint8 temp;
    uint8 halfSize = size / 2u;
    uint8 tempSize = size - 1u;
    uint8 tempIndex;

    for (i = 0u; i < halfSize; i++)
    {
        tempIndex = tempSize - i;
        temp = dataPtr[tempIndex];
        dataPtr[tempIndex] = dataPtr[i];
        dataPtr[i] = temp;
    }
}

 










 
 
static  void SecOC_ArrayShiftLeft(

    uint8 * numArr,

    uint16 numLen,
    uint16 shiftBits)
{
    uint16 leftNumByte = SECOC_BIT_TO_BYTE(((numLen * 8u) - shiftBits));
    uint16 shiftPerByte = SECOC_MOD_FROM_EIGHT(shiftBits);
    uint16 firstOpNumIdx = numLen - leftNumByte;
    uint16 i;

     
    for (i = 0u; i < leftNumByte; i++)
    {
        if ((firstOpNumIdx + i + 1u) < numLen)
        {
            numArr[i] =
                (numArr[firstOpNumIdx + i] << shiftPerByte) | (numArr[firstOpNumIdx + i + 1u] >> (8u - shiftPerByte));
        }
        else
        {
            numArr[i] = (numArr[firstOpNumIdx + i] << shiftPerByte);
        }
    }
     
    for (i = leftNumByte; i < numLen; i++)
    {
        numArr[i] = 0x00;
    }
}

 










 
 
static  void SecOC_ArrayShiftRight(

    uint8 * numArr,

    uint16 numLen,
    uint16 shiftBits)
{
    uint16 leftNumByte = SECOC_BIT_TO_BYTE(((numLen * 8u) - shiftBits));
    uint16 shiftPerByte = SECOC_MOD_FROM_EIGHT(shiftBits);
    uint16 firstOpNumIdx = leftNumByte - 1u;
    uint16 i;

     
    for (i = 0u; i < leftNumByte; i++)
    {
        if ((firstOpNumIdx - i) >= 1u)
        {
            numArr[numLen - 1u - i] =
                (numArr[firstOpNumIdx - i] >> shiftPerByte) | (numArr[firstOpNumIdx - i - 1u] << (8u - shiftPerByte));
        }
        else
        {
            numArr[numLen - 1u - i] = numArr[firstOpNumIdx - i] >> shiftPerByte;
        }
    }
     
    for (i = 0u; i < (numLen - leftNumByte); i++)
    {
        numArr[i] = 0x00u;
    }
}

 










 
 
static  void SecOC_ArrayOrOp(

    uint8 * numArr1,
    const uint8 * numArr2,

    uint16 numLen)
{
     
    uint16 i;

    for (i = 0u; i < numLen; i++)
    {
        numArr1[i] = numArr1[i] | numArr2[i];
    }
}

 











 
 
static  void SecOC_ClearLowBit(

    uint8 * numArr,

    uint16 numLen,
    uint16 shiftBits)
{
    uint16 leftNumByte = SECOC_BIT_TO_BYTE(((numLen * 8u) - shiftBits));
     
    if (0u != SECOC_MOD_FROM_EIGHT(shiftBits))
    {
        numArr[leftNumByte - 1u] &= (~((1u << shiftBits) - 1u));
    }
}

 












 
 
static  void
    SecOC_DataInQueue(uint16 index, PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    SecOC_QueueManageType *
    queueManagePtr = &rxRtPtr->queueManage;
    uint8 *
    rxQueueBufPtr = rxPduProcessingPtr->SecOCReceptionQueueRef;
    SecOC_QueueInfoType queInfo;
    uint16 needBufSize;
    uint16 queueSize = rxPduProcessingPtr->SecOCReceptionQueueSize;
    uint16 offset = queueManagePtr->freeQueStartIdx;
    uint16 part1Len;
    uint16 part2Len;
    uint8 queInfoSize = sizeof(SecOC_QueueInfoType);

     
    needBufSize = PduInfoPtr->SduLength + queInfoSize;
    SchM_Enter_SecOC_RxData();
    if (queueManagePtr->freeQueSize >= needBufSize)
    {
         
        queInfo.pduId = RxPduId;
        queInfo.pduLength = PduInfoPtr->SduLength;

         
         
        if ((queueSize - offset) >= queInfoSize)
        {
            (void)ILib_memcpy(&rxQueueBufPtr[offset], (uint8*)&queInfo, queInfoSize);
            offset += queInfoSize;
        }
        else
        {
            part1Len = queueSize - offset;
            (void)ILib_memcpy(&rxQueueBufPtr[offset], (uint8*)&queInfo, part1Len);
            part2Len = queInfoSize - part1Len;
               
            (void)ILib_memcpy(&rxQueueBufPtr[0u], ((uint8*)&queInfo + part1Len), part2Len);
               
            offset = part2Len;
        }

         
        if ((queueSize - offset) >= (uint16)PduInfoPtr->SduLength)
        {
            (void)ILib_memcpy(&rxQueueBufPtr[offset], PduInfoPtr->SduDataPtr, PduInfoPtr->SduLength);
            offset += queInfoSize;
        }
        else
        {
            part1Len = queueSize - offset;
            (void)ILib_memcpy(&rxQueueBufPtr[offset], PduInfoPtr->SduDataPtr, part1Len);
            part2Len = (uint16)PduInfoPtr->SduLength - part1Len;
            (void)ILib_memcpy(&rxQueueBufPtr[0u], &PduInfoPtr->SduDataPtr[part1Len], part2Len);
            offset = part2Len;
        }

         
        queueManagePtr->queueFrameCnt++;
        queueManagePtr->freeQueStartIdx = offset;
        queueManagePtr->freeQueSize -= needBufSize;
    }
    else
    {
         
    }
    SchM_Exit_SecOC_RxData();
}

 













 
 
static  Std_ReturnType SecOC_DataOutQueue(
    uint16 index,

    PduIdType * RxPduIdPtr,
    PduInfoType * PduInfoPtr

)
{
    const SecOC_RxPduProcessingType *
    rxPduProcessingPtr = SecOC_GetRxPduProcessingPtr(index);
    SecOC_RxPduRTType *
    rxRtPtr = &SecOC_RxRtData[index];
    SecOC_QueueManageType *
    queueManagePtr = &rxRtPtr->queueManage;
    const uint8 *
    rxQueueBufPtr = rxPduProcessingPtr->SecOCReceptionQueueRef;
    SecOC_QueueInfoType queInfo;
    uint16 queueSize = rxPduProcessingPtr->SecOCReceptionQueueSize;
    uint16 offset = queueManagePtr->queueInfoIdx;
    uint16 part1Len;
    uint16 part2Len;
    uint8 queInfoSize = sizeof(SecOC_QueueInfoType);
    Std_ReturnType ret = 1U;

    SchM_Enter_SecOC_RxData();
    if (queueManagePtr->queueFrameCnt > 0u)
    {
         
        if ((queueSize - offset) >= queInfoSize)
        {
            (void)ILib_memcpy((uint8*)&queInfo, &rxQueueBufPtr[offset], queInfoSize);
            offset += queInfoSize;
        }
        else
        {
            part1Len = queueSize - offset;
            (void)ILib_memcpy((uint8*)&queInfo, &rxQueueBufPtr[offset], part1Len);
            part2Len = queInfoSize - offset;
               
            (void)ILib_memcpy(((uint8*)&queInfo + part1Len), &rxQueueBufPtr[0u], part2Len);
             
            offset = part2Len;
        }
        *RxPduIdPtr = queInfo.pduId;

        if (PduInfoPtr->SduLength >= queInfo.pduLength)
        {
             
            *RxPduIdPtr = queInfo.pduId;

             
            PduInfoPtr->SduLength = queInfo.pduLength;
            if ((queueSize - offset) >= (uint16)PduInfoPtr->SduLength)
            {
                (void)ILib_memcpy(PduInfoPtr->SduDataPtr, &rxQueueBufPtr[offset], PduInfoPtr->SduLength);
                offset += (uint16)PduInfoPtr->SduLength;
            }
            else
            {
                part1Len = queueSize - offset;
                (void)ILib_memcpy(PduInfoPtr->SduDataPtr, &rxQueueBufPtr[offset], part1Len);
                part2Len = (uint16)PduInfoPtr->SduLength - offset;
                (void)ILib_memcpy(&PduInfoPtr->SduDataPtr[part1Len], &rxQueueBufPtr[0u], part2Len);
                offset = part2Len;
            }

             
            queueManagePtr->queueFrameCnt--;
            queueManagePtr->freeQueStartIdx = offset;
            queueManagePtr->freeQueSize += (queInfoSize + (uint16)queInfo.pduLength);
            queueManagePtr->queueInfoIdx = offset;

            ret = 0U;
        }
        else
        {
             
             
        }
    }
    SchM_Exit_SecOC_RxData();

    return ret;
}

static inline void SECOC_DET_REPORT(uint8 ApiId, uint8 ErrorId)
{
    (void)Det_ReportError(150u, 0u, (ApiId), (ErrorId));
}
static inline void SECOC_DET_REPORT_RUNTIMEERROR(uint8 ApiId, uint8 ErrorId)
{
    (void)Det_ReportRuntimeError(150u, 0u, (ApiId), (ErrorId));
}














 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
