 




















 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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

























 






 


 
typedef uint8_t Std_ReturnType;

typedef struct
{
    uint32_t canId;
    uint32_t authStartByte;
}SecocSdkMsg_t;

typedef struct
{
    uint32_t tripCounter;    
    uint16_t resetCounter;   
    uint32_t messageCounter; 
} Fvm_FreshnessValue_t;

typedef enum
{
    FVM_UNINIT = 0x00U,
    FVM_IDLE   = 0x01U,
    FVM_BUSY   = 0x02U
} Fvm_StatusType;

typedef enum
{
    FVM_INDEX_CFG_RX = 0x00U,
    FVM_INDEX_CFG_TX = 0x01U,
} Fvm_IndexCfgType;

typedef enum
{
    FVM_E_NO_ERROR        = 0x00U,
    FVM_E_INVALID_PARAM   = 0x01U,
    FVM_E_NOT_INITIALIZED = 0x02U,
    FVM_E_BUFFER_OVERFLOW = 0x03U,
    FVM_E_NVM_ERROR       = 0x04U,
    FVM_E_COUNTER_DECREASED = 0x05U,
    FVM_E_VERIFICATION_FAILED = 0x06U
} Fvm_ErrorType;

typedef struct
{
     
    void (*Fvm_SaveTripCounter)(uint32_t tripCounter);
    void (*Fvm_ReadTripCounter)(uint32_t *pTripCounter);
     
    void (*Fvm_ErrorNotification)(Fvm_ErrorType error);
    const SecocSdkMsg_t *pTxSecocMsgConfig;
    const SecocSdkMsg_t *pRxSecocMsgConfig;
    Fvm_FreshnessValue_t *pTxMsgBuffer;
    Fvm_FreshnessValue_t *pRxMsgBuffer;
    uint16_t txSecocMsgNum;
    uint16_t rxSecocMsgNum;
} Fvm_ConfigType;

 







 
Std_ReturnType Fvm_Init(const Fvm_ConfigType* pConfig);








 
void Fvm_Deinit(void);








 
Std_ReturnType Fvm_SetTripCounter(uint32_t tripCounter);








 
Std_ReturnType Fvm_GetTripCounter(uint32_t* pTripCounter);










 
Std_ReturnType Fvm_SetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t messageCounter);









 
Std_ReturnType Fvm_GetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t* pmessageCounter);








 
Std_ReturnType Fvm_SetResetCounter(uint16_t resetCounter);








 
Std_ReturnType Fvm_GetResetCounter(uint16_t* pResetCounter);








 
Std_ReturnType Fvm_GetFreshnessValue(uint32_t canId, uint8_t* pFreshnessBytes);










 
Std_ReturnType Fvm_VerifyFreshnessValue(uint32_t canId, uint16_t currentMsgCntL, uint8_t currentMsgRstCntL, uint8_t* pFreshnessBytes);








 
Std_ReturnType Fvm_ResetTripCounter(void);









 
Std_ReturnType Fvm_UpdateSynCounters(uint32_t tripCounter, uint16_t resetCounter);








 
Std_ReturnType Fvm_GetStatus(Fvm_StatusType* pStatus);



 
 


 



 



 



 
typedef struct
{
    uint32 FvmFreshnessId;  
    uint32 CanId;  
} SecOC_FVM_FreshnessIdMapConfigType;



 



 
SecOC_FVM_FreshnessIdMapConfigType SecOC_FVM_TxFreshnessIdMap[4u] = {
    {0x12au,  0x12au},
    {0xB3u,  0xB3u},
    {0x9fu,  0x9fu},
    {0x7du,  0x7du},

};

SecOC_FVM_FreshnessIdMapConfigType SecOC_FVM_RxFreshnessIdMap[1u] = {
    {1391u, 1391u},
};



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 


























 
 
   
 Std_ReturnType
