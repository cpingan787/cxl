











 












 

   



 












 












 


 












 












 


 



























 

 































 


 












 












 



 
 




















 
 




 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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




 












 












 


 



 
 



 
extern Std_ReturnType PduR_PduRIfTransmit(PduIdType srcPduId, PduIdType destPduId, const PduInfoType* pduInfoPtr);

extern Std_ReturnType PduR_PduRTpTransmit(PduIdType srcPduId, PduIdType destPduId, const PduInfoType* pduInfoPtr);

extern Std_ReturnType PduR_PduRCanceTransmit(PduIdType srcPduId, PduIdType destPduId);

extern Std_ReturnType PduR_PduRCancelReceive(PduIdType srcPduId, PduIdType destPduId);

extern void PduR_PduRIfRxIndication(PduIdType srcPduId, PduIdType destPduId, const PduInfoType* pduInfoPtr);

extern void PduR_PduRIfTxConfirmation(PduIdType srcPduId, PduIdType destPduId, Std_ReturnType result);

extern Std_ReturnType PduR_PduRTriggerTransmit(PduIdType srcPduId, PduIdType destPduId, PduInfoType* pduInfoPtr);

extern BufReq_ReturnType PduR_StartOfReceptionForward(
    PduIdType destPduId,
    const PduInfoType* pduInfoPtr,
    PduLengthType tpSduLength,
    PduLengthType* bufferSizePtr);
extern BufReq_ReturnType PduR_CopyRxDataForward(
    PduIdType destPduId,
    const PduInfoType* pduInfoPtr,
    PduLengthType* bufferSizePtr);
extern void PduR_TpRxIndicationForward(PduIdType destPduId, Std_ReturnType result);


extern BufReq_ReturnType PduR_PduRCopyTxData(
    PduIdType destPduId,
    const PduInfoType* pduInfoPtr,
    const RetryInfoType* retryInfoPtr,
    PduLengthType* availableDataPtr);

extern void PduR_PduRTpTxConfirmation(PduIdType srcPduId, PduIdType destPduId, Std_ReturnType result);

extern void PduR_RouteInit(void);


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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










 
extern void SchM_Enter_PduR_ExclusiveArea_Route(void);
extern void SchM_Exit_PduR_ExclusiveArea_Route(void);
 
extern void SchM_Enter_PduR_ExclusiveArea_Group(void);
extern void SchM_Exit_PduR_ExclusiveArea_Group(void);















 


 




 


 
 


 

 








 

extern const PduRBswModuleType PduR_BswModuleConfigData[7u];




 
 
extern boolean PduR_RoutingPathEnabled[255u];

extern PduR_RouteStatusType PduR_DestinationRouteStatus[173u];
extern PduR_RouteStatusType PduR_SourceRouteStatus[173u];


 
static inline PduR_MetaDataLengthType PduR_GetMetaDataLengthOfSrcPdu(PduIdType srcPduId)
{
    (void)(srcPduId);
    return 0u;
}

static inline PduR_MetaDataLengthType PduR_GetMetaDataLengthOfDestPdu(PduIdType destPduId)
{
    (void)(destPduId);
    return 0u;
}

static inline boolean PduR_IsRoutingPathEnable(PduIdType destPduId)
{
    return PduR_RoutingPathEnabled[destPduId];
}

static inline boolean PduR_IsTpRouteOfSrcPdu(PduIdType srcPduId)
{
    return (1u == PduR_ConfigStd->PduRRoutingTableRef[PduR_ConfigStd->PduRConfigId]. PduRRoutingPathRef[srcPduId].TpRoute);
}

static inline boolean PduR_IsTpRouteOfDestPdu(PduIdType destPduId)
{
    return (1u == PduR_ConfigStd->PduRRoutingTableRef[PduR_ConfigStd->PduRConfigId]. PduRRoutingPathRef[PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRSrcPduRef[0u]].TpRoute);
}

extern  void PduR_RoutingPathGroupInit(void);





 

static Std_ReturnType PduR_IfTransmitForward(PduIdType destPduId, const PduInfoType* pduInfoPtr);

