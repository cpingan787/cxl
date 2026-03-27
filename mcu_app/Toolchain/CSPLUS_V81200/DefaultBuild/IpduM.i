











 












 



 









 



 












 












 


 












 












 


 












 












 
 





 



 
 




















 
 



 












 












 


 



























 

 































 


 












 












 



 
 




















 
 




 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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




 


 



 


 




















 
 

   


 


 

 

 


 

 


 


 

 

 


 

 

 


 

 

 

 

 
 

 

 

 


 

 

 

 























 
   
   
   






 
extern void SchM_Enter_IpduM_Context(void);
extern void SchM_Exit_IpduM_Context(void);














 
 

 
 

 

 
typedef struct
{
    PduIdType PduId;
    uint16 PduLen;
} PduRefType;

 
typedef uint16 SegmentCntType;

 
typedef uint16 IpduM_PartCntType;

 
typedef uint8 IpduM_MainFunctionType;

 

typedef enum
{
    IPDUM_UNINIT = 0u,
    IPDUM_INIT
} IpduM_StatusType;


 
typedef enum
{
    IPDUM_BYTE_ORDER_BIG_ENDIAN = 0u,
    IPDUM_BYTE_ORDER_LITTLE_ENDIAN
} IpduM_ByteOrderType;

typedef enum
{
    
 
    IPDUM_DYNAMIC_PART_TRIGGER = 0u,
    
 
    IPDUM_TRIGGER_MODE_NONE,
    
 
    IPDUM_STATIC_OR_DYNAMIC_PART_TRIGGER,
    
 
    IPDUM_STATIC_PART_TRIGGER
} IpduM_TriggerModeType;

typedef enum
{
     
    IPDUM_HEADERTYPE_LONG = 0u,
     
    IPDUM_HEADERTYPE_SHORT
} IpduM_HeaderType;

typedef enum
{
     
    IPDUM_PROCESSING_DEFERRED = 0u,
    
 
    IPDUM_PROCESSING_IMMEDIATE
} IpduM_ProcessingType;

typedef enum
{
    
 
    IPDUM_ACCEPT_ALL = 0u,
    
 
    IPDUM_ACCEPT_CONFIGURED
} IpduM_AcceptType;

typedef enum
{
     
    IPDUM_DIRECT = 0u,
    
 
    IPDUM_TRIGGERTRANSMIT
} IpduM_TrigModeType;

typedef enum
{
    
 
    IPDUM_COLLECT_LAST_IS_BEST = 0u,
    
 
    IPDUM_COLLECT_QUEUED
} IpduM_CollectType;