SecOC_GetRxFreshness(
    uint16 SecOCFreshnessValueID,
    const uint8 * SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
       
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength
       
)
{
    

 

     
    Std_ReturnType result = 0x01U;

    uint8  RxFreshnessValue[8];

    uint8 SecOCTruncatedFreshness_MsgCntOut =((uint8) *SecOCTruncatedFreshnessValue) >> 2;        
    uint8 SecOCTruncatedFreshness_RstCntL =((uint8) *SecOCTruncatedFreshnessValue) & 0x03; ;           

    uint16 index;
    uint32 Fvm_ModelCanID = 0u;

    for (index = 0u; index < 1u; index++)
    {
        if (SecOC_FVM_RxFreshnessIdMap[index].FvmFreshnessId == SecOCFreshnessValueID)
        {
            Fvm_ModelCanID = SecOC_FVM_RxFreshnessIdMap[index].CanId;
            break;
        }
    }

    result = Fvm_VerifyFreshnessValue(Fvm_ModelCanID,SecOCTruncatedFreshness_MsgCntOut,SecOCTruncatedFreshness_RstCntL,&RxFreshnessValue[0]);
    
    (void)ILib_memcpy(SecOCFreshnessValue, RxFreshnessValue, (*SecOCFreshnessValueLength)/8);
    (void)ILib_memcpy(SecOCTruncatedFreshnessValue, &RxFreshnessValue[7], (SecOCTruncatedFreshnessValueLength)/8);
    return result;
    

 
}
   

 































 
 
   
 Std_ReturnType
SecOC_GetRxFreshnessAuthData(
    uint16 SecOCFreshnessValueID,
    const uint8 * SecOCTruncatedFreshnessValue,
    uint32 SecOCTruncatedFreshnessValueLength,
    const uint8 * SecOCAuthDataFreshnessValue,
    uint16 SecOCAuthDataFreshnessValueLength,
    uint16 SecOCAuthVerifyAttempts,
       
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength
       
)
{
    

 

     
    (void)(SecOCFreshnessValueID);
    (void)(SecOCTruncatedFreshnessValue);
    (void)(SecOCTruncatedFreshnessValueLength);
    (void)(SecOCAuthDataFreshnessValue);
    (void)(SecOCAuthDataFreshnessValueLength);
    (void)(SecOCAuthVerifyAttempts);
    (void)(SecOCFreshnessValue);
    (void)(SecOCFreshnessValueLength);
    return 0x00U;
    

 
}
   

 



















 
 
 Std_ReturnType
SecOC_GetTxFreshness(
    uint16 SecOCFreshnessValueID,
       
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength
       
)
{
    

 

     
    (void)(SecOCFreshnessValueID);
    (void)(SecOCFreshnessValue);
    (void)(SecOCFreshnessValueLength);
    return 0x00U;
    

 
}

 























 
 
 Std_ReturnType
SecOC_GetTxFreshnessTruncData(
    uint16 SecOCFreshnessValueID,
       
    uint8 * SecOCFreshnessValue,
    uint32 * SecOCFreshnessValueLength,
    uint8 * SecOCTruncatedFreshnessValue,
    uint32 * SecOCTruncatedFreshnessValueLength
       
)
{
    

 
    Std_ReturnType result = 0x01U;
     

    uint8  TxFreshnessValue[8];

    uint16 index;
    uint32 Fvm_ModelCanID = 0u;

    for (index = 0u; index < 4u; index++)
    {
        if (SecOC_FVM_TxFreshnessIdMap[index].FvmFreshnessId == SecOCFreshnessValueID)
        {
            Fvm_ModelCanID = SecOC_FVM_TxFreshnessIdMap[index].CanId;
            break;
        }
    }
    
    result = Fvm_GetFreshnessValue(Fvm_ModelCanID,TxFreshnessValue);
    (void)ILib_memcpy(SecOCFreshnessValue, TxFreshnessValue, (*SecOCFreshnessValueLength)/8);
    (void)ILib_memcpy(SecOCTruncatedFreshnessValue, &TxFreshnessValue[7], (*SecOCTruncatedFreshnessValueLength)/8);

    return result;
    

 
}

 











 
 
 Std_ReturnType SecOC_SPduTxConfirmation(uint16 SecOCFreshnessValueID)
{
    

 

     
    (void)(SecOCFreshnessValueID);
    return 0x00U;
    

 
}



 
 


 













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 
   