static Std_ReturnType PduR_TriggerTransmitForward(PduIdType srcPduId, PduInfoType* pduInfoPtr);
static void PduR_IfTxConfirmationForward(PduIdType srcPduId);
static void PduR_IfRxIndicationForward(PduIdType destPduId, const PduInfoType* pduInfoPtr);

static Std_ReturnType PduR_TpTransmitForward(PduIdType destPduId, const PduInfoType* pduInfoPtr);

static BufReq_ReturnType PduR_CopyTxDataForward(
    PduIdType srcPduId,
    const PduInfoType* pduInfoPtr,
    const RetryInfoType* retryInfoPtr,
    PduLengthType* availableDataPtr);
static void PduR_TpTxConfirmationForward(PduIdType srcPduId, Std_ReturnType result);

static void PduR_EvaluateUpLayerConfirmationStatus(PduIdType srcPduId);


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   


 
Std_ReturnType PduR_PduRIfTransmit(PduIdType srcPduId, PduIdType destPduId, const PduInfoType* pduInfoPtr)
{
    Std_ReturnType retval = 1U;
    (void)(srcPduId);
    retval = PduR_IfTransmitForward(destPduId, pduInfoPtr);
    if ((retval != 1U) && PduR_ConfigStd->PduRDestPduRef[destPduId]. transmissionConfirmation)
    {
        PduR_DestinationRouteStatus[destPduId] = PDUR_RES_PENDING;
    }
    return retval;
}



 
Std_ReturnType PduR_PduRTpTransmit(PduIdType srcPduId, PduIdType destPduId, const PduInfoType* pduInfoPtr)
{
    Std_ReturnType retval = 1U;
    (void)(srcPduId);

    retval = PduR_TpTransmitForward(destPduId, pduInfoPtr);
    return retval;
}



 
Std_ReturnType PduR_PduRCanceTransmit(PduIdType srcPduId, PduIdType destPduId)
{
    Std_ReturnType retval = 1U;
    PduR_RouteType routeType = PduR_ConfigStd->PduRDestPduRef[destPduId]. routeType;
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRDestPduRef[destPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRDestModulePduIndex;
    ModuleIfTpCancelTransmitApiType cancelTransmitApi;

    switch (routeType)
    {
    case PDUR_ROUTE_IF_TX_NOBUFFERED:
        cancelTransmitApi = bswModulePtr->IfCancelTransmitApi;
        if (cancelTransmitApi != ((void *)0))
        {
            retval = cancelTransmitApi(bswModulePduId);
        }
        break;
    case PDUR_ROUTE_TP_TX_NOBUFFERED:
        cancelTransmitApi = bswModulePtr->TpCancelTransmitApi;
        if (cancelTransmitApi != ((void *)0))
        {
            retval = cancelTransmitApi(bswModulePduId);
        }
        break;
    default:
         
        break;
    }
    (void)(srcPduId);
    return retval;
}



 
Std_ReturnType PduR_PduRCancelReceive(PduIdType srcPduId, PduIdType destPduId)
{
    Std_ReturnType retval = 1U;
    PduR_RouteType routeType = PduR_ConfigStd->PduRDestPduRef[destPduId]. routeType;
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRSrcPduRef[srcPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRSrcPduRef[srcPduId]. PduRSrcModulePduIndex;
    ModuleCancelReceiveApiType cancelReceiveApi;
    cancelReceiveApi = bswModulePtr->CancelReceiveApi;
    if ((routeType == PDUR_ROUTE_TP_RX_NOBUFFERED) && (cancelReceiveApi != ((void *)0)))
    {
        retval = cancelReceiveApi(bswModulePduId);
    }
    return retval;
}



 
   
void PduR_PduRIfRxIndication(PduIdType srcPduId, PduIdType destPduId, const PduInfoType* pduInfoPtr)
{
    (void)(srcPduId);
    PduR_RouteType routeType = PduR_ConfigStd->PduRDestPduRef[destPduId]. routeType;

    switch (routeType)
    {
    case PDUR_ROUTE_IF_RX_NOBUFFERED:
        if (PduR_DestinationRouteStatus[destPduId] == PDUR_RES_INITIAL)
        {
            PduR_DestinationRouteStatus[destPduId] = PDUR_RES_PENDING;
            PduR_IfRxIndicationForward(destPduId, pduInfoPtr);
            PduR_DestinationRouteStatus[destPduId] = PDUR_RES_INITIAL;
        }
        else
        {
            
 
            (void)Det_ReportRuntimeError(51u, 0u, (((uint8)0x42u)), ((0x0Au)));
        }
        break;
    default:
         
        break;
    }
}
 



 
void PduR_PduRIfTxConfirmation(PduIdType srcPduId, PduIdType destPduId, Std_ReturnType result)
{
    (void)(result);

    if (PduR_DestinationRouteStatus[destPduId] == PDUR_RES_PENDING)
    {
        PduR_DestinationRouteStatus[destPduId] = PDUR_RES_OK;

        PduR_RouteType routeType = PduR_ConfigStd->PduRDestPduRef[destPduId]. routeType;
        switch (routeType)
        {
        case PDUR_ROUTE_IF_TX_NOBUFFERED:
            PduR_EvaluateUpLayerConfirmationStatus(srcPduId);
            if (PduR_SourceRouteStatus[srcPduId] == PDUR_RES_OK)
            {
                PduR_SourceRouteStatus[srcPduId] = PDUR_RES_INITIAL;
                if (PduR_ConfigStd->PduRSrcPduRef[srcPduId]. PduRSrcPduUpTxConf)
                {
                    PduR_IfTxConfirmationForward(srcPduId);
                }
            }
            break;
        default:
             
            break;
        }

        if (PduR_DestinationRouteStatus[destPduId] != PDUR_RES_PENDING)
        {
            PduR_DestinationRouteStatus[destPduId] = PDUR_RES_INITIAL;
        }
    }
}



 
Std_ReturnType PduR_PduRTriggerTransmit(PduIdType srcPduId, PduIdType destPduId, PduInfoType* pduInfoPtr)
{
    Std_ReturnType retval = 1U;
    PduR_RouteType routeType = PduR_ConfigStd->PduRDestPduRef[destPduId]. routeType;

    switch (routeType)
    {
    case PDUR_ROUTE_IF_TX_NOBUFFERED:
        retval = PduR_TriggerTransmitForward(srcPduId, pduInfoPtr);
        if ((retval != 1U) && PduR_ConfigStd->PduRDestPduRef[destPduId]. transmissionConfirmation)
        {
            PduR_SourceRouteStatus[srcPduId] = PDUR_RES_PENDING;
            PduR_DestinationRouteStatus[destPduId] = PDUR_RES_PENDING;
        }
        break;
    default:
         
        break;
    }
    return retval;
}




 
BufReq_ReturnType PduR_PduRCopyTxData(
    PduIdType destPduId,
    const PduInfoType* pduInfoPtr,
    const RetryInfoType* retryInfoPtr,
    PduLengthType* availableDataPtr)
{
    BufReq_ReturnType bufReqReturn = BUFREQ_E_NOT_OK;
    PduR_RouteType routeType = PduR_ConfigStd->PduRDestPduRef[destPduId]. routeType;
    PduIdType srcPduId;

    switch (routeType)
    {
    case PDUR_ROUTE_TP_TX_NOBUFFERED:
        srcPduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRSrcPduRef[0u];
        bufReqReturn = PduR_CopyTxDataForward(srcPduId, pduInfoPtr, retryInfoPtr, availableDataPtr);
        break;
    default:
         
        break;
    }
    return bufReqReturn;
}



 
void PduR_PduRTpTxConfirmation(PduIdType srcPduId, PduIdType destPduId, Std_ReturnType result)
{
    PduR_RouteType routeType = PduR_ConfigStd->PduRDestPduRef[destPduId]. routeType;
    switch (routeType)
    {
    case PDUR_ROUTE_TP_TX_NOBUFFERED:
        PduR_TpTxConfirmationForward(srcPduId, result);
        break;
    default:
         
        break;
    }
}




 
static void PduR_EvaluateUpLayerConfirmationStatus(PduIdType srcPduId)
{
    PduR_RouteStatusType txResult = PduR_SourceRouteStatus[srcPduId];
    boolean funishFlag = 0u;
    if (txResult == PDUR_RES_PENDING)
    {
        uint8 destPduSum = PduR_ConfigStd->PduRRoutingTableRef[PduR_ConfigStd->PduRConfigId]. PduRRoutingPathRef[srcPduId]. PduDestSum;
        for (uint8 index = 0u; index < destPduSum; ++index)
        {
            PduIdType destPduId = PduR_ConfigStd->PduRRoutingTableRef[PduR_ConfigStd->PduRConfigId]. PduRRoutingPathRef[srcPduId]. PduRDestPduIdRef[index];
            if (PduR_DestinationRouteStatus[destPduId] == PDUR_RES_NOT_OK)
            {
                txResult = PDUR_RES_NOT_OK;
                funishFlag = 1u;
            }
            if (PduR_DestinationRouteStatus[destPduId] == PDUR_RES_PENDING)
            {
                txResult = PDUR_RES_PENDING;
                funishFlag = 1u;
            }
            if (PduR_DestinationRouteStatus[destPduId] == PDUR_RES_OK)
            {
                txResult = PDUR_RES_OK;
            }
            if (funishFlag)
            {
                break;
            }
        }
         
        PduR_SourceRouteStatus[srcPduId] = txResult;
    }
}



 
static Std_ReturnType PduR_IfTransmitForward(PduIdType destPduId, const PduInfoType* pduInfoPtr)
{
    Std_ReturnType retval = 1U;
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRDestPduRef[destPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRDestModulePduIndex;
    ModuleIfTransmitApiType ifTransmitApi;
    ifTransmitApi = bswModulePtr->IfTransmitApi;
    if (((void *)0) != ifTransmitApi)
    {
        retval = ifTransmitApi(bswModulePduId, pduInfoPtr);
    }
    return retval;
}



 
static Std_ReturnType PduR_TriggerTransmitForward(PduIdType srcPduId, PduInfoType* pduInfoPtr)
{
    Std_ReturnType retval = 1U;
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRSrcPduRef[srcPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRSrcPduRef[srcPduId]. PduRSrcModulePduIndex;
    ModuleTriggertransmitApiType triggertransmitApi;
    triggertransmitApi = bswModulePtr->TriggertransmitApi;
    if (((void *)0) != triggertransmitApi)
    {
        retval = triggertransmitApi(bswModulePduId, pduInfoPtr);
    }
    return retval;
}



 
static void PduR_IfTxConfirmationForward(PduIdType srcPduId)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRSrcPduRef[srcPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRSrcPduRef[srcPduId]. PduRSrcModulePduIndex;
    ModuleTxConfirmationApiType txConfirmationApi;
    txConfirmationApi = bswModulePtr->TxConfirmationApi;
    if (((void *)0) != txConfirmationApi)
    {
        txConfirmationApi(bswModulePduId);
    }
}



 
static void PduR_IfRxIndicationForward(PduIdType destPduId, const PduInfoType* pduInfoPtr)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRDestPduRef[destPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRDestModulePduIndex;
    ModuleIfRxIndicationApiType ifRxIndicationApi;
    ifRxIndicationApi = bswModulePtr->IfRxIndicationApi;
    if (((void *)0) != ifRxIndicationApi)
    {
        ifRxIndicationApi(bswModulePduId, pduInfoPtr);
    }
}



 
static Std_ReturnType PduR_TpTransmitForward(PduIdType destPduId, const PduInfoType* pduInfoPtr)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRDestPduRef[destPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRDestModulePduIndex;
    Std_ReturnType retval = 1U;
    ModuleTpTransmitApiType tpTransmitApi;
    tpTransmitApi = bswModulePtr->TpTransmitApi;
    if (((void *)0) != tpTransmitApi)
    {
        retval = tpTransmitApi(bswModulePduId, pduInfoPtr);
    }
    return retval;
}



 
static BufReq_ReturnType PduR_CopyTxDataForward(
    PduIdType srcPduId,
    const PduInfoType* pduInfoPtr,
    const RetryInfoType* retryInfoPtr,
    PduLengthType* availableDataPtr)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRSrcPduRef[srcPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRSrcPduRef[srcPduId]. PduRSrcModulePduIndex;
    BufReq_ReturnType retval = BUFREQ_E_NOT_OK;
    ModuleCopyTxDataApiType copyTxDataApi;
    copyTxDataApi = bswModulePtr->CopyTxDataApi;
    if (((void *)0) != copyTxDataApi)
    {
        retval = copyTxDataApi(bswModulePduId, pduInfoPtr, retryInfoPtr, availableDataPtr);
    }
    return retval;
}



 
static void PduR_TpTxConfirmationForward(PduIdType srcPduId, Std_ReturnType result)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRSrcPduRef[srcPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRSrcPduRef[srcPduId]. PduRSrcModulePduIndex;
    ModuleTpTxConfirmationApiType tpTxConfirmationApi;
    tpTxConfirmationApi = bswModulePtr->TpTxConfirmationApi;
    if (((void *)0) != tpTxConfirmationApi)
    {
        tpTxConfirmationApi(bswModulePduId, result);
    }
}



 
BufReq_ReturnType PduR_StartOfReceptionForward(
    PduIdType destPduId,
    const PduInfoType* pduInfoPtr,
    PduLengthType tpSduLength,
    PduLengthType* bufferSizePtr)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRDestPduRef[destPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRDestModulePduIndex;
    BufReq_ReturnType bufReqReturn = BUFREQ_E_NOT_OK;
    ModuleStartOfReceptionApiType startOfReceptionApi;
    startOfReceptionApi = bswModulePtr->StartOfReceptionApi;
    if (((void *)0) != startOfReceptionApi)
    {
        bufReqReturn = startOfReceptionApi(bswModulePduId, pduInfoPtr, tpSduLength, bufferSizePtr);
    }
    return bufReqReturn;
}



 
BufReq_ReturnType PduR_CopyRxDataForward(
    PduIdType destPduId,
    const PduInfoType* pduInfoPtr,
    PduLengthType* bufferSizePtr)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRDestPduRef[destPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRDestModulePduIndex;
    BufReq_ReturnType bufReqReturn = BUFREQ_E_NOT_OK;
    ModuleCopyRxDataApiType copyRxDataApi;
    copyRxDataApi = bswModulePtr->CopyRxDataApi;
    if (((void *)0) != copyRxDataApi)
    {
         
        bufReqReturn = copyRxDataApi(bswModulePduId, pduInfoPtr, bufferSizePtr);
    }
    return bufReqReturn;
}



 
void PduR_TpRxIndicationForward(PduIdType destPduId, Std_ReturnType result)
{
    const PduRBswModuleType* bswModulePtr = &PduR_BswModuleConfigData[PduR_ConfigStd->PduRDestPduRef[destPduId]. BswModuleIndex];
    PduIdType bswModulePduId = PduR_ConfigStd->PduRDestPduRef[destPduId]. PduRDestModulePduIndex;
    ModuleTpRxIndicationApiType tpRxIndicationApi;
    tpRxIndicationApi = bswModulePtr->TpRxIndicationApi;
    if (((void *)0) != tpRxIndicationApi)
    {
         
        tpRxIndicationApi(bswModulePduId, result);
    }
}


 
void PduR_RouteInit(void)
{
     
    for (PduIdType index = 0; index < 173u; ++index)
    {
        PduR_DestinationRouteStatus[index] = PDUR_RES_INITIAL;
    }
     
    for (PduIdType index = 0; index < 173u; ++index)
    {
        PduR_SourceRouteStatus[index] = PDUR_RES_INITIAL;
    }
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   

 