typedef enum
{
     
    IPDUM_TRIGGER_ALWAYS = 0u,
     
    IPDUM_TRIGGER_NEVER
} IpduM_TriggerType;

 
typedef struct
{
     
    uint8 IpduMSelectorFieldLength;
     
    uint16 IpduMSelectorFieldPosition;
} IpduMSelectorFieldType;

 
typedef struct
{
     
    uint16 IpduMSegmentLength;
     
    uint16 IpduMSegmentPosition;
} IpduM_SegmentType;

 
typedef struct
{
    
 
    boolean IpduMJitUpdate;
     
    boolean IpduMTxConfirmation;
    
 
    const PduRefType * IpduMTxPduRef;
    
 
    const IpduM_SegmentType * IpduMTxSegmentPtr;
     
    SegmentCntType IpduMTxSegmentCnt;
} IpduM_TxPartType;

 
typedef struct
{
    
 
    IpduM_ByteOrderType IpduMByteOrder;
     
    uint8 IpduMIPduUnusedAreasDefault;
     
    uint16 IpduMBufIndex;
    
 
    uint16 IpduMTxConfirmationTimeout;
    
 
    IpduM_TriggerModeType IpduMTxTriggerMode;
    
 
    uint8 IpduMInitialDynamicPart;
     
    const PduRefType * IpduMOutgoingPduRef;
     
    IpduM_PartCntType IpduMTxStaticPartCnt;
     
    IpduM_PartCntType IpduMTxDynamicPartCnt;
     
    const IpduM_TxPartType * IpduMTxDynamicPartPtr;
     
    const IpduM_TxPartType * IpduMTxStaticPartPtr;
} IpduMTxRequestType;


 
typedef struct
{
     
    uint16 IpduMRxSelectorValue;
     
    const PduRefType * IpduMOutgoingDynamicPduRef;
     
    SegmentCntType IpduMRxDynamicSegmentCnt;
    
 
    const IpduM_SegmentType * IpduMRxDynamicSegmentPtr;
} IpduMRxDynamicPartType;


 
typedef struct
{
     
    const PduRefType * IpduMOutgoingStaticPduRef;
     
    SegmentCntType IpduMRxStaticSegmentCnt;
    
 
    const IpduM_SegmentType * IpduMRxStaticSegmentPtr;
} IpduMRxStaticPartType;

 
typedef struct
{
    
 
    IpduM_ByteOrderType IpduMByteOrder;
     
    uint16 IpduMRxHandleId;
     
    uint16 IpduMBufIndex;
    
 
    const PduRefType * IpduMRxIndicationPduRef;
     
    IpduM_PartCntType IpduMRxDynamicPartCnt;
     
    IpduM_PartCntType IpduMRxStaticPartCnt;
    
 
    const IpduMRxDynamicPartType * IpduMRxDynamicPartPtr;
    
 
    const IpduMRxStaticPartType * IpduMRxStaticPartPtr;
     
    IpduMSelectorFieldType IpduMSelectorField;
} IpduMRxIndicationType;


 
typedef struct
{
     
    uint16 IpduMBufIndex;
     
    uint16 IpduMContainerRxQueueStartPosIndex;
     
    IpduM_HeaderType IpduMContainerHeaderSize;
    

 
    IpduM_ProcessingType IpduMContainerPduProcessing;
     
    uint8 IpduMContainerQueueSize;
    
 
    IpduM_AcceptType IpduMContainerRxAcceptContainedPdu;
     
    uint16 IpduMContainerRxHandleId;
    
 
    const PduRefType * IpduMContainerRxPduRef;
} IpduMContainerRxPduType;

 
typedef struct
{
    
 
    uint32 IpduMContainedPduHeaderId;
    
 
    uint8 IpduMContainedRxInContainerPduRef;
    
 
    const PduRefType * IpduMContainedRxPduRef;
} IpduMContainedRxPduType;

 
typedef struct
{
     
    uint16 IpduMBufIndex;
     
    uint16 IpduMContainerTxQueueStartPosIndex;
     
     
    uint16 IpduMContainerIncContainedStartPosIndex;
    
 
    uint16 IpduMContainerIncContainedMaxNum;
     
     
    IpduM_HeaderType IpduMContainerHeaderSize;
     
    uint8 IpduMContainerQueueSize;
     
    IpduM_TrigModeType IpduMContainerTxTriggerMode;
    

 
    boolean IpduMContainerTxFirstContainedPduTrigger;
    
 
    uint16 IpduMContainerTxHandleId;
     
    const uint16 * IpduMContainerTxSendTimeout;
    
 
    const uint16 * IpduMContainerTxConfirmationTimeout;
    

 
    const uint32 * IpduMContainerTxSizeThreshold;
    
 
    const PduRefType * IpduMContainerTxPduRef;
} IpduMContainerTxPduType;

 
typedef struct
{
    
 
    uint32 IpduMContainedPduHeaderId;
    
 
    IpduM_CollectType IpduMContainedTxPduCollectionSemantics;
    
 
    boolean IpduMContainedTxPduConfirmation;
     
    uint16 IpduMContainedTxPduHandleId;
    
 
    const uint16 * IpduMContainedTxPduSendTimeout;
     
    IpduM_TriggerType IpduMContainedTxPduTrigge;
    
 
    uint8 ContainedTxInContainerPduRef;
    
 
    const PduRefType * IpduMContainedTxPduRef;
} IpduMContainedTxPduType;
 


 
typedef enum
{
    IPDUM_TRANSMIT_TYPE_STATICPART = 0u,
    IPDUM_TRANSMIT_TPYE_DYNAMIC,
    IPDUM_TRANSMIT_TYPE_CONTAINED
} IpduM_TxPduType;


 
typedef enum
{
    IPDUM_RXIND_TYPE_MULT = 0u,
    IPDUM_RXIND_TYPE_CONTAINER
} IpduM_RxPduType;


 
typedef enum
{
    IPDUM_TXCONF_TYPE_MULT = 0u,
    IPDUM_TXCONF_TYPE_CONTAINER
} IpduM_TxConfPduType;

 
typedef struct
{
     
    IpduM_TxPduType TxReqType;
    
 
    uint8 Index;
     
    uint8 handleId;
} IpduM_UpTxPduType;

 
typedef struct
{
     
    IpduM_RxPduType RxIndType;
     
    uint8 Index;
} IpduM_LoRxPduType;

 
typedef struct
{
    
 
    IpduM_TxConfPduType txConfPduType;
     
    uint8 Index;
} IpduM_LoTxPduType;

 
typedef struct
{
     
    const IpduMContainedRxPduType * IpduMContainedRxPduPtr;
     
    const IpduMContainedTxPduType * IpduMContainedTxPduPtr;
    
 
    const IpduMContainerRxPduType * IpduMContainerRxPduPtr;
     
    const IpduMContainerTxPduType * IpduMContainerTxPduPtr;
     
    const IpduM_LoRxPduType * IpduMRxPduPtr;
     
    const IpduM_UpTxPduType * IpduMUpTxPduPtr;
     
    const IpduM_LoTxPduType * IpduMTxPduPtr;
     
    const IpduMTxRequestType * IpduMTxRequestPtr;
     
    const IpduMRxIndicationType * IpduMRxIndicationPtr;
    const uint16* IpduMMainFunctionRxRange;
    const uint16* IpduMMainFunctionTxRange;
} IpduM_ConfigType;


 
 

 
 

extern const uint8 IpduMDefaultBufVal[19200u];


extern const IpduM_ConfigType IpduM_PBConfigData;

 












 
extern  void IpduM_Init(const IpduM_ConfigType * configPtr);












 
extern  void IpduM_MainFunctionRx(IpduM_MainFunctionType mainFunctionId);











 
extern  void IpduM_MainFunctionTx(IpduM_MainFunctionType mainFunctionId);













 
extern  Std_ReturnType
    IpduM_Transmit(PduIdType PdumTxPduId, const PduInfoType * PduInfoPtr);



 










 
typedef struct
{
     
    uint16 payloadSize;
     
    uint16 containedStartPos;
     
    uint8 containedCnt;
     
    uint16 containedTxConfirmStartPos;
     
    uint8 containedTxConfirmCnt;
} IpduM_InnerContainerTxQueueHandleType;

typedef struct
{
     
    boolean firstAddFlg;
    boolean trigFlg;
     
    uint8 transReadPoint;
    uint8 txCofReadPoint;
    uint8 writePoint;
    uint8 queueCnt;
     
    uint16 transTimer;
     
    uint16 txConfTimer;
} IpduM_InnerContainerTxType;




 
 

 













 

extern  void
    IpduM_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr);












 

extern  void IpduM_TxConfirmation(PduIdType TxPduId);













 

extern  Std_ReturnType

    IpduM_TriggerTransmit(PduIdType TxPduId, PduInfoType * PduInfoPtr);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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


 


 


 


 
 

 

 
 
 


 
