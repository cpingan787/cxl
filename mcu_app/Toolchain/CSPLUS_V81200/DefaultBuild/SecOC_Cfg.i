 




















 
 

 




















 
 



 









 
  
 




 
 
 




 

 

 
 
 
 
 

 

 


 















 












 



 



 














 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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

 




















 
 




 
 




















 
 




 



 



 











 




 




 














 












 









 

 
typedef enum {
    QUEUE_OK = 0,
    QUEUE_FULL,
    QUEUE_EMPTY,
    QUEUE_ERROR,
    QUEUE_NOT_INIT
} QueueStatus;

 
typedef struct {
    uint8 data[16];    
    uint16 length;                       
} QueueNode;

 
typedef struct QueueFIFO {
     
    QueueNode nodes[32];      
    
     
    uint16 front;                       
    uint16 rear;                        
    uint16 count;                       
    uint16 overflow_count;              
    boolean overflow_flag;                   
    boolean is_initialized;                  
    
     
    uint8 name[16];                        
    
     
    void (*on_overflow)(struct QueueFIFO *queue);
    
     
    void *lock;
} QueueFIFO;

 
extern void can_send_data(const uint8 *data, uint16 length);
extern void uart_send_data(const uint8 *data, uint16 length);
extern void eth_send_data(const uint8 *data, uint16 length);







 
QueueStatus queue_init(QueueFIFO *queue, const uint8 *name, void (*on_overflow)(QueueFIFO *queue));







 
QueueStatus queue_write(QueueFIFO *queue, const uint8 *data, uint16 length);







 
QueueStatus queue_peek(const QueueFIFO *queue, uint8 *data, uint16 *length);







 
QueueStatus queue_read(QueueFIFO *queue, uint8 *data, uint16 *length);






 
uint16 queue_process(QueueFIFO *queue, void (*send_func)(const uint8 *data, uint16 length));





 
boolean queue_is_empty(const QueueFIFO *queue);





 
boolean queue_is_full(const QueueFIFO *queue);





 
boolean queue_is_overflow(const QueueFIFO *queue);





 
uint16 queue_get_count(const QueueFIFO *queue);





 
uint16 queue_get_overflow_count(const QueueFIFO *queue);





 
uint16 queue_get_free_space(const QueueFIFO *queue);




 
void queue_clear(QueueFIFO *queue);




 
void queue_reset_stats(QueueFIFO *queue);





 
const uint8* queue_get_name(const QueueFIFO *queue);





 
boolean queue_is_initialized(const QueueFIFO *queue);





 
void queue_set_lock(QueueFIFO *queue, void *lock);




 
uint16 queue_get_max_size(void);




 
uint16 queue_get_max_data_size(void);




 








 



 
extern QueueFIFO SecOC_ErrorLogQueue;


 

extern void App_VerificationStatusCallout(SecOC_VerificationStatusType VerificationStatus);
extern void App_SecOC_ErrorLogProcess(void);














 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static uint8 SecOC_AuthenticPduBuffer[125u] = {0};
static uint8 SecOC_SecuredPduBuffer[144u] = {0};
static uint8 SecOC_ReceptionQueueData[8u] = {0};
static boolean SecOC_IgnoreVerificationResultIsEnabled = 0u;













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   

static const SecOC_CsmJobType SecOC_CsmJobData[] =
{
    {
        1u,                                  
        SECOC_CRYPTO_PROCESSING_SYNC,        
        SECOC_CSMMAC                         
    },
    {
        0u,                                  
        SECOC_CRYPTO_PROCESSING_SYNC,       
        SECOC_CSMMAC                        
    },
    {
        0u,                                  
        SECOC_CRYPTO_PROCESSING_SYNC,       
        SECOC_CSMMAC                        
    },
    {
        0u,                                  
        SECOC_CRYPTO_PROCESSING_SYNC,        
        SECOC_CSMMAC                         
    },
    {
        0u,                                  
        SECOC_CRYPTO_PROCESSING_SYNC,       
        SECOC_CSMMAC                        
    },
};

static const SecOC_RxAuthenticPduLayerType SecOC_RxAuthenticPduLayerData[1u] =
{
    {
        168u,              
        SECOC_IFPDU,      
        5u              
    }
};

static const SecOC_RxSecuredPduType SecOC_RxSecuredPduData[] =
{
    {
        0u,                              
        0,    
        168u,                             
        1u,                            
        0u,                           
        8u,                             
        8u,                             
        &SecOC_SecuredPduBuffer[0u]     
    }
};

static const SecOC_RxSecuredPduLayerType SecOC_RxSecuredPduLayerData[] =
{
    {
        &SecOC_RxSecuredPduData[0u],          
        ((void *)0),  
    }
};

static const SecOC_RxPduProcessingType SecOC_RxPduProcessingData[1u] =
{
    {
        0u,              
        0u,              
        0u,              
        0u,              
        24u,              
        1391u,             
        1391u,              
        0u,              
        0u,              
        SECOC_QUEUE,     
        8u,             
        &SecOC_ReceptionQueueData[0u],    
        0u,            
        SECOC_FAILURE_ONLY,      
        &SecOC_CsmJobData[0u],  
        ((void *)0),   
        &SecOC_RxAuthenticPduLayerData[0u],  
        ((void *)0),     
        &SecOC_RxSecuredPduLayerData[0u],     
        5u,              
        &SecOC_AuthenticPduBuffer[0u],        
        3u               
    }
};

static const SecOC_TxAuthenticPduLayerType SecOC_TxAuthenticPduLayerData[4u] =
{
    {
        SECOC_IFPDU,         
        0,   
        169u                  
    },
    {
        SECOC_IFPDU,         
        1,   
        170u                  
    },
    {
        SECOC_IFPDU,         
        2,   
        171u                  
    },
    {
        SECOC_IFPDU,         
        3,   
        172u                  
    }
};

static const SecOC_TxSecuredPduType SecOC_TxSecuredPduData[] =
{
    {
        0u,          
        0,    
        169u,         
        12u,         
        &SecOC_SecuredPduBuffer[8u]   
    },
    {
        0u,          
        1,    
        170u,         
        52u,         
        &SecOC_SecuredPduBuffer[20u]   
    },
    {
        0u,          
        2,    
        171u,         
        52u,         
        &SecOC_SecuredPduBuffer[72u]   
    },
    {
        0u,          
        3,    
        172u,         
        20u,         
        &SecOC_SecuredPduBuffer[124u]   
    }
};
static const SecOC_TxSecuredPduLayerType SecOC_TxSecuredPduLayerData[4u] =
{
    {
        &SecOC_TxSecuredPduData[0u],        
        ((void *)0)   
    },
    {
        &SecOC_TxSecuredPduData[1u],        
        ((void *)0)   
    },
    {
        &SecOC_TxSecuredPduData[2u],        
        ((void *)0)   
    },
    {
        &SecOC_TxSecuredPduData[3u],        
        ((void *)0)   
    }
};
static const SecOC_TxPduProcessingType SecOC_TxPduProcessingData[4u] =
{
    {
        3u,      
        24u,      
        298u,      
        298u,     
        64u,     
        8u,      
        1u,    
        1u,   
        ((void *)0),  
        &SecOC_CsmJobData[1u],  
        &SecOC_TxAuthenticPduLayerData[0u],  
        ((void *)0),  
        &SecOC_TxSecuredPduLayerData[0u], 
        8u,      
        &SecOC_AuthenticPduBuffer[5u],  
        4u       
    },
    {
        3u,      
        24u,      
        179u,      
        179u,     
        64u,     
        8u,      
        1u,    
        1u,   
        ((void *)0),  
        &SecOC_CsmJobData[2u],  
        &SecOC_TxAuthenticPduLayerData[1u],  
        ((void *)0),  
        &SecOC_TxSecuredPduLayerData[1u], 
        48u,      
        &SecOC_AuthenticPduBuffer[13u],  
        4u       
    },
    {
        3u,      
        24u,      
        159u,      
        159u,     
        64u,     
        8u,      
        1u,    
        1u,   
        ((void *)0),  
        &SecOC_CsmJobData[3u],  
        &SecOC_TxAuthenticPduLayerData[2u],  
        ((void *)0),  
        &SecOC_TxSecuredPduLayerData[2u], 
        48u,      
        &SecOC_AuthenticPduBuffer[61u],  
        4u       
    },
    {
        3u,      
        24u,      
        125u,      
        125u,     
        64u,     
        8u,      
        1u,    
        1u,   
        ((void *)0),  
        &SecOC_CsmJobData[4u],  
        &SecOC_TxAuthenticPduLayerData[3u],  
        ((void *)0),  
        &SecOC_TxSecuredPduLayerData[3u], 
        16u,      
        &SecOC_AuthenticPduBuffer[109u],  
        4u       
    }
};

const SecOC_VerificationStatusCalloutType SecOC_VerificationStatusCalloutData[1u] =
{
    App_VerificationStatusCallout
};

const SecOC_ConfigType SecOC_ConfigData =    
{
    &SecOC_RxPduProcessingData[0u],          
    ((void *)0),  
    &SecOC_TxPduProcessingData[0u],          
    &SecOC_VerificationStatusCalloutData[0u],                                 
    &SecOC_IgnoreVerificationResultIsEnabled,                              
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