typedef uint32 IpduM_uintx;


 



 
 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static IpduM_StatusType IpduM_InitStauts = IPDUM_UNINIT;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section

 



 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const IpduM_ConfigType * IpduM_CfgPtr = ((void *)0);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static uint8 IpduM_DtaBuf[19200u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static uint8 IpduM_PduBuf[64u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static IpduM_InnerContainerTxType IpduM_InnerContainerTx[3u];












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static uint16 IpduM_InnerContainedIndexRecode[1500u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
static uint16 IpduM_ContainedPendingTxConfirmation[1500u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static IpduM_InnerContainerTxQueueHandleType
    IpduM_InnerContainerTxQueueRecode[300u];












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   



 
 
static  Std_ReturnType
    IpduM_TransmitContainer(IpduM_uintx containerIndex, PduInfoType * PduInfoPtr);


 
static  Std_ReturnType
    IpduM_TransmitContained(IpduM_uintx containedIndex, const PduInfoType * PduInfoPtr);

 
static  void IpduM_TxConfOfContainer(IpduM_uintx containerIndex);

 
static  void IpduM_ContainerTxHandle(IpduM_uintx index);

 
static  Std_ReturnType
    IpduM_ContainedInBufPosCalc(IpduM_uintx containedIndex, IpduM_uintx * posInBufPtr);

 
static  Std_ReturnType IpduM_ContainedFindLastIsBestInBufPos(
    IpduM_uintx containedIndex,
    IpduM_uintx * bufIndexPtr);

 
static  Std_ReturnType IpduM_ContainedTxTrigHandle(IpduM_uintx containerIndex);

 
static  uint16 IpduM_ContainedDeleteInBuf(
    IpduM_uintx containerIndex,
    const IpduMContainedTxPduType * containedTxPtr,
    IpduM_uintx bufIndex,
    uint16 txQueueLen);
 
static  void IpduM_ContainedFillToContainer(
    const IpduMContainedTxPduType * containedTxPtr,
    IpduM_uintx bufIndex,
    const PduInfoType * PduInfoPtr);

 
static  boolean IpduM_ContainerCheckQueueIsExit(IpduM_uintx containerIndex);

 
static inline  PduIdType IpduM_GetStartOfContainerTxPduInPartition(uint8 ipduMPartitionId);















 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 



 



 











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 void
IpduM_Init(const IpduM_ConfigType * configPtr)
{
    IpduM_uintx index;
    const IpduMContainerTxPduType* containerTxCfgPtr;
    IpduM_InnerContainerTxType* inContainerTxPtr;
    IpduM_uintx loop;
    {
        
 
        IpduM_CfgPtr = configPtr;
        

 
         
        for (index = 0u; index < 19200u; index++)
        {
            IpduM_DtaBuf[index] = IpduMDefaultBufVal[index];
        }
        for (index = 0u; index < 3u; index++)
        {
            containerTxCfgPtr = &IpduM_CfgPtr->IpduMContainerTxPduPtr[index];
            inContainerTxPtr = &IpduM_InnerContainerTx[index];
            inContainerTxPtr->transTimer = 0x0u;
            inContainerTxPtr->txConfTimer = 0x0u;
            inContainerTxPtr->firstAddFlg = 0u;
            inContainerTxPtr->transReadPoint = 0x0u;
            inContainerTxPtr->txCofReadPoint = 0x0u;
            inContainerTxPtr->writePoint = 0x0u;
            inContainerTxPtr->queueCnt = 0x0u;
            for (loop = containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
                 loop
                 < ((IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex
                    + (IpduM_uintx)containerTxCfgPtr->IpduMContainerQueueSize);
                 loop++)
            {
                IpduM_InnerContainerTxQueueRecode[loop].payloadSize = 0x0u;
                IpduM_InnerContainerTxQueueRecode[loop].containedStartPos =
                    containerTxCfgPtr->IpduMContainerIncContainedStartPosIndex;
                IpduM_InnerContainerTxQueueRecode[loop].containedCnt = 0x0u;
                IpduM_InnerContainerTxQueueRecode[loop].containedTxConfirmStartPos =
                    containerTxCfgPtr->IpduMContainerIncContainedStartPosIndex;
                IpduM_InnerContainerTxQueueRecode[loop].containedTxConfirmCnt = 0x0u;
            }
        }
         
        for (loop = 0x0u; loop < 1500u; loop++)
        {
            IpduM_InnerContainedIndexRecode[loop] = (0xFFu);
            IpduM_ContainedPendingTxConfirmation[loop] = (0xFFu);
        }
        IpduM_InitStauts = IPDUM_INIT;
    }
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   















 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 Std_ReturnType
IpduM_Transmit(PduIdType PdumTxPduId, const PduInfoType * PduInfoPtr)
{
    Std_ReturnType ret = 1U;
    {
        if (
            (IPDUM_TRANSMIT_TYPE_STATICPART == IpduM_CfgPtr->IpduMUpTxPduPtr[PdumTxPduId].TxReqType) ||
            (IPDUM_TRANSMIT_TPYE_DYNAMIC == IpduM_CfgPtr->IpduMUpTxPduPtr[PdumTxPduId].TxReqType))
        {
        }
        else if (IPDUM_TRANSMIT_TYPE_CONTAINED == IpduM_CfgPtr->IpduMUpTxPduPtr[PdumTxPduId].TxReqType)
        {
            {
                ret = IpduM_TransmitContained(IpduM_CfgPtr->IpduMUpTxPduPtr[PdumTxPduId].Index, PduInfoPtr);
            }
        }
        else
        {
            (void)Det_ReportError(182u, 0u, (0x03u), (0x10u));
        }
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 














 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 void
IpduM_RxIndication(PduIdType RxPduId, const PduInfoType * PduInfoPtr)
{
    {
        if (IPDUM_RXIND_TYPE_MULT == IpduM_CfgPtr->IpduMRxPduPtr[RxPduId].RxIndType)
        {
        }
        else if (IPDUM_RXIND_TYPE_CONTAINER == IpduM_CfgPtr->IpduMRxPduPtr[RxPduId].RxIndType)
        {
        }
        else
        {
            (void)Det_ReportError(182u, 0u, (0x42u), (0x10u));
        }
    }
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   












 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 void
IpduM_TxConfirmation(PduIdType TxPduId)
{
    {
        if (IPDUM_TXCONF_TYPE_MULT == IpduM_CfgPtr->IpduMTxPduPtr[TxPduId].txConfPduType)
        {
        }
        else if (IPDUM_TXCONF_TYPE_CONTAINER == IpduM_CfgPtr->IpduMTxPduPtr[TxPduId].txConfPduType)
        {
            {
                IpduM_TxConfOfContainer(IpduM_CfgPtr->IpduMTxPduPtr[TxPduId].Index);
            }
        }
        else
        {
            (void)Det_ReportError(182u, 0u, (0x40u), (0x10u));
        }
    }
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   













 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
 Std_ReturnType
IpduM_TriggerTransmit(PduIdType TxPduId, PduInfoType * PduInfoPtr)
{
    Std_ReturnType ret = 1U;
    {
        if (IPDUM_TXCONF_TYPE_MULT == IpduM_CfgPtr->IpduMTxPduPtr[TxPduId].txConfPduType)
        {
        }
        else if (IPDUM_TXCONF_TYPE_CONTAINER == IpduM_CfgPtr->IpduMTxPduPtr[TxPduId].txConfPduType)
        {
            {
                ret = IpduM_TransmitContainer(IpduM_CfgPtr->IpduMTxPduPtr[TxPduId].Index, PduInfoPtr);
            }
        }
        else
        {
            (void)Det_ReportError(182u, 0u, (0x41u), (0x10u));
        }
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section


 



 

 
   



 











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 void
IpduM_MainFunctionTx(IpduM_MainFunctionType mainFunctionId)
{
    if ((IPDUM_INIT == IpduM_InitStauts) && (mainFunctionId < 1u))
    {
        {
            IpduM_uintx index;

 
            index = (IpduM_uintx)IpduM_GetStartOfContainerTxPduInPartition(mainFunctionId);
            for (; index < IpduM_CfgPtr->IpduMMainFunctionTxRange[(mainFunctionId)]; index++)
            {
                IpduM_ContainerTxHandle(index);
            }
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   



 











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 void
IpduM_MainFunctionRx(IpduM_MainFunctionType mainFunctionId)
{
    if ((IPDUM_INIT == IpduM_InitStauts) && (mainFunctionId < 0u))
    {
        {
        }
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  Std_ReturnType
    IpduM_TransmitContainer(IpduM_uintx containerIndex, PduInfoType * PduInfoPtr)
{
    Std_ReturnType ret = 1U;
    const IpduMContainerTxPduType* containerTxCfgPtr = &IpduM_CfgPtr->IpduMContainerTxPduPtr[containerIndex];
    IpduM_InnerContainerTxType* innerContainerPtr = &IpduM_InnerContainerTx[containerIndex];
    PduInfoType PduInfo;
    IpduM_uintx queueIndex = (IpduM_uintx)innerContainerPtr->transReadPoint
                             + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
    IpduM_uintx bufIndex = (IpduM_uintx)containerTxCfgPtr->IpduMBufIndex
                           + ((IpduM_uintx)innerContainerPtr->transReadPoint
                              * (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxPduRef->PduLen);
    IpduM_InnerContainerTxQueueHandleType* incIndexPtr = &IpduM_InnerContainerTxQueueRecode[queueIndex];
    PduLengthType index;
    
 
    SchM_Enter_IpduM_Context();
    PduInfo.SduDataPtr = &IpduM_DtaBuf[bufIndex];
    PduInfo.SduLength = incIndexPtr->payloadSize;
    SchM_Exit_IpduM_Context();
    

 
    if ((0x0u == innerContainerPtr->txConfTimer) && (0u < incIndexPtr->payloadSize)
        && (0u < innerContainerPtr->queueCnt))
    {
        ret = IpduM_ContainedTxTrigHandle(containerIndex);
        if (((void *)0) == PduInfoPtr)
        {
            PduInfo.SduLength = (PduLengthType)incIndexPtr->payloadSize;
            ret = PduR_Transmit(containerTxCfgPtr->IpduMContainerTxPduRef->PduId, &PduInfo);
            if (0U == ret)
            {
                 
                uint8 cnt;
                incIndexPtr->containedTxConfirmStartPos = incIndexPtr->containedStartPos;
                incIndexPtr->containedTxConfirmCnt = incIndexPtr->containedCnt;
                for (cnt = 0u; cnt < incIndexPtr->containedTxConfirmCnt; cnt++)
                {
                    IpduM_ContainedPendingTxConfirmation[(incIndexPtr->containedTxConfirmStartPos) + cnt] =
                        IpduM_InnerContainedIndexRecode[(incIndexPtr->containedStartPos) + cnt];
                }
            }
             
            incIndexPtr->containedStartPos = containerTxCfgPtr->IpduMContainerIncContainedStartPosIndex;
            incIndexPtr->containedCnt = 0x0u;
        }
        else
        {
            PduLengthType cnt;
            uint8 cnt1;
             
            SchM_Enter_IpduM_Context();
            PduInfoPtr->SduLength = incIndexPtr->payloadSize;
            for (cnt = 0u; cnt < PduInfoPtr->SduLength; cnt++)
            {
                PduInfoPtr->SduDataPtr[cnt] = IpduM_DtaBuf[bufIndex + cnt];
            }
            SchM_Exit_IpduM_Context();
             
            incIndexPtr->containedTxConfirmStartPos = incIndexPtr->containedStartPos;
            incIndexPtr->containedTxConfirmCnt = incIndexPtr->containedCnt;
            for (cnt1 = 0u; cnt1 < incIndexPtr->containedTxConfirmCnt; cnt1++)
            {
                IpduM_ContainedPendingTxConfirmation[(incIndexPtr->containedTxConfirmStartPos) + cnt1] =
                    IpduM_InnerContainedIndexRecode[(incIndexPtr->containedStartPos) + cnt1];
            }
             
            incIndexPtr->containedStartPos = containerTxCfgPtr->IpduMContainerIncContainedStartPosIndex;
            incIndexPtr->containedCnt = 0x0u;
        }
    }
    if ((0U == ret) && (0u < incIndexPtr->payloadSize) && (0u < innerContainerPtr->queueCnt))
    {
         
         
        incIndexPtr->payloadSize = 0x0u;
         
        SchM_Enter_IpduM_Context();
        if (0u < innerContainerPtr->queueCnt)
        {
            innerContainerPtr->transReadPoint++;
            if (containerTxCfgPtr->IpduMContainerQueueSize <= innerContainerPtr->transReadPoint)
            {
                innerContainerPtr->transReadPoint = 0x0u;
            }
        }
         
        innerContainerPtr->transTimer = 0x0u;
        SchM_Exit_IpduM_Context();
 
        {
            SchM_Enter_IpduM_Context();
            if (((void *)0) != containerTxCfgPtr->IpduMContainerTxConfirmationTimeout)
            {
                innerContainerPtr->txConfTimer = *(containerTxCfgPtr->IpduMContainerTxConfirmationTimeout);
            }
            else
            {
                innerContainerPtr->txConfTimer = 10u;
            }
            SchM_Exit_IpduM_Context();
        }
         
        if ((((void *)0) != PduInfoPtr) && (IPDUM_TRIGGERTRANSMIT == containerTxCfgPtr->IpduMContainerTxTriggerMode))
        {
        }
        if ((IPDUM_DIRECT == containerTxCfgPtr->IpduMContainerTxTriggerMode)
            || ((((void *)0) != PduInfoPtr) && (IPDUM_TRIGGERTRANSMIT == containerTxCfgPtr->IpduMContainerTxTriggerMode)))
        {
            

 
            
 
            

 
            
 
            if (IPDUM_DIRECT == containerTxCfgPtr->IpduMContainerTxTriggerMode)
            {
                SchM_Enter_IpduM_Context();
                for (index = 0u; (index < PduInfo.SduLength); index++)
                {
                    PduInfo.SduDataPtr[index] = 0x0u;
                }
                SchM_Exit_IpduM_Context();
            }
        }
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  Std_ReturnType
    IpduM_TransmitContained(IpduM_uintx containedIndex, const PduInfoType * PduInfoPtr)
{
    Std_ReturnType ret = 1U;
    const IpduMContainedTxPduType* containedTxCfgPtr = &IpduM_CfgPtr->IpduMContainedTxPduPtr[containedIndex];
    const IpduMContainerTxPduType* containerTxCfgPtr =
        &IpduM_CfgPtr->IpduMContainerTxPduPtr[containedTxCfgPtr->ContainedTxInContainerPduRef];
    IpduM_InnerContainerTxType* innerContainerPtr =
        &IpduM_InnerContainerTx[containedTxCfgPtr->ContainedTxInContainerPduRef];
    IpduM_uintx lstLen = 0x0u;
 
    {
        if (0u == innerContainerPtr->txConfTimer)
        {
             
            if (IPDUM_COLLECT_LAST_IS_BEST == containedTxCfgPtr->IpduMContainedTxPduCollectionSemantics)
            {
                 
                ret = IpduM_ContainedFindLastIsBestInBufPos(containedIndex, &lstLen);
            }
            if (1U == ret)
            {
                
 
                ret = IpduM_ContainedInBufPosCalc(containedIndex, &lstLen);
            }
            if (0U == ret)
            {
                
 
                 
                IpduM_ContainedFillToContainer(containedTxCfgPtr, lstLen, PduInfoPtr);
            }
        }
    }
    if (0U == ret)
    {
         
        IpduM_uintx queueIndex = (IpduM_uintx)innerContainerPtr->writePoint
                                 + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
        lstLen = IpduM_InnerContainerTxQueueRecode[queueIndex].payloadSize;
        
 
        if ((IPDUM_TRIGGER_ALWAYS == containedTxCfgPtr->IpduMContainedTxPduTrigge)
            || ((((void *)0) != containerTxCfgPtr->IpduMContainerTxSizeThreshold)
                && (lstLen >= *(containerTxCfgPtr->IpduMContainerTxSizeThreshold))))
        {
            innerContainerPtr->trigFlg = 1u;
        }
        if (0u == innerContainerPtr->firstAddFlg)
        {
            innerContainerPtr->firstAddFlg = 1u;
            if (1u == containerTxCfgPtr->IpduMContainerTxFirstContainedPduTrigger)
            {
                
 
                innerContainerPtr->trigFlg = 1u;
            }
        }
        SchM_Enter_IpduM_Context();
        if (((void *)0) != containerTxCfgPtr->IpduMContainerTxSendTimeout)
        {
            if (0x0u == innerContainerPtr->transTimer)
            {
                innerContainerPtr->transTimer = *(containerTxCfgPtr->IpduMContainerTxSendTimeout);
            }
            if ((((void *)0) != containedTxCfgPtr->IpduMContainedTxPduSendTimeout)
                && (innerContainerPtr->transTimer > *(containedTxCfgPtr->IpduMContainedTxPduSendTimeout)))
            {
                innerContainerPtr->transTimer = *(containedTxCfgPtr->IpduMContainedTxPduSendTimeout);
            }
        }
        SchM_Exit_IpduM_Context();
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 









 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  void IpduM_TxConfOfContainer(IpduM_uintx containerIndex)
{
    const IpduMContainerTxPduType* containerTxCfgPtr = &IpduM_CfgPtr->IpduMContainerTxPduPtr[containerIndex];
    IpduM_InnerContainerTxType* innerContainerPtr = &IpduM_InnerContainerTx[containerIndex];
    IpduM_uintx index, containedIndex;
    const IpduMContainedTxPduType* containedTxCfgPtr;
    IpduM_uintx queueIndex = (IpduM_uintx)innerContainerPtr->txCofReadPoint
                             + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
    IpduM_InnerContainerTxQueueHandleType* incIndexPtr = &IpduM_InnerContainerTxQueueRecode[queueIndex];
    
 
    SchM_Enter_IpduM_Context();
    uint16 txConfTim = innerContainerPtr->txConfTimer;
    SchM_Exit_IpduM_Context();
    if (((0x0u < txConfTim) && (IPDUM_DIRECT == containerTxCfgPtr->IpduMContainerTxTriggerMode))
        || (IPDUM_TRIGGERTRANSMIT == containerTxCfgPtr->IpduMContainerTxTriggerMode)
    )
    {
        SchM_Enter_IpduM_Context();
        innerContainerPtr->txConfTimer = 0x0u;
        SchM_Exit_IpduM_Context();
        for (index = 0; index < incIndexPtr->containedTxConfirmCnt; index++)
        {
            containedIndex = IpduM_InnerContainedIndexRecode[incIndexPtr->containedTxConfirmStartPos + index];
            if (12u > containedIndex)
            {
                containedTxCfgPtr = &IpduM_CfgPtr->IpduMContainedTxPduPtr[containedIndex];
                
 
                if (1u == containedTxCfgPtr->IpduMContainedTxPduConfirmation)
                {
                    PduR_IfTxConfirmation(containedTxCfgPtr->IpduMContainedTxPduRef->PduId);
                }
            }
             
            IpduM_ContainedPendingTxConfirmation[incIndexPtr->containedTxConfirmStartPos + index] = (0xFFu);
            IpduM_InnerContainedIndexRecode[incIndexPtr->containedTxConfirmStartPos + index] = (0xFFu);
        }
        SchM_Enter_IpduM_Context();
        incIndexPtr->containedTxConfirmStartPos = containerTxCfgPtr->IpduMContainerIncContainedStartPosIndex;
        incIndexPtr->containedTxConfirmCnt = 0u;
         
        if (0u < innerContainerPtr->queueCnt)
        {
            innerContainerPtr->txCofReadPoint++;
            if (containerTxCfgPtr->IpduMContainerQueueSize <= innerContainerPtr->txCofReadPoint)
            {
                innerContainerPtr->txCofReadPoint = 0x0u;
            }
            innerContainerPtr->queueCnt--;
        }
        SchM_Exit_IpduM_Context();
    }
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  void IpduM_ContainerTxHandle(IpduM_uintx index)
{
    IpduM_InnerContainerTxType* innerContainerTxPtr;
    const IpduMContainerTxPduType* containerTxCfgPtr;

    SchM_Enter_IpduM_Context();
    innerContainerTxPtr = &IpduM_InnerContainerTx[index];
    containerTxCfgPtr = &IpduM_CfgPtr->IpduMContainerTxPduPtr[index];
    if (0x0u < innerContainerTxPtr->txConfTimer)
    {
        innerContainerTxPtr->txConfTimer--;
        if (0u == innerContainerTxPtr->txConfTimer)
        {
            
 
            innerContainerTxPtr->trigFlg = IpduM_ContainerCheckQueueIsExit(index);
        }
    }
    if ((((void *)0) != containerTxCfgPtr->IpduMContainerTxSendTimeout) && (0x0u < innerContainerTxPtr->transTimer))
    {
        innerContainerTxPtr->transTimer--;
        if (0x0u == innerContainerTxPtr->transTimer)
        {
            innerContainerTxPtr->trigFlg = 1u;
            

 
        }
    }
    SchM_Exit_IpduM_Context();
    if (1u == innerContainerTxPtr->trigFlg)
    {
        

 
        if (0U == IpduM_TransmitContainer(index, ((void *)0)))
        {
            innerContainerTxPtr->trigFlg = 0u;
        }
    }
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  Std_ReturnType
    IpduM_ContainedInBufPosCalc(IpduM_uintx containedIndex, IpduM_uintx * posInBufPtr)
{
    IpduM_uintx bufIndex;
     
    const IpduMContainedTxPduType* containedTxCfgPtr = &IpduM_CfgPtr->IpduMContainedTxPduPtr[containedIndex];
    const IpduMContainerTxPduType* containerTxCfgPtr =
        &IpduM_CfgPtr->IpduMContainerTxPduPtr[containedTxCfgPtr->ContainedTxInContainerPduRef];
    IpduM_InnerContainerTxType* innerContainerPtr =
        &IpduM_InnerContainerTx[containedTxCfgPtr->ContainedTxInContainerPduRef];
    IpduM_uintx queueIndex =
        (IpduM_uintx)innerContainerPtr->writePoint + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
    IpduM_InnerContainerTxQueueHandleType* incIndexTxPtr = &IpduM_InnerContainerTxQueueRecode[queueIndex];
    IpduM_uintx index = (IpduM_uintx)incIndexTxPtr->containedStartPos + (IpduM_uintx)incIndexTxPtr->containedCnt;
     
    IpduM_uintx containedLen = 0x4u + (IpduM_uintx)containedTxCfgPtr->IpduMContainedTxPduRef->PduLen;
     
    IpduM_uintx surplusSize =
        ((IpduM_uintx)containerTxCfgPtr->IpduMContainerTxPduRef->PduLen - (IpduM_uintx)incIndexTxPtr->payloadSize);
    if (IPDUM_HEADERTYPE_LONG == containerTxCfgPtr->IpduMContainerHeaderSize)
    {
        containedLen += 0x4u;
    }
    if (containedLen > surplusSize)
    {
         
        

 
        if ((IPDUM_DIRECT == containerTxCfgPtr->IpduMContainerTxTriggerMode)
            && (innerContainerPtr->queueCnt >= containerTxCfgPtr->IpduMContainerQueueSize))
        {



 
            (void)IpduM_TransmitContainer(containedTxCfgPtr->ContainedTxInContainerPduRef, ((void *)0));
        }
        SchM_Enter_IpduM_Context();
        innerContainerPtr->writePoint++;
        if (innerContainerPtr->writePoint >= containerTxCfgPtr->IpduMContainerQueueSize)
        {
            innerContainerPtr->writePoint = 0u;
        }
        innerContainerPtr->queueCnt++;
        if (containerTxCfgPtr->IpduMContainerQueueSize < innerContainerPtr->queueCnt)
        {
            
 
            innerContainerPtr->queueCnt = containerTxCfgPtr->IpduMContainerQueueSize;
            innerContainerPtr->transReadPoint++;
            if (innerContainerPtr->transReadPoint >= containerTxCfgPtr->IpduMContainerQueueSize)
            {
                innerContainerPtr->transReadPoint = 0u;
            }
            (void)Det_ReportRuntimeError(
                182u,
                0u,
                (0x03u),
                (0x31u));
        }
        queueIndex = (IpduM_uintx)innerContainerPtr->writePoint
                     + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
        incIndexTxPtr = &IpduM_InnerContainerTxQueueRecode[queueIndex];
        incIndexTxPtr->containedStartPos = (uint8)index;
        incIndexTxPtr->containedCnt = 0x0u;
        incIndexTxPtr->payloadSize = 0x0u;
        SchM_Exit_IpduM_Context();
    }
     
     
    SchM_Enter_IpduM_Context();
    bufIndex =
        ((IpduM_uintx)containerTxCfgPtr->IpduMBufIndex
         + ((IpduM_uintx)innerContainerPtr->writePoint * (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxPduRef->PduLen)
         + (IpduM_uintx)incIndexTxPtr->payloadSize);
    *posInBufPtr = bufIndex;
    IpduM_InnerContainedIndexRecode[index] = (uint16)containedIndex;
    incIndexTxPtr->containedCnt++;
    incIndexTxPtr->payloadSize += (uint16)containedLen;
    if ((0u < incIndexTxPtr->payloadSize) && (0u == innerContainerPtr->queueCnt))
    {
        innerContainerPtr->queueCnt = 1u;
    }
    SchM_Exit_IpduM_Context();
    return 0U;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  Std_ReturnType IpduM_ContainedFindLastIsBestInBufPos(
    IpduM_uintx containedIndex,
    IpduM_uintx * bufIndexPtr)
{
    Std_ReturnType ret = 1U;
    uint16 startPos;
    IpduM_uintx index, loop, queueIndex, cnt;
     
    const IpduMContainedTxPduType* containedTxCfgPtr = &IpduM_CfgPtr->IpduMContainedTxPduPtr[containedIndex];
    const IpduMContainerTxPduType* containerTxCfgPtr =
        &IpduM_CfgPtr->IpduMContainerTxPduPtr[containedTxCfgPtr->ContainedTxInContainerPduRef];
    const IpduM_InnerContainerTxType* innerContainerPtr =
        &IpduM_InnerContainerTx[containedTxCfgPtr->ContainedTxInContainerPduRef];
    IpduM_uintx bufIndex =
        ((IpduM_uintx)containerTxCfgPtr->IpduMBufIndex
         + ((IpduM_uintx)innerContainerPtr->writePoint
            * (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxPduRef->PduLen));
    IpduM_uintx containedIndexTmp;
    queueIndex = containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
     
    for (index = 0x0u; (index < containerTxCfgPtr->IpduMContainerQueueSize) && (1U == ret); index++)
    {
        cnt = IpduM_InnerContainerTxQueueRecode[queueIndex + index].containedCnt;
        startPos = IpduM_InnerContainerTxQueueRecode[queueIndex + index].containedStartPos;
        for (loop = 0x0u; (loop < cnt) && (1U == ret); loop++)
        {
            if (containedIndex == IpduM_InnerContainedIndexRecode[startPos])
            {
                cnt = loop;
                queueIndex += index;
                ret = 0U;
            }
            startPos++;
        }
    }
    if (0U == ret)
    {
         
        startPos = IpduM_InnerContainerTxQueueRecode[queueIndex].containedStartPos;
        for (index = 0; index < cnt; index++)
        {
            containedIndexTmp = IpduM_InnerContainedIndexRecode[startPos];
            containedTxCfgPtr = &IpduM_CfgPtr->IpduMContainedTxPduPtr[containedIndexTmp];
            bufIndex += 4u;
            if (IPDUM_HEADERTYPE_LONG == containerTxCfgPtr->IpduMContainerHeaderSize)
            {
                bufIndex += 4u;
            }
            bufIndex += containedTxCfgPtr->IpduMContainedTxPduRef->PduLen;
            startPos++;
        }
        *bufIndexPtr = bufIndex;
    }
    return ret;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  Std_ReturnType IpduM_ContainedTxTrigHandle(IpduM_uintx containerIndex)
{
    Std_ReturnType ret;
    IpduM_uintx index, containedIndex, bufIndex;
     
    const IpduMContainerTxPduType* containerTxCfgPtr = &IpduM_CfgPtr->IpduMContainerTxPduPtr[containerIndex];
    const IpduM_InnerContainerTxType* innerContainerPtr = &IpduM_InnerContainerTx[containerIndex];
    const IpduMContainedTxPduType* containedTxCfgPtr;
    IpduM_uintx queueIndex =
        ((IpduM_uintx)innerContainerPtr->transReadPoint
         + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex);
    IpduM_InnerContainerTxQueueHandleType* incIndexPtr = &IpduM_InnerContainerTxQueueRecode[queueIndex];
    PduInfoType pduInfo;
    bufIndex =
        ((IpduM_uintx)containerTxCfgPtr->IpduMBufIndex
         + ((IpduM_uintx)innerContainerPtr->transReadPoint
            * (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxPduRef->PduLen));
    for (index = incIndexPtr->containedStartPos;
         index < ((IpduM_uintx)incIndexPtr->containedStartPos + (IpduM_uintx)incIndexPtr->containedCnt);
         index++)
    {
        containedIndex = IpduM_InnerContainedIndexRecode[index];
        if (12u > containedIndex)
        {
            containedTxCfgPtr = &IpduM_CfgPtr->IpduMContainedTxPduPtr[containedIndex];
            if (IPDUM_COLLECT_LAST_IS_BEST == containedTxCfgPtr->IpduMContainedTxPduCollectionSemantics)
            {
                
 
                SchM_Enter_IpduM_Context();
                pduInfo.SduDataPtr = IpduM_PduBuf;
                pduInfo.SduLength = containedTxCfgPtr->IpduMContainedTxPduRef->PduLen;
                SchM_Exit_IpduM_Context();
                ret = PduR_IfTriggerTransmit(containedTxCfgPtr->IpduMContainedTxPduRef->PduId, &pduInfo);
                if ((0U != ret) || (pduInfo.SduLength != containedTxCfgPtr->IpduMContainedTxPduRef->PduLen))
                {
                    
 
                    pduInfo.SduLength = (PduLengthType)IpduM_ContainedDeleteInBuf(
                        containerIndex,
                        containedTxCfgPtr,
                        bufIndex,
                        incIndexPtr->payloadSize);
                    IpduM_InnerContainedIndexRecode[index] = (0xFFu);
                    incIndexPtr->payloadSize -= (uint16)pduInfo.SduLength;
                }
                else
                {
                     
                    IpduM_ContainedFillToContainer(containedTxCfgPtr, bufIndex, &pduInfo);
                     
                    bufIndex += 4u;
                    if (IPDUM_HEADERTYPE_LONG == containerTxCfgPtr->IpduMContainerHeaderSize)
                    {
                        bufIndex += 4u;
                    }
                     
                    bufIndex += containedTxCfgPtr->IpduMContainedTxPduRef->PduLen;
                }
            }
            else
            {
                 
                bufIndex += 4u;
                if (IPDUM_HEADERTYPE_LONG == containerTxCfgPtr->IpduMContainerHeaderSize)
                {
                    bufIndex += 4u;
                }
                 
                bufIndex += containedTxCfgPtr->IpduMContainedTxPduRef->PduLen;
            }
        }
    }
    return 0U;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  uint16 IpduM_ContainedDeleteInBuf(
    IpduM_uintx containerIndex,
    const IpduMContainedTxPduType * containedTxPtr,
    IpduM_uintx bufIndex,
    uint16 txQueueLen)
{
    const IpduMContainerTxPduType* containerTxCfgPtr = &IpduM_CfgPtr->IpduMContainerTxPduPtr[containerIndex];
    const IpduM_InnerContainerTxType* innerContainerPtr = &IpduM_InnerContainerTx[containerIndex];
    IpduM_uintx startPos =
        ((IpduM_uintx)containerTxCfgPtr->IpduMBufIndex
         + ((IpduM_uintx)innerContainerPtr->transReadPoint
            * (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxPduRef->PduLen));
    IpduM_uintx copyLen;
    SchM_Enter_IpduM_Context();
    uint8* dtaBuf = &IpduM_DtaBuf[bufIndex];
    SchM_Exit_IpduM_Context();
    uint16 deleteLen = 0x4u + containedTxPtr->IpduMContainedTxPduRef->PduLen;
    IpduM_uintx index;
    if (IPDUM_HEADERTYPE_LONG == containerTxCfgPtr->IpduMContainerHeaderSize)
    {
        deleteLen += 0x4u;
    }
    copyLen = (txQueueLen - (bufIndex - startPos + deleteLen));
    SchM_Enter_IpduM_Context();
    for (index = 0u; (index < copyLen); index++)
    {
        dtaBuf[index] = dtaBuf[index + deleteLen];
    }
    SchM_Exit_IpduM_Context();
    return deleteLen;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  void IpduM_ContainedFillToContainer(
    const IpduMContainedTxPduType * containedTxPtr,
    IpduM_uintx bufIndex,
    const PduInfoType * PduInfoPtr)
{
    const IpduMContainerTxPduType* containerTxPtr =
        &IpduM_CfgPtr->IpduMContainerTxPduPtr[containedTxPtr->ContainedTxInContainerPduRef];
    SchM_Enter_IpduM_Context();
    uint8* destBufPtr = &IpduM_DtaBuf[bufIndex];
    uint32 headerId = containedTxPtr->IpduMContainedPduHeaderId;
    uint32 headerDlc = containedTxPtr->IpduMContainedTxPduRef->PduLen;
    IpduM_uintx index;




 




 
     
    
 
    if (IPDUM_HEADERTYPE_LONG == containerTxPtr->IpduMContainerHeaderSize)
    {
        *destBufPtr = (uint8)(headerId >> 24u);
        destBufPtr++;
    }
    *destBufPtr = (uint8)(headerId >> 16u);
    destBufPtr++;
    *destBufPtr = (uint8)(headerId >> 8u);
    destBufPtr++;
    *destBufPtr = (uint8)(headerId);
    destBufPtr++;
     
    if (IPDUM_HEADERTYPE_LONG == containerTxPtr->IpduMContainerHeaderSize)
    {
        *destBufPtr = (uint8)(headerDlc >> 24u);
        destBufPtr++;
        *destBufPtr = (uint8)(headerDlc >> 16u);
        destBufPtr++;
        *destBufPtr = (uint8)(headerDlc >> 8u);
        destBufPtr++;
    }
    *destBufPtr = (uint8)(headerDlc);
    destBufPtr++;
    for (index = 0u; (index < PduInfoPtr->SduLength); index++)
    {
        destBufPtr[index] = PduInfoPtr->SduDataPtr[index];
    }
    SchM_Exit_IpduM_Context();
    return;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static  boolean IpduM_ContainerCheckQueueIsExit(IpduM_uintx containerIndex)
{
    boolean findFlg = 0u;
    const IpduMContainerTxPduType* containerTxCfgPtr = &IpduM_CfgPtr->IpduMContainerTxPduPtr[containerIndex];
    IpduM_InnerContainerTxType* innerContainerPtr = &IpduM_InnerContainerTx[containerIndex];
    IpduM_uintx queueIndex;
    IpduM_InnerContainerTxQueueHandleType* incIndexPtr;
     
    if ((IPDUM_DIRECT == containerTxCfgPtr->IpduMContainerTxTriggerMode)
        || (IPDUM_TRIGGERTRANSMIT == containerTxCfgPtr->IpduMContainerTxTriggerMode)
    )
    {
        queueIndex = (IpduM_uintx)innerContainerPtr->txCofReadPoint
                     + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
        incIndexPtr = &IpduM_InnerContainerTxQueueRecode[queueIndex];
         
        incIndexPtr->payloadSize = 0x0u;
        incIndexPtr->containedStartPos = (uint8)(containerTxCfgPtr->IpduMContainerIncContainedStartPosIndex);
        incIndexPtr->containedCnt = 0x0u;
         
        if (0u < innerContainerPtr->queueCnt)
        {
            innerContainerPtr->txCofReadPoint++;
            if (containerTxCfgPtr->IpduMContainerQueueSize <= innerContainerPtr->txCofReadPoint)
            {
                innerContainerPtr->txCofReadPoint = 0x0u;
            }
            innerContainerPtr->queueCnt--;
        }
    }
     
    queueIndex = (IpduM_uintx)innerContainerPtr->transReadPoint
                 + (IpduM_uintx)containerTxCfgPtr->IpduMContainerTxQueueStartPosIndex;
    incIndexPtr = &IpduM_InnerContainerTxQueueRecode[queueIndex];
    if ((0u < incIndexPtr->payloadSize) && (0u < innerContainerPtr->queueCnt))
    {
        findFlg = 1u;
    }
    return findFlg;
}

 
static inline  PduIdType IpduM_GetStartOfContainerTxPduInPartition(uint8 ipduMPartitionId)
{
    (void)(ipduMPartitionId);
    return 0u;
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
